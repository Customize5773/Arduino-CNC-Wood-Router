; Engrave Text "CNC" (Letter height: 20mm)  
G21          ; Millimeters  
G90          ; Absolute positioning  
G28          ; Home  
G0 Z5        ; Z safe height  
M3 S10000    ; Spindle ON  
G4 P1  

; Starting position (X10 Y10)  
G0 X10 Y10  

; Letter "C"  
G1 Z-1 F300  ; Depth 1mm  
G3 X30 Y10 I10 J0 F500 ; Circle (radius 10mm)  
G1 Z5        ; Lift  
G0 X40 Y10   ; Move right  

; Letter "N"  
G1 Z-1 F300  
G1 X40 Y30  
G1 X50 Y10  
G1 X60 Y30  
G1 Z5  
G0 X70 Y10  

; Letter "C"  
G1 Z-1 F300  
G3 X90 Y10 I10 J0 F500  
G1 Z5  

; Clean up  
M5           ; Spindle OFF  
G28          ; Home  
M30  
