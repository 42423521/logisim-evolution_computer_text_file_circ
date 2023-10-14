library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity pla_pow is
    Port ( X : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : in  STD_LOGIC_VECTOR (3 downto 0);
           Z : out STD_LOGIC_VECTOR (7 downto 0));
end pla_pow;

architecture Behavioral of pla_pow is
    signal count : STD_LOGIC_VECTOR (4 downto 0);
    signal temp : STD_LOGIC_VECTOR (7 downto 0);
begin
    process (X, Y)
    begin
        temp(3 downto 0) <= X;
        temp(7 downto 4) <= "0000";
        count <= "0000";
        while (temp(3 downto 0) /= "1111") loop
            if (temp(3 downto 0) = X) then
                count <= count + 1;
                if (count = Y) then
                    Z <= temp;
                    exit;
                end if;
            end if;
            temp <= temp * 2;
        end loop;
    end process;
end Behavioral;