*{{{ z6-integral
#include- ../src/declare-uf.h
#include- ../src/uf.h

cfunction myUF;
vectors l1,l2,l3,l4,l5,l6;
symbols x1,...,x12;

local F1 = myUF(l1-l6,0,
                l1,0,
                l6,0,
                l1-l2,0,
                l5-l2,0,
                l5-l6,0,
                l2,0,
                l3-l5,0,
                l3,0,
                l4-l3,0,
                l4-l6,0,
                l4,0
               );

.sort

#call CalcUF(F1,myUF,6,,l1,l2,l3,l4,l5,l6)

multiply replace_(<UFx1,x1>,...,<UFx12,x12>);

.sort

local DiffU =
  Upoly
  +
  (
    + x1*x2*x4*x5*x8*x10+x1*x2*x4*x5*x8*x11+x1*x2*x4*x5*x8*x12
    + x1*x2*x4*x5*x9*x10+x1*x2*x4*x5*x9*x11+x1*x2*x4*x5*x9*x12
    + x1*x2*x4*x5*x10*x11+x1*x2*x4*x5*x10*x12+x1*x2*x4*x6*x8*x10
    + x1*x2*x4*x6*x8*x11+x1*x2*x4*x6*x8*x12+x1*x2*x4*x6*x9*x10
    + x1*x2*x4*x6*x9*x11+x1*x2*x4*x6*x9*x12+x1*x2*x4*x6*x10*x11
    + x1*x2*x4*x6*x10*x12 + x1*x2*x4*x8*x9*x10 + x1*x2*x4*x8*x9*x11
    + x1*x2*x4*x8*x9*x12 + x1*x2*x4*x8*x10*x11 + x1*x2*x4*x8*x10*x12
    + x1*x2*x5*x6*x8*x10 + x1*x2*x5*x6*x8*x11 + x1*x2*x5*x6*x8*x12
    + x1*x2*x5*x6*x9*x10 + x1*x2*x5*x6*x9*x11 + x1*x2*x5*x6*x9*x12
    + x1*x2*x5*x6*x10*x11 + x1*x2*x5*x6*x10*x12 + x1*x2*x5*x7*x8*x10
    + x1*x2*x5*x7*x8*x11 + x1*x2*x5*x7*x8*x12 + x1*x2*x5*x7*x9*x10
    + x1*x2*x5*x7*x9*x11 + x1*x2*x5*x7*x9*x12 + x1*x2*x5*x7*x10*x11
    + x1*x2*x5*x7*x10*x12 + x1*x2*x5*x8*x9*x10 + x1*x2*x5*x8*x9*x11
    + x1*x2*x5*x8*x9*x12
    + x1*x2*x5*x8*x10*x11+x1*x2*x5*x8*x10*x12+x1*x2*x6*x7*x8*x10
    + x1*x2*x6*x7*x8*x11+x1*x2*x6*x7*x8*x12+x1*x2*x6*x7*x9*x10
    + x1*x2*x6*x7*x9*x11+x1*x2*x6*x7*x9*x12+x1*x2*x6*x7*x10*x11
    + x1*x2*x6*x7*x10*x12+x1*x2*x7*x8*x9*x10+x1*x2*x7*x8*x9*x11
    + x1*x2*x7*x8*x9*x12+x1*x2*x7*x8*x10*x11+x1*x2*x7*x8*x10*x12
    + x1*x3*x4*x5*x8*x10+x1*x3*x4*x5*x8*x11+x1*x3*x4*x5*x8*x12
    + x1*x3*x4*x5*x9*x10+x1*x3*x4*x5*x9*x11+x1*x3*x4*x5*x9*x12
    + x1*x3*x4*x5*x10*x11+x1*x3*x4*x5*x10*x12+x1*x3*x4*x6*x8*x10
    + x1*x3*x4*x6*x8*x11+x1*x3*x4*x6*x8*x12+x1*x3*x4*x6*x9*x10
    + x1*x3*x4*x6*x9*x11+x1*x3*x4*x6*x9*x12+x1*x3*x4*x6*x10*x11
    + x1*x3*x4*x6*x10*x12+x1*x3*x4*x8*x9*x10+x1*x3*x4*x8*x9*x11
    + x1*x3*x4*x8*x9*x12+x1*x3*x4*x8*x10*x11+x1*x3*x4*x8*x10*x12
    + x1*x3*x5*x6*x8*x10+x1*x3*x5*x6*x8*x11+x1*x3*x5*x6*x8*x12
    + x1*x3*x5*x6*x9*x10+x1*x3*x5*x6*x9*x11+x1*x3*x5*x6*x9*x12
    + x1*x3*x5*x6*x10*x11+x1*x3*x5*x6*x10*x12+x1*x3*x5*x7*x8*x10
    + x1*x3*x5*x7*x8*x11+x1*x3*x5*x7*x8*x12+x1*x3*x5*x7*x9*x10
    + x1*x3*x5*x7*x9*x11+x1*x3*x5*x7*x9*x12+x1*x3*x5*x7*x10*x11
    + x1*x3*x5*x7*x10*x12+x1*x3*x5*x8*x9*x10+x1*x3*x5*x8*x9*x11
    + x1*x3*x5*x8*x9*x12+x1*x3*x5*x8*x10*x11+x1*x3*x5*x8*x10*x12
    + x1*x3*x6*x7*x8*x10+x1*x3*x6*x7*x8*x11+x1*x3*x6*x7*x8*x12
    + x1*x3*x6*x7*x9*x10+x1*x3*x6*x7*x9*x11+x1*x3*x6*x7*x9*x12
    + x1*x3*x6*x7*x10*x11+x1*x3*x6*x7*x10*x12+x1*x3*x7*x8*x9*x10
    + x1*x3*x7*x8*x9*x11+x1*x3*x7*x8*x9*x12+x1*x3*x7*x8*x10*x11
    + x1*x3*x7*x8*x10*x12+x1*x4*x5*x7*x8*x10+x1*x4*x5*x7*x8*x11
    + x1*x4*x5*x7*x8*x12+x1*x4*x5*x7*x9*x10+x1*x4*x5*x7*x9*x11
    + x1*x4*x5*x7*x9*x12+x1*x4*x5*x7*x10*x11+x1*x4*x5*x7*x10*x12
    + x1*x4*x5*x8*x9*x10+x1*x4*x5*x8*x9*x11+x1*x4*x5*x8*x9*x12
    + x1*x4*x5*x8*x10*x12+x1*x4*x5*x8*x11*x12+x1*x4*x5*x9*x10*x11
    + x1*x4*x5*x9*x11*x12+x1*x4*x5*x10*x11*x12+x1*x4*x6*x7*x8*x10
    + x1*x4*x6*x7*x8*x11+x1*x4*x6*x7*x8*x12+x1*x4*x6*x7*x9*x10
    + x1*x4*x6*x7*x9*x11+x1*x4*x6*x7*x9*x12+x1*x4*x6*x7*x10*x11
    + x1*x4*x6*x7*x10*x12+x1*x4*x6*x8*x9*x10+x1*x4*x6*x8*x9*x11
    + x1*x4*x6*x8*x9*x12+x1*x4*x6*x8*x10*x12+x1*x4*x6*x8*x11*x12
    + x1*x4*x6*x9*x10*x11+x1*x4*x6*x9*x11*x12+x1*x4*x6*x10*x11*x12
    + x1*x4*x7*x8*x9*x10+x1*x4*x7*x8*x9*x11+x1*x4*x7*x8*x9*x12
    + x1*x4*x7*x8*x10*x11+x1*x4*x7*x8*x10*x12+x1*x4*x8*x9*x10*x11
    + x1*x4*x8*x9*x11*x12+x1*x4*x8*x10*x11*x12+x1*x5*x6*x7*x8*x10 
    + x1*x5*x6*x7*x8*x11+x1*x5*x6*x7*x8*x12+x1*x5*x6*x7*x9*x10
    + x1*x5*x6*x7*x9*x11+x1*x5*x6*x7*x9*x12+x1*x5*x6*x7*x10*x11
    + x1*x5*x6*x7*x10*x12+x1*x5*x6*x8*x9*x10+x1*x5*x6*x8*x9*x11
    + x1*x5*x6*x8*x9*x12+x1*x5*x6*x8*x10*x12+x1*x5*x6*x8*x11*x12
    + x1*x5*x6*x9*x10*x11+x1*x5*x6*x9*x11*x12+x1*x5*x6*x10*x11*x12
    + x1*x5*x7*x8*x10*x11+x1*x5*x7*x8*x11*x12+x1*x5*x7*x9*x10*x11
    + x1*x5*x7*x9*x11*x12+x1*x5*x7*x10*x11*x12+x1*x5*x8*x9*x10*x11
    + x1*x5*x8*x9*x11*x12+x1*x5*x8*x10*x11*x12+x1*x6*x7*x8*x9*x10
    + x1*x6*x7*x8*x9*x11+x1*x6*x7*x8*x9*x12+x1*x6*x7*x8*x10*x12
    + x1*x6*x7*x8*x11*x12+x1*x6*x7*x9*x10*x11+x1*x6*x7*x9*x11*x12
    + x1*x6*x7*x10*x11*x12+x1*x7*x8*x9*x10*x11+x1*x7*x8*x9*x11*x12
    + x1*x7*x8*x10*x11*x12+x2*x3*x4*x5*x8*x10+x2*x3*x4*x5*x8*x11
    + x2*x3*x4*x5*x8*x12+x2*x3*x4*x5*x9*x10+x2*x3*x4*x5*x9*x11
    + x2*x3*x4*x5*x9*x12+x2*x3*x4*x5*x10*x11+x2*x3*x4*x5*x10*x12
    + x2*x3*x4*x6*x8*x10+x2*x3*x4*x6*x8*x11+x2*x3*x4*x6*x8*x12
    + x2*x3*x4*x6*x9*x10+x2*x3*x4*x6*x9*x11+x2*x3*x4*x6*x9*x12
    + x2*x3*x4*x6*x10*x11+x2*x3*x4*x6*x10*x12+x2*x3*x4*x8*x9*x10
    + x2*x3*x4*x8*x9*x11+x2*x3*x4*x8*x9*x12+x2*x3*x4*x8*x10*x11
    + x2*x3*x4*x8*x10*x12+x2*x3*x5*x6*x8*x10+x2*x3*x5*x6*x8*x11
    + x2*x3*x5*x6*x8*x12+x2*x3*x5*x6*x9*x10+x2*x3*x5*x6*x9*x11
    + x2*x3*x5*x6*x9*x12+x2*x3*x5*x6*x10*x11+x2*x3*x5*x6*x10*x12
    + x2*x3*x5*x7*x8*x10+x2*x3*x5*x7*x8*x11+x2*x3*x5*x7*x8*x12
    + x2*x3*x5*x7*x9*x10+x2*x3*x5*x7*x9*x11+x2*x3*x5*x7*x9*x12
    + x2*x3*x5*x7*x10*x11+x2*x3*x5*x7*x10*x12+x2*x3*x5*x8*x9*x10
    + x2*x3*x5*x8*x9*x11+x2*x3*x5*x8*x9*x12+x2*x3*x5*x8*x10*x11
    + x2*x3*x5*x8*x10*x12+x2*x3*x6*x7*x8*x10+x2*x3*x6*x7*x8*x11
    + x2*x3*x6*x7*x8*x12+x2*x3*x6*x7*x9*x10+x2*x3*x6*x7*x9*x11
    + x2*x3*x6*x7*x9*x12+x2*x3*x6*x7*x10*x11+x2*x3*x6*x7*x10*x12
    + x2*x3*x7*x8*x9*x10+x2*x3*x7*x8*x9*x11+x2*x3*x7*x8*x9*x12
    + x2*x3*x7*x8*x10*x11+x2*x3*x7*x8*x10*x12+x2*x4*x5*x6*x8*x10
    + x2*x4*x5*x6*x8*x11+x2*x4*x5*x6*x8*x12+x2*x4*x5*x6*x9*x10
    + x2*x4*x5*x6*x9*x11+x2*x4*x5*x6*x9*x12+x2*x4*x5*x6*x10*x11
    + x2*x4*x5*x6*x10*x12+x2*x4*x5*x8*x10*x11+x2*x4*x5*x8*x11*x12
    + x2*x4*x5*x9*x10*x11+x2*x4*x5*x9*x11*x12+x2*x4*x5*x10*x11*x12
    + x2*x4*x6*x8*x9*x10+x2*x4*x6*x8*x9*x11+x2*x4*x6*x8*x9*x12
    + x2*x4*x6*x8*x10*x12+x2*x4*x6*x8*x11*x12+x2*x4*x6*x9*x10*x11
    + x2*x4*x6*x9*x11*x12+x2*x4*x6*x10*x11*x12+x2*x4*x8*x9*x10*x11
    + x2*x4*x8*x9*x11*x12+x2*x4*x8*x10*x11*x12+x2*x5*x6*x7*x8*x10
    + x2*x5*x6*x7*x8*x11+x2*x5*x6*x7*x8*x12+x2*x5*x6*x7*x9*x10
    + x2*x5*x6*x7*x9*x11+x2*x5*x6*x7*x9*x12+x2*x5*x6*x7*x10*x11
    + x2*x5*x6*x7*x10*x12+x2*x5*x6*x8*x9*x10+x2*x5*x6*x8*x9*x11
    + x2*x5*x6*x8*x9*x12+x2*x5*x6*x8*x10*x12+x2*x5*x6*x8*x11*x12
    + x2*x5*x6*x9*x10*x11+x2*x5*x6*x9*x11*x12+x2*x5*x6*x10*x11*x12
    + x2*x5*x7*x8*x10*x11+x2*x5*x7*x8*x11*x12+x2*x5*x7*x9*x10*x11
    + x2*x5*x7*x9*x11*x12+x2*x5*x7*x10*x11*x12+x2*x5*x8*x9*x10*x11
    + x2*x5*x8*x9*x11*x12+x2*x5*x8*x10*x11*x12+x2*x6*x7*x8*x9*x10
    + x2*x6*x7*x8*x9*x11+x2*x6*x7*x8*x9*x12+x2*x6*x7*x8*x10*x12
    + x2*x6*x7*x8*x11*x12+x2*x6*x7*x9*x10*x11+x2*x6*x7*x9*x11*x12
    + x2*x6*x7*x10*x11*x12+x2*x7*x8*x9*x10*x11+x2*x7*x8*x9*x11*x12
    + x2*x7*x8*x10*x11*x12+x3*x4*x5*x6*x8*x10+x3*x4*x5*x6*x8*x11
    + x3*x4*x5*x6*x8*x12+x3*x4*x5*x6*x9*x10+x3*x4*x5*x6*x9*x11
    + x3*x4*x5*x6*x9*x12+x3*x4*x5*x6*x10*x11+x3*x4*x5*x6*x10*x12
    + x3*x4*x5*x7*x8*x10+x3*x4*x5*x7*x8*x11+x3*x4*x5*x7*x8*x12
    + x3*x4*x5*x7*x9*x10+x3*x4*x5*x7*x9*x11+x3*x4*x5*x7*x9*x12
    + x3*x4*x5*x7*x10*x11+x3*x4*x5*x7*x10*x12+x3*x4*x5*x8*x9*x10
    + x3*x4*x5*x8*x9*x11+x3*x4*x5*x8*x9*x12+x3*x4*x5*x8*x10*x11
    + x3*x4*x5*x8*x10*x12+x3*x4*x6*x7*x8*x10+x3*x4*x6*x7*x8*x11
    + x3*x4*x6*x7*x8*x12+x3*x4*x6*x7*x9*x10+x3*x4*x6*x7*x9*x11
    + x3*x4*x6*x7*x9*x12+x3*x4*x6*x7*x10*x11+x3*x4*x6*x7*x10*x12
    + x3*x4*x7*x8*x9*x10+x3*x4*x7*x8*x9*x11+x3*x4*x7*x8*x9*x12
    + x3*x4*x7*x8*x10*x11+x3*x4*x7*x8*x10*x12+x4*x5*x6*x7*x8*x10
    + x4*x5*x6*x7*x8*x11+x4*x5*x6*x7*x8*x12+x4*x5*x6*x7*x9*x10
    + x4*x5*x6*x7*x9*x11+x4*x5*x6*x7*x9*x12+x4*x5*x6*x7*x10*x11
    + x4*x5*x6*x7*x10*x12+x4*x5*x6*x8*x9*x10+x4*x5*x6*x8*x9*x11
    + x4*x5*x6*x8*x9*x12+x4*x5*x6*x8*x10*x12+x4*x5*x6*x8*x11*x12
    + x4*x5*x6*x9*x10*x11+x4*x5*x6*x9*x11*x12+x4*x5*x6*x10*x11*x12
    + x4*x5*x7*x8*x10*x11+x4*x5*x7*x8*x11*x12+x4*x5*x7*x9*x10*x11
    + x4*x5*x7*x9*x11*x12+x4*x5*x7*x10*x11*x12+x4*x5*x8*x9*x10*x11
    + x4*x5*x8*x9*x11*x12+x4*x5*x8*x10*x11*x12+x4*x6*x7*x8*x9*x10
    + x4*x6*x7*x8*x9*x11+x4*x6*x7*x8*x9*x12+x4*x6*x7*x8*x10*x12
    + x4*x6*x7*x8*x11*x12+x4*x6*x7*x9*x10*x11+x4*x6*x7*x9*x11*x12
    + x4*x6*x7*x10*x11*x12+x4*x7*x8*x9*x10*x11+x4*x7*x8*x9*x11*x12
    + x4*x7*x8*x10*x11*x12
  )
;

local DiffF =
  Fpoly
  -
  (
    0
  )
;

.sort

print +sss;
.end
assert succeeded?
assert result("DiffU") =~ expr("
  0 
")
assert result("DiffF") =~ expr("
  0 
")
*}}}
