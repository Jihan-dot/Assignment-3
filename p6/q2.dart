class House
{
  int ? id;
  String? name;
  double? price;
  House({this.id,this.name,this.price});
  void display()
  {
    print("the id of house is $id, name of the house is $name, and the price of the hose is $price");
  }
}
void main ()
{
  House h1= new House(id:101,name:"park villa",price:2500.351,);
  House h2= new House(id:102,name:"Camp Nou",price:250000.32541,);
  House h3= new House(id:101,name:"Old Trafford",price:3000.000,);
  List <House> houses=[h1,h2,h3];
  for (var i in houses)
  {
    i.display();
  }
}