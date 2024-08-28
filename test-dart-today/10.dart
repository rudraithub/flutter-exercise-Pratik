void main()
{
   cokebottle obj = cokebottle();
   obj.factory();
}

class bottle 
{
  open()
  {
    print("This is open");
  }
}

class cokebottle implements bottle{
  @override
  open() {
    print("Bottle is opened");
  }
  factory()
  {
    open();
  }
}