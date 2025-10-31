class animal
{
  int? id;
  String? name;
  String? color;
}
class cat extends animal
{
  String? sound;
  
  cat(int id,String name,String color,this.sound)
  {
    this.id=id;
    this.name=name;
    this.color=color;
  }

  void display()
  {
    print("the id of the cat is $id,name is $name,color is $color and sound is $sound");
  }
}
void main ()
{
  cat c= cat(101,"tom","gray","meow");
  c.display();
}
