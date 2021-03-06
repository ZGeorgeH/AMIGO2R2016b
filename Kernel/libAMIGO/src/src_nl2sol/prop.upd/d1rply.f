      SUBROUTINE D1RPLY(OP, DEGREE, ZEROR, ZEROI,
     1              FAIL, P, QP, K, QK, SVK, TEMP, PT)
C FINDS THE ZEROS OF A REAL POLYNOMIAL
C OP  - DOUBLE PRECISION VECTOR OF COEFFICIENTS IN
C       ORDER OF DECREASING POWERS.
C DEGREE   - INTEGER DEGREE OF POLYNOMIAL.
C ZEROR, ZEROI - OUTPUT DOUBLE PRECISION VECTORS OF
C                ZEROS.
C FAIL  - TRUE IF D1RPLY HAS FOUND FEWER THAN
C         DEGREE NUMBER OF ZEROS.
C         IN THIS CASE, DEGREE IS RESET TO
C         THE NUMBER OF ZEROS FOUND.
C
C THE SUBROUTINE USES SINGLE PRECISION CALCULATIONS
C FOR SCALING, BOUNDS AND ERROR CALCULATIONS. ALL
C CALCULATIONS FOR THE ITERATIONS ARE DONE IN DOUBLE
C PRECISION.
C
      COMMON /P77PLY/ SR, SI, U,
     1 V, A, B, C, D, A1, A2, A3, A6, A7, E, F, G,
     2 H, SZR, SZI, LZR, LZI, ETA, ARE, MRE, N, NN
C
      INTEGER L, N, NN
      INTEGER DEGREE, CNT, NZ, I, J, JJ, NM1
      DOUBLE PRECISION ANG, ETA, ARE, MRE
      DOUBLE PRECISION PT(1), LO, MAX, MIN, XX, YY, COSR,
     1 SINR, XXX, X, SC, BND, XM, FF, DF, DX, INFIN,
     2 SMALNO, BASE
C
      DOUBLE PRECISION P(3), QP(1), K(1),
     1 QK(1), SVK(1), SR, SI, U, V, A, B, C, D,
     2 A1, A2, A3, A6, A7, E, F, G, H, SZR, SZI,
     3 LZR, LZI
C
      DOUBLE PRECISION OP(1), TEMP(1),
     1 ZEROR(1), ZEROI(1), T, AA, BB, CC, FACTOR
      LOGICAL FAIL, ZEROK
C
      DOUBLE PRECISION D1MACH
      INTEGER I1MACH
      EXTERNAL D1MACH, I1MACH
C
C THE FOLLOWING STATEMENTS SET MACHINE CONSTANTS USED
C IN VARIOUS PARTS OF THE PROGRAM. THE MEANING OF THE
C FOUR CONSTANTS ARE...
C ETA     THE MAXIMUM RELATIVE REPRESENTATION ERROR
C         WHICH CAN BE DESCRIBED AS THE SMALLEST
C         POSITIVE FLOATING POINT NUMBER SUCH THAT
C         1.D0+ETA IS GREATER THAN 1.
C INFINY  THE LARGEST FLOATING-POINT NUMBER.
C SMALNO  THE SMALLEST POSITIVE FLOATING-POINT NUMBER
C         IF THE EXPONENT RANGE DIFFERS IN SINGLE AND
C         DOUBLE PRECISION THEN SMALNO AND INFIN
C         SHOULD INDICATE THE SMALLER RANGE.
C
C PORT NOTE -
C     FOR THE ABOVE REASON, THE MACHINE-CONSTANT
C     ROUTINE R1MACH HAS BEEN USED FOR THESE TWO VALUES.
C
C BASE    THE BASE OF THE FLOATING-POINT NUMBER
C         SYSTEM USED.
C
      BASE = I1MACH(10)
      ETA = D1MACH(4)
      INFIN = D1MACH(2)
      SMALNO = D1MACH(1)
C ARE AND MRE REFER TO THE UNIT ERROR IN + AND *
C RESPECTIVELY. THEY ARE ASSUMED TO BE THE SAME AS
C ETA.
      ARE = ETA
      MRE = ETA
      LO = SMALNO/ETA
C INITIALIZATION OF CONSTANTS FOR SHIFT ROTATION
      XX = .5*SQRT(2.)
      YY = -XX
C
      ANG = 94./180.*(4.*ATAN(1.))
      COSR = COS(ANG)
      SINR = SIN(ANG)
      FAIL = .FALSE.
      N = DEGREE
      NN = N + 1
C
C REMOVE THE ZEROS AT THE ORIGIN IF ANY
   10 IF (OP(NN).NE.0.0D0) GO TO 20
      J = DEGREE - N + 1
      ZEROR(J) = 0.D0
      ZEROI(J) = 0.D0
      NN = NN - 1
      N = N - 1
      GO TO 10
C MAKE A COPY OF THE COEFFICIENTS
   20 DO 30 I=1,NN
        P(I) = OP(I)
   30 CONTINUE
C START THE ALGORITHM FOR ONE ZERO
   40 IF (N.GT.2) GO TO 60
      IF (N.LT.1) RETURN
C CALCULATE THE FINAL ZERO OR PAIR OF ZEROS
      IF (N.EQ.2) GO TO 50
      ZEROR(DEGREE) = -P(2)/P(1)
      ZEROI(DEGREE) = 0.0D0
      RETURN
   50 CALL D6RPLY(P(1), P(2), P(3), ZEROR(DEGREE-1),
     1 ZEROI(DEGREE-1), ZEROR(DEGREE), ZEROI(DEGREE))
      RETURN
C FIND LARGEST AND SMALLEST MODULI OF COEFFICIENTS.
   60 MAX = 0.
      MIN = INFIN
      DO 70 I=1,NN
        X = ABS(P(I))
        IF (X.GT.MAX) MAX = X
        IF (X.NE.0. .AND. X.LT.MIN) MIN = X
   70 CONTINUE
C SCALE IF THERE ARE LARGE OR VERY SMALL COEFFICIENTS
C COMPUTES A SCALE FACTOR TO MULTIPLY THE
C COEFFICIENTS OF THE POLYNOMIAL. THE SCALING IS DONE
C TO AVOID OVERFLOW AND TO AVOID UNDETECTED UNDERFLOW
C INTERFERING WITH THE CONVERGENCE CRITERION.
C THE FACTOR IS A POWER OF THE BASE
      SC = LO/MIN
      IF (SC.GT.1.0) GO TO 80
      IF (MAX.LT.10.) GO TO 110
      IF (SC.EQ.0.) SC = SMALNO
      GO TO 90
   80 IF (INFIN/SC.LT.MAX) GO TO 110
   90 L = DLOG(SC)/DLOG(BASE) + .5
      FACTOR = (BASE*1.0D0)**L
      IF (FACTOR.EQ.1.D0) GO TO 110
      DO 100 I=1,NN
        P(I) = FACTOR*P(I)
  100 CONTINUE
C COMPUTE LOWER BOUND ON MODULI OF ZEROS.
  110 DO 120 I=1,NN
        PT(I) = ABS(P(I))
  120 CONTINUE
      PT(NN) = -PT(NN)
C COMPUTE UPPER ESTIMATE OF BOUND
      X = DEXP((DLOG(-PT(NN))-DLOG(PT(1)))/N)
      IF (PT(N).EQ.0.) GO TO 130
C IF NEWTON STEP AT THE ORIGIN IS BETTER, USE IT.
      XM = -PT(NN)/PT(N)
      IF (XM.LT.X) X = XM
C CHOP THE INTERVAL (0,X) UNTIL FF .LE. 0
  130 XM = X*.1
      FF = PT(1)
      DO 140 I=2,NN
        FF = FF*XM + PT(I)
  140 CONTINUE
      IF (FF.LE.0.) GO TO 150
      X = XM
      GO TO 130
  150 DX = X
C DO NEWTON ITERATION UNTIL X CONVERGES TO TWO
C DECIMAL PLACES
  160 IF (ABS(DX/X).LE..005) GO TO 180
      FF = PT(1)
      DF = FF
      DO 170 I=2,N
        FF = FF*X + PT(I)
        DF = DF*X + FF
  170 CONTINUE
      FF = FF*X + PT(NN)
      DX = FF/DF
      X = X - DX
      GO TO 160
  180 BND = X
C COMPUTE THE DERIVATIVE AS THE INTIAL K POLYNOMIAL
C AND DO 5 STEPS WITH NO SHIFT
      NM1 = N - 1
      DO 190 I=2,N
        K(I) = (NN-I)*P(I)/N
  190 CONTINUE
      K(1) = P(1)
      AA = P(NN)
      BB = P(N)
      ZEROK = K(N).EQ.0.D0
      DO 230 JJ=1,5
        CC = K(N)
        IF (ZEROK) GO TO 210
C USE SCALED FORM OF RECURRENCE IF VALUE OF K AT 0 IS
C NONZERO
        T = -AA/CC
        DO 200 I=1,NM1
          J = NN - I
          K(J) = T*K(J-1) + P(J)
  200   CONTINUE
        K(1) = P(1)
        ZEROK = DABS(K(N)).LE.DABS(BB)*ETA*10.
        GO TO 230
C USE UNSCALED FORM OF RECURRENCE
  210   DO 220 I=1,NM1
          J = NN - I
          K(J) = K(J-1)
  220   CONTINUE
        K(1) = 0.D0
        ZEROK = K(N).EQ.0.D0
  230 CONTINUE
C SAVE K FOR RESTARTS WITH NEW SHIFTS
      DO 240 I=1,N
        TEMP(I) = K(I)
  240 CONTINUE
C LOOP TO SELECT THE QUADRATIC  CORRESPONDING TO EACH
C NEW SHIFT
      DO 280 CNT=1,20
C QUADRATIC CORRESPONDS TO A DOUBLE SHIFT TO A
C NON-REAL POINT AND ITS COMPLEX CONJUGATE. THE POINT
C HAS MODULUS BND AND AMPLITUDE ROTATED BY 94 DEGREES
C FROM THE PREVIOUS SHIFT
        XXX = COSR*XX - SINR*YY
        YY = SINR*XX + COSR*YY
        XX = XXX
        SR = BND*XX
        SI = BND*YY
        U = -2.0D0*SR
        V = BND
C SECOND STAGE CALCULATION, FIXED QUADRATIC
        CALL D3RPLY(20*CNT, NZ, P, QP, K, QK, SVK)
        IF (NZ.EQ.0) GO TO 260
C THE SECOND STAGE JUMPS DIRECTLY TO ONE OF THE THIRD
C STAGE ITERATIONS AND RETURNS HERE IF SUCCESSFUL.
C DEFLATE THE POLYNOMIAL, STORE THE ZERO OR ZEROS AND
C RETURN TO THE MAIN ALGORITHM.
        J = DEGREE - N + 1
        ZEROR(J) = SZR
        ZEROI(J) = SZI
        NN = NN - NZ
        N = NN - 1
        DO 250 I=1,NN
          P(I) = QP(I)
  250   CONTINUE
        IF (NZ.EQ.1) GO TO 40
        ZEROR(J+1) = LZR
        ZEROI(J+1) = LZI
        GO TO 40
C IF THE ITERATION IS UNSUCCESSFUL ANOTHER QUADRATIC
C IS CHOSEN AFTER RESTORING K
  260   DO 270 I=1,N
          K(I) = TEMP(I)
  270   CONTINUE
  280 CONTINUE
C RETURN WITH FAILURE IF NO CONVERGENCE WITH 20
C SHIFTS
      FAIL = .TRUE.
      DEGREE = DEGREE - N
      RETURN
      END
