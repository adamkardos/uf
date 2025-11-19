*{{{ T2-integral
#include- ../src/declare-uf.h
#include- ../src/uf.h

cfunction myUF;
vectors l1,l2,p;
symbols x1,...,x4;

local F1 = myUF(-l1,0,
                -l1-p,0,
                -l2,0,
                -l1 - l2,0
               );

.sort

#call CalcUF(F1,myUF,2,,l1,l2,p)

multiply replace_(<UFx1,x1>,...,<UFx4,x4>);

id p.p = +1;

.sort

local DiffU =
  Upoly
  +
  (
    x1*x3 + x2*x3 + x1*x4 + x2*x4 + x3*x4
  )
;

local DiffF =
  Fpoly
  -
  (
    x1*x2*x3 + x1*x2*x4 + x2*x3*x4
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
