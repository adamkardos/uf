*{{{ z4-integral
#include- ../src/declare-uf.h
#include- ../src/uf.h

cfunction myUF;
vectors l1,l2,l3,l4;
symbols x1,...,x8;

local F1 = myUF(l1-l4,0,
                l1,0,
                l4,0,
                l1-l2,0,
                l2-l3,0,
                l3-l4,0,
                l2,0,
                l3,0
               );

.sort

#call CalcUF(F1,myUF,4,,l1,l2,l3,l4)

multiply replace_(<UFx1,x1>,...,<UFx8,x8>);

.sort

local DiffU =
  Upoly
  -
  (
    x4*x6*x7*x8 + x2*x6*x7*x8 + x1*x6*x7*x8 + x3*x4*x7*x8 + 
    x1*x4*x7*x8 + x2*x3*x7*x8 + x1*x3*x7*x8 + x1*x2*x7*x8 + 
    x4*x5*x6*x8 + x2*x5*x6*x8 + x1*x5*x6*x8 + x2*x4*x6*x8 + 
    x1*x4*x6*x8 + x3*x4*x5*x8 + x1*x4*x5*x8 + x2*x3*x5*x8 + 
    x1*x3*x5*x8 + x1*x2*x5*x8 + x2*x3*x4*x8 + x1*x3*x4*x8 + 
    x1*x2*x4*x8 + x4*x5*x6*x7 + x2*x5*x6*x7 + x1*x5*x6*x7 + 
    x3*x4*x6*x7 + x1*x4*x6*x7 + x2*x3*x6*x7 + x1*x3*x6*x7 + 
    x1*x2*x6*x7 + x3*x4*x5*x7 + x1*x4*x5*x7 + x2*x3*x5*x7 + 
    x1*x3*x5*x7 + x1*x2*x5*x7 + x3*x4*x5*x6 + x2*x4*x5*x6 + 
    x2*x3*x5*x6 + x1*x3*x5*x6 + x1*x2*x5*x6 + x2*x3*x4*x6 +
    x1*x3*x4*x6 + x1*x2*x4*x6 + x2*x3*x4*x5 + x1*x3*x4*x5 + 
    x1*x2*x4*x5
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
