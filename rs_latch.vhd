library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rs_latch is
    Port ( S    : in  STD_LOGIC;
           R    : in  STD_LOGIC;
           Q    : out STD_LOGIC;
           Qbar : out STD_LOGIC );
end rs_latch;

architecture Behavioral of rs_latch is
    signal q_int    : std_logic := '0';
    signal qbar_int : std_logic := '1';
begin
    process(S, R)
    begin
        if S = '1' and R = '1' then
            q_int    <= '0'; -- Forbidden state
            qbar_int <= '0';
        elsif S = '1' then
            q_int    <= '1'; -- Set
            qbar_int <= '0';
        elsif R = '1' then
            q_int    <= '0'; -- Reset
            qbar_int <= '1';
        end if;              -- S=0, R=0 (Hold)
    end process;

    Q    <= q_int;
    Qbar <= qbar_int;
end Behavioral;