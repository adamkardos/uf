*{{{ z5-integral
#include- ../src/declare-uf.h
#include- ../src/uf.h

cfunction myUF;
vectors l1,l2,l3,l4,l5;
symbols x1,...,x10;

local F1 = myUF(l1-l5,0,
                l1,0,
                l5,0,
                l1-l2,0,
                l2-l4,0,
                l4-l5,0,
                l2,0,
                l3-l4,0,
                l3,0,
                l3-l5,0
               );

.sort

#call CalcUF(F1,myUF,5,,l1,l2,l3,l4,l5)

multiply replace_(<UFx1,x1>,...,<UFx10,x10>);

.sort

local DiffU =
  Upoly
  -
  (
    x4*x6*x7*x8*x9 + x2*x6*x7*x8*x9 + x1*x6*x7*x8*x9 + x3*x4*x7*x8*x9 + 
    x10*x4*x7*x8*x9 + x1*x4*x7*x8*x9 + x2*x3*x7*x8*x9 + x1*x3*x7*x8*x9 + 
    x10*x2*x7*x8*x9 + x1*x2*x7*x8*x9 + x1*x10*x7*x8*x9 + x4*x5*x6*x8*x9 + 
    x2*x5*x6*x8*x9 + x1*x5*x6*x8*x9 + x2*x4*x6*x8*x9 + x1*x4*x6*x8*x9 + 
    x3*x4*x5*x8*x9 + x10*x4*x5*x8*x9 + x1*x4*x5*x8*x9 + x2*x3*x5*x8*x9 + 
    x1*x3*x5*x8*x9 + x10*x2*x5*x8*x9 + x1*x2*x5*x8*x9 + x1*x10*x5*x8*x9 + 
    x2*x3*x4*x8*x9 + x1*x3*x4*x8*x9 + x10*x2*x4*x8*x9 + x1*x2*x4*x8*x9 + 
    x1*x10*x4*x8*x9 + x4*x5*x6*x7*x9 + x2*x5*x6*x7*x9 + x1*x5*x6*x7*x9 + 
    x3*x4*x6*x7*x9 + x10*x4*x6*x7*x9 + x1*x4*x6*x7*x9 + x2*x3*x6*x7*x9 + 
    x1*x3*x6*x7*x9 + x10*x2*x6*x7*x9 + x1*x2*x6*x7*x9 + x1*x10*x6*x7*x9 + 
    x3*x4*x5*x7*x9 + x10*x4*x5*x7*x9 + x1*x4*x5*x7*x9 + x2*x3*x5*x7*x9 + 
    x1*x3*x5*x7*x9 + x10*x2*x5*x7*x9 + x1*x2*x5*x7*x9 + x1*x10*x5*x7*x9 + 
    x3*x4*x5*x6*x9 + x2*x4*x5*x6*x9 + x10*x4*x5*x6*x9 + x2*x3*x5*x6*x9 + 
    x1*x3*x5*x6*x9 + x10*x2*x5*x6*x9 + x1*x2*x5*x6*x9 + x1*x10*x5*x6*x9 + 
    x2*x3*x4*x6*x9 + x1*x3*x4*x6*x9 + x10*x2*x4*x6*x9 + x1*x2*x4*x6*x9 + 
    x1*x10*x4*x6*x9 + x2*x3*x4*x5*x9 + x1*x3*x4*x5*x9 + x10*x2*x4*x5*x9 + 
    x1*x2*x4*x5*x9 + x1*x10*x4*x5*x9 + x4*x5*x6*x7*x8 + x2*x5*x6*x7*x8 + 
    x1*x5*x6*x7*x8 + x3*x4*x6*x7*x8 + x1*x4*x6*x7*x8 + x2*x3*x6*x7*x8 + 
    x1*x3*x6*x7*x8 + x1*x2*x6*x7*x8 + x3*x4*x5*x7*x8 + x10*x4*x5*x7*x8 + 
    x1*x4*x5*x7*x8 + x2*x3*x5*x7*x8 + x1*x3*x5*x7*x8 + x10*x2*x5*x7*x8 + 
    x1*x2*x5*x7*x8 + x1*x10*x5*x7*x8 + x10*x3*x4*x7*x8 + x1*x10*x4*x7*x8 + 
    x10*x2*x3*x7*x8 + x1*x10*x3*x7*x8 + x1*x10*x2*x7*x8 + x3*x4*x5*x6*x8 + 
    x2*x4*x5*x6*x8 + x2*x3*x5*x6*x8 + x1*x3*x5*x6*x8 + x1*x2*x5*x6*x8 + 
    x2*x3*x4*x6*x8 + x1*x3*x4*x6*x8 + x1*x2*x4*x6*x8 + x2*x3*x4*x5*x8 + 
    x10*x3*x4*x5*x8 + x1*x3*x4*x5*x8 + x10*x2*x4*x5*x8 + x1*x2*x4*x5*x8 + 
    x10*x2*x3*x5*x8 + x1*x10*x3*x5*x8 + x1*x10*x2*x5*x8 + x10*x2*x3*x4*x8 + 
    x1*x10*x3*x4*x8 + x1*x10*x2*x4*x8 + x10*x4*x5*x6*x7 + x10*x2*x5*x6*x7 + 
    x1*x10*x5*x6*x7 + x10*x3*x4*x6*x7 + x1*x10*x4*x6*x7 + x10*x2*x3*x6*x7 + 
    x1*x10*x3*x6*x7 + x1*x10*x2*x6*x7 + x10*x3*x4*x5*x7 + x1*x10*x4*x5*x7 + 
    x10*x2*x3*x5*x7 + x1*x10*x3*x5*x7 + x1*x10*x2*x5*x7 + x10*x3*x4*x5*x6 + 
    x10*x2*x4*x5*x6 + x10*x2*x3*x5*x6 + x1*x10*x3*x5*x6 + x1*x10*x2*x5*x6 + 
    x10*x2*x3*x4*x6 + x1*x10*x3*x4*x6 + x1*x10*x2*x4*x6 + x10*x2*x3*x4*x5 + 
    x1*x10*x3*x4*x5 + x1*x10*x2*x4*x5
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
