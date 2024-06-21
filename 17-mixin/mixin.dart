void main()
{
  var obj = animal();
  obj.lion3();
  obj.tiger3();

}

class animal with lion,tiger
{
  // print("This is animal");
}
mixin lion
{
    lion3()
    {
        print("LION");
    }

}
mixin tiger
{
  tiger3()
  {
    print("TIGER");
  }
}