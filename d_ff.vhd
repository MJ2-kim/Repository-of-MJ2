library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity d_ff is
    Port ( clk  : in  STD_LOGIC;
           D    : in  STD_LOGIC;
           Q    : out STD_LOGIC;
           Qbar : out STD_LOGIC);
end d_ff;

architecture Behavioral of d_ff is
    signal q_int : std_logic := '0';
begin
    process(clk)
    begin
        
        if rising_edge(clk) then
            q_int <= D;
        end if;
    end process;

    Q    <= q_int;
    Qbar <= not q_int;
end Behavioral;