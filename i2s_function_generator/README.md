### I2S master function generator using papilio duo 
- Target FPGA device: Xilinx Spartan6 XC6SLX9
- Project format: Xilinx ISE ide
- Sine lookup table
  - 16384 samples
  - 16 bit / sample
- Output format
  - 48kHz sample rate
  - 24 bits/sample 
  - Stereo 
  - I2S master
    - MCLK 12.288MHz => ARDUINO_22
    - LRCLK 48kHz => ARDUINO_24
    - SCLK => ARDUINO_26
    - SDATA => ARDUINO_28
- 440 Hz sine tone and triangle output through left and right channels

### credits and references
- i2s master vhdl copied from Stefan Kristiansson (*) SK-Synth project (GNU GPL)
  - http://www.sk-electronics.com/www/index.php/opensourceprojects/68-sksynth
  - https://github.com/skristiansson
- waveform_gen and trig tables rom vhdl (sincos_lut.vhd) copied from Simon Doherty www.zipcores.com (GNU GPL)
- built with the help of Papilio DesignLab for Papilio duo FPGA hardware
  - http://papilio.cc/

### circuit diagram

![circuit](https://github.com/newdigate/papilio_duo_i2s/raw/master/i2s_function_generator/images/wave_gen_curcuit.png "Schematic circuit")
