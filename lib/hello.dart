bool topLevel = true;

void main() {
 // final color = MyColor(80, 80, 128);
  int a = 10;
  var names = ["abdul","ansari","flutter","anndroid"];
  try {
    //there was no medicine
    print(names[4]);
  } catch (e) {
   print(names[3]);
  }


  print("rest of the codee");

}

int sumUpToFive(int a, [int? b, int? c, int? d, int? e]) {
  int sum = a;
  if (b != null) sum += b;
  if (c != null) sum += c;
  if (d != null) sum += d;
  if (e != null) sum += e;
  return sum;
}

void printName(String firstName, String lastName, {String? middleName}) {
  print('$firstName ${middleName ?? ''} $lastName');
}



