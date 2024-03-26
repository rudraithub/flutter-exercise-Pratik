void main()
{
  
Map<String,dynamic> x=
{
  "president" : "dopinder",
  "primeminister" : "modi",
  "total seats" : 150,
  "opposition parties" : "congress",
  "government type" : "democracy",
  "city" : "Bhavnagar"
};

  x.forEach((key, value) {
    print("$key : $value");
  });
}
