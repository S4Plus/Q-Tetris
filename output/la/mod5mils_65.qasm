OPENQASM 2.0;
include "qelib1.inc";
qreg q10[16];
t q10[1];
t q10[8];
h q10[4];
cx q10[5],q10[0];
t q10[4];
x q10[0];
t q10[0];
cx q10[1],q10[0];
cx q10[4],q10[1];
tdg q10[1];
cx q10[0],q10[4];
t q10[4];
cx q10[0],q10[1];
tdg q10[1];
tdg q10[0];
cx q10[4],q10[1];
cx q10[0],q10[4];
h q10[4];
cx q10[1],q10[0];
h q10[4];
t q10[0];
t q10[4];
cx q10[8],q10[0];
cx q10[4],q10[8];
tdg q10[8];
cx q10[0],q10[4];
t q10[4];
cx q10[0],q10[8];
tdg q10[8];
tdg q10[0];
cx q10[4],q10[8];
cx q10[0],q10[4];
h q10[4];
cx q10[8],q10[0];
cx q10[0],q10[4];