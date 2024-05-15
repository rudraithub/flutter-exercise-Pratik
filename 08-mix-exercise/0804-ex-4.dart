void main()
{
  var a,b,m;
  a=10;
  b=20;

  m=a*b;

  print("multiplication of a * b :$m");

  if(m%2==0)
  {
    print("Ans. is EVEN");
  }
  else
  {
    print("Ans. is ODD");
  }

  if(m%4==0 && m%5==0)
  {
    print("Divisible by BOTH");
  }
  else
  {
    print("Not Divisible");
  }
}