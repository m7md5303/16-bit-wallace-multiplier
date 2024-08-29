module full_adderh (a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire sum1,carry1,carry2;
half_adder h1 (.a(a),.b(b),.sum(sum1),.carry(carry1));
half_adder h2 (.a(sum1),.b(c),.sum(sum),.carry(carry2));
assign carry=carry1|carry2;
endmodule //full_adderh