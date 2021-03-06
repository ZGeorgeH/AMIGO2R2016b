C$TEST GMAD
C TO RUN AS A MAIN PROGRAM REMOVE NEXT LINE
      SUBROUTINE GMAD
C***********************************************************************
C
C  TEST OF THE PORT PROGRAM DGAMMA
C
C***********************************************************************
             DOUBLE PRECISION A(10), DGAMMA, PI, DSIN, DATAN
             INTEGER WWIDTH, EWIDTH, IWRITE
C
C   TEST THE PORT3 DGAMMA FUNCTION.
C
C   TEST A FEW SELECT VALUES, ESPECIALLY THOSE SPANNING REGIONS WHERE
C   THE METHODS OF EVALUATION ARE DIFFERENT.
C   FOR EXAMPLE, SINCE GAMMA(-12.5) AND GAMMA(-11.5) ARE EVALUATED WITH
C   DIFFERENT FORMULAS, CHECK THAT THE RELATIONSHIP
C   X*GAMMA(X)=GAMMA(1+X) HOLDS.
C
C   FIND THE FORMAT AND OUTPUT UNIT FOR PRINTING ON THE TARGET MACHINE.
C
       CALL FRMATD(WWIDTH, EWIDTH)
       IWRITE = I1MACH(2)
C
C   THE LARGEST FITTING ERROR FOR X BETWEEN 1.0 AND 2.0 SEEMS TO BE
C   AROUND X=1.640625 (NEARBY MULTIPLE OF INVERSE POWER OF TWO).
C   THE ANSWER (USING RICHARD BRENT'S MULTIPLE PRECCISION PACKAGE)
C   SHOULD BE ABOUT .8987319511828340762537627180621745626143
C
C
       A(1) = 1.640625D0
       A(2) = DGAMMA(A(1))
       WRITE(IWRITE,91)
  91    FORMAT(37H FOR X = 1.640625, GAMMA(X) SHOULD BE)
       WRITE(IWRITE,92)
  92    FORMAT(43H  .8987319511828340762537627180621745626143)
       CALL APRNTD(A, 2, IWRITE, 80, WWIDTH, EWIDTH)
C
C   CHECK FORMULA X*GAMMA(X) - GAMMA(X+1) FOR X = -12.5
C   SINCE GAMMA(-12.5) IS COMPUTED BY AN ASYMPTOTIC FORMULA
C   (AND A DIVISION), WHEREAS GAMMA(-11.5.) IS COMPUTED BY
C   A CHEBYSHEV APPROXIMATION (AND RANGE REDUCTION)
C
       A(1) = -12.5D0
       A(2) = DGAMMA(A(1))
       A(3) = A(1) + 1.D0
       A(3) = DGAMMA(A(3))
       A(4) = A(1)*A(2) - A(3)
       WRITE(IWRITE,93)
  93    FORMAT(34H0X AND GAMMA(X) AND GAMMA(X+1) ARE)
       CALL APRNTD(A, 3, IWRITE, 80, WWIDTH, EWIDTH)
       WRITE(IWRITE,94)
  94    FORMAT(11H WITH ERROR)
       CALL APRNTD(A(4), 1, IWRITE, 80, WWIDTH, EWIDTH)
C
C   CHECK THAT GAMMA(-2.5)*GAMMA(3.5) = PI/SIN(-2.5PI)
C   HERE THE GAMMAS ARE COMPUTED BY CHEBYSHEV APPROXIMATION
C   (AFTER RANGE REDUCTION TO 1 .LE. X .LE. 2.)
C
       A(1) = -2.5D0
       A(2) =  3.5D0
       A(3) = DGAMMA(A(1))
       A(4) = DGAMMA(A(2))
       PI = 4.D0*DATAN(1.D0)
       WRITE(IWRITE,95)
  95    FORMAT(52H0DIFFERENCE GAMMA(-2.5)*GAMMA(3.5)-PI/SIN(-2.5PI) IS)
       A(5) = A(3)*A(4) - PI/DSIN(-2.5D0*PI)
       CALL APRNTD(A(5), 1, IWRITE, 80, WWIDTH, EWIDTH)
C
C   CHECK THE BOUNDARY BETWEEN THE CHEBYSHEV APPROXIMATION AND THE
C   ASYMPTOTIC REGION.
C   THIS IS ALL BASED ON A DIVIDING LINE OF X=12 BETWEEN THE REGIONS.
C
       A(1) = 11.5D0
       A(2) = 12.5D0
       A(3) = DGAMMA(A(1))
       A(4) = DGAMMA(A(2))
       A(5) = A(1)*A(3) - A(4)
       WRITE(IWRITE,96)
  96    FORMAT(15H0GAMMA(12.5) IS)
       CALL APRNTD(A(4), 1, IWRITE, 80, WWIDTH, EWIDTH)
       WRITE(IWRITE,97)
  97    FORMAT(34H 11.5*GAMMA(11.5) - GAMMA(12.5) IS)
       CALL APRNTD(A(5), 1, IWRITE, 80, WWIDTH, EWIDTH)
C
C    CHECK THE ASYMPTOTIC REGION FOR TWO CONSECUTIVE LARGISH INTEGERS.
C
       A(1) = 25.D0
       A(2) = 26.D0
       A(3) = DGAMMA(A(2))
       A(4) = A(1)*DGAMMA(A(1)) - A(3)
       WRITE(IWRITE,98)
  98    FORMAT(13H0GAMMA(26) IS)
       CALL APRNTD(A(3), 1, IWRITE, 80, WWIDTH, EWIDTH)
       WRITE(IWRITE,99)
  99    FORMAT(27H 25GAMMA(25) - GAMMA(26) IS)
       CALL APRNTD(A(4), 1, IWRITE, 80, WWIDTH, EWIDTH)
C
       STOP
       END
