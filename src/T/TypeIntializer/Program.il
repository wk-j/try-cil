.assembly extern mscorlib {}
.assembly hello {} 

.class public auto ansi beforefieldinit Cat extends [mscorlib]System.Object {
    .field private string '_name'

    .method public hidebysig specialname instance void set_Name( string 'value') cil managed {
        ldarg.0
        ldarg.1
        stfld string Cat::'_name'
        ret
    }

    .method public hidebysig specialname instance string get_Name() cil managed {
        .maxstack 8
        ldarg.0
        ldfld string Cat::'_name'
        ret
    }

    .method public hidebysig specialname rtspecialname instance void .ctor() cil managed {

    }

    .property instance string Name() {
        .get instance string Cat::get_Name()
        .set instance void Cat::set_Name(string)
    }
}

.class public  auto ansi beforefieldinit Program extends [mscorlib]System.Object {
    .method static void Main() cil managed {
        .entrypoint
        .locals init(
            [0] class Cat
        )

        newobj instance void Cat::.ctor()
        stloc.0
        ldloc.0
        ldstr "Meaw"
        callvirt instance void Cat::set_Name(string)
        ldloc.0
        callvirt instance string Cat::get_Name()
        call void [mscorlib]System.Console::WriteLine(string)
        ret
    }
}

/*
using System;

public class Cat {
    public string Name { set;get;}
}
public class Program {
    public static void Main() {
        var cat = new Cat();
        cat.Name = "Meaw";
        Console.WriteLine(cat.Name);
    }
}
*/