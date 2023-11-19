`default_nettype none

module tri_state_bus_tb;

  reg clk = 1'b1;
  reg tri_state_en_1 = 1'b0;
  reg tri_state_en_2 = 1'b0;
  reg tri_state_en_3 = 1'b0;

  //tx_data is simulates the inout wire
  wire [7:0]tx_data;

  wire [7:0]rx_data_1;
  wire [7:0]rx_data_2;
  wire [7:0]rx_data_3;

  tri_state_bus #( .START_VALUE(8'b0000_0000)) DUT1(clk, tri_state_en_1, rx_data_1, tx_data);
  tri_state_bus #( .START_VALUE(8'b0000_0111)) DUT2(clk, tri_state_en_2, rx_data_2, tx_data);
  tri_state_bus #( .START_VALUE(8'b0011_1000)) DUT3(clk, tri_state_en_3, rx_data_3, tx_data);

always begin
  #5 clk = ~clk;
end

initial begin
  tri_state_en_1 = 1'b1;
  tri_state_en_2 = 1'b0;
  tri_state_en_3 = 1'b0;
  #100
  tri_state_en_1 = 1'b0;
  tri_state_en_2 = 1'b1;
  tri_state_en_3 = 1'b0;
  #100
  tri_state_en_1 = 1'b0;
  tri_state_en_2 = 1'b0;
  tri_state_en_3 = 1'b1;
  #100
  tri_state_en_1 = 1'b0;
  tri_state_en_2 = 1'b0;
  tri_state_en_3 = 1'b0;
  #100
  tri_state_en_1 = 1'b1;
  tri_state_en_2 = 1'b1;
  tri_state_en_3 = 1'b1;
  #100
  $finish;
end

initial begin
  $dumpfile("tri_state_bus_example.vcd");
  $dumpvars;
  $monitor("time = %2d, clk = %1b, tri_state_en_1 = %1b, tri_state_en_2 = %1b, tri_state_en_3 = %1b, tx_data = %2h", $time, clk, tri_state_en_1, tri_state_en_2, tri_state_en_3, tx_data);
end

endmodule
