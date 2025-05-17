#include <grbl.h>
#include "config.h"
#include "spindle_control.cpp"

void setup() {
  grbl_init(); // Initialize GRBL
  spindle_init(); // Setup spindle control

  // Optional: Warm-up spindle
  spindle_set_speed(128); // 50% speed for 5 sec
  delay(5000);
  spindle_stop();
}

void loop() {
  grbl_loop(); // GRBL’s main loop
}

// Override GRBL’s spindle control if needed
void spindle_sync(uint8_t state, float rpm) {
  if (state == SPINDLE_ENABLE) {
    uint8_t pwm = map(rpm, 0, 10000, 0, 255); // Map RPM to PWM (adjust for your spindle)
    spindle_set_speed(pwm);
  } else {
    spindle_stop();
  }
}
