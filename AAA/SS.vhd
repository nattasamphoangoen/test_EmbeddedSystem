library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity moving_led_1 is
 port (reset, clk: in std_logic;
 yout : out std_logic_vector(7 downto 0));
end moving_led_1;
architecture beh of moving_led_1 is
 signal q : std_logic_vector(7 downto 0);
 signal sq : std_logic;
 component DIVIDER is
 port (CLK : in std_logic;
 Q : out std_logic);
 end component;
begin

PROCESS (clk,reset)
 BEGIN
 IF(reset = '0') THEN
 q <= "00000001";
 ELSE
 IF(sq'EVENT and sq = '1') THEN
 q(0) <= q(7);
 q(7 downto 1)<=q(6 downto 0);
 ELSE
 q <= q;
 END IF;
 END IF;
 END PROCESS;
 yout <= q;
 c1: DIVIDER port map(CLK, sq);
end beh; 