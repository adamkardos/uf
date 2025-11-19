*{{{ G-integral
#include- ../src/declare-uf.h
#include- ../src/uf.h

cfunction myUF;
vectors l1,l2,p;
symbols x1,...,x5;

local F1 = myUF(l1,0,
                l1-p,0
               );

.sort

#call CalcUF(F1,myUF,1,,l1,p)

multiply replace_(<UFx1,x1>,...,<UFx2,x2>);

id p.p = -1;

.sort

local DiffU =
  Upoly
  -
  (
    x1 + x2
  )
;

local DiffF =
  Fpoly
  -
  (
    x1*x2
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
