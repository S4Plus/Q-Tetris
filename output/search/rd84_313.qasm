OPENQASM 2.0;
include "qelib1.inc";
qreg q[36];
creg c[36];
cx q[2],q[14];
swap q[28],q[23];
cx q[7],q[14];
cx q[12],q[14];
u1 q[14];
ccx q[2],q[7],q[0];
cx q[12],q[6];
cx q[2],q[1];
swap q[12],q[0];
cx q[8],q[14];
cx q[8],q[13];
u1 q[14];
swap q[15],q[14];
cx q[14],q[15];
u1 q[15];
cx q[21],q[15];
u1 q[15];
cx q[14],q[20];
cx q[21],q[22];
cx q[16],q[15];
u1 q[15];
cx q[16],q[17];
ccx q[2],q[7],q[1];
cx q[7],q[1];
cx q[1],q[6];
ccx q[0],q[12],q[6];
cx q[12],q[18];
ccx q[0],q[1],q[6];
swap q[18],q[6];
swap q[9],q[2];
swap q[14],q[8];
ccx q[0],q[1],q[6];
ccx q[0],q[12],q[6];
swap q[12],q[6];
swap q[1],q[0];
cx q[12],q[13];
swap q[27],q[15];
cx q[28],q[27];
u1 q[27];
u1 q[27];
swap q[14],q[12];
swap q[25],q[24];
swap q[26],q[25];
swap q[2],q[0];
ccx q[12],q[18],q[13];
cx q[18],q[19];
swap q[15],q[10];
swap q[6],q[0];
swap q[15],q[8];
ccx q[12],q[14],q[13];
ccx q[12],q[14],q[19];
cx q[14],q[26];
ccx q[1],q[0],q[6];
swap q[15],q[14];
cx q[1],q[3];
ccx q[1],q[2],q[3];
cx q[2],q[3];
ccx q[12],q[18],q[19];
cx q[19],q[20];
swap q[8],q[1];
swap q[19],q[13];
swap q[10],q[8];
swap q[12],q[0];
swap q[22],q[21];
swap q[27],q[22];
swap q[4],q[3];
ccx q[14],q[19],q[20];
ccx q[0],q[6],q[1];
ccx q[14],q[13],q[20];
cx q[19],q[13];
swap q[1],q[0];
cx q[1],q[3];
ccx q[14],q[13],q[19];
cx q[14],q[8];
swap q[27],q[26];
swap q[22],q[17];
cx q[19],q[21];
swap q[2],q[1];
ccx q[2],q[4],q[3];
cx q[4],q[3];
cx q[3],q[8];
ccx q[26],q[20],q[21];
ccx q[26],q[19],q[21];
cx q[20],q[19];
ccx q[26],q[19],q[20];
cx q[26],q[33];
swap q[14],q[7];
swap q[3],q[2];
swap q[8],q[6];
swap q[11],q[10];
swap q[27],q[20];
cx q[27],q[22];
ccx q[7],q[0],q[6];
ccx q[16],q[21],q[22];
swap q[1],q[0];
swap q[9],q[3];
swap q[4],q[3];
swap q[6],q[1];
swap q[20],q[14];
swap q[14],q[8];
swap q[25],q[18];
swap q[24],q[19];
swap q[18],q[6];
ccx q[7],q[2],q[1];
swap q[2],q[0];
swap q[28],q[27];
ccx q[16],q[28],q[22];
cx q[21],q[28];
ccx q[16],q[28],q[21];
u1 q[21];
cx q[16],q[23];
ccx q[27],q[21],q[22];
ccx q[27],q[22],q[21];
u1 q[21];
swap q[18],q[12];
swap q[19],q[13];
ccx q[9],q[3],q[8];
swap q[33],q[26];
swap q[19],q[12];
ccx q[9],q[15],q[8];
cx q[8],q[6];
cx q[14],q[15];
ccx q[7],q[0],q[6];
swap q[16],q[10];
ccx q[7],q[8],q[6];
swap q[26],q[24];
swap q[21],q[19];
cx q[21],q[16];
swap q[8],q[7];
swap q[18],q[6];
cx q[18],q[24];
ccx q[9],q[15],q[14];
cx q[14],q[13];
swap q[33],q[26];
swap q[6],q[1];
swap q[12],q[6];
swap q[16],q[9];
swap q[21],q[15];
swap q[10],q[5];
swap q[26],q[19];
swap q[32],q[25];
ccx q[19],q[12],q[24];
swap q[15],q[9];
ccx q[19],q[18],q[24];
ccx q[8],q[7],q[13];
ccx q[8],q[14],q[13];
swap q[15],q[14];
ccx q[8],q[15],q[14];
swap q[28],q[23];
swap q[28],q[27];
swap q[17],q[5];
swap q[26],q[24];
swap q[29],q[17];
swap q[29],q[28];
swap q[28],q[26];
cx q[13],q[25];
swap q[34],q[22];
ccx q[19],q[18],q[25];
ccx q[19],q[13],q[25];
swap q[15],q[10];
cx q[25],q[27];
ccx q[8],q[9],q[14];
ccx q[26],q[28],q[27];
ccx q[26],q[25],q[27];
cx q[14],q[13];
ccx q[19],q[13],q[14];
swap q[19],q[14];
swap q[22],q[21];
swap q[26],q[19];
cx q[26],q[25];
ccx q[8],q[9],q[15];
ccx q[14],q[15],q[21];
swap q[23],q[17];
swap q[29],q[28];
swap q[23],q[22];
ccx q[19],q[25],q[26];
u1 q[26];
swap q[20],q[19];
swap q[35],q[34];
ccx q[20],q[21],q[22];
ccx q[28],q[26],q[27];
ccx q[28],q[27],q[26];
u1 q[26];
ccx q[28],q[22],q[34];