OPENQASM 2.0;
include "qelib1.inc";
qreg q[49];
creg c[49];
cx q[8],q[2];
cx q[30],q[28];
cx q[25],q[19];
cx q[34],q[33];
cx q[3],q[2];
cx q[13],q[5];
swap q[16],q[14];
cx q[27],q[6];
swap q[18],q[12];
cx q[3],q[9];
cx q[0],q[14];
cx q[1],q[14];
u1 q[14];
cx q[11],q[9];
swap q[23],q[22];
cx q[9],q[10];
cx q[1],q[7];
cx q[2],q[7];
u1 q[2];
swap q[10],q[8];
swap q[37],q[31];
swap q[31],q[25];
swap q[36],q[35];
swap q[36],q[31];
cx q[3],q[17];
ccx q[10],q[11],q[8];
swap q[32],q[31];
ccx q[10],q[9],q[8];
swap q[32],q[19];
cx q[10],q[16];
ccx q[0],q[2],q[7];
cx q[11],q[16];
ccx q[10],q[9],q[16];
ccx q[10],q[11],q[16];
cx q[11],q[18];
cx q[16],q[15];
cx q[24],q[18];
ccx q[1],q[8],q[15];
cx q[24],q[17];
ccx q[0],q[7],q[2];
swap q[19],q[11];
ccx q[1],q[16],q[15];
swap q[25],q[19];
cx q[16],q[15];
ccx q[0],q[15],q[16];
u1 q[16];
swap q[9],q[1];
swap q[22],q[15];
ccx q[3],q[18],q[17];
ccx q[24],q[3],q[17];
cx q[17],q[23];
ccx q[10],q[18],q[23];
ccx q[10],q[17],q[23];
cx q[10],q[12];
swap q[23],q[15];
swap q[19],q[18];
swap q[29],q[16];
cx q[24],q[12];
swap q[15],q[8];
ccx q[10],q[17],q[12];
ccx q[10],q[24],q[12];
cx q[12],q[4];
swap q[8],q[2];
ccx q[25],q[24],q[18];
swap q[12],q[5];
swap q[9],q[2];
swap q[22],q[21];
swap q[22],q[15];
ccx q[3],q[18],q[11];
swap q[1],q[0];
cx q[11],q[23];
ccx q[10],q[18],q[23];
ccx q[10],q[11],q[23];
ccx q[2],q[9],q[4];
ccx q[10],q[11],q[16];
cx q[16],q[15];
swap q[3],q[1];
swap q[26],q[25];
swap q[38],q[36];
swap q[31],q[19];
swap q[40],q[34];
ccx q[2],q[5],q[4];
swap q[39],q[26];
cx q[5],q[4];
ccx q[2],q[23],q[15];
swap q[36],q[35];
swap q[40],q[26];
ccx q[2],q[16],q[15];
cx q[16],q[15];
ccx q[3],q[4],q[5];
swap q[45],q[36];
u1 q[5];
ccx q[3],q[15],q[16];
cx q[16],q[28];
u1 q[28];
ccx q[30],q[16],q[37];
cx q[37],q[32];
u1 q[32];
ccx q[38],q[37],q[25];
cx q[25],q[12];
u1 q[12];
ccx q[13],q[25],q[20];
cx q[20],q[6];
u1 q[6];
ccx q[27],q[20],q[19];
cx q[19],q[33];
u1 q[33];
ccx q[26],q[19],q[40];
cx q[45],q[40];
u1 q[40];
u1 q[40];
