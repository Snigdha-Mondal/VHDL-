library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate_tb is
end or_gate_tb;

architecture Behavioral of or_gate_tb is

    -- Component declaration
    component or_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    -- Signals
    signal A : STD_LOGIC := '0';
    signal B : STD_LOGIC := '0';
    signal Y : STD_LOGIC;

begin

    -- Instantiate OR gate
    uut: or_gate
        port map (
            A => A,
            B => B,
            Y => Y
        );

    -- Stimulus process (INSIDE architecture)
    stim_proc: process
begin
    -- Table Header
    report "-----------------------------------------";
    report " Time(ns) | A | B | Y ";
    report "-----------------------------------------";

    -- Row 1
    A <= '0'; B <= '0';
    wait for 10 ns;
    report "   0      | " & STD_LOGIC'image(A) & " | " &
           STD_LOGIC'image(B) & " | " & STD_LOGIC'image(Y);

    -- Row 2
    A <= '0'; B <= '1';
    wait for 10 ns;
    report "   10     | " & STD_LOGIC'image(A) & " | " &
           STD_LOGIC'image(B) & " | " & STD_LOGIC'image(Y);

    -- Row 3
    A <= '1'; B <= '0';
    wait for 10 ns;
    report "   20     | " & STD_LOGIC'image(A) & " | " &
           STD_LOGIC'image(B) & " | " & STD_LOGIC'image(Y);

    -- Row 4
    A <= '1'; B <= '1';
    wait for 10 ns;
    report "   30     | " & STD_LOGIC'image(A) & " | " &
           STD_LOGIC'image(B) & " | " & STD_LOGIC'image(Y);

    report "-----------------------------------------";

    wait;
end process;
end Behavioral;