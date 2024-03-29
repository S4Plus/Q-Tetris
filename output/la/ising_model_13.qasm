OPENQASM 2.0;
include "qelib1.inc";
qreg q7[16];
h q7[0];
h q7[5];
h q7[3];
h q7[7];
h q7[9];
h q7[1];
h q7[11];
h q7[4];
h q7[6];
h q7[2];
h q7[10];
h q7[8];
h q7[14];
rz(-0.3) q7[0];
rz(0.3) q7[5];
rz(0.22) q7[3];
rz(-0.22) q7[7];
rz(-1) q7[9];
rz(-0.36) q7[1];
rz(-1) q7[11];
rz(0.36) q7[4];
rz(-0.12) q7[6];
rz(0.12) q7[2];
rz(0.08) q7[10];
rz(-0.08) q7[8];
rz(-1) q7[14];
rz(-1.2) q7[5];
rz(0.88) q7[7];
rz(-1) q7[11];
rz(-1.44) q7[4];
rz(-0.48) q7[2];
rz(0.32) q7[8];
rz(-1) q7[14];
cx q7[0],q7[5];
cx q7[3],q7[7];
cx q7[1],q7[4];
cx q7[6],q7[2];
rz(0.6) q7[5];
rz(-0.44) q7[7];
rz(0.72) q7[4];
rz(0.24) q7[2];
cx q7[9],q7[11];
cx q7[1],q7[4];
cx q7[6],q7[2];
rz(-1) q7[11];
rz(-0.26) q7[1];
rz(-0.26) q7[4];
rz(0.26) q7[6];
rz(0.38) q7[2];
cx q7[0],q7[5];
cx q7[3],q7[7];
rz(1.04) q7[1];
rz(-1.04) q7[6];
h q7[0];
rz(0.26) q7[5];
rz(-0.38) q7[3];
rz(-0.26) q7[7];
rz(-1.92) q7[0];
rz(1.52) q7[3];
cx q7[10],q7[8];
cx q7[5],q7[1];
h q7[0];
rz(-0.16) q7[8];
rz(-0.52) q7[1];
cx q7[2],q7[3];
rz(-0.288) q7[0];
rz(-0.76) q7[3];
cx q7[9],q7[11];
rz(-0.9) q7[0];
rz(-1) q7[9];
rz(-1) q7[11];
cx q7[5],q7[1];
cx q7[2],q7[3];
rz(-1) q7[9];
h q7[1];
h q7[5];
h q7[3];
h q7[2];
cx q7[11],q7[14];
rz(-1.92) q7[1];
rz(-1.92) q7[5];
rz(-1.92) q7[3];
rz(-1.92) q7[2];
rz(-1) q7[14];
h q7[1];
h q7[5];
h q7[3];
h q7[2];
cx q7[10],q7[8];
rz(1.152) q7[1];
rz(0.864) q7[5];
rz(1.536) q7[3];
rz(-0.576) q7[2];
rz(0.26) q7[10];
rz(-1) q7[8];
cx q7[11],q7[14];
rz(-1.08) q7[1];
rz(0.9) q7[5];
rz(0.66) q7[3];
rz(0.36) q7[2];
rz(-1.04) q7[10];
h q7[11];
h q7[14];
cx q7[8],q7[9];
rz(-3.6) q7[5];
rz(-1.44) q7[2];
rz(-1.92) q7[11];
rz(-1.92) q7[14];
rz(-1) q7[9];
cx q7[7],q7[10];
h q7[11];
h q7[14];
rz(0.52) q7[10];
cx q7[0],q7[5];
cx q7[8],q7[9];
rz(-1) q7[11];
rz(-1) q7[14];
rz(1.8) q7[5];
h q7[8];
h q7[9];
cx q7[7],q7[10];
rz(-1) q7[11];
rz(-1) q7[14];
rz(-1.92) q7[8];
rz(-1.92) q7[9];
h q7[7];
h q7[10];
cx q7[0],q7[5];
rz(-1) q7[11];
rz(-1) q7[14];
h q7[8];
h q7[9];
rz(-1.92) q7[7];
rz(-1.92) q7[10];
rz(0.78) q7[5];
h q7[0];
rz(-1.824) q7[8];
rz(-1) q7[9];
h q7[7];
h q7[10];
rz(-0.96) q7[0];
rz(-0.24) q7[8];
rz(-1) q7[9];
rz(-0.288) q7[7];
rz(1.248) q7[10];
h q7[0];
rz(0.96) q7[8];
rz(-0.66) q7[7];
rz(0.24) q7[10];
rz(-0.144) q7[0];
rz(2.64) q7[7];
rz(-1.5) q7[0];
cx q7[10],q7[8];
rz(-0.48) q7[8];
cx q7[3],q7[7];
rz(-1.32) q7[7];
cx q7[10],q7[8];
rz(0.78) q7[10];
rz(-1) q7[8];
cx q7[3],q7[7];
rz(-3.12) q7[10];
rz(-1.14) q7[3];
rz(-0.78) q7[7];
rz(4.56) q7[3];
cx q7[4],q7[6];
rz(0.52) q7[6];
cx q7[9],q7[11];
rz(-1) q7[11];
cx q7[7],q7[10];
rz(1.56) q7[10];
cx q7[4],q7[6];
h q7[6];
h q7[4];
cx q7[9],q7[11];
rz(-1.92) q7[6];
rz(-1.92) q7[4];
rz(-1) q7[9];
rz(-1) q7[11];
cx q7[7],q7[10];
h q7[6];
h q7[4];
rz(-1) q7[9];
h q7[10];
h q7[7];
cx q7[11],q7[14];
rz(-1.44) q7[6];
rz(-1.056) q7[4];
rz(-0.96) q7[10];
rz(-0.96) q7[7];
rz(-1) q7[14];
cx q7[8],q7[9];
rz(-0.36) q7[6];
rz(1.08) q7[4];
h q7[10];
h q7[7];
rz(-1) q7[9];
cx q7[11],q7[14];
rz(-4.32) q7[4];
rz(0.624) q7[10];
rz(-0.144) q7[7];
h q7[14];
h q7[11];
cx q7[6],q7[2];
cx q7[8],q7[9];
rz(0.4) q7[10];
rz(-1.1) q7[7];
rz(-0.96) q7[14];
rz(-0.96) q7[11];
rz(0.72) q7[2];
h q7[9];
h q7[8];
cx q7[1],q7[4];
rz(4.4) q7[7];
h q7[14];
h q7[11];
rz(-0.96) q7[9];
rz(-0.96) q7[8];
rz(2.16) q7[4];
cx q7[6],q7[2];
rz(-1) q7[14];
rz(-1) q7[11];
h q7[9];
h q7[8];
rz(1.14) q7[2];
rz(0.78) q7[6];
cx q7[1],q7[4];
rz(-1) q7[14];
rz(-1) q7[11];
rz(-1) q7[9];
rz(-0.912) q7[8];
rz(-3.12) q7[6];
rz(-0.78) q7[1];
rz(-0.78) q7[4];
cx q7[2],q7[3];
rz(-1) q7[14];
rz(-1) q7[11];
rz(-1) q7[9];
rz(-0.4) q7[8];
rz(3.12) q7[1];
rz(-2.28) q7[3];
rz(1.6) q7[8];
cx q7[5],q7[1];
cx q7[2],q7[3];
rz(-1.56) q7[1];
h q7[3];
h q7[2];
cx q7[10],q7[8];
rz(-0.96) q7[3];
rz(-0.96) q7[2];
rz(-0.8) q7[8];
cx q7[5],q7[1];
h q7[3];
h q7[2];
h q7[1];
h q7[5];
cx q7[10],q7[8];
rz(0.768) q7[3];
rz(-0.288) q7[2];
rz(-0.96) q7[1];
rz(-0.96) q7[5];
rz(1.3) q7[10];
rz(-1) q7[8];
rz(1.1) q7[3];
rz(0.6) q7[2];
h q7[1];
h q7[5];
rz(-5.2) q7[10];
rz(-2.4) q7[2];
rz(0.576) q7[1];
rz(0.432) q7[5];
cx q7[3],q7[7];
rz(-1.8) q7[1];
rz(1.5) q7[5];
rz(-2.2) q7[7];
rz(-6) q7[5];
cx q7[3],q7[7];
rz(-1.3) q7[7];
rz(-1.9) q7[3];
cx q7[0],q7[5];
rz(7.6) q7[3];
rz(3) q7[5];
cx q7[7],q7[10];
rz(2.6) q7[10];
cx q7[0],q7[5];
rz(1.3) q7[5];
h q7[0];
cx q7[7],q7[10];
rz(0) q7[0];
h q7[10];
h q7[7];
h q7[0];
rz(0) q7[10];
rz(0) q7[7];
rz(0) q7[0];
h q7[10];
h q7[7];
rz(-2.1) q7[0];
rz(0) q7[10];
rz(0) q7[7];
rz(0.56) q7[10];
rz(-1.54) q7[7];
rz(6.16) q7[7];
cx q7[4],q7[6];
rz(1.56) q7[6];
cx q7[9],q7[11];
rz(-1) q7[11];
cx q7[4],q7[6];
h q7[4];
h q7[6];
cx q7[9],q7[11];
rz(-0.96) q7[4];
rz(-0.96) q7[6];
rz(-1) q7[9];
rz(-1) q7[11];
h q7[4];
h q7[6];
rz(-1) q7[9];
cx q7[11],q7[14];
rz(-0.528) q7[4];
rz(-0.72) q7[6];
rz(-1) q7[14];
cx q7[8],q7[9];
rz(1.8) q7[4];
rz(-0.6) q7[6];
rz(-1) q7[9];
cx q7[11],q7[14];
rz(-7.2) q7[4];
h q7[14];
h q7[11];
cx q7[6],q7[2];
cx q7[8],q7[9];
rz(0) q7[14];
rz(0) q7[11];
rz(1.2) q7[2];
h q7[9];
h q7[8];
cx q7[1],q7[4];
h q7[14];
h q7[11];
rz(0) q7[9];
rz(0) q7[8];
rz(3.6) q7[4];
cx q7[6],q7[2];
rz(-1) q7[14];
rz(-1) q7[11];
h q7[9];
h q7[8];
rz(1.9) q7[2];
rz(1.3) q7[6];
cx q7[1],q7[4];
rz(-1) q7[14];
rz(-1) q7[11];
rz(-1) q7[9];
rz(0) q7[8];
rz(-5.2) q7[6];
rz(-1.3) q7[1];
rz(-1.3) q7[4];
cx q7[2],q7[3];
rz(-1) q7[14];
rz(-1) q7[11];
rz(-1) q7[9];
rz(-0.56) q7[8];
rz(5.2) q7[1];
rz(-3.8) q7[3];
rz(2.24) q7[8];
cx q7[5],q7[1];
cx q7[2],q7[3];
rz(-2.6) q7[1];
h q7[2];
h q7[3];
cx q7[10],q7[8];
rz(0) q7[2];
rz(0) q7[3];
rz(-1.12) q7[8];
cx q7[5],q7[1];
h q7[2];
h q7[3];
h q7[1];
h q7[5];
cx q7[10],q7[8];
rz(0) q7[2];
rz(0) q7[3];
rz(0) q7[1];
rz(0) q7[5];
rz(1.82) q7[10];
rz(-1) q7[8];
rz(0.84) q7[2];
rz(1.54) q7[3];
h q7[1];
h q7[5];
rz(-7.28) q7[10];
rz(-3.36) q7[2];
rz(0) q7[1];
rz(0) q7[5];
cx q7[3],q7[7];
rz(-2.52) q7[1];
rz(2.1) q7[5];
rz(-3.08) q7[7];
rz(-8.4) q7[5];
cx q7[3],q7[7];
rz(-2.66) q7[3];
rz(-1.82) q7[7];
cx q7[0],q7[5];
rz(10.64) q7[3];
rz(4.2) q7[5];
cx q7[7],q7[10];
rz(3.64) q7[10];
cx q7[0],q7[5];
h q7[0];
rz(1.82) q7[5];
cx q7[7],q7[10];
rz(0.96) q7[0];
h q7[10];
h q7[7];
h q7[0];
rz(0.96) q7[10];
rz(0.96) q7[7];
rz(0.144) q7[0];
h q7[10];
h q7[7];
rz(-2.7) q7[0];
rz(-0.624) q7[10];
rz(0.144) q7[7];
rz(0.72) q7[10];
rz(-1.98) q7[7];
rz(7.92) q7[7];
cx q7[4],q7[6];
rz(2.6) q7[6];
cx q7[9],q7[11];
rz(-1) q7[11];
cx q7[4],q7[6];
h q7[4];
h q7[6];
cx q7[9],q7[11];
rz(0) q7[4];
rz(0) q7[6];
rz(-1) q7[9];
rz(-1) q7[11];
h q7[4];
h q7[6];
rz(-1) q7[9];
cx q7[11],q7[14];
rz(0) q7[4];
rz(0) q7[6];
rz(-1) q7[14];
cx q7[8],q7[9];
rz(2.52) q7[4];
rz(-0.84) q7[6];
rz(-1) q7[9];
cx q7[11],q7[14];
rz(-10.08) q7[4];
h q7[14];
h q7[11];
cx q7[6],q7[2];
cx q7[8],q7[9];
rz(0.96) q7[14];
rz(0.96) q7[11];
rz(1.68) q7[2];
h q7[9];
h q7[8];
cx q7[1],q7[4];
h q7[14];
h q7[11];
rz(0.96) q7[9];
rz(0.96) q7[8];
rz(5.04) q7[4];
cx q7[6],q7[2];
rz(-1) q7[14];
rz(-1) q7[11];
h q7[9];
h q7[8];
rz(1.82) q7[6];
rz(2.66) q7[2];
cx q7[1],q7[4];
rz(-1) q7[14];
rz(-1) q7[11];
rz(-1) q7[9];
rz(0.912) q7[8];
rz(-7.28) q7[6];
rz(-1.82) q7[1];
rz(-1.82) q7[4];
cx q7[2],q7[3];
rz(-1) q7[14];
rz(-1) q7[11];
rz(-1) q7[9];
rz(-0.72) q7[8];
rz(7.28) q7[1];
rz(-5.32) q7[3];
rz(2.88) q7[8];
cx q7[5],q7[1];
cx q7[2],q7[3];
rz(-3.64) q7[1];
h q7[3];
h q7[2];
cx q7[10],q7[8];
rz(0.96) q7[3];
rz(0.96) q7[2];
rz(-1.44) q7[8];
cx q7[5],q7[1];
h q7[3];
h q7[2];
h q7[1];
h q7[5];
cx q7[10],q7[8];
rz(-0.768) q7[3];
rz(0.288) q7[2];
rz(0.96) q7[1];
rz(0.96) q7[5];
rz(2.34) q7[10];
rz(-1) q7[8];
rz(1.98) q7[3];
rz(1.08) q7[2];
h q7[1];
h q7[5];
rz(-9.36) q7[10];
rz(-4.32) q7[2];
rz(-0.576) q7[1];
rz(-0.432) q7[5];
cx q7[3],q7[7];
rz(-3.24) q7[1];
rz(2.7) q7[5];
rz(-3.96) q7[7];
rz(-10.8) q7[5];
cx q7[3],q7[7];
rz(-3.42) q7[3];
rz(-2.34) q7[7];
cx q7[0],q7[5];
rz(13.68) q7[3];
rz(5.4) q7[5];
cx q7[7],q7[10];
rz(4.68) q7[10];
cx q7[0],q7[5];
h q7[0];
rz(2.34) q7[5];
cx q7[7],q7[10];
rz(1.92) q7[0];
h q7[10];
h q7[7];
h q7[0];
rz(1.92) q7[10];
rz(1.92) q7[7];
rz(0.288) q7[0];
h q7[10];
h q7[7];
rz(-1.248) q7[10];
rz(0.288) q7[7];
cx q7[4],q7[6];
rz(3.64) q7[6];
cx q7[9],q7[11];
rz(-1) q7[11];
cx q7[4],q7[6];
h q7[6];
h q7[4];
cx q7[9],q7[11];
rz(0.96) q7[6];
rz(0.96) q7[4];
rz(-1) q7[9];
rz(-1) q7[11];
h q7[6];
h q7[4];
rz(-1) q7[9];
cx q7[11],q7[14];
rz(0.72) q7[6];
rz(0.528) q7[4];
rz(-1) q7[14];
cx q7[8],q7[9];
rz(-1.08) q7[6];
rz(3.24) q7[4];
rz(-1) q7[9];
cx q7[11],q7[14];
rz(-12.96) q7[4];
h q7[14];
h q7[11];
cx q7[6],q7[2];
cx q7[8],q7[9];
rz(1.92) q7[14];
rz(1.92) q7[11];
rz(2.16) q7[2];
h q7[9];
h q7[8];
cx q7[1],q7[4];
h q7[14];
h q7[11];
rz(1.92) q7[9];
rz(1.92) q7[8];
rz(6.48) q7[4];
cx q7[6],q7[2];
rz(-1) q7[14];
rz(-1) q7[11];
h q7[9];
h q7[8];
rz(3.42) q7[2];
rz(2.34) q7[6];
cx q7[1],q7[4];
rz(-1) q7[9];
rz(1.824) q7[8];
rz(-9.36) q7[6];
rz(-2.34) q7[4];
rz(-2.34) q7[1];
cx q7[2],q7[3];
rz(9.36) q7[1];
rz(-6.84) q7[3];
cx q7[4],q7[6];
rz(4.68) q7[6];
cx q7[5],q7[1];
cx q7[2],q7[3];
rz(-4.68) q7[1];
h q7[3];
h q7[2];
rz(1.92) q7[3];
rz(1.92) q7[2];
cx q7[5],q7[1];
h q7[3];
h q7[2];
h q7[5];
h q7[1];
rz(-1.536) q7[3];
rz(0.576) q7[2];
rz(1.92) q7[5];
rz(1.92) q7[1];
h q7[5];
h q7[1];
rz(-0.864) q7[5];
rz(-1.152) q7[1];
cx q7[4],q7[6];
h q7[4];
h q7[6];
rz(1.92) q7[4];
rz(1.92) q7[6];
h q7[4];
h q7[6];
rz(1.056) q7[4];
rz(1.44) q7[6];
