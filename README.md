# DIY Arduino CNC Wood Router

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![GRBL Version](https://img.shields.io/badge/GRBL-1.1-green)](https://github.com/gnea/grbl)

A low-cost, open-source CNC router for woodworking, powered by **Arduino Uno** and **GRBL firmware**. Designed for cutting, engraving, and prototyping on wood, MDF, and acrylic.

---

## Table of Contents
- [Features](#features)
- [Hardware Requirements](#hardware-requirements)
- [Installation](#installation)
- [Hardware Setup](#hardware-setup)
- [Usage](#usage)
- [Folder Structure](#folder-structure)
- [Contributing](#contributing)
- [License](#license)
- [Acknowledgments](#acknowledgments)

---

## Features
- **GRBL 1.1 Firmware**: High-precision motion control with acceleration management.
- **Spindle Control**: PWM-driven DC spindle (775 motor) with cooling fan.
- **NEMA 17 Steppers**: 1.8° step angle with A4988 drivers.
- **Limit Switches**: Auto-homing and safe operation.
- **G-code Support**: Compatible with industry-standard CAM software.
- **Modular Design**: Easily upgradeable frame (wood/aluminum).

---

## Hardware Requirements
| Component              | Specification                          |
|------------------------|----------------------------------------|
| **Controller**         | Arduino Uno + CNC Shield V3            |
| **Stepper Motors**     | NEMA 17 (1.7A, 12V)                    |
| **Spindle**            | 775 DC Motor (10,000 RPM)              |
| **Power Supply**       | 24V 10A Switching PSU                  |
| **Linear Motion**      | MGN12 Rails + T8 Lead Screws           |
| **Frame**              | Plywood/MDF or Aluminum Extrusion      |

[Full Bill of Materials](docs/hardware_list.md)

---

## Installation
### Prerequisites
- Arduino IDE (v2.x or later)
- CNC Shield V3 (GRBL-compatible)
- [GRBL 1.1 Library](https://github.com/gnea/grbl)

### Steps
1. **Upload GRBL to Arduino**:
   ```bash
   # Clone this repository
   git clone https://github.com/yourusername/Arduino-CNC-Wood-Router.git
   ```
   - In Arduino IDE: `File > Examples > grbl > grblUpload`.

2. **Upload Custom Code**:
   - Open `src/cnc_controller/cnc_controller.ino`.
   - Install required libraries (if any).
   - Compile and upload to Arduino.

3. **Configure GRBL**:
   - Adjust steps/mm and acceleration in [`config.h`](src/cnc_controller/config.h).
   - Upload settings via `$$` commands in CNC software.

---

## Hardware Setup

1. **CNC Shield Setup**:
   - Connect steppers to X, Y, Z drivers (A4988/TMC2208).
   - Wire limit switches to X-, Y-, Z- pins.
   - Attach spindle PWM to Pin 11 and enable to Pin 12.

2. **Frame Assembly**:
   - Follow the [Assembly Guide](docs/assembly_guide.md) for mechanical setup.
   - Calibrate steps/mm using [`test_square.gcode`](gcode_examples/test_square.gcode).

---

## Usage
1. **Prepare G-code**:
   - Use [Inkscape with Gcodetools](https://github.com/cnc-club/gcodetools) or [Fusion 360](https://www.autodesk.com/products/fusion-360).
   - Sample G-code: [`carve_lettering.gcode`](gcode_examples/carve_lettering.gcode).

2. **Run CNC Job**:
   - Open G-code in [Candle](https://github.com/Denvi/Candle) or [Universal G-code Sender](https://winder.github.io/ugs_website/).
   - Set zero point (X/Y/Z) on your material.
   - Start job with `Cycle Start`.

3. **Safety Tips**:
   - Always wear safety glasses.
   - Perform dry runs before cutting.

---

## Contributing
Contributions are welcome!  
1. Fork the repository.  
2. Create a feature branch: `git checkout -b feature/new-feature`.  
3. Commit changes: `git commit -m 'Add feature'`.  
4. Push to the branch: `git push origin feature/new-feature`.  
5. Submit a pull request.  

---

## License
This project is licensed under the **MIT License**. See [LICENSE](LICENSE) for details.

---

## Acknowledgments
- [GRBL Contributors](https://github.com/gnea/grbl) for the firmware.
- [Instructables Guide](https://www.instructables.com/Homebuilt-DIY-CNC-Router-Arduino-Based-GRBL/) for inspiration.
