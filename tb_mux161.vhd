----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/15/2019 09:17:05 PM
-- Design Name: 
-- Module Name: tb_mux161 - Behavioral
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

entity tb_mux161 is
end tb_mux161;

architecture Behavioral of tb_mux161 is
    component mux161 is
        PORT(J                 : IN  std_logic_vector(15 downto 0);
            E                  : IN  std_logic_vector(3 downto 0);
            Q1                  : OUT std_logic);
   end component;
   
   signal J: std_logic_vector(15 downto 0);
   signal E: std_logic_vector(3 downto 0);
   signal Q1: std_logic;
   
begin
    uut: mux161 port map
    (J, E, Q1);
    
    J <= x"7DAB";
    E <= "0011", "1010" AFTER 30ns, "1110" AFTER 60ns;

end Behavioral;

