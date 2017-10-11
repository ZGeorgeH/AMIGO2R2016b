   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2016a [April 2016]    *
   *********************************** 

Date: 11-Oct-2017
Problem folder:	 Results\Gal1-noDelay2017-10-11-105123
Results folder in problem folder:	 Results\Gal1-noDelay2017-10-11-105123\PE_gal1noD_eSS_pe-1 


-------------------------------
Optimisation related active settings
-------------------------------


------> Global Optimizer: Enhanced SCATTER SEARCH for parameter estimation

		>Summary of selected eSS options: 
ess_options.
	dim_refset:	'auto'
	inter_save:	0
	iterprint:	1
	local:	(1x1 struct)
	log_var:	[]
	maxeval:	200000
	maxtime:	100
	ndiverse:	'auto'

		  default options are used. 


		>Bounds on the unknowns:

		v_guess(1)=0.044390;  v_min(1)=0.004140; v_max(1)=0.414000;
		v_guess(2)=4.460450;  v_min(2)=0.189000; v_max(2)=5.000000;
		v_guess(3)=0.115641;  v_min(3)=0.003680; v_max(3)=0.368000;
		v_guess(4)=0.004990;  v_min(4)=0.003000; v_max(4)=0.300000;



-----------------------------------------------
 Initial value problem related active settings
-----------------------------------------------
ivpsolver: cvodes
RelTol: 1e-07
AbsTol: 1e-07
MaxStepSize: Inf
MaxNumberOfSteps: 1e+06


---------------------------------------------------
Local sensitivity problem related active settings
---------------------------------------------------
senssolver: cvodes
ivp_RelTol: 1e-07
ivp_AbsTol: 1e-07
sensmex: cvodesg_gal1noD
MaxStepSize: Inf
MaxNumberOfSteps: 1e+06


-------------------------------
   Model related information
-------------------------------

--> Number of states: 4


--> Number of model parameters: 9

--> Vector of parameters (nominal values):

	par0=[   0.00003     0.04140     1.89000     0.03680     0.03000     0.01000     0.01000     0.00200     0.00230  ]


-------------------------------------------
  Experimental scheme related information
-------------------------------------------


-->Number of experiments: 1


-->Initial conditions for each experiment:
		Experiment 1: 
			exp_y0=[1.380e+00  1.150e+00  1.000e+00  0.000e+00  ]

-->Final process time for each experiment: 
		Experiment 1: 	 1800.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 361: 	 0.000e+00  5.000e+00  1.000e+01  1.500e+01  2.000e+01  2.500e+01  3.000e+01  3.500e+01  4.000e+01  4.500e+01  5.000e+01  5.500e+01  6.000e+01  6.500e+01  7.000e+01  7.500e+01  8.000e+01  8.500e+01  9.000e+01  9.500e+01  1.000e+02  1.050e+02  1.100e+02  1.150e+02  1.200e+02  1.250e+02  1.300e+02  1.350e+02  1.400e+02  1.450e+02  1.500e+02  1.550e+02  1.600e+02  1.650e+02  1.700e+02  1.750e+02  1.800e+02  1.850e+02  1.900e+02  1.950e+02  2.000e+02  2.050e+02  2.100e+02  2.150e+02  2.200e+02  2.250e+02  2.300e+02  2.350e+02  2.400e+02  2.450e+02  2.500e+02  2.550e+02  2.600e+02  2.650e+02  2.700e+02  2.750e+02  2.800e+02  2.850e+02  2.900e+02  2.950e+02  3.000e+02  3.050e+02  3.100e+02  3.150e+02  3.200e+02  3.250e+02  3.300e+02  3.350e+02  3.400e+02  3.450e+02  3.500e+02  3.550e+02  3.600e+02  3.650e+02  3.700e+02  3.750e+02  3.800e+02  3.850e+02  3.900e+02  3.950e+02  4.000e+02  4.050e+02  4.100e+02  4.150e+02  4.200e+02  4.250e+02  4.300e+02  4.350e+02  4.400e+02  4.450e+02  4.500e+02  4.550e+02  4.600e+02  4.650e+02  4.700e+02  4.750e+02  4.800e+02  4.850e+02  4.900e+02  4.950e+02  5.000e+02  5.050e+02  5.100e+02  5.150e+02  5.200e+02  5.250e+02  5.300e+02  5.350e+02  5.400e+02  5.450e+02  5.500e+02  5.550e+02  5.600e+02  5.650e+02  5.700e+02  5.750e+02  5.800e+02  5.850e+02  5.900e+02  5.950e+02  6.000e+02  6.050e+02  6.100e+02  6.150e+02  6.200e+02  6.250e+02  6.300e+02  6.350e+02  6.400e+02  6.450e+02  6.500e+02  6.550e+02  6.600e+02  6.650e+02  6.700e+02  6.750e+02  6.800e+02  6.850e+02  6.900e+02  6.950e+02  7.000e+02  7.050e+02  7.100e+02  7.150e+02  7.200e+02  7.250e+02  7.300e+02  7.350e+02  7.400e+02  7.450e+02  7.500e+02  7.550e+02  7.600e+02  7.650e+02  7.700e+02  7.750e+02  7.800e+02  7.850e+02  7.900e+02  7.950e+02  8.000e+02  8.050e+02  8.100e+02  8.150e+02  8.200e+02  8.250e+02  8.300e+02  8.350e+02  8.400e+02  8.450e+02  8.500e+02  8.550e+02  8.600e+02  8.650e+02  8.700e+02  8.750e+02  8.800e+02  8.850e+02  8.900e+02  8.950e+02  9.000e+02  9.050e+02  9.100e+02  9.150e+02  9.200e+02  9.250e+02  9.300e+02  9.350e+02  9.400e+02  9.450e+02  9.500e+02  9.550e+02  9.600e+02  9.650e+02  9.700e+02  9.750e+02  9.800e+02  9.850e+02  9.900e+02  9.950e+02  1.000e+03  1.005e+03  1.010e+03  1.015e+03  1.020e+03  1.025e+03  1.030e+03  1.035e+03  1.040e+03  1.045e+03  1.050e+03  1.055e+03  1.060e+03  1.065e+03  1.070e+03  1.075e+03  1.080e+03  1.085e+03  1.090e+03  1.095e+03  1.100e+03  1.105e+03  1.110e+03  1.115e+03  1.120e+03  1.125e+03  1.130e+03  1.135e+03  1.140e+03  1.145e+03  1.150e+03  1.155e+03  1.160e+03  1.165e+03  1.170e+03  1.175e+03  1.180e+03  1.185e+03  1.190e+03  1.195e+03  1.200e+03  1.205e+03  1.210e+03  1.215e+03  1.220e+03  1.225e+03  1.230e+03  1.235e+03  1.240e+03  1.245e+03  1.250e+03  1.255e+03  1.260e+03  1.265e+03  1.270e+03  1.275e+03  1.280e+03  1.285e+03  1.290e+03  1.295e+03  1.300e+03  1.305e+03  1.310e+03  1.315e+03  1.320e+03  1.325e+03  1.330e+03  1.335e+03  1.340e+03  1.345e+03  1.350e+03  1.355e+03  1.360e+03  1.365e+03  1.370e+03  1.375e+03  1.380e+03  1.385e+03  1.390e+03  1.395e+03  1.400e+03  1.405e+03  1.410e+03  1.415e+03  1.420e+03  1.425e+03  1.430e+03  1.435e+03  1.440e+03  1.445e+03  1.450e+03  1.455e+03  1.460e+03  1.465e+03  1.470e+03  1.475e+03  1.480e+03  1.485e+03  1.490e+03  1.495e+03  1.500e+03  1.505e+03  1.510e+03  1.515e+03  1.520e+03  1.525e+03  1.530e+03  1.535e+03  1.540e+03  1.545e+03  1.550e+03  1.555e+03  1.560e+03  1.565e+03  1.570e+03  1.575e+03  1.580e+03  1.585e+03  1.590e+03  1.595e+03  1.600e+03  1.605e+03  1.610e+03  1.615e+03  1.620e+03  1.625e+03  1.630e+03  1.635e+03  1.640e+03  1.645e+03  1.650e+03  1.655e+03  1.660e+03  1.665e+03  1.670e+03  1.675e+03  1.680e+03  1.685e+03  1.690e+03  1.695e+03  1.700e+03  1.705e+03  1.710e+03  1.715e+03  1.720e+03  1.725e+03  1.730e+03  1.735e+03  1.740e+03  1.745e+03  1.750e+03  1.755e+03  1.760e+03  1.765e+03  1.770e+03  1.775e+03  1.780e+03  1.785e+03  1.790e+03  1.795e+03  1.800e+03  

-->Number of manipulable (control, stimulus, input) variables: 1


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0141	  2.0000	  0.0643	  0.0026	
			Control switching times: 	  0.0000	564.6950	928.7277	1799.9986	1800.0000


-->Number of observables:
	Experiment 1: 1

-->Observables:
		Experiment 1:
			Fluorescence=gal1_fluo

-->Number of sampling times for each experiment:
		Experiment 1: 	 361

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     5.000    10.000    15.000    20.000    25.000    30.000    35.000    40.000    45.000    50.000    55.000    60.000    65.000    70.000    75.000    80.000    85.000    90.000    95.000   100.000   105.000   110.000   115.000   120.000   125.000   130.000   135.000   140.000   145.000   150.000   155.000   160.000   165.000   170.000   175.000   180.000   185.000   190.000   195.000   200.000   205.000   210.000   215.000   220.000   225.000   230.000   235.000   240.000   245.000   250.000   255.000   260.000   265.000   270.000   275.000   280.000   285.000   290.000   295.000   300.000   305.000   310.000   315.000   320.000   325.000   330.000   335.000   340.000   345.000   350.000   355.000   360.000   365.000   370.000   375.000   380.000   385.000   390.000   395.000   400.000   405.000   410.000   415.000   420.000   425.000   430.000   435.000   440.000   445.000   450.000   455.000   460.000   465.000   470.000   475.000   480.000   485.000   490.000   495.000   500.000   505.000   510.000   515.000   520.000   525.000   530.000   535.000   540.000   545.000   550.000   555.000   560.000   565.000   570.000   575.000   580.000   585.000   590.000   595.000   600.000   605.000   610.000   615.000   620.000   625.000   630.000   635.000   640.000   645.000   650.000   655.000   660.000   665.000   670.000   675.000   680.000   685.000   690.000   695.000   700.000   705.000   710.000   715.000   720.000   725.000   730.000   735.000   740.000   745.000   750.000   755.000   760.000   765.000   770.000   775.000   780.000   785.000   790.000   795.000   800.000   805.000   810.000   815.000   820.000   825.000   830.000   835.000   840.000   845.000   850.000   855.000   860.000   865.000   870.000   875.000   880.000   885.000   890.000   895.000   900.000   905.000   910.000   915.000   920.000   925.000   930.000   935.000   940.000   945.000   950.000   955.000   960.000   965.000   970.000   975.000   980.000   985.000   990.000   995.000  1000.000  1005.000  1010.000  1015.000  1020.000  1025.000  1030.000  1035.000  1040.000  1045.000  1050.000  1055.000  1060.000  1065.000  1070.000  1075.000  1080.000  1085.000  1090.000  1095.000  1100.000  1105.000  1110.000  1115.000  1120.000  1125.000  1130.000  1135.000  1140.000  1145.000  1150.000  1155.000  1160.000  1165.000  1170.000  1175.000  1180.000  1185.000  1190.000  1195.000  1200.000  1205.000  1210.000  1215.000  1220.000  1225.000  1230.000  1235.000  1240.000  1245.000  1250.000  1255.000  1260.000  1265.000  1270.000  1275.000  1280.000  1285.000  1290.000  1295.000  1300.000  1305.000  1310.000  1315.000  1320.000  1325.000  1330.000  1335.000  1340.000  1345.000  1350.000  1355.000  1360.000  1365.000  1370.000  1375.000  1380.000  1385.000  1390.000  1395.000  1400.000  1405.000  1410.000  1415.000  1420.000  1425.000  1430.000  1435.000  1440.000  1445.000  1450.000  1455.000  1460.000  1465.000  1470.000  1475.000  1480.000  1485.000  1490.000  1495.000  1500.000  1505.000  1510.000  1515.000  1520.000  1525.000  1530.000  1535.000  1540.000  1545.000  1550.000  1555.000  1560.000  1565.000  1570.000  1575.000  1580.000  1585.000  1590.000  1595.000  1600.000  1605.000  1610.000  1615.000  1620.000  1625.000  1630.000  1635.000  1640.000  1645.000  1650.000  1655.000  1660.000  1665.000  1670.000  1675.000  1680.000  1685.000  1690.000  1695.000  1700.000  1705.000  1710.000  1715.000  1720.000  1725.000  1730.000  1735.000  1740.000  1745.000  1750.000  1755.000  1760.000  1765.000  1770.000  1775.000  1780.000  1785.000  1790.000  1795.000  1800.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		1.01369
		1.11689
		0.825333
		1.00857
		1.03888
		1.17159
		1.04005
		0.880432
		1.10787
		0.973691
		1.14163
		0.996318
		1.09094
		1.02447
		1.04277
		1.06761
		0.767721
		1.09535
		0.884372
		0.944866
		0.926612
		1.17906
		1.04507
		1.04301
		0.871226
		1.02805
		1.04024
		1.02842
		0.881955
		0.952569
		0.757349
		0.897448
		0.900452
		0.886638
		0.87201
		0.849856
		0.995137
		0.697982
		0.761417
		0.851491
		0.718998
		0.794018
		0.930366
		0.867002
		0.858304
		0.742648
		0.722033
		0.677619
		0.833891
		0.765269
		0.741119
		0.854773
		0.869246
		0.683265
		0.844385
		0.693794
		0.838002
		0.819959
		0.706638
		0.699943
		0.74521
		0.685166
		0.8027
		0.753098
		0.876688
		0.584346
		0.685681
		0.755358
		0.624007
		0.720928
		0.671662
		0.612913
		0.64501
		0.407175
		0.625098
		0.556394
		0.639957
		0.715977
		0.817818
		0.567334
		0.693126
		0.542684
		0.586422
		0.612679
		0.638778
		0.549254
		0.467119
		0.730814
		0.474303
		0.683339
		0.599337
		0.530345
		0.447962
		0.518684
		0.483402
		0.626894
		0.369103
		0.576705
		0.510552
		0.22971
		0.545621
		0.436719
		0.495862
		0.454583
		0.56623
		0.510908
		0.43552
		0.173333
		0.348833
		0.364376
		0.566281
		0.400478
		0.478283
		0.431177
		0.48907
		0.412365
		0.330419
		0.436877
		0.260037
		0.308117
		0.394619
		0.388977
		0.258981
		0.445789
		0.376303
		0.504118
		0.421166
		0.344013
		0.279713
		0.387156
		0.362274
		0.508688
		0.496579
		0.307656
		0.654632
		0.320387
		0.254763
		0.4614
		0.469351
		0.436772
		0.438355
		0.41451
		0.460965
		0.621574
		0.356776
		0.503058
		0.4621
		0.433498
		0.457249
		0.581542
		0.502632
		0.510982
		0.381317
		0.444792
		0.450318
		0.412743
		0.426493
		0.506656
		0.61405
		0.574925
		0.494665
		0.595062
		0.520076
		0.623752
		0.581106
		0.669175
		0.431055
		0.581621
		0.683609
		0.45177
		0.411451
		0.674142
		0.466263
		0.723621
		0.593776
		0.686273
		0.63608
		0.703429
		0.530472
		0.506904
		0.615898
		0.515729
		0.583544
		0.548444
		0.919098
		0.417754
		0.686405
		0.576772
		0.621406
		0.593177
		0.533579
		0.621899
		0.732136
		0.76254
		0.677429
		0.773762
		0.635331
		0.880195
		0.696978
		0.68261
		0.667724
		0.785937
		0.857153
		0.616849
		0.585464
		0.607381
		0.660633
		0.70501
		0.610821
		0.768651
		0.612607
		0.859017
		0.678587
		0.698852
		0.619347
		0.7464
		0.682279
		0.541647
		0.672388
		0.800923
		0.74118
		0.668148
		0.690276
		0.617288
		0.5767
		0.709753
		0.826936
		0.638025
		0.626073
		0.727345
		0.611981
		0.71245
		0.745484
		0.499312
		0.794715
		0.780016
		0.541487
		0.876143
		0.605631
		0.687546
		0.587739
		0.769077
		0.6869
		0.82113
		0.657966
		0.472134
		0.70747
		0.670768
		0.898058
		0.686825
		0.604119
		0.715116
		0.749032
		0.821297
		0.701261
		0.783831
		0.634161
		0.836537
		0.642744
		0.730079
		0.897928
		0.725675
		0.741197
		0.83115
		0.766278
		0.700051
		0.742078
		0.699164
		0.864782
		0.576536
		0.692176
		0.725586
		0.74709
		0.726483
		0.692017
		0.593527
		0.66493
		0.925265
		0.658528
		0.819896
		0.593811
		0.771774
		0.615585
		0.688518
		0.650823
		0.690946
		0.720343
		0.837462
		0.802534
		0.86056
		0.902642
		0.67189
		0.699884
		0.922009
		0.741096
		0.659786
		0.843879
		0.699096
		0.554367
		0.778384
		0.738409
		0.810229
		0.69621
		0.880195
		0.623946
		0.499091
		0.714904
		0.706602
		0.714087
		0.650295
		0.763308
		0.950629
		0.776531
		0.67109
		0.842452
		0.783377
		0.613099
		0.787173
		0.805967
		0.8845
		0.771167
		0.812929
		0.811065
		0.792006
		0.76494
		0.607295
		0.692757
		0.652059
		0.524694
		0.761003
		0.584016
		0.764602
		0.575943
		0.694242
		0.821964
		0.916551
		0.765574
		0.800408
		0.810832
		0.754123
		0.647457
		0.753019
		0.790063
		0.778657
		0.856433
		0.814183
		0.674536
		0.755813
		0.774173
		0.877802
		0.750407
		0.550669
		0.632167
		0.899218
		0.702769
		0.561511
		0.727903
		0.761748
		0.735215
		0.748249
		0.818805
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 12.512850 %	 max error: 167.249180 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.302418 max data: 1.179060

--------------------------------------------------------------------------	   

>>>> Best objective function: 2.376025 
	   

>>>> Computational cost: 100.152642 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	Vm1    : 3.6042e-02  +-  1.6806e-02 (    46.6%); 
	h1     : 2.0846e+00  +-  2.3215e-01 (    11.1%); 
	Km1    : 3.8053e-02  +-  7.5456e-03 (    19.8%); 
	d1     : 2.6275e-02  +-  1.3398e-02 (      51%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -1.251732e-01	 -5.365476e-01	 9.922575e-01
	 -1.251732e-01	 1.000000e+00	 -2.265559e-03	 -1.016520e-01
	 -5.365476e-01	 -2.265559e-03	 1.000000e+00	 -6.305480e-01
	 9.922575e-01	 -1.016520e-01	 -6.305480e-01	 1.000000e+00
