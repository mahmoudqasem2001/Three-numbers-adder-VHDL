
entity FullAdder is

port(A, B, Cin : in bit;
	  S, C : out bit);

end;


architecture arch of FullAdder is

signal sum1, carry1, carry2 : bit;

component HalfAdder is
port (A, B : in bit;
		S, C : out bit);
end component;

begin 

HA1 : HalfAdder port map(A, B, sum1, carry1);
HA2 : HalfAdder port map(sum1, Cin, S, carry2);
C <= carry1 or carry2;

end;