### Papilio Duo - digital audio projects
This is my collection of digital audio projects developed for fpgas using a papilio duo fpga/arduino board. 

This repository is a work in progress. It is intended as a scratch pad. My experience with FPGAs and digital electronics is limited. This work is published under the MIT license, unless otherwise specified. I am deeply greatful to the community online who have provided code which I am referencing. Any feedback is warmly welcomed. This code is provided as is. It is not committed to any claims and will not be accepting any liability, for anything, ever... 

#### Digital Audio FPGA Projects
* [i2s_function_generator](https://github.com/newdigate/papilio_duo_i2s/tree/master/i2s_function_generator "basic i2s function generator") 
  * my first basic vhdl project which outputs a sine wave though i2s 48kHz @ 24bits/sample stereo. 
* [i2s_function_generator_stereo](https://github.com/newdigate/papilio_duo_i2s/tree/master/i2s_function_generator_stereo "stereo i2s function generator")
  * modified the function generator to produce a stereo signal. 
  * left and right channel each have a dedicated rotary encoder to control the frequency.
  * added basic fir digital filters to left and right channels.
  
#### Next
* use SDRAM for higher resolution sine wave. More bits/sample and more samples per second.
* USB 3 connectivity to PC (5Gb/s throughput)

#### Requirements
* Software (to design and synthsize bit files for your FPGA)
 * Xilinx ISE (runs from windows or linux, I could not get this running on OSX) or equivalent 
* Hardware
 * FPGA
   * I am using papilio duo, which uses the Xilinx Spartan6 XC9SLX9 FPGA.
 * Digital to Analog IC - you'll need a dac to convert the output I2S bus as an analog audio signal.
   * PCM5102A - I've used a board from DIYINHK. It seems ok, I havent tested it very much. I would like to benchmark the board against others from ebay when I have the equipment and the time. I prefer PCM5102A becuase there is no setup required though I2C or SPI, it only needs a tiny number of components, and can handle up to stereo 384KHz @ 32 bits/sample (apparently - thats what it says but i'd like to test that one day).
     * http://www.ti.com/product/PCM5102A

#### Motivations
If you want to understand something, then build it! 

FPGAs intruige me. I first got involved with FPGAs in the days of bit coin mining in about mid 2013. It was not longer after my bitcoin hashers were hashing to their hearts content (25M hashes per second is awesome) that i busted open my favorite sound card and found the very same, at least in brand and family, fpga. A Xilinx Spartan 6...

I like the idea of modularity. That its not necessarily fixed, its like lego. Same as software. And I find digital audio signal processess is a good application of maths.  

  
#### Credits, links & resources
* Gadget Factory - builders of the Papilio family of FPGA dev kits.
  * http://www.gadgetfactory.net/
  * http://papilio.cc/
* Hamster's guide to FPGAs. 
  * http://hamsterworks.co.nz/mediawiki/index.php/FPGA_course
* Free range factory
  * http://freerangefactory.org/pdf/free_range_vhdl.pdf
  * http://freerangefactory.org/
* EE wiki - https://eewiki.net
  * eewiki iir filter vhdl example
    * https://eewiki.net/display/LOGIC/IIR+Filter+Design+in+VHDL+Targeted+for+18-Bit%2C+48+KHz+Audio+Signal+Use 
* SK-Synth by Stefan Kristiansson
  * http://www.sk-electronics.com/www/index.php/opensourceprojects/68-sksynth
https://eewiki.net/display/LOGIC/IIR+Filter+Design+in+VHDL+Targeted+for+18-Bit%2C+48+KHz+Audio+Signal+Use
* VHDL Type Conversion
  * http://www.bitweenie.com/listings/vhdl-type-conversion/

#### Future Objectives 
* Pipeline: ADC -> I2S -> DSP (FPGA) -> I2S -> DAC
  * 768kHz sampling rate 
  * 32-bit sample resolution
  * AKM DACS and ADC
    * AK5397EQ - http://www.akm.com/akm/en/product/datasheet1/?partno=AK5397EQ
    * AK4497EQ - http://www.akm.com/akm/en/product/datasheet1/?partno=AK4497EQ
