
entity Stage1 is

port(X, Y, Z : in bit_vector(0 to 3);
	  S, C : out bit_vector(0 to 3));
	  
end;


architecture arch of Stage1 is

component FullAdder is
port(A, B, Cin : in bit;
	  S, C : out bit);
end component;


begin

FA1 : FullAdder port map(X(0), Y(0), Z(0), S(0), C(0));
FA2 : FullAdder port map(X(1), Y(1), Z(1), S(1), C(1));
FA3 : FullAdder port map(X(2), Y(2), Z(2), S(2), C(2));
FA4 : FullAdder port map(X(3), Y(3), Z(3), S(3), C(3));


end;