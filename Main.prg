'
' EPSON RC+ 7.0 Sample Project
'
' Pick and Place demo
'
' To run, click the RUN tool bar button, then click Start
'
Function main
	  
	Long cycleCount
	
	InitRobot
	
	Do
		Jump pick :Z(0)
		'Wait Sw(partInPos) = On
		Go pick
		On gripper
		Wait .1
		Jump place
		Off gripper
		Wait .1
		cycleCount = cycleCount + 1
		Print "Cycle count: ", cycleCount
	Loop
	
Fend

Function InitRobot
	
	Reset
	If Motor = Off Then
		Motor On
	EndIf
	Power High
	Speed 50
	Accel 50, 50
Fend



