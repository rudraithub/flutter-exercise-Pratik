void main()
{
  Map<String,dynamic> lion = {
    'name' : 'pratik',
    'address' : 'bhangar',
    'age' : '19',
    'country' : 'India',
  };
  print(lion);
  lion['country']='usa';
  print(lion);
}