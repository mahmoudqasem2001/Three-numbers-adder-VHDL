
entity Stage2 is 

port (S, C : in bit_vector(0 to 3);
      sum : out bit_vector(0 to 4);
		carry : out bit);
		
end;

architecture arch of Stage2 is

signal c1, c2, c3 : bit;

component FullAdder is
port(A, B, Cin : in bit;
	  S, C : out bit);
end component;

begin 

sum(0) <= S(0);
FA1 : FullAdder port map(S(1), C(0), '0', sum(1), c1);
FA2 : FullAdder port map(S(2), C(1), c1, sum(2), c2);
FA3 : FullAdder port map(S(3), C(2), c2, sum(3), c3);
FA4 : FullAdder port map('0', C(3), c3, sum(4), carry);

end;
