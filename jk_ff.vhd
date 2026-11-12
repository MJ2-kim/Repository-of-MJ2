library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity jk_ff is
    Port ( clk  : in  STD_LOGIC;
           J    : in  STD_LOGIC;
           K    : in  STD_LOGIC;
           Q    : out STD_LOGIC;
           Qbar : out STD_LOGIC);
end jk_ff;

architecture Behavioral of jk_ff is
    signal q_int : std_logic := '0';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if (J = '0' and K = '0') then
                q_int <= q_int;        -- Hold
            elsif (J = '0' and K = '1') then
                q_int <= '0';          -- Reset
            elsif (J = '1' and K = '0') then
                q_int <= '1';          -- Set
            elsif (J = '1' and K = '1') then
                q_int <= not q_int;    -- Toggle
            end if;
        end if;
    end process;

    Q    <= q_int;
    Qbar <= not q_int;
end Behavioral;