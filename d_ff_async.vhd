library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity d_ff_async is
    Port ( clk  : in  STD_LOGIC;
           set  : in  STD_LOGIC;
           clr  : in  STD_LOGIC;
           D    : in  STD_LOGIC;
           Q    : out STD_LOGIC;
           Qbar : out STD_LOGIC);
end d_ff_async;

architecture Behavioral of d_ff_async is
    signal q_int : std_logic := '0';
begin
    process(clk, set, clr)
    begin
        -- 1. Asynchronous Clear
        if clr = '1' then
            q_int <= '0';
        -- 2. Asynchronous Set
        elsif set = '1' then
            q_int <= '1';
        -- 3. Normal D-FF Operation 
        elsif rising_edge(clk) then
            q_int <= D;
        end if;
    end process;

    Q    <= q_int;
    Qbar <= not q_int;
end Behavioral;