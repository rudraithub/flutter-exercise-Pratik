/*Hospital Name :'Pulse'
Mobile : 900099890
Address :'Top three,Bhavnagar'
Department : ['Radiology','Orthopedics']*/

void main()
{
  Map<String,dynamic> r=
{
  'name' : 'pluse',
  'mobile' : 900099890,
  'address' : 'top 3 ',
  'dept' : ['Radiology','Orthopedics']
};

print('Print map :$r');

// Access mobile key value.
print(r['mobile']);

// Find length of map.
print(r.length);

// Check 'name' key exiest on this Map.
print(r['name']);

// Print this Map using forEach.
r.forEach((key, value) {
  print(key + ': $value');
});

// Remove "Address" key from Map
r.remove('address');
print(r);

// Add "Email" key and store "pulse@gmail.com"
r.addAll({'email' : 'pulse@gmail.com'});
print(r);

// Check map is empty or not
print(r.isEmpty);

// Add multiple value on map.
//  "Doctor Name" : "J.B.Patel"
//  "Staff" : 400
r.addAll({'doctor name' : 'j.b.patel','staff' : 400});
print(r);
}