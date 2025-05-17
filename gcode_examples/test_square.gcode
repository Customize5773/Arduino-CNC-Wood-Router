; Test Square (50x50mm)  
; Material: Kayu tipis (Z safe height: 5mm)  
G21          ; Set units to millimeters  
G90          ; Absolute positioning  
G28          ; Home all axes  
G0 Z5        ; Lift spindle  
G0 X0 Y0     ; Move to origin  

; Start cutting (depth: 2mm per pass)  
M3 S10000    ; Spindle ON (10,000 RPM)  
G4 P1        ; Tunggu 1 detik untuk spindle stabil  

; Pass 1 (Potong 2mm)  
G1 Z-2 F300  ; Turunkan spindle ke material  
G1 X50 F800  ; Garis X  
G1 Y50       ; Garis Y  
G1 X0        ; Garis X balik  
G1 Y0        ; Garis Y balik  

; Pass 2 (Potong 2mm lagi)  
G1 Z-4 F300  
G1 X50 F800  
G1 Y50  
G1 X0  
G1 Y0  

; Selesai  
G0 Z10       ; Angkat spindle  
M5           ; Matikan spindle  
G28          ; Kembali ke home  
M30          ; Program selesai  
