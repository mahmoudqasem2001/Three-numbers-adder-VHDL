
entity ThreeNumbersAdder is

port(X, Y, Z : in bit_vector(0 to 3);
	  sum : out bit_vector (0 to 4);
	  carry : out bit);

end;

architecture arch of ThreeNumbersAdder is

signal S, C : bit_vector(0 to 3);

component Stage1 is
port(X, Y, Z : in bit_vector(0 to 3);
	  S, C : out bit_vector(0 to 3));	  
end component;

component Stage2 is 
port (S, C : in bit_vector(0 to 3);
      sum : out bit_vector(0 to 4);
		carry : out bit);		
end component;

begin

Stg1 : Stage1 port map(X, Y, Z, S, C);
Stg2 : Stage2 port map(S, C, sum, carry);


end;