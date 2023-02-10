library verilog;
use verilog.vl_types.all;
entity ProyectoFinal is
    port(
        Q1              : out    vl_logic;
        CLK             : in     vl_logic;
        Sensor2         : in     vl_logic;
        Sensor1         : in     vl_logic;
        Q0              : out    vl_logic;
        Close           : out    vl_logic;
        \Open\          : out    vl_logic;
        Temp            : out    vl_logic;
        Cont3           : out    vl_logic;
        Cont2           : out    vl_logic;
        Cont1           : out    vl_logic;
        Cont0           : out    vl_logic
    );
end ProyectoFinal;
