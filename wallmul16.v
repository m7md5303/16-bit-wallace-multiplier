module wallmul16 (a,b,p);
input [15:0] a,b;
output [31:0] p;
reg [15:0] inn_p [15:0];
wire [15:0] s11,c11,s12,c12,s13,c13,s14,c14,s15,c15;
wire [15:0] s21,c21,s23,c23;
wire [17:0] s22,c22;
wire [17:0] s31,c31;
wire [18:0] s32,c32;
wire [19:0] s41,c41;
wire [15:0] s42,c42;
wire [23:0] s51,c51;
wire [24:0] s61,c61;
wire [24:0] c71;
integer i,j;
always@(*) begin
             for(i=0;i<16;i=i+1) begin
             for (j =0 ;j<16 ;j=j+1 ) begin
            inn_p[i][j]=a[j]&b[i];
             end
             end
end 

//stage 11
assign p[0] = inn_p[0][0];
half_adder h11(.a(inn_p[0][1]),.b(inn_p[1][0]),.sum(s11[0]),.carry(c11[0]));
full_adderh f11(.a(inn_p[0][2]),.b(inn_p[1][1]),.c(inn_p[2][0]),.sum(s11[1]),.carry(c11[1]));
full_adderh f12(.a(inn_p[0][3]),.b(inn_p[1][2]),.c(inn_p[2][1]),.sum(s11[2]),.carry(c11[2]));
full_adderh f13(.a(inn_p[0][4]),.b(inn_p[1][3]),.c(inn_p[2][2]),.sum(s11[3]),.carry(c11[3]));
full_adderh f14(.a(inn_p[0][5]),.b(inn_p[1][4]),.c(inn_p[2][3]),.sum(s11[4]),.carry(c11[4]));
full_adderh f15(.a(inn_p[0][6]),.b(inn_p[1][5]),.c(inn_p[2][4]),.sum(s11[5]),.carry(c11[5]));
full_adderh f16(.a(inn_p[0][7]),.b(inn_p[1][6]),.c(inn_p[2][5]),.sum(s11[6]),.carry(c11[6]));
full_adderh f17(.a(inn_p[0][8]),.b(inn_p[1][7]),.c(inn_p[2][6]),.sum(s11[7]),.carry(c11[7]));
full_adderh f18(.a(inn_p[0][9]),.b(inn_p[1][8]),.c(inn_p[2][7]),.sum(s11[8]),.carry(c11[8]));
full_adderh f19(.a(inn_p[0][10]),.b(inn_p[1][9]),.c(inn_p[2][8]),.sum(s11[9]),.carry(c11[9]));
full_adderh f110(.a(inn_p[0][11]),.b(inn_p[1][10]),.c(inn_p[2][9]),.sum(s11[10]),.carry(c11[10]));
full_adderh f111(.a(inn_p[0][12]),.b(inn_p[1][11]),.c(inn_p[2][10]),.sum(s11[11]),.carry(c11[11]));
full_adderh f112(.a(inn_p[0][13]),.b(inn_p[1][12]),.c(inn_p[2][11]),.sum(s11[12]),.carry(c11[12]));
full_adderh f113(.a(inn_p[0][14]),.b(inn_p[1][13]),.c(inn_p[2][12]),.sum(s11[13]),.carry(c11[13]));
full_adderh f114(.a(inn_p[0][15]),.b(inn_p[1][14]),.c(inn_p[2][13]),.sum(s11[14]),.carry(c11[14]));
half_adder h12(.a(inn_p[2][14]),.b(inn_p[1][15]),.sum(s11[15]),.carry(c11[15]));
//stage 12
half_adder h21(.a(inn_p[3][1]),.b(inn_p[4][0]),.sum(s12[0]),.carry(c12[0]));
full_adderh f21(.a(inn_p[3][2]),.b(inn_p[4][1]),.c(inn_p[5][0]),.sum(s12[1]),.carry(c12[1]));
full_adderh f22(.a(inn_p[3][3]),.b(inn_p[4][2]),.c(inn_p[5][1]),.sum(s12[2]),.carry(c12[2]));
full_adderh f23(.a(inn_p[3][4]),.b(inn_p[4][3]),.c(inn_p[5][2]),.sum(s12[3]),.carry(c12[3]));
full_adderh f24(.a(inn_p[3][5]),.b(inn_p[4][4]),.c(inn_p[5][3]),.sum(s12[4]),.carry(c12[4]));
full_adderh f25(.a(inn_p[3][6]),.b(inn_p[4][5]),.c(inn_p[5][4]),.sum(s12[5]),.carry(c12[5]));
full_adderh f26(.a(inn_p[3][7]),.b(inn_p[4][6]),.c(inn_p[5][5]),.sum(s12[6]),.carry(c12[6]));
full_adderh f27(.a(inn_p[3][8]),.b(inn_p[4][7]),.c(inn_p[5][6]),.sum(s12[7]),.carry(c12[7]));
full_adderh f28(.a(inn_p[3][9]),.b(inn_p[4][8]),.c(inn_p[5][7]),.sum(s12[8]),.carry(c12[8]));
full_adderh f29(.a(inn_p[3][10]),.b(inn_p[4][9]),.c(inn_p[5][8]),.sum(s12[9]),.carry(c12[9]));
full_adderh f210(.a(inn_p[3][11]),.b(inn_p[4][10]),.c(inn_p[5][9]),.sum(s12[10]),.carry(c12[10]));
full_adderh f211(.a(inn_p[3][12]),.b(inn_p[4][11]),.c(inn_p[5][10]),.sum(s12[11]),.carry(c12[11]));
full_adderh f212(.a(inn_p[3][13]),.b(inn_p[4][12]),.c(inn_p[5][11]),.sum(s12[12]),.carry(c12[12]));
full_adderh f213(.a(inn_p[3][14]),.b(inn_p[4][13]),.c(inn_p[5][12]),.sum(s12[13]),.carry(c12[13]));
full_adderh f214(.a(inn_p[3][15]),.b(inn_p[4][14]),.c(inn_p[5][13]),.sum(s12[14]),.carry(c12[14]));
half_adder h22(.a(inn_p[5][14]),.b(inn_p[4][15]),.sum(s12[15]),.carry(c12[15]));
//stage 13
half_adder h31(.a(inn_p[6][1]),.b(inn_p[7][0]),.sum(s13[0]),.carry(c13[0]));
full_adderh f31(.a(inn_p[6][2]),.b(inn_p[7][1]),.c(inn_p[8][0]),.sum(s13[1]),.carry(c13[1]));
full_adderh f32(.a(inn_p[6][3]),.b(inn_p[7][2]),.c(inn_p[8][1]),.sum(s13[2]),.carry(c13[2]));
full_adderh f33(.a(inn_p[6][4]),.b(inn_p[7][3]),.c(inn_p[8][2]),.sum(s13[3]),.carry(c13[3]));
full_adderh f34(.a(inn_p[6][5]),.b(inn_p[7][4]),.c(inn_p[8][3]),.sum(s13[4]),.carry(c13[4]));
full_adderh f35(.a(inn_p[6][6]),.b(inn_p[7][5]),.c(inn_p[8][4]),.sum(s13[5]),.carry(c13[5]));
full_adderh f36(.a(inn_p[6][7]),.b(inn_p[7][6]),.c(inn_p[8][5]),.sum(s13[6]),.carry(c13[6]));
full_adderh f37(.a(inn_p[6][8]),.b(inn_p[7][7]),.c(inn_p[8][6]),.sum(s13[7]),.carry(c13[7]));
full_adderh f38(.a(inn_p[6][9]),.b(inn_p[7][8]),.c(inn_p[8][7]),.sum(s13[8]),.carry(c13[8]));
full_adderh f39(.a(inn_p[6][10]),.b(inn_p[7][9]),.c(inn_p[8][8]),.sum(s13[9]),.carry(c13[9]));
full_adderh f310(.a(inn_p[6][11]),.b(inn_p[7][10]),.c(inn_p[8][9]),.sum(s13[10]),.carry(c13[10]));
full_adderh f311(.a(inn_p[6][12]),.b(inn_p[7][11]),.c(inn_p[8][10]),.sum(s13[11]),.carry(c13[11]));
full_adderh f312(.a(inn_p[6][13]),.b(inn_p[7][12]),.c(inn_p[8][11]),.sum(s13[12]),.carry(c13[12]));
full_adderh f313(.a(inn_p[6][14]),.b(inn_p[7][13]),.c(inn_p[8][12]),.sum(s13[13]),.carry(c13[13]));
full_adderh f314(.a(inn_p[6][15]),.b(inn_p[7][14]),.c(inn_p[8][13]),.sum(s13[14]),.carry(c13[14]));
half_adder h32(.a(inn_p[8][14]),.b(inn_p[7][15]),.sum(s13[15]),.carry(c13[15]));
//stage 14
half_adder h41(.a(inn_p[9][1]),.b(inn_p[10][0]),.sum(s14[0]),.carry(c14[0]));
full_adderh f41(.a(inn_p[9][2]),.b(inn_p[10][1]),.c(inn_p[11][0]),.sum(s14[1]),.carry(c14[1]));
full_adderh f42(.a(inn_p[9][3]),.b(inn_p[10][2]),.c(inn_p[11][1]),.sum(s14[2]),.carry(c14[2]));
full_adderh f43(.a(inn_p[9][4]),.b(inn_p[10][3]),.c(inn_p[11][2]),.sum(s14[3]),.carry(c14[3]));
full_adderh f44(.a(inn_p[9][5]),.b(inn_p[10][4]),.c(inn_p[11][3]),.sum(s14[4]),.carry(c14[4]));
full_adderh f45(.a(inn_p[9][6]),.b(inn_p[10][5]),.c(inn_p[11][4]),.sum(s14[5]),.carry(c14[5]));
full_adderh f46(.a(inn_p[9][7]),.b(inn_p[10][6]),.c(inn_p[11][5]),.sum(s14[6]),.carry(c14[6]));
full_adderh f47(.a(inn_p[9][8]),.b(inn_p[10][7]),.c(inn_p[11][6]),.sum(s14[7]),.carry(c14[7]));
full_adderh f48(.a(inn_p[9][9]),.b(inn_p[10][8]),.c(inn_p[11][7]),.sum(s14[8]),.carry(c14[8]));
full_adderh f49(.a(inn_p[9][10]),.b(inn_p[10][9]),.c(inn_p[11][8]),.sum(s14[9]),.carry(c14[9]));
full_adderh f410(.a(inn_p[9][11]),.b(inn_p[10][10]),.c(inn_p[11][9]),.sum(s14[10]),.carry(c14[10]));
full_adderh f411(.a(inn_p[9][12]),.b(inn_p[10][11]),.c(inn_p[11][10]),.sum(s14[11]),.carry(c14[11]));
full_adderh f412(.a(inn_p[9][13]),.b(inn_p[10][12]),.c(inn_p[11][11]),.sum(s14[12]),.carry(c14[12]));
full_adderh f413(.a(inn_p[9][14]),.b(inn_p[10][13]),.c(inn_p[11][12]),.sum(s14[13]),.carry(c14[13]));
full_adderh f414(.a(inn_p[9][15]),.b(inn_p[10][14]),.c(inn_p[11][13]),.sum(s14[14]),.carry(c14[14]));
half_adder h42(.a(inn_p[11][14]),.b(inn_p[10][15]),.sum(s14[15]),.carry(c14[15]));
//stage 15
half_adder h51(.a(inn_p[12][1]),.b(inn_p[13][0]),.sum(s15[0]),.carry(c15[0]));
full_adderh f51(.a(inn_p[12][2]),.b(inn_p[13][1]),.c(inn_p[14][0]),.sum(s15[1]),.carry(c15[1]));
full_adderh f52(.a(inn_p[12][3]),.b(inn_p[13][2]),.c(inn_p[14][1]),.sum(s15[2]),.carry(c15[2]));
full_adderh f53(.a(inn_p[12][4]),.b(inn_p[13][3]),.c(inn_p[14][2]),.sum(s15[3]),.carry(c15[3]));
full_adderh f54(.a(inn_p[12][5]),.b(inn_p[13][4]),.c(inn_p[14][3]),.sum(s15[4]),.carry(c15[4]));
full_adderh f55(.a(inn_p[12][6]),.b(inn_p[13][5]),.c(inn_p[14][4]),.sum(s15[5]),.carry(c15[5]));
full_adderh f56(.a(inn_p[12][7]),.b(inn_p[13][6]),.c(inn_p[14][5]),.sum(s15[6]),.carry(c15[6]));
full_adderh f57(.a(inn_p[12][8]),.b(inn_p[13][7]),.c(inn_p[14][6]),.sum(s15[7]),.carry(c15[7]));
full_adderh f58(.a(inn_p[12][9]),.b(inn_p[13][8]),.c(inn_p[14][7]),.sum(s15[8]),.carry(c15[8]));
full_adderh f59(.a(inn_p[12][10]),.b(inn_p[13][9]),.c(inn_p[14][8]),.sum(s15[9]),.carry(c15[9]));
full_adderh f510(.a(inn_p[12][11]),.b(inn_p[13][10]),.c(inn_p[14][9]),.sum(s15[10]),.carry(c15[10]));
full_adderh f511(.a(inn_p[12][12]),.b(inn_p[13][11]),.c(inn_p[14][10]),.sum(s15[11]),.carry(c15[11]));
full_adderh f512(.a(inn_p[12][13]),.b(inn_p[13][12]),.c(inn_p[14][11]),.sum(s15[12]),.carry(c15[12]));
full_adderh f513(.a(inn_p[12][14]),.b(inn_p[13][13]),.c(inn_p[14][12]),.sum(s15[13]),.carry(c15[13]));
full_adderh f514(.a(inn_p[12][15]),.b(inn_p[13][14]),.c(inn_p[14][13]),.sum(s15[14]),.carry(c15[14]));
half_adder h52(.a(inn_p[14][14]),.b(inn_p[13][15]),.sum(s15[15]),.carry(c15[15]));
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
//stage 21
assign p[1] = s11[0];
half_adder h61(.a(s11[1]),.b(c11[0]),.sum(s21[0]),.carry(c21[0]));
full_adderh f61(.a(s11[2]),.b(c11[1]),.c(inn_p[3][0]),.sum(s21[1]),.carry(c21[1]));
full_adderh f62(.a(s11[3]),.b(c11[2]),.c(s12[0]),.sum(s21[2]),.carry(c21[2]));
full_adderh f63(.a(s11[4]),.b(c11[3]),.c(c12[0]),.sum(s21[3]),.carry(c21[3]));
full_adderh f64(.a(s11[5]),.b(c11[4]),.c(c12[1]),.sum(s21[4]),.carry(c21[4]));
full_adderh f65(.a(s11[6]),.b(c11[5]),.c(c12[2]),.sum(s21[5]),.carry(c21[5]));
full_adderh f66(.a(s11[7]),.b(c11[6]),.c(c12[3]),.sum(s21[6]),.carry(c21[6]));
full_adderh f67(.a(s11[8]),.b(c11[7]),.c(c12[4]),.sum(s21[7]),.carry(c21[7]));
full_adderh f68(.a(s11[9]),.b(c11[8]),.c(c12[5]),.sum(s21[8]),.carry(c21[8]));
full_adderh f69(.a(s11[10]),.b(c11[9]),.c(c12[6]),.sum(s21[9]),.carry(c21[9]));
full_adderh f610(.a(s11[11]),.b(c11[10]),.c(c12[7]),.sum(s21[10]),.carry(c21[10]));
full_adderh f611(.a(s11[12]),.b(c11[11]),.c(c12[8]),.sum(s21[11]),.carry(c21[11]));
full_adderh f612(.a(s11[13]),.b(c11[12]),.c(c12[9]),.sum(s21[12]),.carry(c21[12]));
full_adderh f613(.a(s11[14]),.b(c11[13]),.c(c12[10]),.sum(s21[13]),.carry(c21[13]));
full_adderh f614(.a(s11[15]),.b(c11[14]),.c(c12[11]),.sum(s21[14]),.carry(c21[14]));
full_adderh f615(.a(c11[15]),.b(inn_p[2][15]),.c(c12[12]),.sum(s21[15]),.carry(c21[15]));
//stage 22
half_adder h71(.a(s12[2]),.b(inn_p[6][0]),.sum(s22[0]),.carry(c22[0]));
half_adder h72(.a(s12[3]),.b(s13[0]),.sum(s22[1]),.carry(c22[1]));
full_adderh f71(.a(s12[4]),.b(c13[0]),.c(s13[1]),.sum(s22[2]),.carry(c22[2]));
full_adderh f72(.a(s12[5]),.b(c13[1]),.c(s13[2]),.sum(s22[3]),.carry(c22[3]));
full_adderh f73(.a(s12[6]),.b(c13[2]),.c(s13[3]),.sum(s22[4]),.carry(c22[4]));
full_adderh f74(.a(s12[7]),.b(c13[3]),.c(s13[4]),.sum(s22[5]),.carry(c22[5]));
full_adderh f75(.a(s12[8]),.b(c13[4]),.c(s13[5]),.sum(s22[6]),.carry(c22[6]));
full_adderh f76(.a(s12[9]),.b(c13[5]),.c(s13[6]),.sum(s22[7]),.carry(c22[7]));
full_adderh f77(.a(s12[10]),.b(c13[6]),.c(s13[7]),.sum(s22[8]),.carry(c22[8]));
full_adderh f78(.a(s12[11]),.b(c13[7]),.c(s13[8]),.sum(s22[9]),.carry(c22[9]));
full_adderh f79(.a(s12[12]),.b(c13[8]),.c(s13[9]),.sum(s22[10]),.carry(c22[10]));
full_adderh f710(.a(s12[13]),.b(c13[9]),.c(s13[10]),.sum(s22[11]),.carry(c22[11]));
full_adderh f711(.a(s12[14]),.b(c13[10]),.c(s13[11]),.sum(s22[12]),.carry(c22[12]));
full_adderh f712(.a(s12[15]),.b(c13[11]),.c(s13[12]),.sum(s22[13]),.carry(c22[13]));
full_adderh f713(.a(inn_p[5][15]),.b(c13[12]),.c(s13[13]),.sum(s22[14]),.carry(c22[14]));
half_adder h73(.a(c13[13]),.b(s13[14]),.sum(s22[15]),.carry(c22[15]));
half_adder h74(.a(c13[14]),.b(s13[15]),.sum(s22[16]),.carry(c22[16]));
half_adder h75(.a(c13[15]),.b(inn_p[8][15]),.sum(s22[17]),.carry(c22[17]));
//stage 23
half_adder h81(.a(s14[1]),.b(c14[0]),.sum(s23[0]),.carry(c23[0]));
full_adderh f81(.a(inn_p[12][0]),.b(c14[1]),.c(s14[2]),.sum(s23[1]),.carry(c23[1]));
full_adderh f82(.a(s15[0]),.b(c14[2]),.c(s14[3]),.sum(s23[2]),.carry(c23[2]));
full_adderh f83(.a(c15[0]),.b(c14[3]),.c(s14[4]),.sum(s23[3]),.carry(c23[3]));
full_adderh f84(.a(c15[1]),.b(c14[4]),.c(s14[5]),.sum(s23[4]),.carry(c23[4]));
full_adderh f85(.a(c15[2]),.b(c14[5]),.c(s14[6]),.sum(s23[5]),.carry(c23[5]));
full_adderh f86(.a(c15[3]),.b(c14[6]),.c(s14[7]),.sum(s23[6]),.carry(c23[6]));
full_adderh f87(.a(c15[4]),.b(c14[7]),.c(s14[8]),.sum(s23[7]),.carry(c23[7]));
full_adderh f88(.a(c15[5]),.b(c14[8]),.c(s14[9]),.sum(s23[8]),.carry(c23[8]));
full_adderh f89(.a(c15[6]),.b(c14[9]),.c(s14[10]),.sum(s23[9]),.carry(c23[9]));
full_adderh f810(.a(c15[7]),.b(c14[10]),.c(s14[11]),.sum(s23[10]),.carry(c23[10]));
full_adderh f811(.a(c15[8]),.b(c14[11]),.c(s14[12]),.sum(s23[11]),.carry(c23[11]));
full_adderh f812(.a(c15[9]),.b(c14[12]),.c(s14[13]),.sum(s23[12]),.carry(c23[12]));
full_adderh f813(.a(c15[10]),.b(c14[13]),.c(s14[14]),.sum(s23[13]),.carry(c23[13]));
full_adderh f814(.a(c15[11]),.b(c14[14]),.c(s14[15]),.sum(s23[14]),.carry(c23[14]));
full_adderh f815(.a(c15[12]),.b(c14[15]),.c(inn_p[11][15]),.sum(s23[15]),.carry(c23[15]));
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
//stage 31
assign p[2] = s21[0];
half_adder h91(.a(s21[1]),.b(c21[0]),.sum(s31[0]),.carry(c31[0]));
half_adder h92(.a(s21[2]),.b(c21[1]),.sum(s31[1]),.carry(c31[1]));
full_adderh f91(.a(s12[1]),.b(c21[2]),.c(s21[3]),.sum(s31[2]),.carry(c31[2]));
full_adderh f92(.a(s22[0]),.b(c21[3]),.c(s21[4]),.sum(s31[3]),.carry(c31[3]));
full_adderh f93(.a(c22[0]),.b(c21[4]),.c(s21[5]),.sum(s31[4]),.carry(c31[4]));
full_adderh f94(.a(c22[1]),.b(c21[5]),.c(s21[6]),.sum(s31[5]),.carry(c31[5]));
full_adderh f95(.a(c22[2]),.b(c21[6]),.c(s21[7]),.sum(s31[6]),.carry(c31[6]));
full_adderh f96(.a(c22[3]),.b(c21[7]),.c(s21[8]),.sum(s31[7]),.carry(c31[7]));
full_adderh f97(.a(c22[4]),.b(c21[8]),.c(s21[9]),.sum(s31[8]),.carry(c31[8]));
full_adderh f98(.a(c22[5]),.b(c21[9]),.c(s21[10]),.sum(s31[9]),.carry(c31[9]));
full_adderh f99(.a(c22[6]),.b(c21[10]),.c(s21[11]),.sum(s31[10]),.carry(c31[10]));
full_adderh f910(.a(c22[7]),.b(c21[11]),.c(s21[12]),.sum(s31[11]),.carry(c31[11]));
full_adderh f911(.a(c22[8]),.b(c21[12]),.c(s21[13]),.sum(s31[12]),.carry(c31[12]));
full_adderh f912(.a(c22[9]),.b(c21[13]),.c(s21[14]),.sum(s31[13]),.carry(c31[13]));
full_adderh f913(.a(c22[10]),.b(c21[14]),.c(s21[15]),.sum(s31[14]),.carry(c31[14]));
full_adderh f914(.a(c22[11]),.b(c21[15]),.c(c12[13]),.sum(s31[15]),.carry(c31[15]));
half_adder h93(.a(c22[12]),.b(c12[14]),.sum(s31[16]),.carry(c31[16]));
half_adder h94(.a(c22[13]),.b(c12[15]),.sum(s31[17]),.carry(c31[17]));
//stage 32
half_adder h101(.a(s22[3]),.b(inn_p[9][0]),.sum(s32[0]),.carry(c32[0]));
half_adder h102(.a(s14[0]),.b(s22[4]),.sum(s32[1]),.carry(c32[1]));
half_adder h103(.a(s23[0]),.b(s22[5]),.sum(s32[2]),.carry(c32[2]));
full_adderh f101(.a(c23[0]),.b(s22[6]),.c(s23[1]),.sum(s32[3]),.carry(c32[3]));
full_adderh f102(.a(c23[1]),.b(s22[7]),.c(s23[2]),.sum(s32[4]),.carry(c32[4]));
full_adderh f103(.a(c23[2]),.b(s22[8]),.c(s23[3]),.sum(s32[5]),.carry(c32[5]));
full_adderh f104(.a(c23[3]),.b(s22[9]),.c(s23[4]),.sum(s32[6]),.carry(c32[6]));
full_adderh f105(.a(c23[4]),.b(s22[10]),.c(s23[5]),.sum(s32[7]),.carry(c32[7]));
full_adderh f106(.a(c23[5]),.b(s22[11]),.c(s23[6]),.sum(s32[8]),.carry(c32[8]));
full_adderh f107(.a(c23[6]),.b(s22[12]),.c(s23[7]),.sum(s32[9]),.carry(c32[9]));
full_adderh f108(.a(c23[7]),.b(s22[13]),.c(s23[8]),.sum(s32[10]),.carry(c32[10]));
full_adderh f109(.a(c23[8]),.b(s22[14]),.c(s23[9]),.sum(s32[11]),.carry(c32[11]));
full_adderh f1010(.a(c23[9]),.b(s22[15]),.c(s23[10]),.sum(s32[12]),.carry(c32[12]));
full_adderh f1011(.a(c23[10]),.b(s22[16]),.c(s23[11]),.sum(s32[13]),.carry(c32[13]));
full_adderh f1012(.a(c23[11]),.b(s22[17]),.c(s23[12]),.sum(s32[14]),.carry(c32[14]));
full_adderh f1013(.a(c23[12]),.b(c22[17]),.c(s23[13]),.sum(s32[15]),.carry(c32[15]));
half_adder h104(.a(c23[13]),.b(s23[14]),.sum(s32[16]),.carry(c32[16]));
half_adder h105(.a(c23[14]),.b(s23[15]),.sum(s32[17]),.carry(c32[17]));
half_adder h106(.a(c23[15]),.b(c15[13]),.sum(s32[18]),.carry(c32[18]));
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
//stage 41
assign p[3] = s31[0];
half_adder h111(.a(s31[1]),.b(c31[0]),.sum(s41[0]),.carry(c41[0]));
half_adder h112(.a(s31[2]),.b(c31[1]),.sum(s41[1]),.carry(c41[1]));
half_adder h113(.a(s31[3]),.b(c31[2]),.sum(s41[2]),.carry(c41[2]));
full_adderh f111d(.a(c31[3]),.b(s22[1]),.c(s31[4]),.sum(s41[3]),.carry(c41[3]));
full_adderh f112d(.a(c31[4]),.b(s22[2]),.c(s31[5]),.sum(s41[4]),.carry(c41[4]));
full_adderh f113d(.a(c31[5]),.b(s32[0]),.c(s31[6]),.sum(s41[5]),.carry(c41[5]));
full_adderh f114d(.a(c31[6]),.b(c32[0]),.c(s31[7]),.sum(s41[6]),.carry(c41[6]));
full_adderh f115(.a(c31[7]),.b(c32[1]),.c(s31[8]),.sum(s41[7]),.carry(c41[7]));
full_adderh f116(.a(c31[8]),.b(c32[2]),.c(s31[9]),.sum(s41[8]),.carry(c41[8]));
full_adderh f117(.a(c31[9]),.b(c32[3]),.c(s31[10]),.sum(s41[9]),.carry(c41[9]));
full_adderh f118(.a(c31[10]),.b(c32[4]),.c(s31[11]),.sum(s41[10]),.carry(c41[10]));
full_adderh f119(.a(c31[11]),.b(c32[5]),.c(s31[12]),.sum(s41[11]),.carry(c41[11]));
full_adderh f1110(.a(c31[12]),.b(c32[6]),.c(s31[13]),.sum(s41[12]),.carry(c41[12]));
full_adderh f1111(.a(c31[13]),.b(c32[7]),.c(s31[14]),.sum(s41[13]),.carry(c41[13]));
full_adderh f1112(.a(c31[14]),.b(c32[8]),.c(s31[15]),.sum(s41[14]),.carry(c41[14]));
full_adderh f1113(.a(c31[15]),.b(c32[9]),.c(s31[16]),.sum(s41[15]),.carry(c41[15]));
full_adderh f1114(.a(c31[16]),.b(c32[10]),.c(s31[17]),.sum(s41[16]),.carry(c41[16]));
full_adderh f1115(.a(c32[11]),.b(c22[14]),.c(c31[17]),.sum(s41[17]),.carry(c41[17]));
half_adder h114(.a(c32[12]),.b(c22[15]),.sum(s41[18]),.carry(c41[18]));
half_adder h115(.a(c32[13]),.b(c22[16]),.sum(s41[19]),.carry(c41[19]));
//stage 42
half_adder h121(.a(s15[1]),.b(s32[5]),.sum(s42[0]),.carry(c42[0]));
full_adderh f121(.a(s15[2]),.b(inn_p[15][0]),.c(s32[6]),.sum(s42[1]),.carry(c42[1]));
full_adderh f122(.a(s15[3]),.b(inn_p[15][1]),.c(s32[7]),.sum(s42[2]),.carry(c42[2]));
full_adderh f123(.a(s15[4]),.b(inn_p[15][2]),.c(s32[8]),.sum(s42[3]),.carry(c42[3]));
full_adderh f124(.a(s15[5]),.b(inn_p[15][3]),.c(s32[9]),.sum(s42[4]),.carry(c42[4]));
full_adderh f125(.a(s15[6]),.b(inn_p[15][4]),.c(s32[10]),.sum(s42[5]),.carry(c42[5]));
full_adderh f126(.a(s15[7]),.b(inn_p[15][5]),.c(s32[11]),.sum(s42[6]),.carry(c42[6]));
full_adderh f127(.a(s15[8]),.b(inn_p[15][6]),.c(s32[12]),.sum(s42[7]),.carry(c42[7]));
full_adderh f128(.a(s15[9]),.b(inn_p[15][7]),.c(s32[13]),.sum(s42[8]),.carry(c42[8]));
full_adderh f129(.a(s15[10]),.b(inn_p[15][8]),.c(s32[14]),.sum(s42[9]),.carry(c42[9]));
full_adderh f1210(.a(s15[11]),.b(inn_p[15][9]),.c(s32[15]),.sum(s42[10]),.carry(c42[10]));
full_adderh f1211(.a(s15[12]),.b(inn_p[15][10]),.c(s32[16]),.sum(s42[11]),.carry(c42[11]));
full_adderh f1212(.a(s15[13]),.b(inn_p[15][11]),.c(s32[17]),.sum(s42[12]),.carry(c42[12]));
full_adderh f1213(.a(s15[14]),.b(inn_p[15][12]),.c(s32[18]),.sum(s42[13]),.carry(c42[13]));
full_adderh f1214(.a(s15[15]),.b(inn_p[15][13]),.c(c15[14]),.sum(s42[14]),.carry(c42[14]));
full_adderh f1215(.a(inn_p[14][15]),.b(inn_p[15][14]),.c(c15[15]),.sum(s42[15]),.carry(c42[15]));
//stage 51
assign p[4] = s41[0];
half_adder h131(.a(s41[1]),.b(c41[0]),.sum(s51[0]),.carry(c51[0]));
half_adder h132(.a(s41[2]),.b(c41[1]),.sum(s51[1]),.carry(c51[1]));
half_adder h133(.a(s41[3]),.b(c41[2]),.sum(s51[2]),.carry(c51[2]));
half_adder h134(.a(s41[4]),.b(c41[3]),.sum(s51[3]),.carry(c51[3]));
half_adder h135(.a(s41[5]),.b(c41[4]),.sum(s51[4]),.carry(c51[4]));
full_adderh f131(.a(s41[6]),.b(c41[5]),.c(s32[1]),.sum(s51[5]),.carry(c51[5]));
full_adderh f132(.a(s41[7]),.b(c41[6]),.c(s32[2]),.sum(s51[6]),.carry(c51[6]));
full_adderh f133(.a(s41[8]),.b(c41[7]),.c(s32[3]),.sum(s51[7]),.carry(c51[7]));
full_adderh f134(.a(s41[9]),.b(c41[8]),.c(s32[4]),.sum(s51[8]),.carry(c51[8]));
full_adderh f135(.a(s41[10]),.b(c41[9]),.c(s42[0]),.sum(s51[9]),.carry(c51[9]));
full_adderh f136(.a(s41[11]),.b(c41[10]),.c(c42[0]),.sum(s51[10]),.carry(c51[10]));
full_adderh f137(.a(s41[12]),.b(c41[11]),.c(c42[1]),.sum(s51[11]),.carry(c51[11]));
full_adderh f138(.a(s41[13]),.b(c41[12]),.c(c42[2]),.sum(s51[12]),.carry(c51[12]));
full_adderh f139(.a(s41[14]),.b(c41[13]),.c(c42[3]),.sum(s51[13]),.carry(c51[13]));
full_adderh f1310(.a(s41[15]),.b(c41[14]),.c(c42[4]),.sum(s51[14]),.carry(c51[14]));
full_adderh f1311(.a(s41[16]),.b(c41[15]),.c(c42[5]),.sum(s51[15]),.carry(c51[15]));
full_adderh f1312(.a(s41[17]),.b(c41[16]),.c(c42[6]),.sum(s51[16]),.carry(c51[16]));
full_adderh f1313(.a(s41[18]),.b(c41[17]),.c(c42[7]),.sum(s51[17]),.carry(c51[17]));
full_adderh f1314(.a(s41[19]),.b(c41[18]),.c(c42[8]),.sum(s51[18]),.carry(c51[18]));
full_adderh f1315(.a(c32[14]),.b(c41[19]),.c(c42[9]),.sum(s51[19]),.carry(c51[19]));
half_adder h136(.a(c42[10]),.b(c32[15]),.sum(s51[20]),.carry(c51[20]));
half_adder h137(.a(c42[11]),.b(c32[16]),.sum(s51[21]),.carry(c51[21]));
half_adder h138(.a(c42[12]),.b(c32[17]),.sum(s51[22]),.carry(c51[22]));
half_adder h139(.a(c42[13]),.b(c32[18]),.sum(s51[23]),.carry(c51[23]));
/////////////////////////////////////////////////////////////////////////////////////////////
//stage 61
assign p[5] = s51[0];
half_adder h141(.a(s51[1]),.b(c51[0]),.sum(s61[0]),.carry(c61[0]));
half_adder h142(.a(s51[2]),.b(c51[1]),.sum(s61[1]),.carry(c61[1]));
half_adder h143(.a(s51[3]),.b(c51[2]),.sum(s61[2]),.carry(c61[2]));
half_adder h144(.a(s51[4]),.b(c51[3]),.sum(s61[3]),.carry(c61[3]));
half_adder h145(.a(s51[5]),.b(c51[4]),.sum(s61[4]),.carry(c61[4]));
half_adder h146(.a(s51[6]),.b(c51[5]),.sum(s61[5]),.carry(c61[5]));
half_adder h147(.a(s51[7]),.b(c51[6]),.sum(s61[6]),.carry(c61[6]));
half_adder h148(.a(s51[8]),.b(c51[7]),.sum(s61[7]),.carry(c61[7]));
half_adder h149(.a(s51[9]),.b(c51[8]),.sum(s61[8]),.carry(c61[8]));
full_adderh f141(.a(s51[10]),.b(c51[9]),.c(s42[1]),.sum(s61[9]),.carry(c61[9]));
full_adderh f142(.a(s51[11]),.b(c51[10]),.c(s42[2]),.sum(s61[10]),.carry(c61[10]));
full_adderh f143(.a(s51[12]),.b(c51[11]),.c(s42[3]),.sum(s61[11]),.carry(c61[11]));
full_adderh f144(.a(s51[13]),.b(c51[12]),.c(s42[4]),.sum(s61[12]),.carry(c61[12]));
full_adderh f145(.a(s51[14]),.b(c51[13]),.c(s42[5]),.sum(s61[13]),.carry(c61[13]));
full_adderh f146(.a(s51[15]),.b(c51[14]),.c(s42[6]),.sum(s61[14]),.carry(c61[14]));
full_adderh f147(.a(s51[16]),.b(c51[15]),.c(s42[7]),.sum(s61[15]),.carry(c61[15]));
full_adderh f148(.a(s51[17]),.b(c51[16]),.c(s42[8]),.sum(s61[16]),.carry(c61[16]));
full_adderh f149(.a(s51[18]),.b(c51[17]),.c(s42[9]),.sum(s61[17]),.carry(c61[17]));
full_adderh f1410(.a(s51[19]),.b(c51[18]),.c(s42[10]),.sum(s61[18]),.carry(c61[18]));
full_adderh f1411(.a(s51[20]),.b(c51[19]),.c(s42[11]),.sum(s61[19]),.carry(c61[19]));
full_adderh f1412(.a(s51[21]),.b(c51[20]),.c(s42[12]),.sum(s61[20]),.carry(c61[20]));
full_adderh f1413(.a(s51[22]),.b(c51[21]),.c(s42[13]),.sum(s61[21]),.carry(c61[21]));
full_adderh f1414(.a(s51[23]),.b(c51[22]),.c(s42[14]),.sum(s61[22]),.carry(c61[22]));
full_adderh f1415(.a(c42[14]),.b(c51[23]),.c(s42[15]),.sum(s61[23]),.carry(c61[23]));
half_adder h1410(.a(inn_p[15][15]),.b(c42[15]),.sum(s61[24]),.carry(c61[24]));
/////////////////////////////////////////////////////////////////////////////////////////////
//stage 71
assign p[6] = s61[0];
half_adder h151(.a(s61[1]),.b(c61[0]),.sum(p[7]),.carry(c71[0]));
full_adderh f151(.a(s61[2]),.b(c61[1]),.c(c71[0]),.sum(p[8]),.carry(c71[1]));
full_adderh f152(.a(s61[3]),.b(c61[2]),.c(c71[1]),.sum(p[9]),.carry(c71[2]));
full_adderh f153(.a(s61[4]),.b(c61[3]),.c(c71[2]),.sum(p[10]),.carry(c71[3]));
full_adderh f154(.a(s61[5]),.b(c61[4]),.c(c71[3]),.sum(p[11]),.carry(c71[4]));
full_adderh f155(.a(s61[6]),.b(c61[5]),.c(c71[4]),.sum(p[12]),.carry(c71[5]));
full_adderh f156(.a(s61[7]),.b(c61[6]),.c(c71[5]),.sum(p[13]),.carry(c71[6]));
full_adderh f157(.a(s61[8]),.b(c61[7]),.c(c71[6]),.sum(p[14]),.carry(c71[7]));
full_adderh f158(.a(s61[9]),.b(c61[8]),.c(c71[7]),.sum(p[15]),.carry(c71[8]));
full_adderh f159(.a(s61[10]),.b(c61[9]),.c(c71[8]),.sum(p[16]),.carry(c71[9]));
full_adderh f1510(.a(s61[11]),.b(c61[10]),.c(c71[9]),.sum(p[17]),.carry(c71[10]));
full_adderh f1511(.a(s61[12]),.b(c61[11]),.c(c71[10]),.sum(p[18]),.carry(c71[11]));
full_adderh f1512(.a(s61[13]),.b(c61[12]),.c(c71[11]),.sum(p[19]),.carry(c71[12]));
full_adderh f1513(.a(s61[14]),.b(c61[13]),.c(c71[12]),.sum(p[20]),.carry(c71[13]));
full_adderh f1514(.a(s61[15]),.b(c61[14]),.c(c71[13]),.sum(p[21]),.carry(c71[14]));
full_adderh f1515(.a(s61[16]),.b(c61[15]),.c(c71[14]),.sum(p[22]),.carry(c71[15]));
full_adderh f1516(.a(s61[17]),.b(c61[16]),.c(c71[15]),.sum(p[23]),.carry(c71[16]));
full_adderh f1517(.a(s61[18]),.b(c61[17]),.c(c71[16]),.sum(p[24]),.carry(c71[17]));
full_adderh f1518(.a(s61[19]),.b(c61[18]),.c(c71[17]),.sum(p[25]),.carry(c71[18]));
full_adderh f1519(.a(s61[20]),.b(c61[19]),.c(c71[18]),.sum(p[26]),.carry(c71[19]));
full_adderh f1520(.a(s61[21]),.b(c61[20]),.c(c71[19]),.sum(p[27]),.carry(c71[20]));
full_adderh f1521(.a(s61[22]),.b(c61[21]),.c(c71[20]),.sum(p[28]),.carry(c71[21]));
full_adderh f1522(.a(s61[23]),.b(c61[22]),.c(c71[21]),.sum(p[29]),.carry(c71[22]));
full_adderh f1523(.a(s61[24]),.b(c61[23]),.c(c71[22]),.sum(p[30]),.carry(c71[23]));
half_adder h152(.a(c71[23]),.b(c61[24]),.sum(p[31]),.carry(c71[24]));







endmodule