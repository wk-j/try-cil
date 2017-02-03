.assembly extern mscorlib {
  .ver 0:0:0:0
}

.assembly 'hello' {
  .hash algorithm 0x00008004
  .ver  0:0:0:0
}

.class private auto ansi beforefieldinit Program extends [mscorlib]System.Object {
    .method public hidebysig  specialname  rtspecialname instance default void .ctor()  cil managed {
        ret
    } 
    .method public static default void Main()  cil managed {
        .entrypoint
        .locals init (
            [0] int32,
            [1] int32,
            [2] bool
        )
        ldc.i4 10
        stloc.0
        ldc.i4 20
        stloc.1
        ldloc.0
        ldloc.1
        cgt
        stloc.2
        ldloc.2
        call void [mscorlib]System.Console::WriteLine(bool)
        ret
    }
}


/*
using System;
public class Program {
    public static void Main() {
        var x = 100;
        var y = 200;
        var z = x > y;
        Console.WriteLine(z);
    }
}
*/