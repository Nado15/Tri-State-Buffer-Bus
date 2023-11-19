`default_nettype none

module tri_state_bus #(parameter START_VALUE = 8'b0000_0000)
(
  input wire i_clk,
  input wire i_tri_state_en,
  output wire[7:0] o_data,
  inout wire[7:0] io_data
);


reg [7:0] counter;

initial begin
  counter = START_VALUE;
end

assign io_data = i_tri_state_en ? counter : 8'hZZ;
assign o_data = io_data;

always @ ( posedge i_clk ) begin
    counter <= counter + 1;
end

endmodule
