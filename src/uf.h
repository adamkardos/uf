* FORM package to calculate the U and F polynomials
*
*{{{ GetMomenta
* Routine created to fill up the internal loop
* and external momentum arrays:
#procedure GetMomenta(nLoops,VarNloop,VarNext,?mom)
  #define imom "0"
  #do qi={`?mom'}
    #redefine imom "{`imom'+1}"
*    #write "`imom'th momentum is: `qi'"
* The first `nLoops' momenta are loop momenta:
    #if `imom' <= `nLoops'
      #redefine `VarNloop' "{``VarNloop''+1}"
      #redefine UFL``VarNloop'' "`qi'"
*      #write "The ``VarNloop''th loop momentum is `UFL``VarNloop'''"
    #else
      #redefine `VarNext' "{``VarNext''+1}"
      #redefine UFP``VarNext'' "`qi'"
*      #write "The ``VarNext''th external momentum is `UFP``VarNext'''"
    #endif
  #enddo
#endprocedure
*}}}
*
*{{{ PrintMomenta
#procedure PrintMomenta
  #write "We have `NLOOP' loop momenta:"
  #do imom=1,`NLOOP'
    #write "The `imom'th loop momentum is: `UFL`imom''"
  #enddo
  #write "We have `NPEXT' external momenta:"
  #do imom=1,`NPEXT'
    #write "The `imom'th external momentum is: `UFP`imom''"
  #enddo
#endprocedure
*}}}
*
*{{{ GenerateN
* This routine generates Eq. (2.6) of the Gluza paper and
* we assume that only one expression is active containing the propagators
* in the argument of `PropFuncID'
#procedure GenerateN(NumPropVar,PropFuncID)
  #redefine `NumPropVar' "0"
  #do i=1,1
    #redefine `NumPropVar' "{``NumPropVar''+1}"
    id,once `PropFuncID'(UFp?,UFm?,?a) = (d_(UFp,UFp) - UFm^2)*UFx``NumPropVar'' + `PropFuncID'(?a);
    id `PropFuncID' = 0;
    if (count(`PropFuncID',1) > 0) redefine i "0";
    .sort:Work `NumPropVar';
  #enddo
#endprocedure
*}}}
*
*{{{ FillArrays
#procedure FillArrays(ExprID,LoopVar,PextVar,NumLoops,NumExt,Marr,Qvec,Jconst)
  .sort:FillArrays;
* First we try to fill the M_L array, to do so we have to label the
* various terms:
  #do iloop=1,`NumLoops'
    #do jloop=`iloop',`NumLoops'
      #if (`iloop' != `jloop')
        id ``LoopVar'`iloop''.``LoopVar'`jloop'' = 
          1/2*tM(`iloop',`jloop') + 1/2*tM(`jloop',`iloop');
      #else
        id ``LoopVar'`iloop''.``LoopVar'`jloop'' = 
          tM(`iloop',`jloop');
      #endif
    #enddo
  #enddo
  .sort:Tagged M;
  bracket tM;
  .sort:Bracketed;
  fillexpression `Marr' = `ExprID'(tM);
  .sort:Filled ML;
  if (count(tM,1) > 0) discard;
  .sort:Dropped ML terms;
  #do iloop=1,`NumLoops'
* NOTE: in case of the Q vector we factor out a -2 factor as well:
    id ``LoopVar'`iloop''.UFp? = -1/2*tQ(`iloop')*UFp;
  #enddo
  .sort:Tagged Q;
  bracket tQ;
  .sort:Bracketed;
  fillexpression `Qvec' = `ExprID'(tQ);
  .sort:Filled Q;
  if (count(tQ,1) > 0) discard;
  .sort:Dropped Q terms;
  multiply tJ(1);
  .sort:Trivial J tag;
  bracket tJ;
  .sort:Bracketed;
  fillexpression `Jconst' = `ExprID'(tJ);
* Finally we store the remaining terms:
  .sort:J filled;
* Clear content of `ExprID':
  discard;
  .sort:FillArrays fin;
#endprocedure
*}}}
*
*{{{ CalcDet
* Routine to calculate a determinant for a table `TableID'
* which is an `N'x`N' matrix and put into `ExprID':
#procedure CalcDet(ExprID,TableID,N)
  .sort:CalcDet starts;
  local `ExprID' = <e_(1)*`TableID'(1,1)> + ... + <e_(`N')*`TableID'(1,`N')>;
  #do k=1,{`N'-1}
    id e_(UFi1?,...,UFi`k'?) =
    #do i=1,`N'
      + e_(`i',UFi1,...,UFi`k')*`TableID'({`k'+1},`i')
    #enddo
    ;
    Bracket e_;
    .sort:determ step `k';
    skip;
    nskip `ExprID';
    keep brackets;
  #enddo
  id e_(1,...,`N') = 1;
  .sort:CalcDet fin;
#endprocedure
*}}}
*
*{{{ CalcMinors
#procedure CalcMinors(ExprID,TableID,minor,N)
  .sort:CalcMinors start;
  local `ExprID' = <e_(1)*(`TableID'(1,1) + `minor'(1,1)*UFxinv)> + ... + 
                   <e_(`N')*(`TableID'(1,`N') + `minor'(1,`N')*UFxinv)>;
  #do k=1,{`N'-1}
    id e_(UFi1?,...,UFi`k'?) =
    #do i=1,`N'
      + e_(`i',UFi1,...,UFi`k')*(`TableID'({`k'+1},`i') +
                                 `minor'({`k'+1},`i')*UFxinv)
    #enddo
    ;
    Bracket e_;
    .sort:minors step `k';
    skip;
    nskip `ExprID';
    keep brackets;
  #enddo
  id e_(1,...,`N') = 1;
  .sort:Minors ready;
  if (count(UFxinv,1) == 0) multiply `minor'(0,0);
  id UFxinv = 1;
  .sort:CalcMinors fin;
#endprocedure
*}}}
*
*{{{ GetUpoly
* This routine calculates the U poly by isolating
* the determinant part of `ExprID', the determinant
* is labeled by the (0,0) element of the Tag function!
#procedure GetUpoly(ExprID,tagID,UpolyExprID)
 .sort:GetU starts;
* Bracket `ExprID' wrt `tagID':
  skip;
  nskip `ExprID';
  bracket `tagID';
  .sort:Bracketed;
  local `UpolyExprID' = `ExprID'[`tagID'(0,0)];
* Dropping the used tags:
  id `tagID'(0,0) = 0;
 .sort:GetU fin;
#endprocedure
*}}}
*
*{{{ CalcMLtilde
#procedure CalcMLtilde(ExprID,tagID,MLtID)
 .sort:CalcMLt starts;
 skip;
 nskip `ExprID';
 bracket `tagID';
 .sort:Bracketed;
 fillexpression `MLtID' = `ExprID'(`tagID');
 .sort:CalcMLt fin;
#endprocedure
*}}}
*
*{{{ GetFpoly
* This routine obtains the F polynomial using the Q
* vector, the J scalar and the previously calculated
* \tilde{M}_L matrix:
#procedure GetFpoly(UpolyExprID,N,MLtTableID,QvecTableID,JscalarID,FpolyExprID)
 .sort:GetF starts;
 local `FpolyExprID' = -`UpolyExprID'*`JscalarID'(1)
 #do i=1,`N'
   #do j=`i',`N'
     +
     #if (`i' != `j')
       2*
     #endif
     `MLtTableID'(`i',`j')*UFdp(`QvecTableID'(`i'))*UFdp(`QvecTableID'(`j'))
   #enddo
 #enddo
 ;
 .sort:F constructed;
 splitarg UFdp;
 .sort:arg splitted;
 #do i=1,1
   skip;
   nskip `FpolyExprID';
   id,once UFdp(UFx1?,UFx2?,?a) = UFdp(UFx1) + UFdp(UFx2,?a);
   also,once UFdp(UFp1?,UFp2?,?a) = UFdp(UFp1) + UFdp(UFp2,?a);
   if ((match(UFdp(UFx1?,UFx2?,?a)) > 0) || (match(UFdp(UFp1?,UFp2?,?a)) > 0)) redefine i "0";
   .sort:Decomp step;
 #enddo
 skip;
 nskip `FpolyExprID';
 print "%t";
 factarg UFdp;
 repeat id UFdp(?a,UFx1?,?b) = UFx1*UFdp(?a,?b);
 id UFdp(UFp1?)*UFdp(UFp2?) = d_(UFp1,UFp2);
 .sort:GetF fin;
#endprocedure
*}}}
*
*{{{ CalcUF
* This routine calculates the U and F polys from 
* from propagators having present in `ExprID' expression
* in the argument of a function `FuncID'. We assume that
* we have `NumLoops' loops and all the momenta with the 
* first `NumLoops' ones being loop momenta are present
* in the argument wildcard of `?Momenta'
* Note that we also offer to run a simplification routine
* if the `SimpRoutine' is not an empty string!
#procedure CalcUF(ExprID,FuncID,NumLoops,SimpRoutine,?Momenta)
 .sort:CalcUF starts;
  hide;
* Getting only the first term of `ExprID':
  local TMP = firstterm_(`ExprID');
  .sort:TMP created;
******************************
* LOOP AND EXTERNAL MOMENTA: *
******************************
* Getting our internal momenta representation relations:
  #define NLOOP "0"
  #define NPEXT "0"
* Getting the user-defined momenta and create association with
* internal notation:
  #call GetMomenta(`NumLoops',NLOOP,NPEXT,`?Momenta')
* Testing by printing out the momenta:
  #call PrintMomenta
*****************
* N EXPRESSION: *
*****************
* Creating the N expression (Eq. 2.6 of the Gluza paper:)
  #define NPROP "0"
  #call GenerateN(NPROP,`FuncID')
* Applying simplifications:
  #if (`SimpRoutine' != )
    #call `SimpRoutine'
  #else
    #write "No simplification routine..."
  #endif
  .sort:After simp;
*******************
* FILLING ARRAYS: *
*******************
* Creating tables to hold the M_L matrix and the Q vector:
  ctable,zerofill,ML(1:`NLOOP',1:`NLOOP');
  ctable,zerofill,Q(1:`NLOOP');
* This is the remnant Lorentz scalar piece:
  ctable,zerofill,J(1:1);
* This is the matrix defined in Eq. (2.12) of the Gruza paper:
  ctable,zerofill,MLt(1:`NLOOP',1:`NLOOP');
  #call FillArrays(TMP,UFL,UFP,`NLOOP',`NPEXT',ML,Q,J)
  printtable ML;
  printtable Q;
  printtable J;
  .sort:Dropping TMP;
  drop TMP;
****************************************
* CALCULATING DETERMINANT AND INVERSE: *
****************************************
  #call CalcMinors(UFpoly,ML,tMinv,`NLOOP')
***********************
* STORING THE U POLY: *
***********************
  #call GetUpoly(UFpoly,tMinv,Upoly)
**************************
* CALCULATE \tilde{M}_L: *
**************************
  #call CalcMLtilde(UFpoly,tMinv,MLt)
  printtable MLt;
*********************
* CALCULATE F POLY: *
*********************
  #call GetFpoly(Upoly,`NLOOP',MLt,Q,J,Fpoly)
  drop UFpoly;
  .sort:UF dropped;
* Applying simplifications:
  #if (`SimpRoutine' != )
    #call `SimpRoutine'
  #else
    #write "No simplification routine..."
  #endif
  .sort:After simp2;
 .sort:CalcUF fin;
#endprocedure
*}}}
