----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Joe Votto
-- 
-- Create Date:    13:32:31 02/06/2014 
-- Design Name: 
-- Module Name:    Decoder_Behavioral - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Decoder_Behavioral is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Y0 : out  STD_LOGIC;
           Y1 : out  STD_LOGIC;
           Y2 : out  STD_LOGIC;
           Y3 : out  STD_LOGIC);
end Decoder_Behavioral;

architecture Behavioral of Decoder_Behavioral is

begin

Y0 <= (not I0) and (not I1) and EN;
Y1 <= (I0) and (not I1) and EN;
Y2 <= (not I0) and (I1) and EN;
Y3 <= (I0) and (I1) and EN;
   
end Behavioral;

