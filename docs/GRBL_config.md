# GRBL Configuration for Wood CNC Routing  
Berikut adalah pengaturan GRBL yang dioptimalkan untuk memotong/mengukir kayu menggunakan Arduino CNC Router.

---

## **Akses Pengaturan GRBL**  
1. Buka software CNC (Candle/UGS).  
2. Hubungkan Arduino ke PC via USB.  
3. Gunakan perintah `$$` untuk melihat daftar parameter.  

---

## **Parameter Penting untuk Kayu**  
| Parameter | Nilai | Deskripsi |  
|-----------|-------|-----------|  
| `$0`      | 10    | Step pulse (µs) |  
| `$1`      | 25    | Step idle delay (ms) |  
| `$100`    | 80.0  | X steps/mm (T8 lead screw) |  
| `$101`    | 80.0  | Y steps/mm |  
| `$102`    | 80.0  | Z steps/mm |  
| `$110`    | 1000  | X max speed (mm/min) |  
| `$111`    | 1000  | Y max speed |  
| `$112`    | 500   | Z max speed |  
| `$120`    | 50    | X acceleration (mm/s²) |  
| `$121`    | 50    | Y acceleration |  
| `$122`    | 30    | Z acceleration |  
| `$21`     | 1     | Hard limits enabled (pastikan limit switch terpasang!) |  
| `$22`     | 1     | Homing cycle enabled |  

---

## **Kalibrasi Steps/mm**  
1. Gunakan perintah `G91` (relative positioning).  
2. Perintahkan pergerakan 100mm: `G0 X100 F500`.  
3. Ukur pergerakan aktual dengan caliper.  
4. Hitung ulang steps/mm:  New steps/mm = (Old steps/mm * Commanded distance) / Actual distance
5. Update nilai `$100`, `$101`, `$102`.  

---

## **Homing & Limit Switch**  
- **Koordinat Home**: `G28` (semua sumbu kembali ke titik nol).  
- **Posisi Limit Switch**:  
- X: Ujung kiri  
- Y: Ujung belakang  
- Z: Posisi tertinggi  

---

## **Tips untuk Kayu**  
- **Feed Rate**: 500–1200 mm/min (sesuaikan kekerasan kayu).  
- **Kedalaman Potong**: 2–5mm per pass.  
- **Pendinginan**: Aktifkan kipas spindle untuk hindari overheating.  
