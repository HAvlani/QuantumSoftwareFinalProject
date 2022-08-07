namespace QAOA {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;




    @EntryPoint()
    operation Main() : Unit {
        MakeCircuit(4, 4.0, 4.0); // function to build circuit, change parameters in unit test )
    }
    
    operation Rzz(register: Qubit[], theta: Double, indexC: Int, indexT: Int) : Unit {
        CNOT(register[indexC], register[indexT]);
        Rz(2.0 * theta, register[indexT]);
        CNOT(register[indexC], register[indexT]);
    }

    operation ProblemUnitary (register : Qubit[], gamma: Double) : Unit {
       Rzz(register, gamma, 0, 1);
       Rzz(register, gamma, 0, 3);
       Rzz(register, gamma, 1, 2);
       Rzz(register, gamma, 2, 3);
    }

    operation MixingUnitary(register: Qubit[], beta: Double) : Unit {
        Rx(2.0*beta, register[0]);
        Rx(2.0*beta, register[1]);
        Rx(2.0*beta, register[2]);
        Rx(2.0*beta, register[3]);

    }

    operation MakeCircuit(num_qubits: Int, gamma: Double, beta: Double) : Unit {
        use register = Qubit[num_qubits];
        ApplyToEach(H, register);
        ProblemUnitary(register, gamma);
        MixingUnitary(register, beta);
        ResetAll(register);
    }
} 
