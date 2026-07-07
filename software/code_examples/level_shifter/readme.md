### level shifter operation

The level shifter works automatically via hardware,
converting a signal with a higher voltage into a signal with a lower voltage and vice-versa.

There is no need to create code for this.


Important observation: This implementation works at generally low voltage levels due to the MOSFETs used in this implementation.
Levels from 5v to 1.8v are fine for this implementation.
