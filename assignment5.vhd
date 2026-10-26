library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity assignment5 is
    port(
        en      : in  std_logic;
        vt      : in  std_logic_vector(13 downto 1);
        display : out std_logic_vector(7 downto 0)
    );
end entity assignment5;

architecture bhv of assignment5 is
begin
    process(en, vt)
        variable sum : integer range 0 to 15;
    begin
        if en = '0' then
            
            display <= "ZZZZZZZZ"; 
        else
            
            sum := 0;
            for i in 1 to 13 loop
                if (vt(i) = '1') then
                    sum := sum + 1;
                end if;
            end loop;

            
            case sum is
                when 0  => display <= "01111110"; -- '0'
                when 1  => display <= "01001000"; -- '1'
                when 2  => display <= "00111101"; -- '2'
                when 3  => display <= "01101101"; -- '3'
                when 4  => display <= "01001011"; -- '4'
                when 5  => display <= "01100111"; -- '5'
                when 6  => display <= "01110111"; -- '6'
                when 7  => display <= "01001110"; -- '7'
                when 8  => display <= "01111111"; -- '8'
                when 9  => display <= "01101111"; -- '9'
                when 10 => display <= "01011111"; -- 'A'
                when 11 => display <= "01110011"; -- 'b'
                when 12 => display <= "00110110"; -- 'C'
                when 13 => display <= "01111001"; -- 'd'
                when 14 => display <= "00110111"; -- 'E'
                when 15 => display <= "00010111"; -- 'F'
                when others => display <= "00000000";
            end case;
        end if;
    end process;
end architecture bhv;