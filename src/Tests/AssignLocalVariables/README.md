## Program.il

```csharp
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
            [0] float64,
            [1] string
        )

        ldc.r8 12.34
        stloc.0
        ldstr "Hello"
        stloc.1
        ldloc.1
        call void [mscorlib]System.Console::WriteLine(string)
        ret
    }
}

/*
using System;
public class Program {
    public static void Main() {
        var x = 12.34;
        var s = "Hello";
        Console.WriteLine(s);
    }
}
*/
```