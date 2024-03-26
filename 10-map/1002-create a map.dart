void main()
{
Map<String,dynamic> a=
  {
    'name':'Gyanguru vidhyapith',
    'mobile no':900099890,
    'address':'Sagwadi,Bhavnagar',
    'course':['Commerce','Science','Arts']
  };
  print("Print map : $a");
  print("Find length : ${a.length}");
  print("Access mobile key value : ${a['mobile no']}");
  print("checking NAME key exiest on map : ${a['name']}");
  
  a.forEach((key, value) 
  {
    print(key  +"-" ' print using foreah : $value');
  });
  //remove address
  a.remove('address');
  print(a);
  // Add "Email" key and store "gyanguru@gmail.com".
  a.addAll({"email": "gyanguru@gmail.com"});
  print(a);
  // Check map is empty or not
  print(a.isEmpty);
  // Add multiple value on map.
  a.addAll({'student name':"xyz","Student city":"surat"});
  print(a);
}
