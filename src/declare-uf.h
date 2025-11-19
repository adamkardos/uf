* Declarations needed for the UF FORM package:
vectors UFp1,...,UFp10;
vectors UFl1,...,UFl10;
symbols UFx1,...,UFx99;
indices UFi1,...,UFi99;
vector UFp;
symbols UFm;
cfunction tM,tQ,tJ,tMinv;
cfunction UFdp;
*
* This is needed for the CalcMinors routine:
symbol UFxinv(:1);
*
#define UFMAXLOOP "10"
#define UFMAXEXT "10"
* Filling up preprocessor variables:
#do imom=1,`UFMAXLOOP'
  #define UFL`imom' ""
#enddo
#do imom=1,`UFMAXEXT'
  #define UFP`imom' ""
#enddo
