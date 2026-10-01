# 2WD Autonomous Smart Robot Car (Model-Based Design)

An embedded Model-Based Design (MBD) project featuring an autonomous 2WD obstacle-avoidance robot. The architecture uses **MATLAB**, **Simulink**, and **Stateflow** to target an **ESP32-S3** microcontroller via automatic C code generation.

## 🛠 Hardware Architecture
* **Microcontroller:** ESP32-S3 DevKit (N16R8)
* **Actuators:** 2x DC Motors with L298N H-Bridge Driver, SG90 Servo Motor
* **Sensors:** HC-SR04 Ultrasonic Distance Sensor
* **Power Supply:** External 9V Battery pack with common ground regulation

##  Software & Control Logic
* **Signal Conditioning:** Digital filtering pipeline (Median Filter for impulse noise removal + Exponential Low-Pass Filter for smoothing).
* **State Machine:** Decision-making algorithm modeled in **Stateflow** with scanning logic (0°, 45°, 90°, 135°, 180° orientation check).
* **Code Generation:** Fully integrated Embedded Coder pipeline targeting target hardware.

##  Motor Control Mapping (`cmdMotor`)
* `0`: STOP
* `1`: FORWARD
* `2`: TURN_RIGHT
* `3`: TURN_LEFT
* `5`: SLOWDOWN
