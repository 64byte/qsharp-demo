namespace Quantum.QSharpApplication1 {

    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;

    operation SampleQuantumRandomNumberGenerator() : Result {
        use q = Qubit();

        H(q);
            
        return MResetZ(q);
    }
    
    @EntryPoint()
    operation HelloQ () : Result {
        Message("Hello quantum world!");

        return SampleQuantumRandomNumberGenerator();
    }

}
