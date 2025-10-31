class laptop
{
  int? id;
  String? name;
  int? ram;
}
void main ()
{
  laptop l1= new laptop();
  l1.id=016;
  l1.name="HP";
  l1.ram=8;
  laptop l2 = new laptop();
  l2.id=5299;
  l2.name ="Dell";
  l2.ram=16;
  laptop l3=new laptop();
  l3.id=15;
  l3.name="asus";
  l3.ram=16;
  print(" id of laptop 1 is ${l1.id},name is ${l1.name} and ram is ${l1.ram} ");
  print(" id of laptop 2 is ${l2.id},name is ${l2.name} and ram is ${l2.ram} ");
  print(" id of laptop 3 is ${l3.id},name is ${l3.name} and ram is ${l3.ram} ");
}