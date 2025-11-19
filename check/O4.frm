*{{{ O4-integral
#include- ../src/declare-uf.h
#include- ../src/uf.h

cfunction myUF;
vectors l1,l2,l3,p;
symbols x1,...,x7;

local F1 = myUF(-l1,0,
                -l1 - p,0,
                -l1 - l2,0,
                -l2,0,
                -l1 - l3,0,
                -l3,0,
                -l2 + l3,0
               );

.sort

#call CalcUF(F1,myUF,3,,l1,l2,l3,p)

multiply replace_(<UFx1,x1>,...,<UFx7,x7>);

id p.p = +1;

.sort

local DiffU =
  Upoly
  +
  (
    x5*x6*x7 + x4*x5*x7 + x4*x5*x6 + x3*x6*x7 + x3*x5*x6 + x3*x4*x7 + 
    x3*x4*x6 + x3*x4*x5 + x2*x6*x7 + x2*x5*x7 + x2*x4*x7 + x2*x4*x6 +
    x2*x4*x5 + x2*x3*x7 + x2*x3*x6 + x2*x3*x5 + x1*x6*x7 + x1*x5*x7 + 
    x1*x4*x7 + x1*x4*x6 + x1*x4*x5 + x1*x3*x7 + x1*x3*x6 + x1*x3*x5
  )
;

local DiffF =
  Fpoly
  -
  (
    x2*x5*x6*x7 + x2*x4*x5*x7 + x2*x4*x5*x6 + x2*x3*x6*x7 + x2*x3*x5*x6 + 
    x2*x3*x4*x7 + x2*x3*x4*x6 + x2*x3*x4*x5 + x1*x2*x6*x7 + x1*x2*x5*x7 + 
    x1*x2*x4*x7 + x1*x2*x4*x6 + x1*x2*x4*x5 + x1*x2*x3*x7 + x1*x2*x3*x6 + 
    x1*x2*x3*x5
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
