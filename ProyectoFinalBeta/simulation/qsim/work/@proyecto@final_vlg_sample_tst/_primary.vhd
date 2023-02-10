library verilog;
use verilog.vl_types.all;
entity ProyectoFinal_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        Sensor1         : in     vl_logic;
        Sensor2         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ProyectoFinal_vlg_sample_tst;
