OPENQASM 2.0;
include "qelib1.inc";
qreg q[49];
creg c[49];
cx q[3],q[8];
cx q[2],q[7];
cx q[1],q[7];
cx q[10],q[9];
swap q[24],q[18];
swap q[37],q[35];
cx q[16],q[0];
cx q[1],q[0];
swap q[37],q[31];
ccx q[16],q[7],q[0];
swap q[31],q[25];
ccx q[1],q[16],q[0];
cx q[1],q[8];
swap q[41],q[27];
swap q[27],q[13];
ccx q[3],q[0],q[8];
swap q[19],q[13];
ccx q[2],q[16],q[4];
ccx q[1],q[3],q[8];
cx q[1],q[9];
ccx q[10],q[8],q[9];
ccx q[1],q[10],q[9];
cx q[3],q[15];
cx q[11],q[9];
swap q[18],q[9];
swap q[31],q[23];
cx q[16],q[4];
cx q[10],q[17];
u1 q[18];
cx q[0],q[15];
cx q[8],q[17];
cx q[24],q[18];
u1 q[18];
swap q[10],q[9];
cx q[10],q[18];
swap q[23],q[16];
u1 q[18];
swap q[5],q[4];
swap q[14],q[7];
swap q[20],q[12];
ccx q[1],q[9],q[17];
swap q[27],q[6];
ccx q[9],q[8],q[17];
ccx q[1],q[3],q[15];
cx q[30],q[18];
cx q[29],q[17];
u1 q[17];
u1 q[18];
cx q[11],q[17];
swap q[8],q[1];
cx q[8],q[22];
u1 q[17];
cx q[25],q[18];
u1 q[18];
cx q[19],q[18];
u1 q[18];
u1 q[18];
ccx q[3],q[0],q[15];
ccx q[9],q[15],q[22];
ccx q[8],q[9],q[22];
swap q[11],q[6];
cx q[15],q[16];
cx q[12],q[17];
u1 q[17];
cx q[38],q[17];
u1 q[17];
ccx q[8],q[9],q[16];
cx q[8],q[7];
ccx q[3],q[5],q[4];
cx q[29],q[22];
cx q[3],q[4];
u1 q[22];
ccx q[23],q[14],q[7];
ccx q[8],q[23],q[7];
swap q[26],q[13];
cx q[25],q[17];
u1 q[17];
cx q[24],q[22];
swap q[7],q[2];
swap q[26],q[10];
u1 q[22];
cx q[30],q[22];
u1 q[22];
swap q[33],q[30];
cx q[2],q[10];
ccx q[8],q[3],q[10];
ccx q[3],q[2],q[10];
cx q[38],q[22];
u1 q[22];
ccx q[9],q[15],q[16];
swap q[30],q[16];
swap q[5],q[3];
swap q[20],q[5];
swap q[21],q[7];
swap q[33],q[20];
swap q[10],q[3];
swap q[12],q[10];
cx q[33],q[41];
swap q[37],q[21];
ccx q[37],q[23],q[31];
ccx q[9],q[4],q[11];
cx q[9],q[11];
cx q[37],q[31];
swap q[21],q[14];
swap q[14],q[7];
swap q[28],q[14];
cx q[9],q[16];
swap q[41],q[27];
ccx q[33],q[12],q[27];
cx q[12],q[27];
cx q[8],q[7];
cx q[23],q[28];
ccx q[37],q[23],q[28];
cx q[37],q[28];
cx q[19],q[17];
swap q[3],q[2];
swap q[40],q[39];
swap q[29],q[28];
u1 q[17];
ccx q[33],q[31],q[32];
cx q[33],q[32];
cx q[33],q[34];
ccx q[9],q[4],q[16];
cx q[25],q[22];
u1 q[22];
ccx q[33],q[31],q[34];
cx q[31],q[34];
cx q[4],q[16];
cx q[43],q[22];
swap q[22],q[10];
swap q[39],q[26];
swap q[32],q[20];
ccx q[9],q[2],q[7];
ccx q[8],q[9],q[7];
cx q[22],q[30];
u1 q[10];
u1 q[30];
cx q[39],q[30];
swap q[45],q[29];
swap q[42],q[37];
swap q[26],q[19];
swap q[11],q[9];
u1 q[30];
cx q[11],q[19];
ccx q[11],q[27],q[19];
cx q[32],q[30];
cx q[27],q[19];
swap q[39],q[33];
cx q[25],q[19];
u1 q[19];
u1 q[30];
cx q[38],q[30];
u1 q[30];
ccx q[39],q[45],q[40];
swap q[16],q[9];
cx q[39],q[40];
swap q[26],q[11];
cx q[39],q[37];
ccx q[39],q[45],q[37];
swap q[35],q[28];
cx q[45],q[37];
swap q[20],q[19];
swap q[11],q[10];
swap q[28],q[22];
swap q[24],q[22];
swap q[45],q[36];
ccx q[26],q[19],q[24];
cx q[26],q[24];
cx q[26],q[13];
swap q[17],q[10];
ccx q[26],q[19],q[13];
ccx q[26],q[34],q[41];
swap q[43],q[28];
swap q[46],q[43];
cx q[19],q[13];
swap q[17],q[16];
swap q[33],q[26];
cx q[16],q[30];
swap q[13],q[4];
swap q[45],q[39];
u1 q[30];
cx q[26],q[17];
u1 q[17];
cx q[16],q[9];
cx q[38],q[24];
u1 q[9];
cx q[28],q[30];
u1 q[30];
u1 q[24];
cx q[33],q[41];
cx q[33],q[39];
ccx q[33],q[34],q[39];
swap q[4],q[1];
cx q[34],q[39];
cx q[22],q[1];
cx q[46],q[41];
u1 q[41];
u1 q[1];
cx q[32],q[39];
u1 q[39];
swap q[19],q[5];
swap q[23],q[14];
ccx q[33],q[40],q[19];
swap q[24],q[23];
cx q[33],q[19];
cx q[6],q[19];
swap q[45],q[44];
swap q[35],q[21];
u1 q[19];
cx q[33],q[24];
swap q[38],q[37];
swap q[43],q[28];
ccx q[33],q[40],q[24];
cx q[40],q[24];
ccx q[33],q[38],q[45];
cx q[33],q[45];
cx q[21],q[24];
cx q[43],q[45];
u1 q[24];
u1 q[45];
