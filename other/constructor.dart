

void main()
{
    // var obj = animal();
    // var obj = animal(10, "Pratik");
    // var obj = animal.tiger();
    var obj = animal.lino();
}
class animal{
    var a;
    var b;
    // animal()
    // {
    //     print("This is default constructor's Animal....");
    // }
    // animal(int a,String b)
    // {
    //     print("This is paramterized constructor's Animal...");
    //     print(a);
    //     print(b);
    // }

    // ----------------------------------------------------------------------------------------

    animal(this.a ,this.b)
    {
      print("$a");
      print("$b");
    }
    animal.lino() : this(10,'rudri');

    // animal.tiger()
    // {
    //     print("This is named constructor");
    // }
}