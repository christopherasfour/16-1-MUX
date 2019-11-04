----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/15/2019 09:13:47 PM
-- Design Name: 
-- Module Name: tb_mux41 - Behavioral
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

entity tb_mux41 is
end tb_mux41;

architecture Behavioral of tb_mux41 is
    component mux41 is
        PORT(
        D:          IN std_logic_vector(3 downto 0);
        S:          IN std_logic_vector(1 downto 0);
        Q:          OUT std_logic);
    end component;
    
    signal D: std_logic_vector(3 downto 0)  := "0000";
    signal S: std_logic_vector(1 downto 0)  := "00";
    signal Q: std_logic;
    
    begin
    uut: mux41
        port map(
        D => D,
        S => S,
        Q => Q);
        
        D <= "1011";
        S <= "01", "11" AFTER 20ns;

end Behavioral;
