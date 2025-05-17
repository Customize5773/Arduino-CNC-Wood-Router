; Test Square (50x50mm)  
; Material: Thin wood (Z safe height: 5mm)  
G21          ; Set units to millimeters  
G90          ; Absolute positioning  
G28          ; Home all axes  
G0 Z5        ; Lift spindle  
G0 X0 Y0     ; Move to origin  

; Start cutting (depth: 2mm per pass)  
M3 S10000    ; Spindle ON (10,000 RPM)  
G4 P1        ; Wait 1 second for spindle to stabilize  

; Pass 1 (Cut 2mm)  
G1 Z-2 F300  ; Lower spindle into material  
G1 X50 F800  ; X line  
G1 Y50       ; Y line  
G1 X0        ; Back X line  
G1 Y0        ; Back Y line  

; Pass 2 (Cut another 2mm)  
G1 Z-4 F300  
G1 X50 F800  
G1 Y50  
G1 X0  
G1 Y0  

; Finished  
G0 Z10       ; Raise spindle  
M5           ; Spindle OFF  
G28          ; Return to home  
M30          ; Program end  
