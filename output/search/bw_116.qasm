OPENQASM 2.0;
include "qelib1.inc";
qreg q[100];
creg c[100];
ccx q[4],q[44],q[12];
cx q[44],q[12];
swap q[16],q[5];
cx q[12],q[0];
swap q[41],q[31];
ccx q[13],q[4],q[0];
cx q[4],q[1];
ccx q[13],q[12],q[0];
cx q[13],q[10];
swap q[24],q[15];
ccx q[2],q[0],q[1];
ccx q[4],q[2],q[1];
swap q[52],q[50];
cx q[0],q[11];
ccx q[4],q[44],q[24];
cx q[44],q[14];
cx q[4],q[14];
cx q[2],q[22];
swap q[52],q[42];
ccx q[13],q[14],q[10];
cx q[14],q[10];
cx q[44],q[21];
cx q[10],q[22];
ccx q[2],q[24],q[22];
ccx q[13],q[4],q[3];
cx q[13],q[3];
ccx q[2],q[10],q[22];
cx q[22],q[30];
swap q[14],q[4];
swap q[44],q[34];
cx q[2],q[20];
swap q[57],q[45];
swap q[38],q[37];
swap q[37],q[26];
swap q[17],q[6];
swap q[49],q[29];
swap q[29],q[6];
ccx q[13],q[24],q[23];
cx q[13],q[23];
swap q[73],q[51];
cx q[13],q[20];
swap q[51],q[41];
ccx q[2],q[23],q[20];
ccx q[13],q[2],q[20];
ccx q[14],q[34],q[21];
cx q[2],q[5];
cx q[20],q[43];
cx q[14],q[21];
swap q[6],q[4];
ccx q[33],q[1],q[30];
cx q[23],q[5];
swap q[41],q[20];
swap q[66],q[55];
ccx q[33],q[22],q[30];
swap q[55],q[54];
u1 q[30];
ccx q[33],q[3],q[43];
cx q[21],q[25];
ccx q[13],q[34],q[25];
swap q[54],q[53];
ccx q[13],q[21],q[25];
swap q[53],q[41];
ccx q[2],q[25],q[5];
ccx q[2],q[23],q[5];
cx q[2],q[31];
u1 q[23];
cx q[21],q[31];
cx q[5],q[36];
ccx q[33],q[53],q[43];
swap q[30],q[2];
u1 q[43];
swap q[33],q[24];
swap q[45],q[26];
ccx q[30],q[33],q[31];
ccx q[24],q[14],q[36];
ccx q[24],q[5],q[36];
u1 q[36];
ccx q[30],q[21],q[31];
cx q[31],q[42];
ccx q[24],q[14],q[42];
cx q[14],q[32];
ccx q[13],q[21],q[32];
ccx q[13],q[14],q[32];
ccx q[14],q[34],q[26];
cx q[14],q[26];
cx q[26],q[45];
ccx q[30],q[32],q[20];
ccx q[13],q[33],q[45];
cx q[30],q[20];
cx q[30],q[41];
ccx q[13],q[26],q[45];
cx q[13],q[4];
ccx q[24],q[31],q[42];
swap q[52],q[45];
ccx q[13],q[12],q[4];
cx q[12],q[4];
swap q[19],q[8];
swap q[27],q[8];
swap q[45],q[27];
u1 q[42];
cx q[26],q[17];
cx q[52],q[41];
ccx q[30],q[10],q[41];
u1 q[10];
ccx q[30],q[52],q[41];
swap q[45],q[34];
cx q[41],q[20];
swap q[13],q[4];
ccx q[4],q[6],q[17];
cx q[30],q[34];
cx q[6],q[16];
cx q[13],q[34];
ccx q[30],q[33],q[34];
swap q[28],q[8];
swap q[37],q[28];
ccx q[30],q[13],q[34];
cx q[34],q[37];
ccx q[4],q[26],q[17];
swap q[30],q[21];
swap q[37],q[33];
cx q[37],q[27];
ccx q[24],q[20],q[41];
u1 q[41];
ccx q[24],q[14],q[33];
ccx q[14],q[21],q[11];
swap q[27],q[26];
ccx q[4],q[14],q[16];
cx q[14],q[15];
ccx q[24],q[34],q[33];
ccx q[21],q[0],q[11];
u1 q[33];
ccx q[4],q[6],q[16];
ccx q[4],q[12],q[15];
swap q[51],q[41];
swap q[21],q[12];
u1 q[16];
ccx q[4],q[14],q[15];
ccx q[4],q[6],q[26];
swap q[43],q[41];
swap q[17],q[4];
swap q[44],q[33];
swap q[35],q[25];
cx q[15],q[43];
ccx q[12],q[16],q[4];
ccx q[12],q[4],q[16];
cx q[16],q[33];
ccx q[17],q[37],q[26];
ccx q[12],q[32],q[43];
ccx q[12],q[15],q[43];
swap q[34],q[12];
ccx q[17],q[6],q[29];
cx q[17],q[29];
swap q[52],q[40];
swap q[57],q[29];
ccx q[24],q[11],q[33];
ccx q[24],q[16],q[33];
swap q[74],q[57];
u1 q[33];
ccx q[34],q[26],q[25];
swap q[40],q[30];
swap q[51],q[40];
swap q[28],q[7];
cx q[25],q[43];
ccx q[24],q[43],q[25];
u1 q[25];
swap q[21],q[11];
swap q[38],q[27];
ccx q[17],q[37],q[28];
cx q[37],q[28];
cx q[34],q[52];
cx q[74],q[52];
ccx q[34],q[51],q[52];
ccx q[34],q[74],q[52];
swap q[47],q[34];
swap q[17],q[5];
swap q[12],q[11];
swap q[22],q[12];
cx q[52],q[21];
cx q[47],q[27];
cx q[51],q[54];
cx q[28],q[27];
swap q[54],q[22];
ccx q[47],q[37],q[27];
ccx q[47],q[28],q[27];
swap q[15],q[5];
swap q[15],q[14];
cx q[47],q[55];
cx q[27],q[7];
ccx q[47],q[54],q[55];
swap q[51],q[31];
swap q[19],q[17];
cx q[47],q[66];
ccx q[24],q[21],q[52];
swap q[66],q[47];
u1 q[52];
cx q[54],q[55];
ccx q[24],q[15],q[7];
ccx q[14],q[15],q[22];
ccx q[14],q[31],q[22];
swap q[73],q[61];
swap q[61],q[43];
cx q[15],q[17];
cx q[26],q[47];
cx q[47],q[46];
swap q[66],q[65];
swap q[21],q[0];
cx q[22],q[43];
cx q[54],q[71];
swap q[25],q[14];
swap q[70],q[51];
ccx q[25],q[37],q[17];
ccx q[25],q[15],q[17];
swap q[65],q[63];
swap q[32],q[21];
swap q[33],q[22];
swap q[57],q[17];
ccx q[63],q[32],q[43];
swap q[66],q[57];
ccx q[63],q[33],q[43];
cx q[63],q[65];
ccx q[24],q[27],q[7];
u1 q[7];
swap q[51],q[42];
ccx q[25],q[45],q[56];
cx q[45],q[56];
cx q[56],q[65];
swap q[45],q[24];
swap q[37],q[26];
swap q[33],q[26];
swap q[74],q[71];
swap q[74],q[72];
swap q[24],q[6];
ccx q[63],q[66],q[65];
ccx q[25],q[33],q[34];
ccx q[63],q[56],q[65];
cx q[34],q[42];
cx q[65],q[43];
ccx q[45],q[55],q[46];
swap q[76],q[66];
ccx q[45],q[47],q[46];
swap q[62],q[32];
swap q[36],q[24];
swap q[66],q[55];
swap q[60],q[41];
swap q[73],q[53];
ccx q[63],q[33],q[42];
ccx q[63],q[34],q[42];
ccx q[45],q[43],q[65];
swap q[36],q[35];
u1 q[46];
u1 q[65];
cx q[42],q[32];
ccx q[63],q[62],q[72];
ccx q[63],q[54],q[72];
swap q[35],q[25];
cx q[54],q[55];
swap q[41],q[33];
swap q[73],q[72];
swap q[38],q[17];
swap q[47],q[38];
swap q[17],q[16];
swap q[47],q[46];
ccx q[35],q[25],q[55];
swap q[58],q[38];
ccx q[35],q[54],q[55];
swap q[83],q[51];
cx q[25],q[33];
cx q[54],q[53];
swap q[51],q[41];
ccx q[63],q[55],q[74];
cx q[55],q[74];
swap q[36],q[26];
ccx q[45],q[15],q[32];
ccx q[35],q[31],q[53];
cx q[74],q[73];
ccx q[45],q[42],q[32];
ccx q[35],q[54],q[53];
cx q[31],q[41];
u1 q[32];
swap q[54],q[36];
swap q[42],q[41];
swap q[3],q[1];
swap q[82],q[71];
swap q[22],q[3];
swap q[71],q[62];
ccx q[45],q[73],q[74];
u1 q[74];
cx q[53],q[46];
swap q[42],q[22];
swap q[36],q[34];
swap q[86],q[65];
ccx q[63],q[54],q[46];
ccx q[63],q[53],q[46];
swap q[23],q[22];
ccx q[35],q[16],q[33];
u1 q[53];
swap q[65],q[53];
u1 q[16];
swap q[35],q[34];
swap q[17],q[8];
swap q[57],q[47];
swap q[32],q[31];
ccx q[63],q[51],q[64];
cx q[63],q[62];
ccx q[34],q[25],q[33];
cx q[33],q[62];
swap q[57],q[37];
swap q[17],q[6];
swap q[65],q[57];
cx q[64],q[67];
ccx q[34],q[35],q[23];
ccx q[63],q[65],q[62];
ccx q[34],q[32],q[23];
ccx q[63],q[33],q[62];
swap q[6],q[5];
swap q[15],q[5];
swap q[68],q[48];
swap q[76],q[66];
cx q[32],q[53];
ccx q[34],q[51],q[53];
ccx q[45],q[46],q[67];
swap q[63],q[45];
swap q[17],q[5];
swap q[27],q[17];
swap q[46],q[23];
swap q[81],q[60];
swap q[60],q[51];
swap q[75],q[63];
ccx q[75],q[64],q[67];
swap q[36],q[16];
u1 q[67];
cx q[75],q[63];
ccx q[75],q[62],q[63];
cx q[64],q[42];
cx q[62],q[63];
cx q[46],q[47];
u1 q[63];
cx q[25],q[38];
ccx q[45],q[66],q[68];
swap q[38],q[27];
ccx q[45],q[35],q[47];
swap q[21],q[12];
swap q[78],q[75];
swap q[49],q[39];
ccx q[45],q[46],q[47];
swap q[13],q[12];
swap q[4],q[1];
swap q[7],q[4];
cx q[68],q[49];
ccx q[78],q[38],q[49];
cx q[38],q[59];
ccx q[78],q[68],q[49];
u1 q[49];
ccx q[34],q[32],q[53];
cx q[34],q[15];
ccx q[34],q[32],q[15];
cx q[32],q[15];
ccx q[45],q[36],q[13];
swap q[78],q[67];
ccx q[34],q[32],q[51];
cx q[34],q[51];
swap q[28],q[7];
swap q[59],q[58];
swap q[69],q[57];
ccx q[34],q[35],q[27];
swap q[44],q[15];
swap q[61],q[51];
swap q[73],q[61];
ccx q[45],q[13],q[36];
swap q[85],q[75];
cx q[36],q[48];
swap q[60],q[51];
ccx q[45],q[28],q[58];
swap q[52],q[51];
ccx q[67],q[47],q[48];
ccx q[67],q[36],q[48];
u1 q[48];
ccx q[34],q[25],q[27];
swap q[85],q[76];
ccx q[38],q[45],q[58];
swap q[55],q[38];
swap q[79],q[69];
cx q[45],q[57];
swap q[69],q[47];
swap q[24],q[6];
swap q[87],q[85];
swap q[63],q[52];
cx q[44],q[57];
swap q[85],q[73];
ccx q[45],q[53],q[57];
swap q[83],q[82];
ccx q[45],q[44],q[57];
cx q[45],q[75];
cx q[57],q[58];
ccx q[67],q[58],q[57];
u1 q[57];
cx q[85],q[75];
ccx q[45],q[63],q[75];
swap q[83],q[74];
swap q[27],q[25];
swap q[31],q[10];
swap q[53],q[31];
swap q[77],q[57];
swap q[29],q[17];
ccx q[45],q[85],q[75];
cx q[75],q[76];
ccx q[67],q[55],q[76];
cx q[55],q[47];
swap q[51],q[50];
swap q[32],q[14];
swap q[62],q[51];
ccx q[45],q[24],q[47];
swap q[54],q[47];
ccx q[67],q[75],q[76];
u1 q[76];
ccx q[55],q[45],q[54];
cx q[45],q[73];
cx q[74],q[73];
swap q[76],q[67];
ccx q[45],q[63],q[73];
ccx q[45],q[74],q[73];
ccx q[45],q[53],q[25];
swap q[92],q[80];
ccx q[45],q[25],q[53];
swap q[85],q[76];
swap q[62],q[54];
swap q[26],q[22];
swap q[79],q[58];
swap q[92],q[84];
swap q[58],q[48];
cx q[45],q[57];
cx q[27],q[57];
cx q[73],q[62];
ccx q[85],q[62],q[73];
ccx q[45],q[65],q[57];
u1 q[73];
cx q[85],q[84];
swap q[33],q[24];
ccx q[45],q[27],q[57];
swap q[63],q[53];
swap q[85],q[75];
cx q[57],q[87];
ccx q[75],q[63],q[84];
cx q[27],q[17];
cx q[63],q[84];
u1 q[84];
ccx q[34],q[14],q[17];
u1 q[14];
ccx q[34],q[27],q[17];
ccx q[45],q[46],q[54];
swap q[25],q[24];
cx q[45],q[54];
swap q[75],q[66];
swap q[27],q[25];
ccx q[66],q[87],q[57];
u1 q[57];
swap q[9],q[8];
swap q[43],q[42];
swap q[8],q[6];
cx q[25],q[53];
ccx q[34],q[53],q[25];
swap q[66],q[56];
ccx q[45],q[26],q[17];
swap q[45],q[26];
ccx q[26],q[17],q[45];
swap q[37],q[18];
cx q[45],q[54];
ccx q[56],q[54],q[45];
u1 q[45];
swap q[16],q[6];
swap q[25],q[14];
ccx q[26],q[48],q[27];
ccx q[26],q[27],q[48];
cx q[48],q[69];
ccx q[56],q[43],q[64];
u1 q[64];
ccx q[56],q[69],q[48];
u1 q[48];
ccx q[26],q[25],q[14];
ccx q[26],q[14],q[25];
cx q[26],q[16];
cx q[25],q[37];
ccx q[56],q[55],q[37];
ccx q[56],q[25],q[37];
ccx q[26],q[44],q[16];
u1 q[37];
cx q[56],q[39];
cx q[44],q[16];
ccx q[56],q[16],q[39];
cx q[16],q[39];
u1 q[39];
