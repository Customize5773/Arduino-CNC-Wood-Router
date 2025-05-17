# DIY CNC Router Assembly Guide (Wood Frame) 
Arduino-based CNC router assembly guide with wood frame.

---

**Required Tools**  
- Screwdriver (+/-)  
- Electric drill  
- Wrench  
- Meter  

---

## **Step 1: Assemble the Wooden Frame**  
### Materials**:  
- 12mm plywood (cut to size):  
  - 2x Side panels (400mm x 300mm)  
  - 1x Base (500mm x 400mm)  
  - 1x Gantry (400mm x 100mm)  

### Instructions**:  
1. Glue the base and side panels with wood glue.  
2. Attach the gantry using M5 bolts (ensure 90° angle).  
3. Reinforce the connection with an L-iron bracket (optional).  

---

## **Step 2: Install the Motion System**  
### **Components**:  
- Linear rail MGN12 (X: 400mm, Y: 300mm)  
- Lead screw T8 (X/Y)  

### Instructions**:  
1. Fasten the linear rail to the frame using the screws.  
2. Install the lead screw parallel to the rail.  
3. Mount the stepper motor to the end of the lead screw with a coupler.  

---

**Step 3: Electronics**  
**Wiring**:  
1. CNC Shield to Arduino Uno.  
2. Stepper motor to driver (X:A, Y:B, Z:C).  
3. Limit switch to pins X-, Y-, Z-.  
4. Spindle 775 motor to CNC Shield spindle terminal.  

**Tips**:  
- Use cable ties to tidy up the wiring.  
- Test the motor by jogging in the CNC software before installation.  

---

## **Step 4: Install the Spindle**  
1. Secure the 775 spindle to the Z-axis using the bracket.  
2. Connect the cable to the CNC Shield (PWM pin 11).  
3. Add a cooling fan (12V) near the spindle.  

---

**Step 5: Initial Calibration**  
1. Turn on the system and perform `G28` (homing).  
2. Test the movement with `test_square.gcode`.  
3. Measure accuracy and adjust steps/mm if necessary.  

---

## **Troubleshooting**  
- **Motor does not move**: Check driver connections and voltage.  
- **Spindle does not rotate**: Make sure PWM is connected to pin 11.  
- **Excessive vibration**: Tighten bolts and coupler.  
