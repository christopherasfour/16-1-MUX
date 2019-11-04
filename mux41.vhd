----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/15/2019 09:11:58 PM
-- Design Name: 
-- Module Name: mux41 - Behavioral
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

entity mux41 is
    PORT(
    D:      IN std_logic_vector(3 downto 0);
    S:      IN std_logic_vector(1 downto 0);
    Q:      OUT std_logic);
end mux41;

architecture Behavioral of mux41 is

begin
    process(D, S) is
begin
    if (S(1) = '0' and S(0) = '0') then
        Q <= D(0);
    elsif (S(1) = '0' and S(0) = '1') then
        Q <= D(1);
    elsif (S(1) = '1' and S(0) = '0') then
        Q <= D(2);
    elsif (S(1) = '1' and S(0) = '1') then
        Q <= D(3);
    end if;

end process;
end Behavioral;
