void main()
{
  var obj = A();
  print(obj.function);

  obj.setname = 'rudri';
  print(obj.function);
}

class A
{
  String name='pratik';
  String get function => name;
  /*String get xyz
  {
    return name;
  }*/

  set setname (String value)
  {
    name=value;
  }
}