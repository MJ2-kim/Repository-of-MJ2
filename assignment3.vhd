library ieee;
use ieee.std_logic_1164.all;

entity assignment3 is
    port(
        sel     : in  std_logic_vector(2 downto 0);
        display : out std_logic_vector(7 downto 0)
    );
end entity assignment3;

architecture bhv of assignment3 is
begin
    process(sel)
    begin
        case sel is
            --  비트 위치:  7  6  5  4  3  2  1  0
            --  담당 세그: dp  C  D  E  B  A  F  G
            when "000" => display <= "01011111"; -- 'a' (1, 2, 3, 4, 6, 0)
            when "001" => display <= "01110011"; -- 'b' (1, 4, 5, 6, 0)
            when "010" => display <= "00110110"; -- 'c' (1, 2, 4, 5)
            when "011" => display <= "01111001"; -- 'd' (3, 4, 5, 6, 0)
            when "100" => display <= "00010111"; -- 'f' (1, 2, 4, 0)
            when "101" => display <= "01101111"; -- 'g' (1, 2, 3, 5, 6, 0)
            when others => display <= "00000000";
        end case;
    end process;
end architecture bhv;