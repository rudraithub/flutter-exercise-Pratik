void main()
{
    Map<String,dynamic> p= {
        'Name':'Rudra It Hub',
        'Mobile':9892345678,
        "Address":'Leela circle Bhavnagar',
        'course' : ['Android','Ios','Java','Swift']
    };
   
     print("print MAP:$p");

    print("print mobile key value: ${p['Mobile']}");
    print('');

    // /* print(p.length);*/
    print("Print length :${p.length}");

     print('');
    print(p.isEmpty);

    print('');
    p.remove('Address');
    print(p);

  // Check 'name' key exiest on this Map.
  print('');
  print(p['name']);

  // Print this Map using forEach.
    print('');
    p.forEach((key, value) {print( key + " : $value");});

  // Add "Email" key and store "rudraithub.bhavangar@gmail.com".
    print('');
    p.addAll({'email':'rudraithub.bhavangar@gmail.com'});
    print(p);

// add multiple value on map.
    print('');
    p.addAll({'hooby':'games','education':'bechlor'});
    print(p);
}