// ## 0503- Write a program to check whether a number is even or odd using switch case.
// Test Data :
// Input number: 12

void main()
{
  int a=50;

  switch(a%2)
  {
    case 0:
    {
      print("number is even");
      break;
    }
    case 1:
    {
      print("Number is odd");
      break;
    }
    default:
    {
      print("Invalid...");
    }
  }
}