# Q-Tetris
The C++17 standard is required
## input
The benchmark circuits used in our paper. 
- ".qasm" files: circuits from Qiskit Lib and those used in SABRE.
- ".txt" files: circuits from RevLib. Each one is a sequence of "tq [$x_i$]", where "q" is the number of qubits on which the gate performs and "[$x_i$]" represents the qubits. 
## output
The the experimental results. 
- ".qasm" files: physical circuits
- ".qasm.txt" files: scheduling sequences. A scheduling sequence is a sequence of (start execution time, duration, qubits). For example, "1 2 3 4" represents that a gate whose duration is 2 is executed at time 1 on qubits $q_3$ and $q_4$.
## start
tetris argv[1...5]
- argv[1]: directory where benchmark circuits are inputed
- argv[2]: directory where physical circuits and scheduling sequences are outputed
- argv[3]: ".txt" file where the experimental data are outputed, including execution time of secheduling sequence, compile time
- argv[4]: $l$ in Fig.8 in our paper, set as 45 in our experiment
- argv[5]: $k$ in Fig.7 in our paper, set as 256 in our experiment
## example
Run the following command in the build directory

"cmake .."

"make"

"tetris ../input/debug ../output/debug ../output/debug/debug.txt 45 256"
