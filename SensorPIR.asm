
$NOMOD51
$INCLUDE (8051.MCU)

PIR EQU P3.5 ;EQUATE, nilai(I/0) yang digunakan PIR Sensor.
LED EQU P2.0 ;EQUATE, nilai(I/0) yang digunakan LED.


ORG 00H
CLR P2.0 ;berfungsi untuk mereset data akumulator menjadi 00H.        
SETB P3.5 ;Instruksi SETB berfungsi untuk menset carry flag

;//--Status keluaran sensor PIR diperiksa menggunakan instruksi JNB dan JB--//
MOTION:JNB PIR, MOTION ;Looping hingga output dari PIR Sensor HIGH (Motion Terdeteksi)
     SETB LED ;LED menyala
NOTHING:JB PIR,NOTHING ;Looping hingga output dari PIR Sensor LOW (Motion Tidak Terdeteksi)
      CLR LED ;LED Mati
SJMP MOTION ;Program kembali ke MOTION dan seluruh siklus berulang
END