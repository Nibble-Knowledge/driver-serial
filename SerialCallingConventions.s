#To send data over the serial port:

MOVADDR return INTO DRIVER_SERIAL.Exit[1]
MOV8 data INTO DRIVER_SERIAL.TxByte
LOD N_[0]
JMP DRIVER_SERIAL.TxEnter
return:
NOP 0



#To receive data over the serial port:

MOVADDR return INTO DRIVER_SERIAL.Exit[1]
LOD N_[0]
JMP DRIVER_SERIAL.RxEnter
return:
NOP 0

#Received byte, if present, is now in 
#DRIVER_SERIAL.RxByte

#If a byte was received, DRIVER_SERIAL.RxGotData
#is a non-zero value (probably 0b0010, if it helps)
