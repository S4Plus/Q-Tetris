OPENQASM 2.0;
include "qelib1.inc";
qreg q[16];
creg c[16];
u1 q[2];
u1 q[15];
u1 q[8];
swap q[10],q[5];
swap q[12],q[8];
cx q[14],q[10];
swap q[5],q[2];
u1 q[14];
u1 q[10];
u1 q[10];
swap q[13],q[12];
swap q[10],q[5];
cx q[14],q[10];
cx q[15],q[13];
swap q[10],q[5];
cx q[10],q[14];
u1 q[14];
cx q[5],q[10];
u1 q[10];
swap q[13],q[5];
cx q[13],q[14];
swap q[6],q[5];
u1 q[14];
u1 q[13];
cx q[10],q[14];
cx q[13],q[10];
u1 q[10];
cx q[14],q[13];
u1 q[10];
swap q[11],q[6];
u1 q[14];
u1 q[13];
u1 q[10];
u1 q[14];
cx q[14],q[15];
u1 q[15];
cx q[11],q[14];
u1 q[14];
cx q[11],q[15];
u1 q[15];
u1 q[11];
cx q[14],q[15];
cx q[11],q[14];
u1 q[14];
cx q[15],q[11];
u1 q[14];
u1 q[15];
u1 q[11];
cx q[14],q[13];
cx q[10],q[14];
u1 q[14];
cx q[13],q[10];
u1 q[10];
cx q[13],q[14];
u1 q[14];
u1 q[13];
cx q[15],q[11];
cx q[10],q[14];
cx q[13],q[10];
u1 q[10];
cx q[14],q[13];
u1 q[14];
u1 q[14];
cx q[14],q[15];
u1 q[15];
cx q[11],q[14];
u1 q[14];
cx q[11],q[15];
u1 q[15];
u1 q[11];
cx q[14],q[15];
cx q[11],q[14];
u1 q[14];
cx q[15],q[11];
cx q[10],q[14];