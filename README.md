Simple tri_state buffer bus
===================================
This small repository contains an educational example of a [tri_state](https://nandland.com/create-tri-state-buffer-in-vhdl-and-verilog/) buffer bus in Verilog. The bus can be read and written by 3 components (but only one at a time), depending on which tri-state buffer is enabled.  Waveform and the structure of the module can be seen in the photo.

To run the code:

	$ make

Dependencies: **iverilog** and **gtkwave**


## Architecture

<p align="center">
  <img src="https://raw.githubusercontent.com/Nado15/tri_state-bus/main/tri_state_bus_architecture.png"/>
</p>

## Waveform

<p align="center">
  <img src="https://raw.githubusercontent.com/Nado15/tri_state-bus/main/waveform_tri_state_bus.png"/>
</p>

