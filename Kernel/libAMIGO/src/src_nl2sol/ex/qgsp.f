C$TEST QGSP
C TO RUN AS A MAIN PROGRAM REMOVE NEXT LINE
      SUBROUTINE QGSP
C***********************************************************************
C
C  EXAMPLE OF USE OF THE PORT PROGRAM GQLOG
C
C***********************************************************************
      REAL X(5),W(5),FLOG,CALC,TRUE,PI2,ERR
C
      CALL  GQLOG(5,X,W)
      IWRITE = I1MACH(2)
      WRITE(IWRITE,1)
      DO 10 J = 1,5
   10    WRITE(IWRITE,2) J, X(J),W(J)
      CALC = 0.E0
      DO 20 J = 1,5
   20    CALC = CALC+W(J)*FLOG(X(J))
      PI2  = ATAN2(1.E0,0.E0)
      TRUE = -(PI2**2/3.E0)
      ERR  = TRUE - CALC
      WRITE(IWRITE,3) TRUE,CALC,ERR
      STOP
    1 FORMAT(///15H TEST OF  GQLOG//30H0ABSCISSAS AND WEIGHTS FOR N=5)
    2 FORMAT(I4,0P2E16.7)
    3 FORMAT(15H0SAMPLE PROBLEM/6H TRUE=,1PE16.7/
     X   6H CALC=,1PE16.7/6H ERR =,1PE11.2)
      END
      REAL FUNCTION FLOG(X)
      REAL X
      FLOG = -1.E0/(1.E0+X)
      RETURN
      END
