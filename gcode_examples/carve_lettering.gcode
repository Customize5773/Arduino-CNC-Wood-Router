; Ukir Tulisan "CNC" (Tinggi huruf: 20mm)  
G21          ; Milimeter  
G90          ; Absolute positioning  
G28          ; Home  
G0 Z5        ; Z safe height  
M3 S10000    ; Spindle ON  
G4 P1  

; Posisi awal (X10 Y10)  
G0 X10 Y10  

; Huruf "C"  
G1 Z-1 F300  ; Kedalaman 1mm  
G3 X30 Y10 I10 J0 F500 ; Lingkaran (radius 10mm)  
G1 Z5        ; Angkat  
G0 X40 Y10   ; Geser ke kanan  

; Huruf "N"  
G1 Z-1 F300  
G1 X40 Y30  
G1 X50 Y10  
G1 X60 Y30  
G1 Z5  
G0 X70 Y10  

; Huruf "C"  
G1 Z-1 F300  
G3 X90 Y10 I10 J0 F500  
G1 Z5  

; Bersihkan  
M5           ; Spindle OFF  
G28          ; Home  
M30  
