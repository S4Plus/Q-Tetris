OPENQASM 2.0;
include "qelib1.inc";
qreg q[49];
creg c[49];
cx q[30],q[28];
cx q[8],q[2];
cx q[25],q[19];
cx q[13],q[5];
cx q[27],q[6];
cx q[34],q[33];
cx q[3],q[2];
cx q[3],q[9];
cx q[0],q[16];
cx q[1],q[16];
swap q[11],q[3];
cx q[1],q[7];
cx q[11],q[17];
u1 q[16];
cx q[2],q[7];
u1 q[2];
cx q[3],q[9];
cx q[9],q[10];
swap q[15],q[14];
swap q[18],q[12];
swap q[23],q[22];
ccx q[8],q[3],q[10];
ccx q[8],q[9],q[10];
cx q[8],q[15];
swap q[16],q[8];
swap q[25],q[12];
swap q[10],q[3];
cx q[10],q[15];
swap q[37],q[30];
swap q[31],q[30];
ccx q[16],q[9],q[15];
swap q[38],q[35];
ccx q[16],q[10],q[15];
cx q[10],q[18];
cx q[24],q[18];
cx q[24],q[17];
ccx q[11],q[18],q[17];
cx q[15],q[14];
ccx q[24],q[11],q[17];
swap q[15],q[14];
cx q[17],q[23];
ccx q[0],q[2],q[7];
swap q[8],q[1];
swap q[23],q[10];
swap q[38],q[32];
ccx q[16],q[18],q[10];
ccx q[16],q[17],q[10];
cx q[16],q[25];
cx q[24],q[25];
ccx q[16],q[17],q[25];
ccx q[16],q[24],q[25];
swap q[25],q[11];
ccx q[0],q[7],q[2];
ccx q[8],q[3],q[15];
cx q[11],q[4];
ccx q[8],q[14],q[15];
swap q[8],q[3];
ccx q[23],q[24],q[31];
ccx q[25],q[31],q[32];
swap q[23],q[22];
cx q[14],q[15];
cx q[32],q[23];
ccx q[3],q[10],q[4];
ccx q[16],q[31],q[23];
ccx q[16],q[32],q[23];
ccx q[16],q[32],q[29];
cx q[29],q[21];
ccx q[0],q[15],q[14];
u1 q[14];
ccx q[3],q[11],q[4];
cx q[11],q[4];
swap q[3],q[0];
swap q[8],q[0];
ccx q[3],q[4],q[11];
u1 q[11];
swap q[29],q[22];
swap q[23],q[21];
swap q[10],q[3];
ccx q[8],q[21],q[23];
swap q[26],q[19];
swap q[39],q[26];
swap q[18],q[12];
swap q[25],q[19];
ccx q[8],q[22],q[23];
cx q[22],q[23];
swap q[5],q[4];
swap q[40],q[38];
swap q[40],q[33];
swap q[40],q[26];
ccx q[10],q[23],q[22];
cx q[22],q[28];
u1 q[28];
ccx q[37],q[22],q[30];
cx q[30],q[39];
ccx q[18],q[30],q[25];
u1 q[39];
swap q[45],q[36];
cx q[25],q[4];
u1 q[4];
ccx q[13],q[25],q[20];
cx q[20],q[6];
u1 q[6];
ccx q[27],q[20],q[33];
cx q[33],q[26];
u1 q[26];
ccx q[34],q[33],q[40];
cx q[45],q[40];
u1 q[40];
u1 q[40];