      SUBROUTINE D7UPD(D, DR, IV, LIV, LV, N, ND, NN, N2, P, V)
C
C  ***  UPDATE SCALE VECTOR D FOR NL2IT  ***
C
C  ***  PARAMETER DECLARATIONS  ***
C
      INTEGER LIV, LV, N, ND, NN, N2, P
      INTEGER IV(LIV)
      REAL D(P), DR(ND,P), V(LV)
C     DIMENSION V(*)
C
C  ***  LOCAL VARIABLES  ***
C
      INTEGER D0, I, JCN0, JCN1, JCNI, JTOL0, JTOLI, K, SII
      REAL T, VDFAC
C
C     ***  CONSTANTS  ***
C
      REAL ZERO
C
C  ***  INTRINSIC FUNCTIONS  ***
C/+
      REAL  SQRT
C/
C  ***  EXTERNAL SUBROUTINE  ***
C
      EXTERNAL  V7SCP
C
C  V7SCP... SETS ALL COMPONENTS OF A VECTOR TO A SCALAR.
C
C  ***  SUBSCRIPTS FOR IV AND V  ***
C
      INTEGER DFAC, DTYPE, JCN, JTOL, NITER, S
C/6
C     DATA DFAC/41/, DTYPE/16/, JCN/66/, JTOL/59/, NITER/31/, S/62/
C/7
      PARAMETER (DFAC=41, DTYPE=16, JCN=66, JTOL=59, NITER=31, S=62)
C/
C
C/6
C     DATA ZERO/0.E+0/
C/7
      PARAMETER (ZERO=0.E+0)
C/
C
C-------------------------------  BODY  --------------------------------
C
      IF (IV(DTYPE) .NE. 1 .AND. IV(NITER) .GT. 0) GO TO 999
      JCN1 = IV(JCN)
      JCN0 = IABS(JCN1) - 1
      IF (JCN1 .LT. 0) GO TO 10
         IV(JCN) = -JCN1
         CALL  V7SCP(P, V(JCN1), ZERO)
 10   DO 30 I = 1, P
         JCNI = JCN0 + I
         T  = V(JCNI)
         DO 20 K = 1, NN
 20           T = AMAX1(T,  ABS(DR(K,I)))
         V(JCNI) = T
 30      CONTINUE
      IF (N2 .LT. N) GO TO 999
      VDFAC = V(DFAC)
      JTOL0 = IV(JTOL) - 1
      D0 = JTOL0 + P
      SII = IV(S) - 1
      DO 50 I = 1, P
         SII = SII + I
         JCNI = JCN0 + I
         T = V(JCNI)
         IF (V(SII) .GT. ZERO) T = AMAX1( SQRT(V(SII)), T)
         JTOLI = JTOL0 + I
         D0 = D0 + 1
         IF (T .LT. V(JTOLI)) T = AMAX1(V(D0), V(JTOLI))
         D(I) = AMAX1(VDFAC*D(I), T)
 50      CONTINUE
C
 999  RETURN
C  ***  LAST CARD OF D7UPD FOLLOWS  ***
      END
