// GRBL Configuration for Wood CNC Router
#ifndef CONFIG_H
#define CONFIG_H

// Stepper Settings (NEMA 17, 1.8° step angle, 16x microstepping)
#define DEFAULT_X_STEPS_PER_MM      80.0  // T8 Lead Screw (4mm pitch, 200*16 / 4 = 800 steps/rev)
#define DEFAULT_Y_STEPS_PER_MM      80.0
#define DEFAULT_Z_STEPS_PER_MM      80.0

// Speed and Acceleration (adjust for wood)
#define DEFAULT_X_MAX_RATE          1000.0 // mm/min
#define DEFAULT_Y_MAX_RATE          1000.0
#define DEFAULT_Z_MAX_RATE          500.0
#define DEFAULT_X_ACCELERATION      50.0   // mm/s²
#define DEFAULT_Y_ACCELERATION      50.0
#define DEFAULT_Z_ACCELERATION      30.0

// Spindle Control (775 DC Motor)
#define SPINDLE_PWM_PIN             11     // PWM pin on CNC Shield
#define SPINDLE_ENABLE_PIN          12     // Spindle enable pin
#define COOLANT_FLOOD_PIN           A0     // Cooling fan control

// Homing and Limits
#define ENABLE_HOMING               1      // Enable homing cycle
#define HOMING_CYCLE_0             (1<<X_AXIS)|(1<<Y_AXIS)|(1<<Z_AXIS) // Home all axes
#define HOMING_FORCE_SET_ORIGIN    1       // Set origin after homing

#endif
