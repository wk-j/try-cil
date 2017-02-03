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
        .maxstack 8
        ldc.i4.1
        newarr [mscorlib]System.String
        dup
        ldc.i4.0
        ldstr "Hello, World!"
        stelem.ref
        call void Program::Go(string[])
        ret
    } 

    .method public hidebysig static void Go(string[] args) cil managed {
        .maxstack 8
        ldarg.0
        ldc.i4.0
        ldelem.ref
        call void [mscorlib]System.Console::WriteLine(string)
        ret
    }
} 


/*
using System;
public class Program {
    public static void Main() {
        Go(new [] { "Hello, World!" });
    }
    
    public static void Go(string[] args) {
        Console.WriteLine(args[0]);
    }
}
*/
```