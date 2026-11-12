library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity d_latch is
    Port ( D    : in  STD_LOGIC;
           en   : in  STD_LOGIC;
           Q    : out STD_LOGIC;
           Qbar : out STD_LOGIC);
end d_latch;

architecture Behavioral of d_latch is
    signal q_int : std_logic := '0';
begin
    process(D, en)
    begin
        if en = '1' then
            q_int <= D;
        end if;
    end process;

    Q    <= q_int;
    Qbar <= not q_int;
end Behavioral;