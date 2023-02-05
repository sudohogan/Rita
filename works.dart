class Possible {
  String? foely;
  dynamic hoely;
  String? doely;
  dynamic output;

  Possible(this.foely, this.doely, this.hoely);
  getRight() {
    var omo = num.parse(hoely);
    if (doely == 'm' && foely == 'km') {
      output = (omo * 1000);
      print({output});
    } else if (doely == 'inch' && foely == 'ft') {
      output = (omo * 12);
      print({output});
    }
  }
}
 
// void solve() {
//     Possible instance = Possible(foe.text, doe.text, hoe.text);
//     instance.getRight();
//   }
