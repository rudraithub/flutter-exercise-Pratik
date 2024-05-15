void main()
{
  var obj = C();
  obj.display();
  obj.display2();
  obj.display3();
  // var obx = A();
  // obx.display();
}

class A 
{
  void display()
  {
  //  print('class A');
  }  
}
class B implements A
{
  @override
  void display() {
   // print("class B's class A----display()");
   
  }
  void display2()
  {
    //print("class B----display2()");
  }
}
class C implements B
{
   @override
  void display() {
    print("class c's class A----display()");
    
  }
  @override
  void display2() {
    print("class c's class B----display2()");
  }
  void display3()
  {
    print("class c----display3()");
  }
}