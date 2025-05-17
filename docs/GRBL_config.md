# GRBL Configuration for Wood Routing  
Optimized GRBL settings for cutting/engraving wood with an Arduino CNC router.

---

## **Accessing GRBL Settings**  
1. Open CNC software (Candle/UGS).  
2. Connect Arduino via USB.  
3. Use `$$` to view parameters.  

---

## **Key Parameters for Wood**  
| Parameter | Value | Description |  
|-----------|-------|-------------|  
| `$100`    | 80.0  | X steps/mm (T8 lead screw) |  
| `$101`    | 80.0  | Y steps/mm |  
| `$102`    | 80.0  | Z steps/mm |  
| `$110`    | 1000  | X max speed (mm/min) |  
| `$111`    | 1000  | Y max speed |  
| `$112`    | 500   | Z max speed |  
| `$120`    | 50    | X acceleration (mm/s²) |  
| `$121`    | 50    | Y acceleration |  
| `$122`    | 30    | Z acceleration |  
| `$21`     | 1     | Hard limits enabled |  
| `$22`     | 1     | Homing cycle enabled |  

---

## **Calibration Guide**  
1. Use `G91` (relative positioning).  
2. Command movement (e.g., `G0 X100 F500`).  
3. Measure actual movement with calipers.  
4. Recalculate steps/mm:  New steps/mm = (Old steps/mm × Commanded distance) ÷ Actual distance
5. Update value `$100`, `$101`, `$102`.

---

**Homing & Limit Switch**
- **Home coordinates**: `G28` (all axes return to zero point).
- **Limit Switch Position**:
- X: Left end
- Y: Back end
- Z: Highest position

---

**Tips for Wood**
- **Feed Rate**: 500-1200 mm/min (adjust wood hardness).
- **Cut Depth**: 2-5mm per pass.
- Cooling**: Activate the spindle fan to avoid overheating.
