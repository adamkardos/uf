*{{{ z7-integral
#include- ../src/declare-uf.h
#include- ../src/uf.h

cfunction myUF;
vectors l1,l2,l3,l4,l5,l6,l7;
symbols x1,...,x14;

local F1 = myUF(l1-l7,0,
                l1,0,
                l7,0,
                l2-l1,0,
                l6-l2,0,
                l6-l7,0,
                l2,0,
                l3-l6,0,
                l3,0,
                l5-l3,0,
                l5-l7,0,
                l4-l5,0,
                l4,0,
                l7-l4,0
               );

.sort

#call CalcUF(F1,myUF,7,,l1,...,l7)

multiply replace_(<UFx1,x1>,...,<UFx14,x14>);

.sort

local DiffU =
  Upoly
  +
  (
       x1*x2*x4*x5*x8*x10*x12 + x1*x2*x4*x5*x8*x10*x13 + x1*x2*x4*x5*x8*x10*x14 + x1*x2*x4*x5*x8*x11*x12
     + x1*x2*x4*x5*x8*x11*x13 + x1*x2*x4*x5*x8*x11*x14 + x1*x2*x4*x5*x8*x12*x13 + x1*x2*x4*x5*x8*x12*x14
     + x1*x2*x4*x5*x9*x10*x12 + x1*x2*x4*x5*x9*x10*x13 + x1*x2*x4*x5*x9*x10*x14 + x1*x2*x4*x5*x9*x11*x12
     + x1*x2*x4*x5*x9*x11*x13 + x1*x2*x4*x5*x9*x11*x14 + x1*x2*x4*x5*x9*x12*x13 + x1*x2*x4*x5*x9*x12*x14
     + x1*x2*x4*x5*x10*x11*x12 + x1*x2*x4*x5*x10*x11*x13 + x1*x2*x4*x5*x10*x11*x14 + x1*x2*x4*x5*x10*x12*x13
     + x1*x2*x4*x5*x10*x12*x14 + x1*x2*x4*x6*x8*x10*x12 + x1*x2*x4*x6*x8*x10*x13 + x1*x2*x4*x6*x8*x10*x14
     + x1*x2*x4*x6*x8*x11*x12 + x1*x2*x4*x6*x8*x11*x13 + x1*x2*x4*x6*x8*x11*x14 + x1*x2*x4*x6*x8*x12*x13
     + x1*x2*x4*x6*x8*x12*x14 + x1*x2*x4*x6*x9*x10*x12 + x1*x2*x4*x6*x9*x10*x13 + x1*x2*x4*x6*x9*x10*x14
     + x1*x2*x4*x6*x9*x11*x12 + x1*x2*x4*x6*x9*x11*x13 + x1*x2*x4*x6*x9*x11*x14 + x1*x2*x4*x6*x9*x12*x13
     + x1*x2*x4*x6*x9*x12*x14 + x1*x2*x4*x6*x10*x11*x12 + x1*x2*x4*x6*x10*x11*x13 + x1*x2*x4*x6*x10*x11*x14
     + x1*x2*x4*x6*x10*x12*x13 + x1*x2*x4*x6*x10*x12*x14 + x1*x2*x4*x8*x9*x10*x12 + x1*x2*x4*x8*x9*x10*x13
     + x1*x2*x4*x8*x9*x10*x14 + x1*x2*x4*x8*x9*x11*x12 + x1*x2*x4*x8*x9*x11*x13 + x1*x2*x4*x8*x9*x11*x14
     + x1*x2*x4*x8*x9*x12*x13 + x1*x2*x4*x8*x9*x12*x14 + x1*x2*x4*x8*x10*x11*x12 + x1*x2*x4*x8*x10*x11*x13
     + x1*x2*x4*x8*x10*x11*x14 + x1*x2*x4*x8*x10*x12*x13 + x1*x2*x4*x8*x10*x12*x14 + x1*x2*x5*x6*x8*x10*x12
     + x1*x2*x5*x6*x8*x10*x13 + x1*x2*x5*x6*x8*x10*x14 + x1*x2*x5*x6*x8*x11*x12 + x1*x2*x5*x6*x8*x11*x13
     + x1*x2*x5*x6*x8*x11*x14 + x1*x2*x5*x6*x8*x12*x13 + x1*x2*x5*x6*x8*x12*x14 + x1*x2*x5*x6*x9*x10*x12
     + x1*x2*x5*x6*x9*x10*x13 + x1*x2*x5*x6*x9*x10*x14 + x1*x2*x5*x6*x9*x11*x12 + x1*x2*x5*x6*x9*x11*x13
     + x1*x2*x5*x6*x9*x11*x14 + x1*x2*x5*x6*x9*x12*x13 + x1*x2*x5*x6*x9*x12*x14 + x1*x2*x5*x6*x10*x11*x12
     + x1*x2*x5*x6*x10*x11*x13 + x1*x2*x5*x6*x10*x11*x14 + x1*x2*x5*x6*x10*x12*x13 + x1*x2*x5*x6*x10*x12*x14
     + x1*x2*x5*x7*x8*x10*x12 + x1*x2*x5*x7*x8*x10*x13 + x1*x2*x5*x7*x8*x10*x14 + x1*x2*x5*x7*x8*x11*x12
     + x1*x2*x5*x7*x8*x11*x13 + x1*x2*x5*x7*x8*x11*x14 + x1*x2*x5*x7*x8*x12*x13 + x1*x2*x5*x7*x8*x12*x14
     + x1*x2*x5*x7*x9*x10*x12 + x1*x2*x5*x7*x9*x10*x13 + x1*x2*x5*x7*x9*x10*x14 + x1*x2*x5*x7*x9*x11*x12
     + x1*x2*x5*x7*x9*x11*x13 + x1*x2*x5*x7*x9*x11*x14 + x1*x2*x5*x7*x9*x12*x13 + x1*x2*x5*x7*x9*x12*x14
     + x1*x2*x5*x7*x10*x11*x12 + x1*x2*x5*x7*x10*x11*x13 + x1*x2*x5*x7*x10*x11*x14 + x1*x2*x5*x7*x10*x12*x13
     + x1*x2*x5*x7*x10*x12*x14 + x1*x2*x5*x8*x9*x10*x12 + x1*x2*x5*x8*x9*x10*x13 + x1*x2*x5*x8*x9*x10*x14
     + x1*x2*x5*x8*x9*x11*x12 + x1*x2*x5*x8*x9*x11*x13 + x1*x2*x5*x8*x9*x11*x14 + x1*x2*x5*x8*x9*x12*x13
     + x1*x2*x5*x8*x9*x12*x14 + x1*x2*x5*x8*x10*x11*x12 + x1*x2*x5*x8*x10*x11*x13 + x1*x2*x5*x8*x10*x11*x14
     + x1*x2*x5*x8*x10*x12*x13 + x1*x2*x5*x8*x10*x12*x14 + x1*x2*x6*x7*x8*x10*x12 + x1*x2*x6*x7*x8*x10*x13
     + x1*x2*x6*x7*x8*x10*x14 + x1*x2*x6*x7*x8*x11*x12 + x1*x2*x6*x7*x8*x11*x13 + x1*x2*x6*x7*x8*x11*x14
     + x1*x2*x6*x7*x8*x12*x13 + x1*x2*x6*x7*x8*x12*x14 + x1*x2*x6*x7*x9*x10*x12 + x1*x2*x6*x7*x9*x10*x13
     + x1*x2*x6*x7*x9*x10*x14 + x1*x2*x6*x7*x9*x11*x12 + x1*x2*x6*x7*x9*x11*x13 + x1*x2*x6*x7*x9*x11*x14
     + x1*x2*x6*x7*x9*x12*x13 + x1*x2*x6*x7*x9*x12*x14 + x1*x2*x6*x7*x10*x11*x12 + x1*x2*x6*x7*x10*x11*x13
     + x1*x2*x6*x7*x10*x11*x14 + x1*x2*x6*x7*x10*x12*x13 + x1*x2*x6*x7*x10*x12*x14 + x1*x2*x7*x8*x9*x10*x12
     + x1*x2*x7*x8*x9*x10*x13 + x1*x2*x7*x8*x9*x10*x14 + x1*x2*x7*x8*x9*x11*x12 + x1*x2*x7*x8*x9*x11*x13
     + x1*x2*x7*x8*x9*x11*x14 + x1*x2*x7*x8*x9*x12*x13 + x1*x2*x7*x8*x9*x12*x14 + x1*x2*x7*x8*x10*x11*x12
     + x1*x2*x7*x8*x10*x11*x13 + x1*x2*x7*x8*x10*x11*x14 + x1*x2*x7*x8*x10*x12*x13 + x1*x2*x7*x8*x10*x12*x14
     + x1*x3*x4*x5*x8*x10*x12 + x1*x3*x4*x5*x8*x10*x13 + x1*x3*x4*x5*x8*x10*x14 + x1*x3*x4*x5*x8*x11*x12
     + x1*x3*x4*x5*x8*x11*x13 + x1*x3*x4*x5*x8*x11*x14 + x1*x3*x4*x5*x8*x12*x13 + x1*x3*x4*x5*x8*x12*x14
     + x1*x3*x4*x5*x9*x10*x12 + x1*x3*x4*x5*x9*x10*x13 + x1*x3*x4*x5*x9*x10*x14 + x1*x3*x4*x5*x9*x11*x12
     + x1*x3*x4*x5*x9*x11*x13 + x1*x3*x4*x5*x9*x11*x14 + x1*x3*x4*x5*x9*x12*x13 + x1*x3*x4*x5*x9*x12*x14
     + x1*x3*x4*x5*x10*x11*x12 + x1*x3*x4*x5*x10*x11*x13 + x1*x3*x4*x5*x10*x11*x14 + x1*x3*x4*x5*x10*x12*x13
     + x1*x3*x4*x5*x10*x12*x14 + x1*x3*x4*x6*x8*x10*x12 + x1*x3*x4*x6*x8*x10*x13 + x1*x3*x4*x6*x8*x10*x14
     + x1*x3*x4*x6*x8*x11*x12 + x1*x3*x4*x6*x8*x11*x13 + x1*x3*x4*x6*x8*x11*x14 + x1*x3*x4*x6*x8*x12*x13
     + x1*x3*x4*x6*x8*x12*x14 + x1*x3*x4*x6*x9*x10*x12 + x1*x3*x4*x6*x9*x10*x13 + x1*x3*x4*x6*x9*x10*x14
     + x1*x3*x4*x6*x9*x11*x12 + x1*x3*x4*x6*x9*x11*x13 + x1*x3*x4*x6*x9*x11*x14 + x1*x3*x4*x6*x9*x12*x13
     + x1*x3*x4*x6*x9*x12*x14 + x1*x3*x4*x6*x10*x11*x12 + x1*x3*x4*x6*x10*x11*x13 + x1*x3*x4*x6*x10*x11*x14
     + x1*x3*x4*x6*x10*x12*x13 + x1*x3*x4*x6*x10*x12*x14 + x1*x3*x4*x8*x9*x10*x12 + x1*x3*x4*x8*x9*x10*x13
     + x1*x3*x4*x8*x9*x10*x14 + x1*x3*x4*x8*x9*x11*x12 + x1*x3*x4*x8*x9*x11*x13 + x1*x3*x4*x8*x9*x11*x14
     + x1*x3*x4*x8*x9*x12*x13 + x1*x3*x4*x8*x9*x12*x14 + x1*x3*x4*x8*x10*x11*x12 + x1*x3*x4*x8*x10*x11*x13
     + x1*x3*x4*x8*x10*x11*x14 + x1*x3*x4*x8*x10*x12*x13 + x1*x3*x4*x8*x10*x12*x14 + x1*x3*x5*x6*x8*x10*x12
     + x1*x3*x5*x6*x8*x10*x13 + x1*x3*x5*x6*x8*x10*x14 + x1*x3*x5*x6*x8*x11*x12 + x1*x3*x5*x6*x8*x11*x13
     + x1*x3*x5*x6*x8*x11*x14 + x1*x3*x5*x6*x8*x12*x13 + x1*x3*x5*x6*x8*x12*x14 + x1*x3*x5*x6*x9*x10*x12
     + x1*x3*x5*x6*x9*x10*x13 + x1*x3*x5*x6*x9*x10*x14 + x1*x3*x5*x6*x9*x11*x12 + x1*x3*x5*x6*x9*x11*x13
     + x1*x3*x5*x6*x9*x11*x14 + x1*x3*x5*x6*x9*x12*x13 + x1*x3*x5*x6*x9*x12*x14 + x1*x3*x5*x6*x10*x11*x12
     + x1*x3*x5*x6*x10*x11*x13 + x1*x3*x5*x6*x10*x11*x14 + x1*x3*x5*x6*x10*x12*x13 + x1*x3*x5*x6*x10*x12*x14
     + x1*x3*x5*x7*x8*x10*x12 + x1*x3*x5*x7*x8*x10*x13 + x1*x3*x5*x7*x8*x10*x14 + x1*x3*x5*x7*x8*x11*x12
     + x1*x3*x5*x7*x8*x11*x13 + x1*x3*x5*x7*x8*x11*x14 + x1*x3*x5*x7*x8*x12*x13 + x1*x3*x5*x7*x8*x12*x14
     + x1*x3*x5*x7*x9*x10*x12 + x1*x3*x5*x7*x9*x10*x13 + x1*x3*x5*x7*x9*x10*x14 + x1*x3*x5*x7*x9*x11*x12
     + x1*x3*x5*x7*x9*x11*x13 + x1*x3*x5*x7*x9*x11*x14 + x1*x3*x5*x7*x9*x12*x13 + x1*x3*x5*x7*x9*x12*x14
     + x1*x3*x5*x7*x10*x11*x12 + x1*x3*x5*x7*x10*x11*x13 + x1*x3*x5*x7*x10*x11*x14 + x1*x3*x5*x7*x10*x12*x13
     + x1*x3*x5*x7*x10*x12*x14 + x1*x3*x5*x8*x9*x10*x12 + x1*x3*x5*x8*x9*x10*x13 + x1*x3*x5*x8*x9*x10*x14
     + x1*x3*x5*x8*x9*x11*x12 + x1*x3*x5*x8*x9*x11*x13 + x1*x3*x5*x8*x9*x11*x14 + x1*x3*x5*x8*x9*x12*x13
     + x1*x3*x5*x8*x9*x12*x14 + x1*x3*x5*x8*x10*x11*x12 + x1*x3*x5*x8*x10*x11*x13 + x1*x3*x5*x8*x10*x11*x14
     + x1*x3*x5*x8*x10*x12*x13 + x1*x3*x5*x8*x10*x12*x14 + x1*x3*x6*x7*x8*x10*x12 + x1*x3*x6*x7*x8*x10*x13
     + x1*x3*x6*x7*x8*x10*x14 + x1*x3*x6*x7*x8*x11*x12 + x1*x3*x6*x7*x8*x11*x13 + x1*x3*x6*x7*x8*x11*x14
     + x1*x3*x6*x7*x8*x12*x13 + x1*x3*x6*x7*x8*x12*x14 + x1*x3*x6*x7*x9*x10*x12 + x1*x3*x6*x7*x9*x10*x13
     + x1*x3*x6*x7*x9*x10*x14 + x1*x3*x6*x7*x9*x11*x12 + x1*x3*x6*x7*x9*x11*x13 + x1*x3*x6*x7*x9*x11*x14
     + x1*x3*x6*x7*x9*x12*x13 + x1*x3*x6*x7*x9*x12*x14 + x1*x3*x6*x7*x10*x11*x12 + x1*x3*x6*x7*x10*x11*x13
     + x1*x3*x6*x7*x10*x11*x14 + x1*x3*x6*x7*x10*x12*x13 + x1*x3*x6*x7*x10*x12*x14 + x1*x3*x7*x8*x9*x10*x12
     + x1*x3*x7*x8*x9*x10*x13 + x1*x3*x7*x8*x9*x10*x14 + x1*x3*x7*x8*x9*x11*x12 + x1*x3*x7*x8*x9*x11*x13
     + x1*x3*x7*x8*x9*x11*x14 + x1*x3*x7*x8*x9*x12*x13 + x1*x3*x7*x8*x9*x12*x14 + x1*x3*x7*x8*x10*x11*x12
     + x1*x3*x7*x8*x10*x11*x13 + x1*x3*x7*x8*x10*x11*x14 + x1*x3*x7*x8*x10*x12*x13 + x1*x3*x7*x8*x10*x12*x14
     + x1*x4*x5*x7*x8*x10*x12 + x1*x4*x5*x7*x8*x10*x13 + x1*x4*x5*x7*x8*x10*x14 + x1*x4*x5*x7*x8*x11*x12
     + x1*x4*x5*x7*x8*x11*x13 + x1*x4*x5*x7*x8*x11*x14 + x1*x4*x5*x7*x8*x12*x13 + x1*x4*x5*x7*x8*x12*x14
     + x1*x4*x5*x7*x9*x10*x12 + x1*x4*x5*x7*x9*x10*x13 + x1*x4*x5*x7*x9*x10*x14 + x1*x4*x5*x7*x9*x11*x12
     + x1*x4*x5*x7*x9*x11*x13 + x1*x4*x5*x7*x9*x11*x14 + x1*x4*x5*x7*x9*x12*x13 + x1*x4*x5*x7*x9*x12*x14
     + x1*x4*x5*x7*x10*x11*x12 + x1*x4*x5*x7*x10*x11*x13 + x1*x4*x5*x7*x10*x11*x14 + x1*x4*x5*x7*x10*x12*x13
     + x1*x4*x5*x7*x10*x12*x14 + x1*x4*x5*x8*x9*x10*x12 + x1*x4*x5*x8*x9*x10*x13 + x1*x4*x5*x8*x9*x10*x14
     + x1*x4*x5*x8*x9*x11*x12 + x1*x4*x5*x8*x9*x11*x13 + x1*x4*x5*x8*x9*x11*x14 + x1*x4*x5*x8*x9*x12*x13
     + x1*x4*x5*x8*x9*x12*x14 + x1*x4*x5*x8*x10*x12*x13 + x1*x4*x5*x8*x10*x13*x14 + x1*x4*x5*x8*x11*x12*x13
     + x1*x4*x5*x8*x11*x13*x14 + x1*x4*x5*x8*x12*x13*x14 + x1*x4*x5*x9*x10*x11*x12 + x1*x4*x5*x9*x10*x11*x13
     + x1*x4*x5*x9*x10*x11*x14 + x1*x4*x5*x9*x10*x12*x14 + x1*x4*x5*x9*x10*x13*x14 + x1*x4*x5*x9*x11*x12*x13
     + x1*x4*x5*x9*x11*x13*x14 + x1*x4*x5*x9*x12*x13*x14 + x1*x4*x5*x10*x11*x12*x13 + x1*x4*x5*x10*x11*x13*x14
     + x1*x4*x5*x10*x12*x13*x14 + x1*x4*x6*x7*x8*x10*x12 + x1*x4*x6*x7*x8*x10*x13 + x1*x4*x6*x7*x8*x10*x14
     + x1*x4*x6*x7*x8*x11*x12 + x1*x4*x6*x7*x8*x11*x13 + x1*x4*x6*x7*x8*x11*x14 + x1*x4*x6*x7*x8*x12*x13
     + x1*x4*x6*x7*x8*x12*x14 + x1*x4*x6*x7*x9*x10*x12 + x1*x4*x6*x7*x9*x10*x13 + x1*x4*x6*x7*x9*x10*x14
     + x1*x4*x6*x7*x9*x11*x12 + x1*x4*x6*x7*x9*x11*x13 + x1*x4*x6*x7*x9*x11*x14 + x1*x4*x6*x7*x9*x12*x13
     + x1*x4*x6*x7*x9*x12*x14 + x1*x4*x6*x7*x10*x11*x12 + x1*x4*x6*x7*x10*x11*x13 + x1*x4*x6*x7*x10*x11*x14
     + x1*x4*x6*x7*x10*x12*x13 + x1*x4*x6*x7*x10*x12*x14 + x1*x4*x6*x8*x9*x10*x12 + x1*x4*x6*x8*x9*x10*x13
     + x1*x4*x6*x8*x9*x10*x14 + x1*x4*x6*x8*x9*x11*x12 + x1*x4*x6*x8*x9*x11*x13 + x1*x4*x6*x8*x9*x11*x14
     + x1*x4*x6*x8*x9*x12*x13 + x1*x4*x6*x8*x9*x12*x14 + x1*x4*x6*x8*x10*x12*x13 + x1*x4*x6*x8*x10*x13*x14
     + x1*x4*x6*x8*x11*x12*x13 + x1*x4*x6*x8*x11*x13*x14 + x1*x4*x6*x8*x12*x13*x14 + x1*x4*x6*x9*x10*x11*x12
     + x1*x4*x6*x9*x10*x11*x13 + x1*x4*x6*x9*x10*x11*x14 + x1*x4*x6*x9*x10*x12*x14 + x1*x4*x6*x9*x10*x13*x14
     + x1*x4*x6*x9*x11*x12*x13 + x1*x4*x6*x9*x11*x13*x14 + x1*x4*x6*x9*x12*x13*x14 + x1*x4*x6*x10*x11*x12*x13
     + x1*x4*x6*x10*x11*x13*x14 + x1*x4*x6*x10*x12*x13*x14 + x1*x4*x7*x8*x9*x10*x12 + x1*x4*x7*x8*x9*x10*x13
     + x1*x4*x7*x8*x9*x10*x14 + x1*x4*x7*x8*x9*x11*x12 + x1*x4*x7*x8*x9*x11*x13 + x1*x4*x7*x8*x9*x11*x14
     + x1*x4*x7*x8*x9*x12*x13 + x1*x4*x7*x8*x9*x12*x14 + x1*x4*x7*x8*x10*x11*x12 + x1*x4*x7*x8*x10*x11*x13
     + x1*x4*x7*x8*x10*x11*x14 + x1*x4*x7*x8*x10*x12*x13 + x1*x4*x7*x8*x10*x12*x14 + x1*x4*x8*x9*x10*x11*x12
     + x1*x4*x8*x9*x10*x11*x13 + x1*x4*x8*x9*x10*x11*x14 + x1*x4*x8*x9*x10*x12*x14 + x1*x4*x8*x9*x10*x13*x14
     + x1*x4*x8*x9*x11*x12*x13 + x1*x4*x8*x9*x11*x13*x14 + x1*x4*x8*x9*x12*x13*x14 + x1*x4*x8*x10*x11*x12*x13
     + x1*x4*x8*x10*x11*x13*x14 + x1*x4*x8*x10*x12*x13*x14 + x1*x5*x6*x7*x8*x10*x12 + x1*x5*x6*x7*x8*x10*x13
     + x1*x5*x6*x7*x8*x10*x14 + x1*x5*x6*x7*x8*x11*x12 + x1*x5*x6*x7*x8*x11*x13 + x1*x5*x6*x7*x8*x11*x14
     + x1*x5*x6*x7*x8*x12*x13 + x1*x5*x6*x7*x8*x12*x14 + x1*x5*x6*x7*x9*x10*x12 + x1*x5*x6*x7*x9*x10*x13
     + x1*x5*x6*x7*x9*x10*x14 + x1*x5*x6*x7*x9*x11*x12 + x1*x5*x6*x7*x9*x11*x13 + x1*x5*x6*x7*x9*x11*x14
     + x1*x5*x6*x7*x9*x12*x13 + x1*x5*x6*x7*x9*x12*x14 + x1*x5*x6*x7*x10*x11*x12 + x1*x5*x6*x7*x10*x11*x13
     + x1*x5*x6*x7*x10*x11*x14 + x1*x5*x6*x7*x10*x12*x13 + x1*x5*x6*x7*x10*x12*x14 + x1*x5*x6*x8*x9*x10*x12
     + x1*x5*x6*x8*x9*x10*x13 + x1*x5*x6*x8*x9*x10*x14 + x1*x5*x6*x8*x9*x11*x12 + x1*x5*x6*x8*x9*x11*x13
     + x1*x5*x6*x8*x9*x11*x14 + x1*x5*x6*x8*x9*x12*x13 + x1*x5*x6*x8*x9*x12*x14 + x1*x5*x6*x8*x10*x12*x13
     + x1*x5*x6*x8*x10*x13*x14 + x1*x5*x6*x8*x11*x12*x13 + x1*x5*x6*x8*x11*x13*x14 + x1*x5*x6*x8*x12*x13*x14
     + x1*x5*x6*x9*x10*x11*x12 + x1*x5*x6*x9*x10*x11*x13 + x1*x5*x6*x9*x10*x11*x14 + x1*x5*x6*x9*x10*x12*x14
     + x1*x5*x6*x9*x10*x13*x14 + x1*x5*x6*x9*x11*x12*x13 + x1*x5*x6*x9*x11*x13*x14 + x1*x5*x6*x9*x12*x13*x14
     + x1*x5*x6*x10*x11*x12*x13 + x1*x5*x6*x10*x11*x13*x14 + x1*x5*x6*x10*x12*x13*x14 + x1*x5*x7*x8*x10*x11*x12
     + x1*x5*x7*x8*x10*x11*x13 + x1*x5*x7*x8*x10*x11*x14 + x1*x5*x7*x8*x10*x12*x14 + x1*x5*x7*x8*x10*x13*x14
     + x1*x5*x7*x8*x11*x12*x13 + x1*x5*x7*x8*x11*x13*x14 + x1*x5*x7*x8*x12*x13*x14 + x1*x5*x7*x9*x10*x11*x12
     + x1*x5*x7*x9*x10*x11*x13 + x1*x5*x7*x9*x10*x11*x14 + x1*x5*x7*x9*x10*x12*x14 + x1*x5*x7*x9*x10*x13*x14
     + x1*x5*x7*x9*x11*x12*x13 + x1*x5*x7*x9*x11*x13*x14 + x1*x5*x7*x9*x12*x13*x14 + x1*x5*x7*x10*x11*x12*x13
     + x1*x5*x7*x10*x11*x13*x14 + x1*x5*x7*x10*x12*x13*x14 + x1*x5*x8*x9*x10*x11*x12 + x1*x5*x8*x9*x10*x11*x13
     + x1*x5*x8*x9*x10*x11*x14 + x1*x5*x8*x9*x10*x12*x14 + x1*x5*x8*x9*x10*x13*x14 + x1*x5*x8*x9*x11*x12*x13
     + x1*x5*x8*x9*x11*x13*x14 + x1*x5*x8*x9*x12*x13*x14 + x1*x5*x8*x10*x11*x12*x13 + x1*x5*x8*x10*x11*x13*x14
     + x1*x5*x8*x10*x12*x13*x14 + x1*x6*x7*x8*x9*x10*x12 + x1*x6*x7*x8*x9*x10*x13 + x1*x6*x7*x8*x9*x10*x14
     + x1*x6*x7*x8*x9*x11*x12 + x1*x6*x7*x8*x9*x11*x13 + x1*x6*x7*x8*x9*x11*x14 + x1*x6*x7*x8*x9*x12*x13
     + x1*x6*x7*x8*x9*x12*x14 + x1*x6*x7*x8*x10*x12*x13 + x1*x6*x7*x8*x10*x13*x14 + x1*x6*x7*x8*x11*x12*x13
     + x1*x6*x7*x8*x11*x13*x14 + x1*x6*x7*x8*x12*x13*x14 + x1*x6*x7*x9*x10*x11*x12 + x1*x6*x7*x9*x10*x11*x13
     + x1*x6*x7*x9*x10*x11*x14 + x1*x6*x7*x9*x10*x12*x14 + x1*x6*x7*x9*x10*x13*x14 + x1*x6*x7*x9*x11*x12*x13
     + x1*x6*x7*x9*x11*x13*x14 + x1*x6*x7*x9*x12*x13*x14 + x1*x6*x7*x10*x11*x12*x13 + x1*x6*x7*x10*x11*x13*x14
     + x1*x6*x7*x10*x12*x13*x14 + x1*x7*x8*x9*x10*x11*x12 + x1*x7*x8*x9*x10*x11*x13 + x1*x7*x8*x9*x10*x11*x14
     + x1*x7*x8*x9*x10*x12*x14 + x1*x7*x8*x9*x10*x13*x14 + x1*x7*x8*x9*x11*x12*x13 + x1*x7*x8*x9*x11*x13*x14
     + x1*x7*x8*x9*x12*x13*x14 + x1*x7*x8*x10*x11*x12*x13 + x1*x7*x8*x10*x11*x13*x14 + x1*x7*x8*x10*x12*x13*x14
     + x2*x3*x4*x5*x8*x10*x12 + x2*x3*x4*x5*x8*x10*x13 + x2*x3*x4*x5*x8*x10*x14 + x2*x3*x4*x5*x8*x11*x12
     + x2*x3*x4*x5*x8*x11*x13 + x2*x3*x4*x5*x8*x11*x14 + x2*x3*x4*x5*x8*x12*x13 + x2*x3*x4*x5*x8*x12*x14
     + x2*x3*x4*x5*x9*x10*x12 + x2*x3*x4*x5*x9*x10*x13 + x2*x3*x4*x5*x9*x10*x14 + x2*x3*x4*x5*x9*x11*x12
     + x2*x3*x4*x5*x9*x11*x13 + x2*x3*x4*x5*x9*x11*x14 + x2*x3*x4*x5*x9*x12*x13 + x2*x3*x4*x5*x9*x12*x14
     + x2*x3*x4*x5*x10*x11*x12 + x2*x3*x4*x5*x10*x11*x13 + x2*x3*x4*x5*x10*x11*x14 + x2*x3*x4*x5*x10*x12*x13
     + x2*x3*x4*x5*x10*x12*x14 + x2*x3*x4*x6*x8*x10*x12 + x2*x3*x4*x6*x8*x10*x13 + x2*x3*x4*x6*x8*x10*x14
     + x2*x3*x4*x6*x8*x11*x12 + x2*x3*x4*x6*x8*x11*x13 + x2*x3*x4*x6*x8*x11*x14 + x2*x3*x4*x6*x8*x12*x13
     + x2*x3*x4*x6*x8*x12*x14 + x2*x3*x4*x6*x9*x10*x12 + x2*x3*x4*x6*x9*x10*x13 + x2*x3*x4*x6*x9*x10*x14
     + x2*x3*x4*x6*x9*x11*x12 + x2*x3*x4*x6*x9*x11*x13 + x2*x3*x4*x6*x9*x11*x14 + x2*x3*x4*x6*x9*x12*x13
     + x2*x3*x4*x6*x9*x12*x14 + x2*x3*x4*x6*x10*x11*x12 + x2*x3*x4*x6*x10*x11*x13 + x2*x3*x4*x6*x10*x11*x14
     + x2*x3*x4*x6*x10*x12*x13 + x2*x3*x4*x6*x10*x12*x14 + x2*x3*x4*x8*x9*x10*x12 + x2*x3*x4*x8*x9*x10*x13
     + x2*x3*x4*x8*x9*x10*x14 + x2*x3*x4*x8*x9*x11*x12 + x2*x3*x4*x8*x9*x11*x13 + x2*x3*x4*x8*x9*x11*x14
     + x2*x3*x4*x8*x9*x12*x13 + x2*x3*x4*x8*x9*x12*x14 + x2*x3*x4*x8*x10*x11*x12 + x2*x3*x4*x8*x10*x11*x13
     + x2*x3*x4*x8*x10*x11*x14 + x2*x3*x4*x8*x10*x12*x13 + x2*x3*x4*x8*x10*x12*x14 + x2*x3*x5*x6*x8*x10*x12
     + x2*x3*x5*x6*x8*x10*x13 + x2*x3*x5*x6*x8*x10*x14 + x2*x3*x5*x6*x8*x11*x12 + x2*x3*x5*x6*x8*x11*x13
     + x2*x3*x5*x6*x8*x11*x14 + x2*x3*x5*x6*x8*x12*x13 + x2*x3*x5*x6*x8*x12*x14 + x2*x3*x5*x6*x9*x10*x12
     + x2*x3*x5*x6*x9*x10*x13 + x2*x3*x5*x6*x9*x10*x14 + x2*x3*x5*x6*x9*x11*x12 + x2*x3*x5*x6*x9*x11*x13
     + x2*x3*x5*x6*x9*x11*x14 + x2*x3*x5*x6*x9*x12*x13 + x2*x3*x5*x6*x9*x12*x14 + x2*x3*x5*x6*x10*x11*x12
     + x2*x3*x5*x6*x10*x11*x13 + x2*x3*x5*x6*x10*x11*x14 + x2*x3*x5*x6*x10*x12*x13 + x2*x3*x5*x6*x10*x12*x14
     + x2*x3*x5*x7*x8*x10*x12 + x2*x3*x5*x7*x8*x10*x13 + x2*x3*x5*x7*x8*x10*x14 + x2*x3*x5*x7*x8*x11*x12
     + x2*x3*x5*x7*x8*x11*x13 + x2*x3*x5*x7*x8*x11*x14 + x2*x3*x5*x7*x8*x12*x13 + x2*x3*x5*x7*x8*x12*x14
     + x2*x3*x5*x7*x9*x10*x12 + x2*x3*x5*x7*x9*x10*x13 + x2*x3*x5*x7*x9*x10*x14 + x2*x3*x5*x7*x9*x11*x12
     + x2*x3*x5*x7*x9*x11*x13 + x2*x3*x5*x7*x9*x11*x14 + x2*x3*x5*x7*x9*x12*x13 + x2*x3*x5*x7*x9*x12*x14
     + x2*x3*x5*x7*x10*x11*x12 + x2*x3*x5*x7*x10*x11*x13 + x2*x3*x5*x7*x10*x11*x14 + x2*x3*x5*x7*x10*x12*x13
     + x2*x3*x5*x7*x10*x12*x14 + x2*x3*x5*x8*x9*x10*x12 + x2*x3*x5*x8*x9*x10*x13 + x2*x3*x5*x8*x9*x10*x14
     + x2*x3*x5*x8*x9*x11*x12 + x2*x3*x5*x8*x9*x11*x13 + x2*x3*x5*x8*x9*x11*x14 + x2*x3*x5*x8*x9*x12*x13
     + x2*x3*x5*x8*x9*x12*x14 + x2*x3*x5*x8*x10*x11*x12 + x2*x3*x5*x8*x10*x11*x13 + x2*x3*x5*x8*x10*x11*x14
     + x2*x3*x5*x8*x10*x12*x13 + x2*x3*x5*x8*x10*x12*x14 + x2*x3*x6*x7*x8*x10*x12 + x2*x3*x6*x7*x8*x10*x13
     + x2*x3*x6*x7*x8*x10*x14 + x2*x3*x6*x7*x8*x11*x12 + x2*x3*x6*x7*x8*x11*x13 + x2*x3*x6*x7*x8*x11*x14
     + x2*x3*x6*x7*x8*x12*x13 + x2*x3*x6*x7*x8*x12*x14 + x2*x3*x6*x7*x9*x10*x12 + x2*x3*x6*x7*x9*x10*x13
     + x2*x3*x6*x7*x9*x10*x14 + x2*x3*x6*x7*x9*x11*x12 + x2*x3*x6*x7*x9*x11*x13 + x2*x3*x6*x7*x9*x11*x14
     + x2*x3*x6*x7*x9*x12*x13 + x2*x3*x6*x7*x9*x12*x14 + x2*x3*x6*x7*x10*x11*x12 + x2*x3*x6*x7*x10*x11*x13
     + x2*x3*x6*x7*x10*x11*x14 + x2*x3*x6*x7*x10*x12*x13 + x2*x3*x6*x7*x10*x12*x14 + x2*x3*x7*x8*x9*x10*x12
     + x2*x3*x7*x8*x9*x10*x13 + x2*x3*x7*x8*x9*x10*x14 + x2*x3*x7*x8*x9*x11*x12 + x2*x3*x7*x8*x9*x11*x13
     + x2*x3*x7*x8*x9*x11*x14 + x2*x3*x7*x8*x9*x12*x13 + x2*x3*x7*x8*x9*x12*x14 + x2*x3*x7*x8*x10*x11*x12
     + x2*x3*x7*x8*x10*x11*x13 + x2*x3*x7*x8*x10*x11*x14 + x2*x3*x7*x8*x10*x12*x13 + x2*x3*x7*x8*x10*x12*x14
     + x2*x4*x5*x6*x8*x10*x12 + x2*x4*x5*x6*x8*x10*x13 + x2*x4*x5*x6*x8*x10*x14 + x2*x4*x5*x6*x8*x11*x12
     + x2*x4*x5*x6*x8*x11*x13 + x2*x4*x5*x6*x8*x11*x14 + x2*x4*x5*x6*x8*x12*x13 + x2*x4*x5*x6*x8*x12*x14
     + x2*x4*x5*x6*x9*x10*x12 + x2*x4*x5*x6*x9*x10*x13 + x2*x4*x5*x6*x9*x10*x14 + x2*x4*x5*x6*x9*x11*x12
     + x2*x4*x5*x6*x9*x11*x13 + x2*x4*x5*x6*x9*x11*x14 + x2*x4*x5*x6*x9*x12*x13 + x2*x4*x5*x6*x9*x12*x14
     + x2*x4*x5*x6*x10*x11*x12 + x2*x4*x5*x6*x10*x11*x13 + x2*x4*x5*x6*x10*x11*x14 + x2*x4*x5*x6*x10*x12*x13
     + x2*x4*x5*x6*x10*x12*x14 + x2*x4*x5*x8*x10*x11*x12 + x2*x4*x5*x8*x10*x11*x13 + x2*x4*x5*x8*x10*x11*x14
     + x2*x4*x5*x8*x10*x12*x14 + x2*x4*x5*x8*x10*x13*x14 + x2*x4*x5*x8*x11*x12*x13 + x2*x4*x5*x8*x11*x13*x14
     + x2*x4*x5*x8*x12*x13*x14 + x2*x4*x5*x9*x10*x11*x12 + x2*x4*x5*x9*x10*x11*x13 + x2*x4*x5*x9*x10*x11*x14
     + x2*x4*x5*x9*x10*x12*x14 + x2*x4*x5*x9*x10*x13*x14 + x2*x4*x5*x9*x11*x12*x13 + x2*x4*x5*x9*x11*x13*x14
     + x2*x4*x5*x9*x12*x13*x14 + x2*x4*x5*x10*x11*x12*x13 + x2*x4*x5*x10*x11*x13*x14 + x2*x4*x5*x10*x12*x13*x14
     + x2*x4*x6*x8*x9*x10*x12 + x2*x4*x6*x8*x9*x10*x13 + x2*x4*x6*x8*x9*x10*x14 + x2*x4*x6*x8*x9*x11*x12
     + x2*x4*x6*x8*x9*x11*x13 + x2*x4*x6*x8*x9*x11*x14 + x2*x4*x6*x8*x9*x12*x13 + x2*x4*x6*x8*x9*x12*x14
     + x2*x4*x6*x8*x10*x12*x13 + x2*x4*x6*x8*x10*x13*x14 + x2*x4*x6*x8*x11*x12*x13 + x2*x4*x6*x8*x11*x13*x14
     + x2*x4*x6*x8*x12*x13*x14 + x2*x4*x6*x9*x10*x11*x12 + x2*x4*x6*x9*x10*x11*x13 + x2*x4*x6*x9*x10*x11*x14
     + x2*x4*x6*x9*x10*x12*x14 + x2*x4*x6*x9*x10*x13*x14 + x2*x4*x6*x9*x11*x12*x13 + x2*x4*x6*x9*x11*x13*x14
     + x2*x4*x6*x9*x12*x13*x14 + x2*x4*x6*x10*x11*x12*x13 + x2*x4*x6*x10*x11*x13*x14 + x2*x4*x6*x10*x12*x13*x14
     + x2*x4*x8*x9*x10*x11*x12 + x2*x4*x8*x9*x10*x11*x13 + x2*x4*x8*x9*x10*x11*x14 + x2*x4*x8*x9*x10*x12*x14
     + x2*x4*x8*x9*x10*x13*x14 + x2*x4*x8*x9*x11*x12*x13 + x2*x4*x8*x9*x11*x13*x14 + x2*x4*x8*x9*x12*x13*x14
     + x2*x4*x8*x10*x11*x12*x13 + x2*x4*x8*x10*x11*x13*x14 + x2*x4*x8*x10*x12*x13*x14 + x2*x5*x6*x7*x8*x10*x12
     + x2*x5*x6*x7*x8*x10*x13 + x2*x5*x6*x7*x8*x10*x14 + x2*x5*x6*x7*x8*x11*x12 + x2*x5*x6*x7*x8*x11*x13
     + x2*x5*x6*x7*x8*x11*x14 + x2*x5*x6*x7*x8*x12*x13 + x2*x5*x6*x7*x8*x12*x14 + x2*x5*x6*x7*x9*x10*x12
     + x2*x5*x6*x7*x9*x10*x13 + x2*x5*x6*x7*x9*x10*x14 + x2*x5*x6*x7*x9*x11*x12 + x2*x5*x6*x7*x9*x11*x13
     + x2*x5*x6*x7*x9*x11*x14 + x2*x5*x6*x7*x9*x12*x13 + x2*x5*x6*x7*x9*x12*x14 + x2*x5*x6*x7*x10*x11*x12
     + x2*x5*x6*x7*x10*x11*x13 + x2*x5*x6*x7*x10*x11*x14 + x2*x5*x6*x7*x10*x12*x13 + x2*x5*x6*x7*x10*x12*x14
     + x2*x5*x6*x8*x9*x10*x12 + x2*x5*x6*x8*x9*x10*x13 + x2*x5*x6*x8*x9*x10*x14 + x2*x5*x6*x8*x9*x11*x12
     + x2*x5*x6*x8*x9*x11*x13 + x2*x5*x6*x8*x9*x11*x14 + x2*x5*x6*x8*x9*x12*x13 + x2*x5*x6*x8*x9*x12*x14
     + x2*x5*x6*x8*x10*x12*x13 + x2*x5*x6*x8*x10*x13*x14 + x2*x5*x6*x8*x11*x12*x13 + x2*x5*x6*x8*x11*x13*x14
     + x2*x5*x6*x8*x12*x13*x14 + x2*x5*x6*x9*x10*x11*x12 + x2*x5*x6*x9*x10*x11*x13 + x2*x5*x6*x9*x10*x11*x14
     + x2*x5*x6*x9*x10*x12*x14 + x2*x5*x6*x9*x10*x13*x14 + x2*x5*x6*x9*x11*x12*x13 + x2*x5*x6*x9*x11*x13*x14
     + x2*x5*x6*x9*x12*x13*x14 + x2*x5*x6*x10*x11*x12*x13 + x2*x5*x6*x10*x11*x13*x14 + x2*x5*x6*x10*x12*x13*x14
     + x2*x5*x7*x8*x10*x11*x12 + x2*x5*x7*x8*x10*x11*x13 + x2*x5*x7*x8*x10*x11*x14 + x2*x5*x7*x8*x10*x12*x14
     + x2*x5*x7*x8*x10*x13*x14 + x2*x5*x7*x8*x11*x12*x13 + x2*x5*x7*x8*x11*x13*x14 + x2*x5*x7*x8*x12*x13*x14
     + x2*x5*x7*x9*x10*x11*x12 + x2*x5*x7*x9*x10*x11*x13 + x2*x5*x7*x9*x10*x11*x14 + x2*x5*x7*x9*x10*x12*x14
     + x2*x5*x7*x9*x10*x13*x14 + x2*x5*x7*x9*x11*x12*x13 + x2*x5*x7*x9*x11*x13*x14 + x2*x5*x7*x9*x12*x13*x14
     + x2*x5*x7*x10*x11*x12*x13 + x2*x5*x7*x10*x11*x13*x14 + x2*x5*x7*x10*x12*x13*x14 + x2*x5*x8*x9*x10*x11*x12
     + x2*x5*x8*x9*x10*x11*x13 + x2*x5*x8*x9*x10*x11*x14 + x2*x5*x8*x9*x10*x12*x14 + x2*x5*x8*x9*x10*x13*x14
     + x2*x5*x8*x9*x11*x12*x13 + x2*x5*x8*x9*x11*x13*x14 + x2*x5*x8*x9*x12*x13*x14 + x2*x5*x8*x10*x11*x12*x13
     + x2*x5*x8*x10*x11*x13*x14 + x2*x5*x8*x10*x12*x13*x14 + x2*x6*x7*x8*x9*x10*x12 + x2*x6*x7*x8*x9*x10*x13
     + x2*x6*x7*x8*x9*x10*x14 + x2*x6*x7*x8*x9*x11*x12 + x2*x6*x7*x8*x9*x11*x13 + x2*x6*x7*x8*x9*x11*x14
     + x2*x6*x7*x8*x9*x12*x13 + x2*x6*x7*x8*x9*x12*x14 + x2*x6*x7*x8*x10*x12*x13 + x2*x6*x7*x8*x10*x13*x14
     + x2*x6*x7*x8*x11*x12*x13 + x2*x6*x7*x8*x11*x13*x14 + x2*x6*x7*x8*x12*x13*x14 + x2*x6*x7*x9*x10*x11*x12
     + x2*x6*x7*x9*x10*x11*x13 + x2*x6*x7*x9*x10*x11*x14 + x2*x6*x7*x9*x10*x12*x14 + x2*x6*x7*x9*x10*x13*x14
     + x2*x6*x7*x9*x11*x12*x13 + x2*x6*x7*x9*x11*x13*x14 + x2*x6*x7*x9*x12*x13*x14 + x2*x6*x7*x10*x11*x12*x13
     + x2*x6*x7*x10*x11*x13*x14 + x2*x6*x7*x10*x12*x13*x14 + x2*x7*x8*x9*x10*x11*x12 + x2*x7*x8*x9*x10*x11*x13
     + x2*x7*x8*x9*x10*x11*x14 + x2*x7*x8*x9*x10*x12*x14 + x2*x7*x8*x9*x10*x13*x14 + x2*x7*x8*x9*x11*x12*x13
     + x2*x7*x8*x9*x11*x13*x14 + x2*x7*x8*x9*x12*x13*x14 + x2*x7*x8*x10*x11*x12*x13 + x2*x7*x8*x10*x11*x13*x14
     + x2*x7*x8*x10*x12*x13*x14 + x3*x4*x5*x6*x8*x10*x12 + x3*x4*x5*x6*x8*x10*x13 + x3*x4*x5*x6*x8*x10*x14
     + x3*x4*x5*x6*x8*x11*x12 + x3*x4*x5*x6*x8*x11*x13 + x3*x4*x5*x6*x8*x11*x14 + x3*x4*x5*x6*x8*x12*x13
     + x3*x4*x5*x6*x8*x12*x14 + x3*x4*x5*x6*x9*x10*x12 + x3*x4*x5*x6*x9*x10*x13 + x3*x4*x5*x6*x9*x10*x14
     + x3*x4*x5*x6*x9*x11*x12 + x3*x4*x5*x6*x9*x11*x13 + x3*x4*x5*x6*x9*x11*x14 + x3*x4*x5*x6*x9*x12*x13
     + x3*x4*x5*x6*x9*x12*x14 + x3*x4*x5*x6*x10*x11*x12 + x3*x4*x5*x6*x10*x11*x13 + x3*x4*x5*x6*x10*x11*x14
     + x3*x4*x5*x6*x10*x12*x13 + x3*x4*x5*x6*x10*x12*x14 + x3*x4*x5*x7*x8*x10*x12 + x3*x4*x5*x7*x8*x10*x13
     + x3*x4*x5*x7*x8*x10*x14 + x3*x4*x5*x7*x8*x11*x12 + x3*x4*x5*x7*x8*x11*x13 + x3*x4*x5*x7*x8*x11*x14
     + x3*x4*x5*x7*x8*x12*x13 + x3*x4*x5*x7*x8*x12*x14 + x3*x4*x5*x7*x9*x10*x12 + x3*x4*x5*x7*x9*x10*x13
     + x3*x4*x5*x7*x9*x10*x14 + x3*x4*x5*x7*x9*x11*x12 + x3*x4*x5*x7*x9*x11*x13 + x3*x4*x5*x7*x9*x11*x14
     + x3*x4*x5*x7*x9*x12*x13 + x3*x4*x5*x7*x9*x12*x14 + x3*x4*x5*x7*x10*x11*x12 + x3*x4*x5*x7*x10*x11*x13
     + x3*x4*x5*x7*x10*x11*x14 + x3*x4*x5*x7*x10*x12*x13 + x3*x4*x5*x7*x10*x12*x14 + x3*x4*x5*x8*x9*x10*x12
     + x3*x4*x5*x8*x9*x10*x13 + x3*x4*x5*x8*x9*x10*x14 + x3*x4*x5*x8*x9*x11*x12 + x3*x4*x5*x8*x9*x11*x13
     + x3*x4*x5*x8*x9*x11*x14 + x3*x4*x5*x8*x9*x12*x13 + x3*x4*x5*x8*x9*x12*x14 + x3*x4*x5*x8*x10*x11*x12
     + x3*x4*x5*x8*x10*x11*x13 + x3*x4*x5*x8*x10*x11*x14 + x3*x4*x5*x8*x10*x12*x13 + x3*x4*x5*x8*x10*x12*x14
     + x3*x4*x6*x7*x8*x10*x12 + x3*x4*x6*x7*x8*x10*x13 + x3*x4*x6*x7*x8*x10*x14 + x3*x4*x6*x7*x8*x11*x12
     + x3*x4*x6*x7*x8*x11*x13 + x3*x4*x6*x7*x8*x11*x14 + x3*x4*x6*x7*x8*x12*x13 + x3*x4*x6*x7*x8*x12*x14
     + x3*x4*x6*x7*x9*x10*x12 + x3*x4*x6*x7*x9*x10*x13 + x3*x4*x6*x7*x9*x10*x14 + x3*x4*x6*x7*x9*x11*x12
     + x3*x4*x6*x7*x9*x11*x13 + x3*x4*x6*x7*x9*x11*x14 + x3*x4*x6*x7*x9*x12*x13 + x3*x4*x6*x7*x9*x12*x14
     + x3*x4*x6*x7*x10*x11*x12 + x3*x4*x6*x7*x10*x11*x13 + x3*x4*x6*x7*x10*x11*x14 + x3*x4*x6*x7*x10*x12*x13
     + x3*x4*x6*x7*x10*x12*x14 + x3*x4*x7*x8*x9*x10*x12 + x3*x4*x7*x8*x9*x10*x13 + x3*x4*x7*x8*x9*x10*x14
     + x3*x4*x7*x8*x9*x11*x12 + x3*x4*x7*x8*x9*x11*x13 + x3*x4*x7*x8*x9*x11*x14 + x3*x4*x7*x8*x9*x12*x13
     + x3*x4*x7*x8*x9*x12*x14 + x3*x4*x7*x8*x10*x11*x12 + x3*x4*x7*x8*x10*x11*x13 + x3*x4*x7*x8*x10*x11*x14
     + x3*x4*x7*x8*x10*x12*x13 + x3*x4*x7*x8*x10*x12*x14 + x4*x5*x6*x7*x8*x10*x12 + x4*x5*x6*x7*x8*x10*x13
     + x4*x5*x6*x7*x8*x10*x14 + x4*x5*x6*x7*x8*x11*x12 + x4*x5*x6*x7*x8*x11*x13 + x4*x5*x6*x7*x8*x11*x14
     + x4*x5*x6*x7*x8*x12*x13 + x4*x5*x6*x7*x8*x12*x14 + x4*x5*x6*x7*x9*x10*x12 + x4*x5*x6*x7*x9*x10*x13
     + x4*x5*x6*x7*x9*x10*x14 + x4*x5*x6*x7*x9*x11*x12 + x4*x5*x6*x7*x9*x11*x13 + x4*x5*x6*x7*x9*x11*x14
     + x4*x5*x6*x7*x9*x12*x13 + x4*x5*x6*x7*x9*x12*x14 + x4*x5*x6*x7*x10*x11*x12 + x4*x5*x6*x7*x10*x11*x13
     + x4*x5*x6*x7*x10*x11*x14 + x4*x5*x6*x7*x10*x12*x13 + x4*x5*x6*x7*x10*x12*x14 + x4*x5*x6*x8*x9*x10*x12
     + x4*x5*x6*x8*x9*x10*x13 + x4*x5*x6*x8*x9*x10*x14 + x4*x5*x6*x8*x9*x11*x12 + x4*x5*x6*x8*x9*x11*x13
     + x4*x5*x6*x8*x9*x11*x14 + x4*x5*x6*x8*x9*x12*x13 + x4*x5*x6*x8*x9*x12*x14 + x4*x5*x6*x8*x10*x12*x13
     + x4*x5*x6*x8*x10*x13*x14 + x4*x5*x6*x8*x11*x12*x13 + x4*x5*x6*x8*x11*x13*x14 + x4*x5*x6*x8*x12*x13*x14
     + x4*x5*x6*x9*x10*x11*x12 + x4*x5*x6*x9*x10*x11*x13 + x4*x5*x6*x9*x10*x11*x14 + x4*x5*x6*x9*x10*x12*x14
     + x4*x5*x6*x9*x10*x13*x14 + x4*x5*x6*x9*x11*x12*x13 + x4*x5*x6*x9*x11*x13*x14 + x4*x5*x6*x9*x12*x13*x14
     + x4*x5*x6*x10*x11*x12*x13 + x4*x5*x6*x10*x11*x13*x14 + x4*x5*x6*x10*x12*x13*x14 + x4*x5*x7*x8*x10*x11*x12
     + x4*x5*x7*x8*x10*x11*x13 + x4*x5*x7*x8*x10*x11*x14 + x4*x5*x7*x8*x10*x12*x14 + x4*x5*x7*x8*x10*x13*x14
     + x4*x5*x7*x8*x11*x12*x13 + x4*x5*x7*x8*x11*x13*x14 + x4*x5*x7*x8*x12*x13*x14 + x4*x5*x7*x9*x10*x11*x12
     + x4*x5*x7*x9*x10*x11*x13 + x4*x5*x7*x9*x10*x11*x14 + x4*x5*x7*x9*x10*x12*x14 + x4*x5*x7*x9*x10*x13*x14
     + x4*x5*x7*x9*x11*x12*x13 + x4*x5*x7*x9*x11*x13*x14 + x4*x5*x7*x9*x12*x13*x14 + x4*x5*x7*x10*x11*x12*x13
     + x4*x5*x7*x10*x11*x13*x14 + x4*x5*x7*x10*x12*x13*x14 + x4*x5*x8*x9*x10*x11*x12 + x4*x5*x8*x9*x10*x11*x13
     + x4*x5*x8*x9*x10*x11*x14 + x4*x5*x8*x9*x10*x12*x14 + x4*x5*x8*x9*x10*x13*x14 + x4*x5*x8*x9*x11*x12*x13
     + x4*x5*x8*x9*x11*x13*x14 + x4*x5*x8*x9*x12*x13*x14 + x4*x5*x8*x10*x11*x12*x13 + x4*x5*x8*x10*x11*x13*x14
     + x4*x5*x8*x10*x12*x13*x14 + x4*x6*x7*x8*x9*x10*x12 + x4*x6*x7*x8*x9*x10*x13 + x4*x6*x7*x8*x9*x10*x14
     + x4*x6*x7*x8*x9*x11*x12 + x4*x6*x7*x8*x9*x11*x13 + x4*x6*x7*x8*x9*x11*x14 + x4*x6*x7*x8*x9*x12*x13
     + x4*x6*x7*x8*x9*x12*x14 + x4*x6*x7*x8*x10*x12*x13 + x4*x6*x7*x8*x10*x13*x14 + x4*x6*x7*x8*x11*x12*x13
     + x4*x6*x7*x8*x11*x13*x14 + x4*x6*x7*x8*x12*x13*x14 + x4*x6*x7*x9*x10*x11*x12 + x4*x6*x7*x9*x10*x11*x13
     + x4*x6*x7*x9*x10*x11*x14 + x4*x6*x7*x9*x10*x12*x14 + x4*x6*x7*x9*x10*x13*x14 + x4*x6*x7*x9*x11*x12*x13
     + x4*x6*x7*x9*x11*x13*x14 + x4*x6*x7*x9*x12*x13*x14 + x4*x6*x7*x10*x11*x12*x13 + x4*x6*x7*x10*x11*x13*x14
     + x4*x6*x7*x10*x12*x13*x14 + x4*x7*x8*x9*x10*x11*x12 + x4*x7*x8*x9*x10*x11*x13 + x4*x7*x8*x9*x10*x11*x14
     + x4*x7*x8*x9*x10*x12*x14 + x4*x7*x8*x9*x10*x13*x14 + x4*x7*x8*x9*x11*x12*x13 + x4*x7*x8*x9*x11*x13*x14
     + x4*x7*x8*x9*x12*x13*x14 + x4*x7*x8*x10*x11*x12*x13 + x4*x7*x8*x10*x11*x13*x14 + x4*x7*x8*x10*x12*x13*x14
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
