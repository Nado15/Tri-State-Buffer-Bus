TOP_MODULE = tri_state_bus
TEST_BENCH = ./tri_state_bus_tb.v

all:
	iverilog -o $(TOP_MODULE) -Wall ./$(TOP_MODULE).v $(TEST_BENCH)  &&  \
		./$(TOP_MODULE) && gtkwave tri_state_bus_example.vcd template.gtkw
