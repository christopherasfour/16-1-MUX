----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/15/2019 09:15:40 PM
-- Design Name: 
-- Module Name: mux161 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux161 is
    PORT(
    J:         IN  std_logic_vector(15 downto 0);
    E:         IN  std_logic_vector(3 downto 0);
    Q1:        OUT std_logic);
end mux161;

architecture Behavioral of mux161 is
    component mux41 is
        PORT(
        D:      IN std_logic_vector(3 downto 0);
        S:      IN std_logic_vector(1 downto 0);
        Q:      OUT std_logic);
    end component;
    
    signal temp: std_logic_vector(3 downto 0) := "0000";
    
    begin
        U1: mux41 port map
            (J(3 downto 0), E(1 downto 0), temp(0));
        U2: mux41 port map
            (J(7 downto 4), E(1 downto 0), temp(1));
        U3: mux41 port map
            (J(11 downto 8),E(1 downto 0), temp(2));
        U4: mux41 port map
            (J(15 downto 12),E(1 downto 0), temp(3));
        U5: mux41 port map
            (temp(3 downto 0), E(3 downto 2), Q1);
       
end Behavioral;

