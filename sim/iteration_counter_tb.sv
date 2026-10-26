`timescale 1ns/1ps
// Independent stop/drain cases: no flips, all flips and alternating decisions.
module iteration_counter_tb;
 logic clk=0,reset=1,host_halt=1;
 always #5 clk=~clk;
 logic [31:0] limit=0;
 wire [31:0] iterations,rejected_iterations,flips,cycles;
 wire halted;
 int pattern=0,reference_iterations=0,reference_rejections=0,reference_flips=0;
 wire halt_request=host_halt || (limit!=0 && iterations>=limit);
 logic proposed_flip=0;
 always @(negedge clk)proposed_flip=(pattern==1) || (pattern==2 && reference_iterations%2==0);
 scheduler_2 #(.UNIT_WIDTH(5),.GRAPH_WIDTH(800),.NEURON_NUM_WIDTH(5),.MEMBRANE_WIDTH(10),.COUNTER_WIDTH(32),.NO_CLK_CYCLES_AFTER_UPDATE(4)) dut(
  .clk(clk),.reset(reset),.halt_scheduler(halt_request),.cooling_period(32'd65536),
  .target_cut1(16'd0),.target_cut2(16'd0),.target_cut3(16'd0),
  .flip(proposed_flip),.unit_number(5'd0),.offset(5'd0),.membrane(10'd0),.add_membrane(1'b0),
  .iterations(iterations),.rejected_iterations(rejected_iterations),.flips_cnt(flips),.cycle_count(cycles),.halt_modules(halted));
 always @(posedge clk)begin
  if(reset)begin reference_iterations=0;reference_rejections=0;reference_flips=0;end
  else begin
   if(dut.state==1 && !halt_request)begin
    reference_iterations++;
    if(!proposed_flip)reference_rejections++;
   end
   if(dut.state==2)reference_flips++;
  end
  #1;
  assert(iterations==reference_iterations && rejected_iterations==reference_rejections && flips==reference_flips)
   else $fatal(1,"counter mismatch pattern=%d iterations=%d/%d rejected=%d/%d flips=%d/%d",pattern,iterations,reference_iterations,rejected_iterations,reference_rejections,flips,reference_flips);
 end
 initial begin
  int budgets[6]='{1,2,3,7,8,20};
  for(int p=0;p<3;p++)for(int j=0;j<6;j++)begin
   @(negedge clk);reset=1;host_halt=1;pattern=p;limit=budgets[j];
   repeat(3)@(negedge clk);reset=0;
   repeat(5)@(negedge clk);assert(iterations==0)else $fatal(1,"paused counter advanced");
   host_halt=0;
   do @(negedge clk);while(!(halted && iterations==limit));
   repeat(3)@(negedge clk);
   assert(iterations==limit && iterations==flips+rejected_iterations)else $fatal(1,"stop/accepted-last drain");
   assert(cycles==iterations+6*flips)else $fatal(1,"arbitration and drain cycle accounting");
   host_halt=1;limit=0;repeat(4)@(negedge clk);host_halt=0;repeat(30)@(negedge clk);host_halt=1;
   do @(negedge clk);while(!halted);
   assert(iterations>budgets[j])else $fatal(1,"disabled limit did not resume");
  end
  $display("PASS iteration counters: 18 exact budgets, accepted-last drain, no-flip decisions, pause/reset/resume and cycle identity");$finish;
 end
 initial begin #1000000;$fatal(1,"counter timeout");end
endmodule
