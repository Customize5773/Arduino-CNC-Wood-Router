# DIY CNC Router Assembly Guide (Wood Frame)  

---

## **Tools Required**  
- Screwdrivers  
- Power drill  
- Wrench  
- Measuring tape  

---

## **Step 1: Build Wood Frame**  
### **Materials**:  
- 12mm plywood:  
  - 2x Side panels (400mm x 300mm)  
  - 1x Base (500mm x 400mm)  
  - 1x Gantry (400mm x 100mm)  

### **Instructions**:  
1. Glue base and side panels.  
2. Secure gantry with M5 bolts (ensure 90° angles).  
3. Reinforce joints with L-brackets (optional).  

---

## **Step 2: Motion System**  
### **Components**:  
- MGN12 linear rails (X: 400mm, Y: 300mm)  
- T8 lead screws  

### **Instructions**:  
1. Mount rails to the frame.  
2. Align lead screws with rails.  
3. Attach stepper motors using couplers.  

---

## **Step 3: Electronics**  
### **Wiring**:  
1. Connect CNC Shield to Arduino.  
2. Wire steppers to drivers (X: A, Y: B, Z: C).  
3. Connect limit switches to X-/Y-/Z- pins.  
4. Wire spindle to CNC Shield.  

---

## **Step 4: Mount Spindle**  
1. Attach 775 motor to Z-axis.  
2. Connect PWM pin (11) and enable pin (12).  
3. Add a cooling fan near the spindle.  

---

## **Step 5: Calibration**  
1. Power on and run `G28` (homing).  
2. Test movement with `test_square.gcode`.  
3. Adjust steps/mm if needed.  
