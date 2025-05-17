#include "Arduino.h"
#include "config.h"

void spindle_init() {
  pinMode(SPINDLE_ENABLE_PIN, OUTPUT);
  pinMode(COOLANT_FLOOD_PIN, OUTPUT);
  digitalWrite(SPINDLE_ENABLE_PIN, LOW);
  digitalWrite(COOLANT_FLOOD_PIN, LOW);
}

void spindle_set_speed(uint8_t pwm_value) {
  // Set spindle speed (0-255 PWM) and enable
  analogWrite(SPINDLE_PWM_PIN, pwm_value);
  digitalWrite(SPINDLE_ENABLE_PIN, HIGH);
  digitalWrite(COOLANT_FLOOD_PIN, HIGH); // Turn on cooling fan
}

void spindle_stop() {
  analogWrite(SPINDLE_PWM_PIN, 0);
  digitalWrite(SPINDLE_ENABLE_PIN, LOW);
  digitalWrite(COOLANT_FLOOD_PIN, LOW); // Turn off fan
}
