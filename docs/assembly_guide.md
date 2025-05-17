# DIY CNC Router Assembly Guide (Wood Frame)  
Panduan perakitan CNC router berbasis Arduino dengan frame kayu.

---

## **Alat yang Diperlukan**  
- Obeng (+/-)  
- Bor listrik  
- Kunci Inggris  
- Meteran  

---

## **Langkah 1: Rakit Frame Kayu**  
### **Bahan**:  
- Kayu plywood 12mm (potong sesuai ukuran):  
  - 2x Panel samping (400mm x 300mm)  
  - 1x Base (500mm x 400mm)  
  - 1x Gantry (400mm x 100mm)  

### **Instruksi**:  
1. Rekatkan base dan panel samping dengan lem kayu.  
2. Pasang gantry menggunakan baut M5 (pastikan sudut 90°).  
3. Perkuat sambungan dengan bracket L-besi (opsional).  

---

## **Langkah 2: Pasang Sistem Gerak**  
### **Komponen**:  
- Linear rail MGN12 (X: 400mm, Y: 300mm)  
- Lead screw T8 (X/Y)  

### **Instruksi**:  
1. Kencangkan linear rail ke frame menggunakan sekrup.  
2. Pasang lead screw sejajar dengan rail.  
3. Mount motor stepper ke ujung lead screw dengan coupler.  

---

## **Langkah 3: Elektronik**  
### **Wiring**:  
1. CNC Shield ke Arduino Uno.  
2. Stepper motor ke driver (X: A, Y: B, Z: C).  
3. Limit switch ke pin X-, Y-, Z-.  
4. Spindle 775 motor ke terminal spindle CNC Shield.  

### **Tips**:  
- Gunakan kabel ties untuk rapikan kabel.  
- Test motor dengan jogging di software CNC sebelum dipasang.  

---

## **Langkah 4: Pasang Spindle**  
1. Kencangkan spindle 775 ke Z-axis menggunakan bracket.  
2. Hubungkan kabel ke CNC Shield (PWM pin 11).  
3. Tambahkan kipas pendingin (12V) di dekat spindle.  

---

## **Langkah 5: Kalibrasi Awal**  
1. Hidupkan sistem dan lakukan `G28` (homing).  
2. Test pergerakan dengan `test_square.gcode`.  
3. Ukur akurasi dan sesuaikan steps/mm jika perlu.  

---

## **Troubleshooting**  
- **Motor tidak bergerak**: Cek koneksi driver dan voltase.  
- **Spindle tidak berputar**: Pastikan PWM terhubung ke pin 11.  
- **Getaran berlebihan**: Kencangkan baut dan coupler.  
