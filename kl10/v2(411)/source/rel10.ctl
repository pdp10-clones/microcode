.assign dec sys
.assign dec rel
.assign dec unv
.set watch version
.set dskful pause
.DIR/ch *.CCL,*.MIC,*.MAC,*.REL,*.CTL,*.RAM,*.MCB,CONVRT.SAV
.


!ASSEMBLE TOPS-10 MICROCODE

.RUN MICRO
*@KLX.CCL


!NOW DO THE FIRST STEP OF THE CONVERSION PROCESS

!TOPS-10 MODEL B
.RU CONVRT
*KLX/R


!NOW DO THE SECOND STEP OF CONVERSION THE RSXT10 IS A SUPPORTED TOPS-10
!PROGRAM 

!TOPS-10 MODEL B
.R RSXT10
CONVERT KLX.RAM KLX.MCB
EXIT



!THERE HAVE BEEN SOFTWARE CHANGES TO THE CONVRT PROGRAM TO MAKE IT
!HAVE NO DATE DEPENDENCIES THE RAM AND MCB FILES SHOULD THEREFORE CHECKSUM
.DIR *.RAM,*.MCB
.




