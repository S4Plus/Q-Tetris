OPENQASM 2.0;
include "qelib1.inc";
qreg q7[16];
x q7[10];
t q7[9];
x q7[8];
x q7[7];
x q7[11];
x q7[13];
x q7[12];
x q7[3];
t q7[6];
x q7[2];
x q7[4];
x q7[1];
cx q7[5],q7[0];
h q7[10];
t q7[8];
h q7[7];
h q7[11];
h q7[13];
h q7[12];
h q7[3];
h q7[2];
t q7[4];
t q7[1];
x q7[5];
h q7[0];
t q7[10];
t q7[7];
t q7[11];
t q7[13];
t q7[12];
t q7[3];
t q7[2];
t q7[5];
t q7[0];
cx q7[9],q7[8];
cx q7[4],q7[6];
cx q7[1],q7[5];
cx q7[2],q7[1];
tdg q7[1];
cx q7[5],q7[2];
t q7[2];
cx q7[5],q7[1];
tdg q7[5];
tdg q7[1];
cx q7[2],q7[1];
cx q7[5],q7[2];
h q7[2];
cx q7[1],q7[5];
h q7[2];
t q7[5];
h q7[1];
t q7[2];
t q7[1];
cx q7[1],q7[4];
tdg q7[4];
cx q7[6],q7[1];
t q7[1];
cx q7[6],q7[4];
tdg q7[6];
tdg q7[4];
cx q7[1],q7[4];
cx q7[6],q7[1];
h q7[1];
cx q7[4],q7[6];
h q7[1];
t q7[6];
h q7[4];
t q7[1];
t q7[4];
cx q7[4],q7[9];
tdg q7[9];
cx q7[8],q7[4];
t q7[4];
cx q7[8],q7[9];
tdg q7[9];
tdg q7[8];
cx q7[4],q7[9];
cx q7[8],q7[4];
h q7[4];
cx q7[9],q7[8];
t q7[4];
t q7[8];
t q7[9];
cx q7[4],q7[6];
cx q7[1],q7[4];
cx q7[9],q7[8];
tdg q7[4];
cx q7[6],q7[1];
t q7[1];
cx q7[6],q7[4];
tdg q7[6];
tdg q7[4];
cx q7[1],q7[4];
cx q7[6],q7[1];
h q7[1];
cx q7[4],q7[6];
t q7[1];
t q7[4];
t q7[6];
cx q7[1],q7[5];
cx q7[2],q7[1];
tdg q7[1];
cx q7[4],q7[6];
cx q7[5],q7[2];
t q7[2];
cx q7[5],q7[1];
tdg q7[5];
tdg q7[1];
cx q7[2],q7[1];
cx q7[5],q7[2];
h q7[2];
cx q7[1],q7[5];
h q7[2];
t q7[5];
h q7[1];
t q7[2];
t q7[1];
cx q7[1],q7[4];
tdg q7[4];
cx q7[6],q7[1];
t q7[1];
cx q7[6],q7[4];
tdg q7[6];
tdg q7[4];
cx q7[1],q7[4];
cx q7[6],q7[1];
h q7[1];
cx q7[4],q7[6];
h q7[1];
h q7[4];
t q7[6];
t q7[1];
t q7[4];
cx q7[4],q7[9];
tdg q7[9];
cx q7[8],q7[4];
t q7[4];
cx q7[8],q7[9];
tdg q7[9];
tdg q7[8];
cx q7[4],q7[9];
cx q7[8],q7[4];
h q7[4];
cx q7[9],q7[8];
t q7[4];
t q7[9];
t q7[8];
cx q7[4],q7[6];
cx q7[1],q7[4];
cx q7[9],q7[8];
tdg q7[4];
cx q7[6],q7[1];
t q7[1];
cx q7[6],q7[4];
tdg q7[6];
tdg q7[4];
cx q7[1],q7[4];
cx q7[6],q7[1];
h q7[1];
cx q7[4],q7[6];
t q7[1];
t q7[4];
t q7[6];
cx q7[1],q7[5];
cx q7[3],q7[1];
tdg q7[1];
cx q7[4],q7[6];
swap q7[5],q7[6];
cx q7[6],q7[3];
t q7[3];
cx q7[6],q7[1];
tdg q7[6];
tdg q7[1];
cx q7[3],q7[1];
cx q7[6],q7[3];
h q7[3];
cx q7[1],q7[6];
h q7[3];
t q7[6];
h q7[1];
t q7[3];
t q7[1];
cx q7[1],q7[4];
tdg q7[4];
cx q7[5],q7[1];
t q7[1];
cx q7[5],q7[4];
tdg q7[5];
tdg q7[4];
cx q7[1],q7[4];
cx q7[5],q7[1];
h q7[1];
cx q7[4],q7[5];
h q7[1];
h q7[4];
t q7[5];
t q7[1];
t q7[4];
cx q7[4],q7[9];
tdg q7[9];
cx q7[8],q7[4];
t q7[4];
cx q7[8],q7[9];
tdg q7[9];
tdg q7[8];
cx q7[4],q7[9];
cx q7[8],q7[4];
h q7[4];
cx q7[9],q7[8];
t q7[4];
t q7[9];
t q7[8];
cx q7[4],q7[5];
cx q7[9],q7[8];
cx q7[1],q7[4];
tdg q7[4];
cx q7[5],q7[1];
t q7[1];
cx q7[5],q7[4];
tdg q7[5];
tdg q7[4];
cx q7[1],q7[4];
cx q7[5],q7[1];
h q7[1];
cx q7[4],q7[5];
t q7[1];
t q7[4];
t q7[5];
cx q7[1],q7[6];
cx q7[4],q7[5];
cx q7[3],q7[1];
tdg q7[1];
cx q7[6],q7[3];
t q7[3];
cx q7[6],q7[1];
tdg q7[6];
tdg q7[1];
cx q7[3],q7[1];
cx q7[6],q7[3];
h q7[3];
cx q7[1],q7[6];
h q7[3];
t q7[6];
h q7[1];
t q7[3];
t q7[1];
cx q7[1],q7[4];
tdg q7[4];
cx q7[5],q7[1];
t q7[1];
cx q7[5],q7[4];
tdg q7[5];
tdg q7[4];
cx q7[1],q7[4];
cx q7[5],q7[1];
h q7[1];
cx q7[4],q7[5];
h q7[1];
h q7[4];
t q7[5];
t q7[1];
t q7[4];
cx q7[4],q7[9];
tdg q7[9];
cx q7[8],q7[4];
t q7[4];
cx q7[8],q7[9];
tdg q7[9];
tdg q7[8];
cx q7[4],q7[9];
cx q7[8],q7[4];
h q7[4];
cx q7[9],q7[8];
t q7[4];
t q7[9];
t q7[8];
cx q7[4],q7[5];
cx q7[9],q7[8];
cx q7[1],q7[4];
tdg q7[4];
cx q7[5],q7[1];
t q7[1];
cx q7[5],q7[4];
tdg q7[5];
tdg q7[4];
cx q7[1],q7[4];
cx q7[5],q7[1];
h q7[1];
cx q7[4],q7[5];
t q7[1];
t q7[4];
t q7[5];
cx q7[1],q7[6];
cx q7[4],q7[5];
swap q7[11],q7[9];
cx q7[9],q7[1];
tdg q7[1];
cx q7[6],q7[9];
t q7[9];
cx q7[6],q7[1];
tdg q7[6];
tdg q7[1];
cx q7[9],q7[1];
cx q7[6],q7[9];
h q7[9];
cx q7[1],q7[6];
h q7[9];
t q7[6];
h q7[1];
t q7[9];
t q7[1];
cx q7[1],q7[4];
tdg q7[4];
cx q7[5],q7[1];
t q7[1];
cx q7[5],q7[4];
tdg q7[5];
tdg q7[4];
cx q7[1],q7[4];
cx q7[5],q7[1];
h q7[1];
cx q7[4],q7[5];
h q7[1];
h q7[4];
t q7[5];
t q7[1];
t q7[4];
swap q7[4],q7[9];
cx q7[9],q7[11];
tdg q7[11];
cx q7[8],q7[9];
t q7[9];
swap q7[11],q7[10];
cx q7[8],q7[10];
tdg q7[10];
tdg q7[8];
cx q7[9],q7[10];
cx q7[8],q7[9];
h q7[9];
t q7[9];
cx q7[9],q7[5];
cx q7[1],q7[9];
tdg q7[9];
cx q7[5],q7[1];
t q7[1];
cx q7[10],q7[8];
t q7[10];
t q7[8];
cx q7[5],q7[9];
tdg q7[5];
tdg q7[9];
cx q7[1],q7[9];
cx q7[10],q7[8];
cx q7[5],q7[1];
h q7[1];
cx q7[9],q7[5];
t q7[1];
t q7[9];
t q7[5];
cx q7[1],q7[6];
cx q7[9],q7[5];
cx q7[4],q7[1];
tdg q7[1];
cx q7[6],q7[4];
t q7[4];
cx q7[6],q7[1];
tdg q7[6];
tdg q7[1];
cx q7[4],q7[1];
cx q7[6],q7[4];
h q7[4];
cx q7[1],q7[6];
t q7[6];
h q7[1];
t q7[1];
cx q7[1],q7[9];
tdg q7[9];
cx q7[5],q7[1];
t q7[1];
cx q7[5],q7[9];
tdg q7[9];
tdg q7[5];
cx q7[1],q7[9];
cx q7[5],q7[1];
h q7[1];
cx q7[9],q7[5];
h q7[1];
t q7[5];
h q7[9];
t q7[1];
t q7[9];
cx q7[9],q7[10];
tdg q7[10];
cx q7[8],q7[9];
t q7[9];
cx q7[8],q7[10];
tdg q7[10];
tdg q7[8];
cx q7[9],q7[10];
cx q7[8],q7[9];
h q7[9];
t q7[9];
cx q7[9],q7[5];
cx q7[1],q7[9];
tdg q7[9];
cx q7[5],q7[1];
t q7[1];
cx q7[10],q7[8];
t q7[10];
t q7[8];
cx q7[5],q7[9];
tdg q7[9];
tdg q7[5];
cx q7[1],q7[9];
cx q7[10],q7[8];
cx q7[5],q7[1];
h q7[1];
cx q7[9],q7[5];
t q7[1];
t q7[5];
t q7[9];
cx q7[1],q7[6];
cx q7[9],q7[5];
cx q7[0],q7[1];
tdg q7[1];
swap q7[6],q7[4];
cx q7[4],q7[0];
t q7[0];
cx q7[4],q7[1];
tdg q7[4];
tdg q7[1];
cx q7[0],q7[1];
cx q7[4],q7[0];
h q7[0];
cx q7[1],q7[4];
h q7[0];
t q7[4];
h q7[1];
t q7[0];
t q7[1];
cx q7[1],q7[9];
tdg q7[9];
cx q7[5],q7[1];
t q7[1];
cx q7[5],q7[9];
tdg q7[9];
tdg q7[5];
cx q7[1],q7[9];
cx q7[5],q7[1];
h q7[1];
cx q7[9],q7[5];
h q7[1];
t q7[5];
h q7[9];
t q7[1];
t q7[9];
cx q7[9],q7[10];
tdg q7[10];
cx q7[8],q7[9];
t q7[9];
cx q7[8],q7[10];
tdg q7[10];
tdg q7[8];
cx q7[9],q7[10];
cx q7[8],q7[9];
h q7[9];
t q7[9];
cx q7[9],q7[5];
cx q7[1],q7[9];
tdg q7[9];
cx q7[5],q7[1];
t q7[1];
cx q7[10],q7[8];
t q7[10];
t q7[8];
cx q7[5],q7[9];
tdg q7[9];
tdg q7[5];
cx q7[1],q7[9];
cx q7[10],q7[8];
cx q7[5],q7[1];
h q7[1];
cx q7[9],q7[5];
t q7[1];
t q7[5];
t q7[9];
cx q7[1],q7[4];
cx q7[9],q7[5];
cx q7[0],q7[1];
tdg q7[1];
cx q7[4],q7[0];
t q7[0];
cx q7[4],q7[1];
tdg q7[4];
tdg q7[1];
cx q7[0],q7[1];
cx q7[4],q7[0];
h q7[0];
cx q7[1],q7[4];
h q7[0];
t q7[4];
h q7[1];
t q7[0];
t q7[1];
cx q7[1],q7[9];
tdg q7[9];
cx q7[5],q7[1];
t q7[1];
cx q7[5],q7[9];
tdg q7[9];
tdg q7[5];
cx q7[1],q7[9];
cx q7[5],q7[1];
h q7[1];
cx q7[9],q7[5];
h q7[1];
t q7[5];
h q7[9];
t q7[1];
t q7[9];
cx q7[9],q7[10];
tdg q7[10];
cx q7[8],q7[9];
t q7[9];
cx q7[8],q7[10];
tdg q7[10];
tdg q7[8];
cx q7[9],q7[10];
cx q7[8],q7[9];
h q7[9];
t q7[9];
cx q7[9],q7[5];
cx q7[1],q7[9];
tdg q7[9];
cx q7[5],q7[1];
t q7[1];
cx q7[10],q7[8];
t q7[10];
t q7[8];
cx q7[5],q7[9];
tdg q7[9];
tdg q7[5];
cx q7[1],q7[9];
cx q7[10],q7[8];
cx q7[5],q7[1];
h q7[1];
cx q7[9],q7[5];
t q7[1];
t q7[5];
t q7[9];
cx q7[5],q7[4];
cx q7[2],q7[5];
tdg q7[5];
swap q7[2],q7[6];
cx q7[4],q7[6];
t q7[6];
cx q7[4],q7[5];
tdg q7[4];
tdg q7[5];
cx q7[6],q7[5];
cx q7[4],q7[6];
h q7[6];
cx q7[5],q7[4];
h q7[6];
t q7[4];
h q7[5];
t q7[6];
t q7[5];
cx q7[5],q7[10];
tdg q7[10];
cx q7[8],q7[5];
t q7[5];
cx q7[8],q7[10];
tdg q7[10];
tdg q7[8];
cx q7[5],q7[10];
cx q7[8],q7[5];
h q7[5];
cx q7[10],q7[8];
t q7[5];
t q7[10];
t q7[8];
cx q7[5],q7[4];
cx q7[6],q7[5];
tdg q7[5];
cx q7[10],q7[8];
cx q7[4],q7[6];
t q7[6];
cx q7[4],q7[5];
tdg q7[4];
tdg q7[5];
cx q7[6],q7[5];
cx q7[4],q7[6];
h q7[6];
cx q7[5],q7[4];
t q7[6];
t q7[4];
h q7[5];
t q7[5];
cx q7[5],q7[10];
tdg q7[10];
cx q7[8],q7[5];
t q7[5];
cx q7[8],q7[10];
tdg q7[10];
tdg q7[8];
cx q7[5],q7[10];
cx q7[8],q7[5];
h q7[5];
cx q7[10],q7[8];
t q7[5];
t q7[10];
t q7[8];
cx q7[5],q7[4];
cx q7[10],q7[8];
swap q7[3],q7[2];
cx q7[2],q7[5];
tdg q7[5];
swap q7[2],q7[6];
cx q7[4],q7[6];
t q7[6];
cx q7[4],q7[5];
tdg q7[4];
tdg q7[5];
cx q7[6],q7[5];
cx q7[4],q7[6];
h q7[6];
cx q7[5],q7[4];
h q7[6];
t q7[4];
h q7[5];
t q7[6];
t q7[5];
cx q7[5],q7[10];
tdg q7[10];
cx q7[8],q7[5];
t q7[5];
cx q7[8],q7[10];
tdg q7[8];
tdg q7[10];
cx q7[5],q7[10];
cx q7[8],q7[5];
h q7[5];
cx q7[10],q7[8];
t q7[5];
t q7[10];
t q7[8];
cx q7[5],q7[4];
cx q7[6],q7[5];
tdg q7[5];
cx q7[10],q7[8];
cx q7[4],q7[6];
t q7[6];
cx q7[4],q7[5];
tdg q7[4];
tdg q7[5];
cx q7[6],q7[5];
cx q7[4],q7[6];
h q7[6];
cx q7[5],q7[4];
h q7[6];
t q7[4];
h q7[5];
t q7[6];
t q7[5];
cx q7[1],q7[4];
cx q7[5],q7[10];
swap q7[12],q7[9];
tdg q7[10];
cx q7[8],q7[5];
t q7[5];
cx q7[8],q7[10];
tdg q7[8];
tdg q7[10];
cx q7[9],q7[1];
tdg q7[1];
cx q7[5],q7[10];
cx q7[4],q7[9];
t q7[9];
cx q7[8],q7[5];
cx q7[4],q7[1];
h q7[5];
tdg q7[4];
tdg q7[1];
t q7[5];
cx q7[10],q7[8];
x q7[10];
t q7[8];
swap q7[12],q7[9];
t q7[10];
cx q7[9],q7[5];
swap q7[1],q7[4];
cx q7[12],q7[4];
cx q7[10],q7[8];
swap q7[1],q7[5];
swap q7[5],q7[8];
cx q7[8],q7[12];
h q7[12];
cx q7[4],q7[8];
h q7[12];
t q7[8];
h q7[4];
t q7[12];
t q7[4];
cx q7[4],q7[9];
tdg q7[9];
cx q7[1],q7[4];
t q7[4];
cx q7[1],q7[9];
tdg q7[9];
tdg q7[1];
cx q7[4],q7[9];
cx q7[1],q7[4];
h q7[4];
cx q7[9],q7[1];
h q7[4];
t q7[1];
h q7[9];
t q7[4];
t q7[9];
cx q7[9],q7[10];
tdg q7[10];
cx q7[5],q7[9];
t q7[9];
cx q7[5],q7[10];
tdg q7[10];
tdg q7[5];
cx q7[9],q7[10];
cx q7[5],q7[9];
h q7[9];
cx q7[10],q7[5];
t q7[9];
t q7[10];
t q7[5];
cx q7[9],q7[1];
cx q7[4],q7[9];
cx q7[10],q7[5];
tdg q7[9];
cx q7[1],q7[4];
t q7[4];
cx q7[1],q7[9];
tdg q7[9];
tdg q7[1];
cx q7[4],q7[9];
cx q7[1],q7[4];
h q7[4];
cx q7[9],q7[1];
t q7[4];
t q7[1];
t q7[9];
cx q7[4],q7[8];
cx q7[12],q7[4];
tdg q7[4];
cx q7[9],q7[1];
cx q7[8],q7[12];
t q7[12];
cx q7[8],q7[4];
tdg q7[8];
tdg q7[4];
cx q7[12],q7[4];
cx q7[8],q7[12];
h q7[12];
cx q7[4],q7[8];
t q7[8];
h q7[4];
t q7[4];
cx q7[4],q7[9];
tdg q7[9];
cx q7[1],q7[4];
t q7[4];
cx q7[1],q7[9];
tdg q7[1];
tdg q7[9];
cx q7[4],q7[9];
cx q7[1],q7[4];
h q7[4];
cx q7[9],q7[1];
h q7[4];
t q7[1];
h q7[9];
t q7[4];
t q7[9];
cx q7[9],q7[10];
tdg q7[10];
cx q7[5],q7[9];
t q7[9];
cx q7[5],q7[10];
tdg q7[10];
tdg q7[5];
cx q7[9],q7[10];
cx q7[5],q7[9];
h q7[9];
cx q7[10],q7[5];
t q7[9];
t q7[10];
t q7[5];
cx q7[9],q7[1];
cx q7[4],q7[9];
cx q7[10],q7[5];
tdg q7[9];
cx q7[1],q7[4];
t q7[4];
cx q7[1],q7[9];
tdg q7[1];
tdg q7[9];
cx q7[4],q7[9];
cx q7[1],q7[4];
h q7[4];
cx q7[9],q7[1];
t q7[4];
t q7[1];
t q7[9];
cx q7[4],q7[8];
cx q7[9],q7[1];
swap q7[13],q7[5];
cx q7[5],q7[4];
tdg q7[4];
cx q7[8],q7[5];
t q7[5];
cx q7[8],q7[4];
tdg q7[8];
tdg q7[4];
cx q7[5],q7[4];
cx q7[8],q7[5];
h q7[5];
cx q7[4],q7[8];
h q7[5];
t q7[8];
h q7[4];
t q7[5];
t q7[4];
cx q7[4],q7[9];
tdg q7[9];
cx q7[1],q7[4];
t q7[4];
cx q7[1],q7[9];
tdg q7[1];
tdg q7[9];
cx q7[4],q7[9];
cx q7[1],q7[4];
h q7[4];
cx q7[9],q7[1];
h q7[4];
t q7[1];
h q7[9];
t q7[4];
t q7[9];
cx q7[9],q7[10];
tdg q7[10];
cx q7[13],q7[9];
t q7[9];
cx q7[13],q7[10];
tdg q7[10];
tdg q7[13];
cx q7[9],q7[10];
cx q7[13],q7[9];
h q7[9];
cx q7[10],q7[13];
t q7[9];
t q7[10];
t q7[13];
cx q7[9],q7[1];
cx q7[4],q7[9];
cx q7[10],q7[13];
tdg q7[9];
cx q7[1],q7[4];
t q7[4];
cx q7[1],q7[9];
tdg q7[1];
tdg q7[9];
cx q7[4],q7[9];
cx q7[1],q7[4];
h q7[4];
cx q7[9],q7[1];
t q7[4];
t q7[1];
t q7[9];
cx q7[4],q7[8];
cx q7[5],q7[4];
tdg q7[4];
cx q7[9],q7[1];
cx q7[8],q7[5];
t q7[5];
cx q7[8],q7[4];
tdg q7[8];
tdg q7[4];
cx q7[5],q7[4];
cx q7[8],q7[5];
h q7[5];
cx q7[4],q7[8];
h q7[5];
t q7[8];
h q7[4];
t q7[5];
t q7[4];
cx q7[4],q7[9];
tdg q7[9];
cx q7[1],q7[4];
t q7[4];
cx q7[1],q7[9];
tdg q7[1];
tdg q7[9];
cx q7[4],q7[9];
cx q7[1],q7[4];
h q7[4];
cx q7[9],q7[1];
h q7[4];
t q7[1];
h q7[9];
t q7[4];
t q7[9];
cx q7[9],q7[10];
tdg q7[10];
cx q7[13],q7[9];
t q7[9];
cx q7[13],q7[10];
tdg q7[10];
tdg q7[13];
cx q7[9],q7[10];
cx q7[13],q7[9];
h q7[9];
cx q7[10],q7[13];
t q7[9];
t q7[10];
t q7[13];
cx q7[13],q7[8];
cx q7[5],q7[13];
tdg q7[13];
cx q7[8],q7[5];
t q7[5];
cx q7[8],q7[13];
tdg q7[13];
tdg q7[8];
cx q7[9],q7[1];
cx q7[4],q7[9];
tdg q7[9];
cx q7[1],q7[4];
t q7[4];
cx q7[1],q7[9];
tdg q7[1];
tdg q7[9];
cx q7[5],q7[13];
cx q7[8],q7[5];
cx q7[4],q7[9];
h q7[5];
cx q7[1],q7[4];
cx q7[13],q7[8];
h q7[5];
h q7[4];
t q7[8];
h q7[13];
t q7[5];
h q7[4];
t q7[13];
t q7[4];
cx q7[9],q7[1];
t q7[1];
t q7[9];
swap q7[1],q7[9];
cx q7[9],q7[10];
cx q7[13],q7[9];
tdg q7[9];
cx q7[10],q7[13];
t q7[13];
cx q7[10],q7[9];
tdg q7[9];
tdg q7[10];
cx q7[13],q7[9];
cx q7[10],q7[13];
h q7[13];
cx q7[9],q7[10];
t q7[13];
t q7[10];
t q7[9];
cx q7[13],q7[8];
cx q7[9],q7[10];
cx q7[5],q7[13];
tdg q7[13];
cx q7[8],q7[5];
t q7[5];
cx q7[8],q7[13];
tdg q7[8];
tdg q7[13];
cx q7[5],q7[13];
cx q7[8],q7[5];
h q7[5];
cx q7[13],q7[8];
h q7[13];
t q7[8];
t q7[13];
cx q7[13],q7[9];
tdg q7[9];
cx q7[10],q7[13];
t q7[13];
cx q7[10],q7[9];
tdg q7[9];
tdg q7[10];
cx q7[13],q7[9];
cx q7[10],q7[13];
h q7[13];
cx q7[9],q7[10];
t q7[13];
t q7[9];
t q7[10];
cx q7[13],q7[8];
cx q7[9],q7[10];
swap q7[0],q7[5];
cx q7[5],q7[13];
tdg q7[13];
cx q7[8],q7[5];
t q7[5];
cx q7[8],q7[13];
tdg q7[8];
tdg q7[13];
cx q7[5],q7[13];
cx q7[8],q7[5];
h q7[5];
cx q7[13],q7[8];
h q7[5];
t q7[8];
h q7[13];
t q7[5];
t q7[13];
cx q7[13],q7[9];
tdg q7[9];
cx q7[10],q7[13];
t q7[13];
cx q7[10],q7[9];
tdg q7[9];
tdg q7[10];
cx q7[13],q7[9];
cx q7[10],q7[13];
h q7[13];
cx q7[9],q7[10];
t q7[13];
t q7[9];
t q7[10];
cx q7[13],q7[8];
cx q7[9],q7[10];
cx q7[5],q7[13];
tdg q7[13];
cx q7[8],q7[5];
t q7[5];
cx q7[8],q7[13];
tdg q7[8];
tdg q7[13];
cx q7[5],q7[13];
cx q7[8],q7[5];
h q7[5];
cx q7[13],q7[8];
h q7[5];
t q7[8];
h q7[13];
t q7[5];
t q7[13];
swap q7[8],q7[9];
cx q7[1],q7[9];
cx q7[4],q7[1];
cx q7[13],q7[8];
tdg q7[1];
tdg q7[8];
cx q7[9],q7[4];
cx q7[10],q7[13];
t q7[4];
t q7[13];
cx q7[9],q7[1];
tdg q7[9];
tdg q7[1];
cx q7[10],q7[8];
tdg q7[8];
tdg q7[10];
cx q7[4],q7[1];
cx q7[13],q7[8];
cx q7[9],q7[4];
h q7[4];
cx q7[10],q7[13];
h q7[4];
h q7[13];
t q7[4];
t q7[13];
cx q7[1],q7[9];
t q7[9];
h q7[1];
t q7[1];
cx q7[8],q7[10];
x q7[8];
t q7[10];
t q7[8];
cx q7[10],q7[13];
swap q7[2],q7[5];
cx q7[5],q7[8];
cx q7[1],q7[5];
tdg q7[5];
swap q7[8],q7[9];
cx q7[9],q7[1];
t q7[1];
cx q7[9],q7[5];
tdg q7[9];
tdg q7[5];
cx q7[1],q7[5];
cx q7[9],q7[1];
h q7[1];
cx q7[5],q7[9];
h q7[1];
t q7[9];
h q7[5];
t q7[1];
t q7[5];
cx q7[5],q7[10];
tdg q7[10];
cx q7[13],q7[5];
t q7[5];
cx q7[13],q7[10];
tdg q7[13];
tdg q7[10];
cx q7[5],q7[10];
cx q7[13],q7[5];
h q7[5];
cx q7[10],q7[13];
t q7[5];
t q7[10];
t q7[13];
cx q7[5],q7[9];
cx q7[10],q7[13];
cx q7[1],q7[5];
tdg q7[5];
cx q7[9],q7[1];
t q7[1];
cx q7[9],q7[5];
tdg q7[9];
tdg q7[5];
cx q7[1],q7[5];
cx q7[9],q7[1];
h q7[1];
cx q7[5],q7[9];
t q7[1];
t q7[9];
t q7[5];
cx q7[5],q7[9];
swap q7[1],q7[4];
cx q7[4],q7[8];
cx q7[1],q7[4];
tdg q7[4];
swap q7[8],q7[9];
cx q7[9],q7[1];
t q7[1];
cx q7[9],q7[4];
tdg q7[9];
tdg q7[4];
cx q7[1],q7[4];
cx q7[9],q7[1];
h q7[1];
cx q7[4],q7[9];
t q7[1];
t q7[9];
h q7[4];
t q7[4];
cx q7[1],q7[9];
cx q7[4],q7[5];
tdg q7[5];
cx q7[8],q7[4];
t q7[4];
cx q7[8],q7[5];
tdg q7[8];
tdg q7[5];
cx q7[4],q7[5];
cx q7[8],q7[4];
h q7[4];
cx q7[5],q7[8];
h q7[4];
t q7[8];
h q7[5];
t q7[4];
t q7[5];
cx q7[5],q7[10];
tdg q7[10];
cx q7[13],q7[5];
t q7[5];
cx q7[13],q7[10];
tdg q7[13];
tdg q7[10];
cx q7[5],q7[10];
cx q7[13],q7[5];
h q7[5];
cx q7[10],q7[13];
t q7[5];
t q7[10];
t q7[13];
cx q7[5],q7[8];
cx q7[10],q7[13];
cx q7[4],q7[5];
tdg q7[5];
cx q7[8],q7[4];
t q7[4];
cx q7[8],q7[5];
tdg q7[8];
tdg q7[5];
cx q7[4],q7[5];
cx q7[8],q7[4];
h q7[4];
cx q7[5],q7[8];
h q7[4];
t q7[8];
t q7[5];
t q7[4];
cx q7[5],q7[8];
cx q7[4],q7[1];
tdg q7[1];
cx q7[9],q7[4];
t q7[4];
cx q7[9],q7[1];
tdg q7[9];
tdg q7[1];
cx q7[4],q7[1];
cx q7[9],q7[4];
h q7[4];
cx q7[1],q7[9];
h q7[4];
t q7[9];
h q7[1];
t q7[4];
t q7[1];
cx q7[1],q7[5];
tdg q7[5];
swap q7[8],q7[9];
cx q7[9],q7[1];
t q7[1];
cx q7[9],q7[5];
tdg q7[9];
tdg q7[5];
cx q7[1],q7[5];
cx q7[9],q7[1];
h q7[1];
cx q7[5],q7[9];
h q7[1];
t q7[9];
h q7[5];
t q7[1];
t q7[5];
cx q7[5],q7[10];
tdg q7[10];
cx q7[13],q7[5];
t q7[5];
cx q7[13],q7[10];
tdg q7[10];
tdg q7[13];
cx q7[5],q7[10];
cx q7[13],q7[5];
h q7[5];
cx q7[10],q7[13];
t q7[5];
t q7[10];
t q7[13];
cx q7[5],q7[9];
cx q7[10],q7[13];
cx q7[1],q7[5];
tdg q7[5];
cx q7[9],q7[1];
t q7[1];
cx q7[9],q7[5];
tdg q7[9];
tdg q7[5];
cx q7[1],q7[5];
cx q7[9],q7[1];
h q7[1];
cx q7[5],q7[9];
t q7[1];
t q7[9];
t q7[5];
cx q7[5],q7[9];
swap q7[1],q7[4];
cx q7[4],q7[8];
cx q7[1],q7[4];
tdg q7[4];
swap q7[8],q7[9];
cx q7[9],q7[1];
t q7[1];
cx q7[9],q7[4];
tdg q7[9];
tdg q7[4];
cx q7[1],q7[4];
cx q7[9],q7[1];
h q7[1];
cx q7[4],q7[9];
h q7[1];
t q7[9];
h q7[4];
t q7[1];
t q7[4];
cx q7[4],q7[5];
tdg q7[5];
cx q7[8],q7[4];
t q7[4];
cx q7[8],q7[5];
tdg q7[8];
tdg q7[5];
cx q7[4],q7[5];
cx q7[8],q7[4];
h q7[4];
cx q7[5],q7[8];
h q7[4];
t q7[8];
h q7[5];
t q7[4];
t q7[5];
cx q7[5],q7[10];
tdg q7[10];
cx q7[13],q7[5];
t q7[5];
cx q7[13],q7[10];
tdg q7[10];
tdg q7[13];
cx q7[5],q7[10];
cx q7[13],q7[5];
h q7[5];
cx q7[10],q7[13];
t q7[5];
t q7[10];
t q7[13];
cx q7[13],q7[9];
cx q7[5],q7[8];
cx q7[4],q7[5];
swap q7[13],q7[9];
tdg q7[5];
cx q7[8],q7[4];
t q7[4];
cx q7[1],q7[9];
tdg q7[9];
cx q7[8],q7[5];
swap q7[13],q7[10];
tdg q7[8];
tdg q7[5];
swap q7[10],q7[9];
cx q7[4],q7[5];
cx q7[9],q7[1];
t q7[1];
cx q7[9],q7[10];
cx q7[8],q7[4];
tdg q7[9];
tdg q7[10];
h q7[4];
cx q7[5],q7[8];
t q7[4];
t q7[8];
swap q7[1],q7[5];
cx q7[8],q7[13];
cx q7[5],q7[10];
cx q7[9],q7[5];
h q7[5];
cx q7[10],q7[9];
h q7[5];
t q7[9];
h q7[10];
t q7[5];
t q7[10];
cx q7[10],q7[8];
tdg q7[8];
cx q7[13],q7[10];
t q7[10];
cx q7[13],q7[8];
tdg q7[8];
tdg q7[13];
cx q7[10],q7[8];
cx q7[13],q7[10];
h q7[10];
cx q7[8],q7[13];
t q7[10];
t q7[13];
t q7[8];
cx q7[10],q7[9];
cx q7[8],q7[13];
cx q7[5],q7[10];
tdg q7[10];
cx q7[9],q7[5];
t q7[5];
cx q7[9],q7[10];
tdg q7[9];
tdg q7[10];
cx q7[5],q7[10];
cx q7[9],q7[5];
h q7[5];
cx q7[10],q7[9];
t q7[5];
h q7[10];
t q7[9];
t q7[10];
cx q7[10],q7[8];
tdg q7[8];
cx q7[13],q7[10];
t q7[10];
cx q7[13],q7[8];
tdg q7[8];
tdg q7[13];
cx q7[10],q7[8];
cx q7[13],q7[10];
h q7[10];
cx q7[8],q7[13];
t q7[10];
t q7[8];
t q7[13];
cx q7[10],q7[9];
cx q7[8],q7[13];
cx q7[6],q7[10];
tdg q7[10];
cx q7[9],q7[6];
t q7[6];
cx q7[9],q7[10];
tdg q7[9];
tdg q7[10];
cx q7[6],q7[10];
cx q7[9],q7[6];
h q7[6];
cx q7[10],q7[9];
h q7[6];
t q7[9];
h q7[10];
t q7[6];
t q7[10];
cx q7[10],q7[8];
tdg q7[8];
cx q7[13],q7[10];
t q7[10];
cx q7[13],q7[8];
tdg q7[8];
tdg q7[13];
cx q7[10],q7[8];
cx q7[13],q7[10];
h q7[10];
cx q7[8],q7[13];
t q7[10];
t q7[8];
t q7[13];
cx q7[10],q7[9];
cx q7[8],q7[13];
cx q7[6],q7[10];
tdg q7[10];
cx q7[9],q7[6];
t q7[6];
cx q7[9],q7[10];
tdg q7[9];
tdg q7[10];
cx q7[6],q7[10];
cx q7[9],q7[6];
h q7[6];
cx q7[10],q7[9];
h q7[6];
x q7[9];
h q7[10];
t q7[6];
t q7[9];
t q7[10];
cx q7[4],q7[9];
cx q7[10],q7[8];
tdg q7[8];
cx q7[13],q7[10];
swap q7[4],q7[9];
t q7[10];
cx q7[13],q7[8];
tdg q7[8];
tdg q7[13];
cx q7[11],q7[9];
tdg q7[9];
swap q7[4],q7[6];
cx q7[10],q7[8];
cx q7[13],q7[10];
cx q7[6],q7[11];
h q7[10];
t q7[11];
cx q7[6],q7[9];
cx q7[8],q7[13];
t q7[10];
tdg q7[6];
tdg q7[9];
t q7[8];
t q7[13];
cx q7[5],q7[8];
cx q7[13],q7[10];
cx q7[11],q7[9];
cx q7[6],q7[11];
h q7[11];
cx q7[9],q7[6];
h q7[11];
t q7[6];
h q7[9];
t q7[11];
t q7[9];
cx q7[9],q7[5];
tdg q7[5];
cx q7[8],q7[9];
t q7[9];
cx q7[8],q7[5];
tdg q7[8];
tdg q7[5];
cx q7[9],q7[5];
cx q7[8],q7[9];
h q7[9];
cx q7[5],q7[8];
h q7[9];
t q7[8];
h q7[5];
t q7[9];
t q7[5];
cx q7[5],q7[13];
tdg q7[13];
cx q7[10],q7[5];
t q7[5];
cx q7[10],q7[13];
tdg q7[13];
tdg q7[10];
cx q7[5],q7[13];
cx q7[10],q7[5];
h q7[5];
cx q7[13],q7[10];
t q7[5];
t q7[10];
t q7[13];
cx q7[5],q7[8];
cx q7[13],q7[10];
cx q7[9],q7[5];
tdg q7[5];
cx q7[8],q7[9];
t q7[9];
cx q7[8],q7[5];
tdg q7[8];
tdg q7[5];
cx q7[9],q7[5];
cx q7[8],q7[9];
h q7[9];
cx q7[5],q7[8];
t q7[9];
t q7[8];
t q7[5];
cx q7[9],q7[6];
cx q7[5],q7[8];
cx q7[11],q7[9];
tdg q7[9];
cx q7[6],q7[11];
t q7[11];
cx q7[6],q7[9];
tdg q7[6];
tdg q7[9];
cx q7[11],q7[9];
cx q7[6],q7[11];
h q7[11];
cx q7[9],q7[6];
h q7[11];
t q7[6];
h q7[9];
t q7[11];
t q7[9];
cx q7[9],q7[5];
tdg q7[5];
cx q7[8],q7[9];
t q7[9];
cx q7[8],q7[5];
tdg q7[8];
tdg q7[5];
cx q7[9],q7[5];
cx q7[8],q7[9];
h q7[9];
cx q7[5],q7[8];
h q7[9];
t q7[8];
h q7[5];
t q7[9];
t q7[5];
cx q7[5],q7[13];
tdg q7[13];
cx q7[10],q7[5];
t q7[5];
cx q7[10],q7[13];
tdg q7[13];
tdg q7[10];
cx q7[5],q7[13];
cx q7[10],q7[5];
h q7[5];
cx q7[13],q7[10];
t q7[5];
t q7[10];
t q7[13];
cx q7[5],q7[8];
cx q7[13],q7[10];
cx q7[9],q7[5];
tdg q7[5];
cx q7[8],q7[9];
t q7[9];
cx q7[8],q7[5];
tdg q7[8];
tdg q7[5];
cx q7[9],q7[5];
cx q7[8],q7[9];
h q7[9];
cx q7[5],q7[8];
t q7[9];
t q7[8];
t q7[5];
cx q7[9],q7[6];
cx q7[5],q7[8];
swap q7[7],q7[10];
cx q7[10],q7[9];
tdg q7[9];
cx q7[6],q7[10];
t q7[10];
cx q7[6],q7[9];
tdg q7[6];
tdg q7[9];
cx q7[10],q7[9];
cx q7[6],q7[10];
h q7[10];
cx q7[9],q7[6];
h q7[10];
t q7[6];
h q7[9];
t q7[10];
t q7[9];
cx q7[9],q7[5];
tdg q7[5];
cx q7[8],q7[9];
t q7[9];
cx q7[8],q7[5];
tdg q7[8];
tdg q7[5];
cx q7[9],q7[5];
cx q7[8],q7[9];
h q7[9];
cx q7[5],q7[8];
h q7[9];
t q7[8];
h q7[5];
t q7[9];
t q7[5];
cx q7[5],q7[13];
tdg q7[13];
cx q7[7],q7[5];
t q7[5];
swap q7[7],q7[10];
cx q7[10],q7[13];
tdg q7[13];
tdg q7[10];
cx q7[5],q7[13];
cx q7[10],q7[5];
h q7[5];
cx q7[13],q7[10];
t q7[5];
t q7[10];
t q7[13];
cx q7[5],q7[8];
cx q7[13],q7[10];
cx q7[9],q7[5];
tdg q7[5];
cx q7[8],q7[9];
t q7[9];
cx q7[8],q7[5];
tdg q7[8];
tdg q7[5];
cx q7[9],q7[5];
cx q7[8],q7[9];
h q7[9];
cx q7[5],q7[8];
t q7[9];
t q7[8];
t q7[5];
cx q7[9],q7[6];
cx q7[5],q7[8];
swap q7[7],q7[10];
cx q7[10],q7[9];
tdg q7[9];
cx q7[6],q7[10];
t q7[10];
cx q7[6],q7[9];
tdg q7[6];
tdg q7[9];
cx q7[10],q7[9];
cx q7[6],q7[10];
h q7[10];
cx q7[9],q7[6];
t q7[6];
h q7[9];
t q7[9];
cx q7[9],q7[5];
tdg q7[5];
cx q7[8],q7[9];
t q7[9];
cx q7[8],q7[5];
tdg q7[8];
tdg q7[5];
cx q7[9],q7[5];
cx q7[8],q7[9];
h q7[9];
cx q7[5],q7[8];
h q7[9];
t q7[8];
h q7[5];
t q7[9];
t q7[5];
cx q7[5],q7[13];
tdg q7[13];
cx q7[7],q7[5];
t q7[5];
swap q7[7],q7[10];
cx q7[10],q7[13];
tdg q7[10];
tdg q7[13];
cx q7[5],q7[13];
cx q7[10],q7[5];
h q7[5];
cx q7[13],q7[10];
t q7[5];
t q7[13];
t q7[10];
cx q7[10],q7[6];
cx q7[5],q7[8];
cx q7[11],q7[10];
cx q7[9],q7[5];
tdg q7[10];
tdg q7[5];
cx q7[6],q7[11];
cx q7[8],q7[9];
t q7[11];
t q7[9];
cx q7[6],q7[10];
cx q7[8],q7[5];
tdg q7[6];
tdg q7[10];
tdg q7[8];
tdg q7[5];
cx q7[11],q7[10];
cx q7[9],q7[5];
cx q7[6],q7[11];
cx q7[8],q7[9];
h q7[11];
h q7[9];
cx q7[10],q7[6];
cx q7[5],q7[8];
h q7[11];
t q7[6];
h q7[10];
t q7[8];
t q7[11];
t q7[10];
cx q7[8],q7[13];
cx q7[10],q7[8];
tdg q7[8];
cx q7[13],q7[10];
t q7[10];
cx q7[13],q7[8];
tdg q7[8];
tdg q7[13];
cx q7[10],q7[8];
cx q7[13],q7[10];
h q7[10];
cx q7[8],q7[13];
t q7[10];
t q7[8];
t q7[13];
cx q7[10],q7[6];
cx q7[8],q7[13];
cx q7[11],q7[10];
tdg q7[10];
cx q7[6],q7[11];
t q7[11];
cx q7[6],q7[10];
tdg q7[10];
tdg q7[6];
cx q7[11],q7[10];
cx q7[6],q7[11];
h q7[11];
cx q7[10],q7[6];
x q7[6];
h q7[10];
t q7[6];
t q7[10];
cx q7[10],q7[8];
tdg q7[8];
cx q7[13],q7[10];
t q7[10];
cx q7[13],q7[8];
tdg q7[8];
tdg q7[13];
cx q7[10],q7[8];
cx q7[13],q7[10];
h q7[10];
cx q7[8],q7[13];
t q7[8];
swap q7[6],q7[5];
cx q7[5],q7[8];
cx q7[4],q7[5];
tdg q7[5];
cx q7[8],q7[4];
t q7[4];
cx q7[8],q7[5];
tdg q7[5];
tdg q7[8];
cx q7[4],q7[5];
cx q7[8],q7[4];
h q7[4];
cx q7[5],q7[8];
t q7[5];
t q7[8];
cx q7[5],q7[8];
cx q7[2],q7[5];
tdg q7[5];
swap q7[8],q7[0];
cx q7[0],q7[2];
t q7[2];
cx q7[0],q7[5];
tdg q7[0];
tdg q7[5];
cx q7[2],q7[5];
cx q7[0],q7[2];
h q7[2];
cx q7[5],q7[0];
