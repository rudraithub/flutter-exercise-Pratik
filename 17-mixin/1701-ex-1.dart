void main(){
var obj=varient();
obj.electricvariant();
obj.petrolvariant();

}

mixin Elctricvariant{
 void electricvariant(){
    print("This is an electric variant");
  }
}

mixin Petrolvariant{
void  petrolvariant(){
    print("This is an petrol variant");
  }
}

class varient with Petrolvariant,Elctricvariant{}