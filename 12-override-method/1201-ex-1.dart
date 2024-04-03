
void main ()
{
  var obj = B();
  obj.display();

}

class A
{
  void display()
  {
    print('gyanguru');
  }
}

class B extends A
{
  @override
  void display()
  {
    print('gyanmanjari');  
    super.display();
  }

}