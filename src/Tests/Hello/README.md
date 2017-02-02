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
        .maxstack 8
        ldarg.0
        call instance void valuetype [corlib]System.Object::.ctor()
        ret
    } 
    .method public static default void Main()  cil managed {
        .entrypoint
        .maxstack 8
        ldstr "Hello World!"
        call void class [corlib]System.Console::WriteLine(string)
        ret
    } 
} 
```