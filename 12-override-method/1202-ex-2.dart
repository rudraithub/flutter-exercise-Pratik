void main()
{
  var obj = tiger();
  obj.dis();
}

class lion
{
  void dis()
  {
     print('lion');
  }
}
class tiger extends lion
{
  @override
  void dis()
  {
    print('tiger');
    super.dis();
   
  }
}