class Model{
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  Model({this.name, this.message, this.time, this.avatarUrl});
}

List<Model> dummyData = [
  new Model(
    name: "John Cena",
    message: "I am coming to kathua",
    time: "15:30",
   avatarUrl:  "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AACBfLe.img?h=0&w=720&m=6&q=60&u=t&o=f&l=f&x=494&y=327"
  ),
  new Model(
    name: "The Rock",
    message: "See you with John!",
    time: "17:30",
   avatarUrl:  "https://assets.vogue.com/photos/59132f18dc6868483f55b55a/master/w_2259,h_3000,c_limit/00-lede-the-rock.jpg"
  ),
];