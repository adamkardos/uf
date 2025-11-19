*{{{ no1-integral
#include- ../src/declare-uf.h
#include- ../src/uf.h

cfunction myUF;
vectors l1,l2,l3,l4,p;
vectors l12,l13,l14,l23,l24,l34,l123,l124;
symbols x1,...,x11;

local F1 = myUF(
                 -l1-p,0,
                 -l13+l4-p,0,
                 -l1+l4-p,0,
                 -l12-p,0,
                 -l12,0,
                 -l123,0,
                 -l124,0,
                 -l1,0,
                 -l24,0,
                 -l3+l4,0,
                 -l3,0
               );

.sort

argument;
  id l12 = l1+l2;
  id l13 = l1+l3;
  id l14 = l1+l4;
  id l23 = l2+l3;
  id l24 = l2+l4;
  id l34 = l3+l4;
  id l123 = l1+l2+l3;
  id l124 = l1+l2+l4;
endargument;

#call CalcUF(F1,myUF,4,,l1,l2,l3,l4,p)

multiply replace_(<UFx1,x1>,...,<UFx11,x11>);

id p.p = -1;

.sort

local DiffU =
  Upoly
  -
  (
     x5*x6*x8*x9+x4*x6*x8*x9+x3*x6*x8*x9+x11*x6*x8*x9+x2*x5*x8*x9+x11*x5*x8*x9
    +x10*x5*x8*x9+x2*x4*x8*x9+x11*x4*x8*x9+x10*x4*x8*x9+x2*x3*x8*x9
    +x11*x3*x8*x9+x10*x3*x8*x9+x11*x2*x8*x9+x10*x11*x8*x9+x5*x6*x7*x9
    +x4*x6*x7*x9+x3*x6*x7*x9+x11*x6*x7*x9+x2*x5*x7*x9+x11*x5*x7*x9
    +x10*x5*x7*x9+x2*x4*x7*x9+x11*x4*x7*x9+x10*x4*x7*x9+x2*x3*x7*x9
    +x11*x3*x7*x9+x10*x3*x7*x9+x11*x2*x7*x9+x10*x11*x7*x9+x10*x5*x6*x9
    +x1*x5*x6*x9+x10*x4*x6*x9+x1*x4*x6*x9+x10*x3*x6*x9+x1*x3*x6*x9
    +x10*x11*x6*x9+x1*x11*x6*x9+x10*x2*x5*x9+x1*x2*x5*x9+x10*x11*x5*x9
    +x1*x11*x5*x9+x1*x10*x5*x9+x10*x2*x4*x9+x1*x2*x4*x9+x10*x11*x4*x9
    +x1*x11*x4*x9+x1*x10*x4*x9+x10*x2*x3*x9+x1*x2*x3*x9+x10*x11*x3*x9
    +x1*x11*x3*x9+x1*x10*x3*x9+x10*x11*x2*x9+x1*x11*x2*x9+x1*x10*x11*x9
    +x5*x6*x7*x8+x4*x6*x7*x8+x3*x6*x7*x8+x11*x6*x7*x8+x2*x5*x7*x8
    +x11*x5*x7*x8+x10*x5*x7*x8+x2*x4*x7*x8+x11*x4*x7*x8+x10*x4*x7*x8
    +x2*x3*x7*x8+x11*x3*x7*x8+x10*x3*x7*x8+x11*x2*x7*x8+x10*x11*x7*x8
    +x3*x5*x6*x8+x2*x5*x6*x8+x10*x5*x6*x8+x3*x4*x6*x8+x2*x4*x6*x8
    +x10*x4*x6*x8+x2*x3*x6*x8+x11*x3*x6*x8+x10*x3*x6*x8+x11*x2*x6*x8
    +x10*x11*x6*x8+x2*x3*x5*x8+x11*x3*x5*x8+x10*x3*x5*x8+x11*x2*x5*x8
    +x10*x11*x5*x8+x2*x3*x4*x8+x11*x3*x4*x8+x10*x3*x4*x8+x11*x2*x4*x8
    +x10*x11*x4*x8+x3*x5*x6*x7+x2*x5*x6*x7+x1*x5*x6*x7+x3*x4*x6*x7
    +x2*x4*x6*x7+x1*x4*x6*x7+x2*x3*x6*x7+x11*x3*x6*x7+x1*x3*x6*x7
    +x11*x2*x6*x7+x1*x11*x6*x7+x2*x3*x5*x7+x11*x3*x5*x7+x10*x3*x5*x7
    +x11*x2*x5*x7+x10*x2*x5*x7+x1*x2*x5*x7+x1*x11*x5*x7+x1*x10*x5*x7
    +x2*x3*x4*x7+x11*x3*x4*x7+x10*x3*x4*x7+x11*x2*x4*x7+x10*x2*x4*x7
    +x1*x2*x4*x7+x1*x11*x4*x7+x1*x10*x4*x7+x10*x2*x3*x7+x1*x2*x3*x7
    +x10*x11*x3*x7+x1*x11*x3*x7+x1*x10*x3*x7+x10*x11*x2*x7+x1*x11*x2*x7
    +x1*x10*x11*x7+x10*x3*x5*x6+x1*x3*x5*x6+x10*x2*x5*x6+x1*x2*x5*x6
    +x1*x10*x5*x6+x10*x3*x4*x6+x1*x3*x4*x6+x10*x2*x4*x6+x1*x2*x4*x6
    +x1*x10*x4*x6+x10*x2*x3*x6+x1*x2*x3*x6+x10*x11*x3*x6+x1*x11*x3*x6
    +x1*x10*x3*x6+x10*x11*x2*x6+x1*x11*x2*x6+x1*x10*x11*x6+x10*x2*x3*x5
    +x1*x2*x3*x5+x10*x11*x3*x5+x1*x11*x3*x5+x1*x10*x3*x5+x10*x11*x2*x5
    +x1*x11*x2*x5+x1*x10*x11*x5+x10*x2*x3*x4+x1*x2*x3*x4+x10*x11*x3*x4
    +x1*x11*x3*x4+x1*x10*x3*x4+x10*x11*x2*x4+x1*x11*x2*x4+x1*x10*x11*x4
  )
;

local DiffF =
  Fpoly
  -
  (
    x2*(x4*(x5*(x7*(x9+x8+x11+x10)+x8*(x9+x11)+x10*x9+x6*(x8+x7+x10)+x10*x11)
           +x6*(x7*(x9+x8+x11)+x8*(x9+x11+x10)+x10*x9+x10*x11)
           +x7*(x10*x9+x10*x8+x10*x11)+x8*(x10*x9+x10*x11))
       +x3*(x6*(x7*(x9+x8)+x8*(x9+x10)+x10*x9)+x5*(x7*(x9+x8)+x8*(x9+x10)+x10*x9)
                                              +x7*(x10*x9+x10*x8)+x10*x8*x9
                                              +x4*(x6*(x8+x7+x10)+x5*(x8+x7+x10)
                                                               +x10*x8+x10*x7))
       +x5*(x6*(x7*(x9+x8)+x8*(x9+x10)+x10*x9)+x7*((x11+x10)*x9+(x11+x10)*x8)
                                              +x8*((x11+x10)*x9+x10*x11)
                                              +x10*x11*x9)
       +x6*(x7*(x11*x9+x11*x8)+x8*(x11*x9+x10*x11)+x10*x11*x9)
       +x7*(x10*x11*x9+x10*x11*x8)+x10*x11*x8*x9)
     +x1*(x2*(x4*(x7*(x9+x8+x11)+x6*(x9+x8+x11)+x5*(x9+x7+x6+x11)+x8*(x9+x11))
             +x3*(x7*(x9+x8)+x6*(x9+x8)+x5*(x9+x8)+x8*x9+x4*(x8+x7+x6+x5))
             +x5*(x7*(x9+x8)+x6*(x9+x8)+x8*(x9+x11)+x11*x9)+x7*(x11*x9+x11*x8)
             +x6*(x11*x9+x11*x8)+x11*x8*x9)
         +x4*(x6*(x7*(x9+x8+x11)+x8*(x9+x10)+(x11+x10)*x9+x10*x11)
             +x5*(x6*(x9+x7+x10)+(x11+x10)*x9+(x11+x10)*x7+x10*x11)
             +x7*((x11+x10)*x9+(x11+x10)*x8+x10*x11)+x8*((x11+x10)*x9+x10*x11))
         +x3*(x6*(x7*(x9+x8)+x8*(x9+x11+x10)+(x11+x10)*x9)
             +x5*(x6*(x9+x8)+(x11+x10)*x9+(x11+x10)*x8)
             +x7*((x11+x10)*x9+(x11+x10)*x8)+(x11+x10)*x8*x9
             +x4*(x6*(x8+x7+x11+x10)+(x11+x10)*x8+(x11+x10)*x7+x5*(x6+x11+x10)))
         +x5*(x6*(x7*(x9+x8)+x8*(x9+x10)+x10*x9)
             +x7*((x11+x10)*x9+(x11+x10)*x8)+x8*((x11+x10)*x9+x10*x11)+x10*x11*x9)
         +x6*(x7*(x11*x9+x11*x8)+x8*(x11*x9+x10*x11)+x10*x11*x9)
         +x7*(x10*x11*x9+x10*x11*x8)+x10*x11*x8*x9)
     +x3*(x5*(x6*(x7*(x9+x8)+x8*(x9+x10)+x10*x9)
             +x7*((x11+x10)*x9+(x11+x10)*x8)+x8*((x11+x10)*x9+x10*x11)+x10*x11*x9)
         +x6*(x7*(x11*x9+x11*x8)+x8*(x11*x9+x10*x11)+x10*x11*x9)
         +x7*(x10*x11*x9+x10*x11*x8)+x10*x11*x8*x9
         +x4*(x5*(x6*(x8+x7+x10)+(x11+x10)*x8+(x11+x10)*x7+x10*x11)
             +x6*(x11*x8+x11*x7+x10*x11)+x10*x11*x8+x10*x11*x7))
     +x4*(x5*(x6*(x7*(x9+x8)+x8*(x9+x10)+x10*x9)
             +x7*((x11+x10)*x9+(x11+x10)*x8)+x8*((x11+x10)*x9+x10*x11)+x10*x11*x9)
         +x6*(x7*(x11*x9+x11*x8)+x8*(x11*x9+x10*x11)+x10*x11*x9)
         +x7*(x10*x11*x9+x10*x11*x8)+x10*x11*x8*x9)
  )
;

.sort

print +s;
.end
assert succeeded?
assert result("DiffU") =~ expr("
  0 
")
assert result("DiffF") =~ expr("
  0 
")
*}}}
