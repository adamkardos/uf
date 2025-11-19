*{{{ lala-integral
#include- ../src/declare-uf.h
#include- ../src/uf.h

cfunction myUF;
vectors l1,l2,l3,l4,p;
vectors l12,l13,l14,l23,l24,l34,l123,l124,l134,l1234;
symbols x1,...,x11;

local F1 = myUF(
                 -l1-p,0,
                 -l134-p,0,
                 -l1234-p,0,
                 -l1234,0,
                 -l14,0,
                 -l1,0,
                 -l4,0,
                 -l3,0,
                 -l2,0
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
  id l134 = l1+l3+l4;
  id l1234 = l1+l2+l3+l4;
endargument;

#call CalcUF(F1,myUF,4,,l1,l2,l3,l4,p)

multiply replace_(<UFx1,x1>,...,<UFx11,x11>);

id p.p = -1;

.sort

local DiffU =
  Upoly
  -
  (
     x6*x7*x8*x9+x5*x7*x8*x9+x4*x7*x8*x9+x3*x7*x8*x9+x2*x7*x8*x9+x1*x7*x8*x9
    +x5*x6*x8*x9+x4*x6*x8*x9+x3*x6*x8*x9+x2*x6*x8*x9+x1*x5*x8*x9
    +x1*x4*x8*x9+x1*x3*x8*x9+x1*x2*x8*x9+x4*x6*x7*x9+x3*x6*x7*x9
    +x2*x6*x7*x9+x4*x5*x7*x9+x3*x5*x7*x9+x2*x5*x7*x9+x1*x4*x7*x9
    +x1*x3*x7*x9+x1*x2*x7*x9+x4*x5*x6*x9+x3*x5*x6*x9+x2*x5*x6*x9
    +x1*x4*x5*x9+x1*x3*x5*x9+x1*x2*x5*x9+x4*x6*x7*x8+x3*x6*x7*x8
    +x4*x5*x7*x8+x3*x5*x7*x8+x2*x4*x7*x8+x1*x4*x7*x8+x2*x3*x7*x8
    +x1*x3*x7*x8+x4*x5*x6*x8+x3*x5*x6*x8+x2*x4*x6*x8+x2*x3*x6*x8
    +x1*x4*x5*x8+x1*x3*x5*x8+x1*x2*x4*x8+x1*x2*x3*x8+x2*x4*x6*x7
    +x2*x3*x6*x7+x2*x4*x5*x7+x2*x3*x5*x7+x1*x2*x4*x7+x1*x2*x3*x7
    +x2*x4*x5*x6+x2*x3*x5*x6+x1*x2*x4*x5+x1*x2*x3*x5
  )
;

local DiffF =
  Fpoly
  -
  (
    x1*(x2*(x4*(x5*(x9+x8+x7+x6)+x8*x9+x7*x9+x6*(x8+x7))
       +x5*(x8*x9+x7*x9+x6*x9)+x6*(x8*x9+x7*x9)
       +x3*(x5*(x8+x7+x6)+x4*(x8+x7+x5)+x6*(x8+x7)))
   +x3*(x5*(x7*(x9+x8)+x6*(x9+x8)+x8*x9)+x4*(x7*(x9+x8)+x5*(x9+x8)+x8*x9)
                                        +x6*(x7*(x9+x8)+x8*x9))
   +x4*(x5*(x7*(x9+x8)+x6*(x9+x8))+x6*(x7*(x9+x8)+x8*x9)+x7*x8*x9)
   +x5*(x7*x8*x9+x6*x8*x9)+x6*x7*x8*x9)
 +x2*(x4*(x5*(x7*(x9+x8)+x6*(x9+x8))+x6*(x7*(x9+x8)+x8*x9)+x7*x8*x9)
     +x5*(x7*x8*x9+x6*x8*x9)+x6*x7*x8*x9
     +x3*(x4*(x6*(x8+x7)+x7*x8+x5*(x7+x6))+x5*(x7*x8+x6*x8)+x6*x7*x8))
 +x3*(x4*(x5*(x7*(x9+x8)+x6*(x9+x8))+x6*(x7*(x9+x8)+x8*x9)+x7*x8*x9)
     +x5*(x7*x8*x9+x6*x8*x9)+x6*x7*x8*x9)
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
