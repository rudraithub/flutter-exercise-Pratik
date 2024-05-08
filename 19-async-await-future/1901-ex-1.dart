void main() async
{
  print('dopinder');
  await disp();
  print('john');
}

Future <void> disp() async
{
  Future.delayed(Duration(seconds: 4),()=> print('pratik'));
}