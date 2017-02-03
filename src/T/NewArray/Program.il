.assembly extern mscorlib { }
.assembly 'hello' { }

.class private auto ansi beforefieldinit Program extends [mscorlib]System.Object {
    .method public hidebysig  specialname  rtspecialname instance default void .ctor()  cil managed {
        .maxstack 8
        ldarg.0
        call instance void valuetype [corlib]System.Object::.ctor()
        ret
    } 
    .method public static default void Main()  cil managed {
        .entrypoint
        ldc.i4.1
        newarr [mscorlib]System.Int32
        dup
        ldc.i4.0
        ldc.i4.1
        stelem.i4
        ldc.i4.0
        ldelem.i4
        call void [mscorlib]System.Console::WriteLine(int32)
        ret
    } 
} 