# Q-Tetris
## input
The input directory consists of benchmark circuits used in our paper. ".qasm" files are circuits from Qiskit Lib and those used in SABRE which are discribed by openQASM. ".txt" files are circuits from RevLib which are sequences of "tq, [xi]", where "q" is the number of qubits on which the gate performs and "xi" represents  the i-th qubit. 
## output
The output of mapping and scheduling a quantum circuit is a scheduling sequence. A scheduling sequence is a sequence of (start execution time, duration, qubits).
