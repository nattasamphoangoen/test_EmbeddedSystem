library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity LED_test is
Port ( DD, CC, BB, AA : in STD_LOGIC;
 a, b, c, d, e, f, g : out STD_LOGIC);
end LED_test;
architecture Behavioral of LED_test is
signal Data_Encoding : std_logic_vector(6 downto 0) := (others => '0');
signal Arr_Index : std_logic_vector(3 downto 0) := (others => '0');

begin
 Arr_Index(3) <= DD;
 Arr_Index(2) <= CC;
 Arr_Index(1) <= BB;
 Arr_Index(0) <= AA;

 process (Arr_Index)
 begin
 case Arr_Index is
 when "0000" => Data_Encoding <= "1100000";
 when "0001" => Data_Encoding <= "0110000";
 when "0010" => Data_Encoding <= "0011000";
 when "0011" => Data_Encoding <= "0001100";
 when "0100" => Data_Encoding <= "0000110";
 when "0101" => Data_Encoding <= "0000011";
 when "0110" => Data_Encoding <= "0000001";
 when "0111" => Data_Encoding <= "1000000";
 
 when "1000" => Data_Encoding <= "1100000";
 when "1001" => Data_Encoding <= "0110000";
 when "1010" => Data_Encoding <= "0011000";
 when others => Data_Encoding <= "0000000";
 
 end case;
 end process;

 
 a <= Data_Encoding(6);
 b <= Data_Encoding(5);
 c <= Data_Encoding(4);
 d <= Data_Encoding(3);
 e <= Data_Encoding(2);
 f <= Data_Encoding(1);
 g <= Data_Encoding(0);
end Behavioral; 