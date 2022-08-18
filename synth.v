/* Generated by Yosys 0.9 (git sha1 1979e0b) */

module aclock(reset, clk, H_in1, H_in0, M_in1, M_in0, LD_time, LD_alarm, STOP_al, AL_ON, Alarm, H_out1, H_out0, M_out1, M_out0, S_out1, S_out0);
  wire _000_;
  wire [3:0] _001_;
  wire [1:0] _002_;
  wire [3:0] _003_;
  wire [3:0] _004_;
  wire [3:0] _005_;
  wire [3:0] _006_;
  wire _007_;
  wire [3:0] _008_;
  wire [5:0] _009_;
  wire [5:0] _010_;
  wire [5:0] _011_;
  wire [1:0] _012_;
  wire [31:0] _013_;
  wire [31:0] _014_;
  wire [31:0] _015_;
  wire [31:0] _016_;
  wire [31:0] _017_;
  wire [31:0] _018_;
  wire [5:0] _019_;
  wire [5:0] _020_;
  wire [5:0] _021_;
  wire [5:0] _022_;
  wire [5:0] _023_;
  wire [5:0] _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire [31:0] _043_;
  wire [31:0] _044_;
  wire [31:0] _045_;
  wire [31:0] _046_;
  wire [31:0] _047_;
  wire [5:0] _048_;
  wire [5:0] _049_;
  wire [5:0] _050_;
  wire [5:0] _051_;
  wire [5:0] _052_;
  wire _053_;
  wire _054_;
  wire [3:0] _055_;
  wire [5:0] _056_;
  wire [31:0] _057_;
  wire [31:0] _058_;
  wire [31:0] _059_;
  wire [31:0] _060_;
  wire [31:0] _061_;
  wire [31:0] _062_;
  wire [31:0] _063_;
  wire [31:0] _064_;
  wire [31:0] _065_;
  wire [31:0] _066_;
  wire [31:0] _067_;
  wire [31:0] _068_;
  wire [31:0] _069_;
  input AL_ON;
  output Alarm;
  reg Alarm;
  input [3:0] H_in0;
  input [1:0] H_in1;
  output [3:0] H_out0;
  output [1:0] H_out1;
  input LD_alarm;
  input LD_time;
  input [3:0] M_in0;
  input [3:0] M_in1;
  output [3:0] M_out0;
  output [3:0] M_out1;
  input STOP_al;
  output [3:0] S_out0;
  output [3:0] S_out1;
  reg [3:0] a_hour0;
  reg [1:0] a_hour1;
  reg [3:0] a_min0;
  reg [3:0] a_min1;
  reg [3:0] a_sec0;
  reg [3:0] a_sec1;
  wire [3:0] c_hour0;
  wire [1:0] c_hour1;
  wire [3:0] c_min0;
  wire [3:0] c_min1;
  wire [3:0] c_sec0;
  wire [3:0] c_sec1;
  input clk;
  reg clk_1s;
  input reset;
  reg [3:0] tmp_1s;
  wire [5:0] tmp_hour;
  wire [5:0] tmp_minute;
  reg [5:0] tmp_second;
  assign _013_ = tmp_1s + 32'd1;
  assign _014_ = _046_ + H_in0;
  assign _015_ = _047_ + M_in0;
  assign _016_ = tmp_second + 32'd1;
  assign _017_ = tmp_minute + 32'd1;
  assign _018_ = tmp_hour + 32'd1;
  assign _019_ = ~ _014_[5:0];
  assign _020_ = ~ _015_[5:0];
  assign _021_ = reset ? _014_[5:0] : 6'h00;
  assign _022_ = reset ? _015_[5:0] : 6'h00;
  assign _023_ = reset ? _019_ : 6'h00;
  assign _024_ = reset ? _020_ : 6'h00;
  assign _025_ = { a_hour1, a_hour0, a_min1, a_min0, a_sec1, a_sec0 } == { c_hour1, c_hour0, c_min1, c_min0, c_sec1, c_sec0 };
  assign _026_ = tmp_1s >= 32'd10;
  assign _027_ = tmp_hour >= 32'd20;
  assign _028_ = tmp_hour >= 32'd10;
  assign _029_ = tmp_minute >= 32'd50;
  assign _030_ = tmp_minute >= 32'd40;
  assign _031_ = tmp_minute >= 32'd30;
  assign _032_ = tmp_minute >= 32'd20;
  assign _033_ = tmp_minute >= 32'd10;
  assign _034_ = tmp_second >= 32'd50;
  assign _035_ = tmp_second >= 32'd40;
  assign _036_ = tmp_second >= 32'd30;
  assign _037_ = tmp_second >= 32'd20;
  assign _038_ = tmp_second >= 32'd10;
  assign _039_ = tmp_second >= 32'd59;
  assign _040_ = tmp_minute >= 32'd59;
  assign _041_ = tmp_hour >= 32'd24;
  assign _042_ = tmp_1s <= 32'd5;
  assign _043_ = c_hour1 * 32'd10;
  assign _044_ = c_min1 * 32'd10;
  assign _045_ = c_sec1 * 32'd10;
  assign _046_ = H_in1 * 32'd10;
  assign _047_ = M_in1 * 32'd10;
  always @(posedge clk_1s or posedge reset)
    if (reset)
      Alarm <= 1'h0;
    else
      Alarm <= _000_;
  always @(posedge clk or posedge reset)
    if (reset)
      clk_1s <= 1'h0;
    else
      clk_1s <= _007_;
  always @(posedge clk or posedge reset)
    if (reset)
      tmp_1s <= 4'h0;
    else
      tmp_1s <= _008_;
  reg [5:0] _108_;
  always @(posedge clk_1s, posedge _021_, posedge _023_)
    if (_023_) _108_[0] <= 1'b0;
    else if (_021_) _108_[0] <= 1'b1;
    else  _108_[0] <= _009_[0];
  always @(posedge clk_1s, posedge _021_, posedge _023_)
    if (_023_) _108_[1] <= 1'b0;
    else if (_021_) _108_[1] <= 1'b1;
    else  _108_[1] <= _009_[1];
  always @(posedge clk_1s, posedge _021_, posedge _023_)
    if (_023_) _108_[2] <= 1'b0;
    else if (_021_) _108_[2] <= 1'b1;
    else  _108_[2] <= _009_[2];
  always @(posedge clk_1s, posedge _021_, posedge _023_)
    if (_023_) _108_[3] <= 1'b0;
    else if (_021_) _108_[3] <= 1'b1;
    else  _108_[3] <= _009_[3];
  always @(posedge clk_1s, posedge _021_, posedge _023_)
    if (_023_) _108_[4] <= 1'b0;
    else if (_021_) _108_[4] <= 1'b1;
    else  _108_[4] <= _009_[4];
  always @(posedge clk_1s, posedge _021_, posedge _023_)
    if (_023_) _108_[5] <= 1'b0;
    else if (_021_) _108_[5] <= 1'b1;
    else  _108_[5] <= _009_[5];
  assign tmp_hour = _108_;
  reg [5:0] _109_;
  always @(posedge clk_1s, posedge _022_, posedge _024_)
    if (_024_) _109_[0] <= 1'b0;
    else if (_022_) _109_[0] <= 1'b1;
    else  _109_[0] <= _010_[0];
  always @(posedge clk_1s, posedge _022_, posedge _024_)
    if (_024_) _109_[1] <= 1'b0;
    else if (_022_) _109_[1] <= 1'b1;
    else  _109_[1] <= _010_[1];
  always @(posedge clk_1s, posedge _022_, posedge _024_)
    if (_024_) _109_[2] <= 1'b0;
    else if (_022_) _109_[2] <= 1'b1;
    else  _109_[2] <= _010_[2];
  always @(posedge clk_1s, posedge _022_, posedge _024_)
    if (_024_) _109_[3] <= 1'b0;
    else if (_022_) _109_[3] <= 1'b1;
    else  _109_[3] <= _010_[3];
  always @(posedge clk_1s, posedge _022_, posedge _024_)
    if (_024_) _109_[4] <= 1'b0;
    else if (_022_) _109_[4] <= 1'b1;
    else  _109_[4] <= _010_[4];
  always @(posedge clk_1s, posedge _022_, posedge _024_)
    if (_024_) _109_[5] <= 1'b0;
    else if (_022_) _109_[5] <= 1'b1;
    else  _109_[5] <= _010_[5];
  assign tmp_minute = _109_;
  always @(posedge clk_1s or posedge reset)
    if (reset)
      tmp_second <= 6'h00;
    else
      tmp_second <= _011_;
  always @(posedge clk_1s or posedge reset)
    if (reset)
      a_hour1 <= 2'h0;
    else
      a_hour1 <= _002_;
  always @(posedge clk_1s or posedge reset)
    if (reset)
      a_hour0 <= 4'h0;
    else
      a_hour0 <= _001_;
  always @(posedge clk_1s or posedge reset)
    if (reset)
      a_min1 <= 4'h0;
    else
      a_min1 <= _004_;
  always @(posedge clk_1s or posedge reset)
    if (reset)
      a_min0 <= 4'h0;
    else
      a_min0 <= _003_;
  always @(posedge clk_1s or posedge reset)
    if (reset)
      a_sec1 <= 4'h0;
    else
      a_sec1 <= _006_;
  always @(posedge clk_1s or posedge reset)
    if (reset)
      a_sec0 <= 4'h0;
    else
      a_sec0 <= _005_;
  assign _048_ = _040_ ? 6'h00 : _017_[5:0];
  assign _049_ = _039_ ? _048_ : tmp_minute;
  assign _010_ = LD_time ? _015_[5:0] : _049_;
  assign _050_ = _041_ ? 6'h00 : _018_[5:0];
  assign _051_ = _040_ ? _050_ : tmp_hour;
  assign _052_ = _039_ ? _051_ : tmp_hour;
  assign _009_ = LD_time ? _014_[5:0] : _052_;
  assign _053_ = AL_ON ? 1'h1 : Alarm;
  assign _054_ = _025_ ? _053_ : Alarm;
  assign _000_ = STOP_al ? 1'h0 : _054_;
  assign _012_ = _028_ ? 2'h1 : 2'h0;
  assign c_hour1 = _027_ ? 2'h2 : _012_;
  assign _055_ = _026_ ? 4'h1 : _013_[3:0];
  assign _008_ = _042_ ? _013_[3:0] : _055_;
  assign _007_ = _042_ ? 1'h0 : 1'h1;
  assign _005_ = LD_alarm ? 4'h0 : a_sec0;
  assign _006_ = LD_alarm ? 4'h0 : a_sec1;
  assign _003_ = LD_alarm ? M_in0 : a_min0;
  assign _004_ = LD_alarm ? M_in1 : a_min1;
  assign _001_ = LD_alarm ? H_in0 : a_hour0;
  assign _002_ = LD_alarm ? H_in1 : a_hour1;
  assign _056_ = _039_ ? 6'h00 : _016_[5:0];
  assign _011_ = LD_time ? 6'h00 : _056_;
  assign { _057_[31:4], c_hour0 } = tmp_hour - _043_;
  assign { _058_[31:4], c_min0 } = tmp_minute - _044_;
  assign { _059_[31:4], c_sec0 } = tmp_second - _045_;
  assign _060_ = _033_ ? 32'd1 : 32'd0;
  assign _061_ = _032_ ? 32'd2 : _060_;
  assign _062_ = _031_ ? 32'd3 : _061_;
  assign _063_ = _030_ ? 32'd4 : _062_;
  assign { _064_[31:4], c_min1 } = _029_ ? 32'd5 : _063_;
  assign _065_ = _038_ ? 32'd1 : 32'd0;
  assign _066_ = _037_ ? 32'd2 : _065_;
  assign _067_ = _036_ ? 32'd3 : _066_;
  assign _068_ = _035_ ? 32'd4 : _067_;
  assign { _069_[31:4], c_sec1 } = _034_ ? 32'd5 : _068_;
  assign _057_[3:0] = c_hour0;
  assign _058_[3:0] = c_min0;
  assign _059_[3:0] = c_sec0;
  assign _064_[3:0] = c_min1;
  assign _069_[3:0] = c_sec1;
  assign H_out0 = c_hour0;
  assign H_out1 = c_hour1;
  assign M_out0 = c_min0;
  assign M_out1 = c_min1;
  assign S_out0 = c_sec0;
  assign S_out1 = c_sec1;
endmodule