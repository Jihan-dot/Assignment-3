class Camera
{
  int? _id;
  String? _brand;
  String? _color;
  double? _price;
  void setID(int id)
  {
    this._id=id;
  }
  void setBrand(String brand)
  {
    this._brand=brand;
  }
  void setColor(String color)
  {
    this._color="ash";
  }
  void setPrice(double price)
  {
   this._price=price;
  }
  int getID()
  {
    return _id!;
  }
  String getBrand()
  {
    return _brand!;
  }
  String getcolor()
  {
    return _color!;
  }
  double price()
  {
    return _price!;
  }
  void display()
  {
    print("id: $_id");
    print("brand: $_brand");
    print("color: $_color");
    print("price: $_price");
  }
}
void main ()
{
  Camera cam= new Camera();
  cam.setID(100);
  cam.setBrand("Canon");
  cam.setColor("canon");
  cam.setPrice(50000);
  cam.display();
}