*{{{ ZERO-MASS TWO-POINT FUNCTION:
#include- ../src/declare-uf.h
#include- ../src/uf.h

cfunction myUF;
vectors l1,p1;
symbols x1,...,x2;
symbol s;

#procedure SimpPint
  id p1.p1 = s;
#endprocedure

local F1 = myUF(
  l1,0,
  l1-p1,0
  )
;

.sort

#call CalcUF(F1,myUF,1,SimpPint,l1,p1)

multiply replace_(<UFx1,x1>,...,<UFx2,x2>);

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
    -s*x1*x2
  )
;

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
