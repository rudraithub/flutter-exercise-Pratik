void main ()
{
  var x = A();
  print(x.name1);
  print(x.name2);
  print(x.name3);
}
class K 
{
  String name1='Kiyal';
}
class J extends K 
{
  String name2='Jinal';
}
class A extends J 
{
  String name3='Anjali';
}
