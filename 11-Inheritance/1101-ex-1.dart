void main ()
{
  var x = B();
  print(x.no);
  print(x.num);
}
class A 
{
  String no='999';
}
class B extends A
{
  String num='898';
}