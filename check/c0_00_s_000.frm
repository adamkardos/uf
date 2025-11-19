*{{{ MASSLESS THREE-POINT FUNCTION:
#include- ../src/declare-uf.h
#include- ../src/uf.h

cfunction myUF;
vectors l1,p1,p2;
symbols x1,...,x3;
symbol s;

#procedure SimpPint
  id p1.p1 = 0;
  id p2.p2 = 0;
  id p1.p2 = s/2;
#endprocedure

local F1 = myUF(l1,0,
                l1-p1,0,
                l1-p1-p2,0
               );

.sort

#call CalcUF(F1,myUF,1,SimpPint,l1,p1,p2)

multiply replace_(<UFx1,x1>,...,<UFx3,x3>);

.sort

local DiffU =
  Upoly
  -
  (
    x1 + x2 + x3
  )
;

local DiffF =
  Fpoly
  -
  (
    -s*x1*x3
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
