OPENQASM 2.0;
include "qelib1.inc";
qreg q[25];
creg c[25];
cx q[12],q[2];
ccx q[12],q[6],q[2];
cx q[6],q[2];
ccx q[12],q[6],q[7];
cx q[12],q[8];
cx q[6],q[8];
cx q[7],q[1];
ccx q[3],q[2],q[1];
ccx q[3],q[7],q[1];
cx q[3],q[9];
swap q[12],q[1];
cx q[2],q[9];
ccx q[3],q[7],q[9];
ccx q[3],q[2],q[9];
cx q[3],q[8];
u1 q[8];
cx q[3],q[4];
cx q[9],q[19];
swap q[6],q[0];
ccx q[14],q[12],q[19];
ccx q[14],q[9],q[19];
cx q[14],q[6];
cx q[12],q[6];
swap q[21],q[19];
ccx q[3],q[2],q[4];
cx q[2],q[4];
ccx q[14],q[9],q[6];
ccx q[14],q[12],q[6];
cx q[14],q[8];
u1 q[8];
cx q[14],q[18];
cx q[12],q[19];
cx q[6],q[10];
ccx q[14],q[4],q[18];
cx q[4],q[18];
ccx q[3],q[7],q[13];
ccx q[16],q[21],q[10];
u1 q[21];
cx q[13],q[11];
ccx q[16],q[6],q[10];
ccx q[14],q[4],q[19];
ccx q[16],q[21],q[6];
ccx q[16],q[6],q[21];
cx q[16],q[8];
ccx q[14],q[12],q[19];
ccx q[14],q[12],q[11];
ccx q[14],q[13],q[11];
cx q[11],q[15];
cx q[21],q[20];
cx q[19],q[17];
u1 q[8];
swap q[24],q[13];
ccx q[23],q[10],q[20];
u1 q[10];
ccx q[23],q[21],q[20];
ccx q[16],q[18],q[17];
ccx q[16],q[19],q[17];
ccx q[16],q[19],q[15];
ccx q[16],q[11],q[15];
cx q[15],q[22];
ccx q[23],q[10],q[21];
ccx q[23],q[21],q[10];
cx q[23],q[8];
u1 q[8];
cx q[10],q[20];
ccx q[23],q[17],q[22];
ccx q[5],q[20],q[10];
ccx q[14],q[24],q[13];
cx q[5],q[8];
u1 q[8];
ccx q[23],q[15],q[22];
cx q[13],q[11];
ccx q[16],q[11],q[13];
cx q[13],q[15];
ccx q[23],q[15],q[13];
cx q[13],q[22];
ccx q[5],q[22],q[13];