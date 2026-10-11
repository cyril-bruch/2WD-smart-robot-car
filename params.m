% params.m - Tunable parameters for the obstacle-avoiding car

% Motor speeds (PWM, 0-255)
v_forward = single(130); % cruising speed
v_min = single(90); % minimum speed while slowing down (above stall threshold)
v_turn = single(120); % speed while turning in place
offset_right = single(0); % extra PWM on the right motor to compensate drift
offset_left = single(0); % extra PWM on the left motor to compensate drift

% Distances (meters)
d_slow_start = single(0.90); % start slowing down
d_stop = single(0.60); % start braking (also where v_min is reached)

% Sensor filtering
a = 0.2; % low-pass filter coefficient (0-1): higher = faster, noisier

% Stateflow thresholds (meters)
d_front_clear = 0.90; % front is clear above this distance
d_emergency = 0.38; % emergency stop distance

% Stateflow timings (seconds)
t_init = 15; % wait after power-up
t_front_check = 0.4; % settle time before reading the front distance
t_servo_settle = 1.5; % time for the servo to reach each scan angle
t_turn = 0.2; % duration of a turn
t_stop_pause = 1.5; % pause after stopping, before scanning again
t_emergency = 5; % pause after an emergency stop

% Servo angles (degrees)
servo_center = 90;
servo_left = 135;
servo_right = 45;