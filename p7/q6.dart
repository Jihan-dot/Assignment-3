import 'dart:math';

int? generateRandom() {
  Random random = Random();
  bool returnValue = random.nextBool();
  if (returnValue) {
    return 100;
  } else {
    return null;
  }
}

void main() {

  int status = generateRandom() ?? 0;

  print("Status: $status");
}
