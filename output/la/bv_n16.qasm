OPENQASM 2.0;
include "qelib1.inc";
qreg q5[16];
h q5[0];
h q5[1];
h q5[4];
h q5[2];
h q5[6];
h q5[7];
h q5[8];
h q5[9];
h q5[10];
h q5[13];
h q5[3];
h q5[11];
h q5[12];
h q5[14];
h q5[15];
x q5[5];
h q5[5];
cx q5[0],q5[5];
h q5[0];
cx q5[1],q5[5];
h q5[1];
cx q5[4],q5[5];
h q5[4];
cx q5[2],q5[5];
h q5[2];
cx q5[6],q5[5];
h q5[6];
cx q5[7],q5[5];
h q5[7];
cx q5[8],q5[5];
h q5[8];
cx q5[9],q5[5];
h q5[9];
cx q5[10],q5[5];
h q5[10];
cx q5[13],q5[5];
h q5[13];
swap q5[3],q5[6];
cx q5[6],q5[5];
h q5[6];
swap q5[11],q5[9];
cx q5[9],q5[5];
h q5[9];
swap q5[12],q5[13];
cx q5[13],q5[5];
h q5[13];
swap q5[14],q5[10];
cx q5[10],q5[5];
h q5[10];
swap q5[15],q5[7];
cx q5[7],q5[5];
h q5[7];