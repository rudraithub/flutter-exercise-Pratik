// bankName,branchName,accNumber and cityName 

void main()
{
  var x = bank();
  print(x.bankName);
  print(x.accNumber);
  print(x.branchName);
  print(x.cityName);
}

class bank
{
  int accNumber=364011223387;
  String bankName='HDFC',branchName='Avenue Road',cityName='Bangalore';
}