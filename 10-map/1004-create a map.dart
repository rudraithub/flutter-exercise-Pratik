void main()
{
Map<String,dynamic> f=
  {
    "accoutn number" : 185,
    "account holder" : "Pratik",
    "bank name" : "bank of rabada",
    "branch" : "kaliyabid",
    "ifsc" : 1001254525,
    "balance" : 0
  };
  f.forEach((key, value) {
    print("$key : $value");
  });
}