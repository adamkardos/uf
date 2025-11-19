*{{{ BE-integral
#include- ../src/declare-uf.h
#include- ../src/uf.h

cfunction myUF;
vectors l1,l2,l3,l12,l13,l23,p;
symbols x1,...,x8;

local F1 = myUF(-l1-p,0,
                -l12 - p,0,
                -l12,0,
                -l13,0,
                -l1,0,
                -l3,0,
                -l2 + l3,0,
                -l2,0
               );

.sort

argument;
  id l12 = l1 + l2;
  id l13 = l1 + l3;
  id l23 = l2 + l3;
endargument;

#call CalcUF(F1,myUF,3,,l1,l2,l3,p)

multiply replace_(<UFx1,x1>,...,<UFx8,x8>);

id p.p = +1;

.sort

local DiffU =
  Upoly
  +
  (
      x5*x7*x8 + x4*x7*x8 + x3*x7*x8 + x2*x7*x8 + x1*x7*x8 + x5*x6*x8
    + x4*x6*x8 + x3*x6*x8 + x2*x6*x8 + x1*x6*x8 + x4*x5*x8 + x3*x4*x8 + x2*x4*x8
    + x1*x4*x8 + x5*x6*x7 + x4*x6*x7 + x3*x6*x7 + x2*x6*x7 + x1*x6*x7 + x4*x5*x7
    + x3*x5*x7 + x2*x5*x7 + x1*x4*x7 + x1*x3*x7 + x1*x2*x7 + x3*x5*x6 + x2*x5*x6
    + x3*x4*x6 + x2*x4*x6 + x1*x3*x6 + x1*x2*x6 + x3*x4*x5 + x2*x4*x5 + x1*x3*x4
    + x1*x2*x4

  )
;

local DiffF =
  Fpoly
  -
  (
      x2*x5*x7*x8 + x1*x5*x7*x8 + x2*x4*x7*x8 + x1*x4*x7*x8 + x2*x3*x7*x8
    + x1*x3*x7*x8 + x2*x5*x6*x8 + x1*x5*x6*x8 + x2*x4*x6*x8 + x1*x4*x6*x8
    + x2*x3*x6*x8 + x1*x3*x6*x8 + x2*x4*x5*x8 + x1*x4*x5*x8 + x2*x3*x4*x8
    + x1*x3*x4*x8 + x2*x5*x6*x7 + x1*x5*x6*x7 + x2*x4*x6*x7 + x1*x4*x6*x7
    + x2*x3*x6*x7 + x1*x3*x6*x7 + x2*x4*x5*x7 + x1*x4*x5*x7 + x2*x3*x5*x7
    + x1*x3*x5*x7 + x1*x2*x5*x7 + x1*x2*x4*x7 + x1*x2*x3*x7 + x2*x3*x5*x6
    + x1*x3*x5*x6 + x1*x2*x5*x6 + x2*x3*x4*x6 + x1*x3*x4*x6 + x1*x2*x4*x6
    + x1*x2*x3*x6 + x2*x3*x4*x5 + x1*x3*x4*x5 + x1*x2*x4*x5 + x1*x2*x3*x4
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
