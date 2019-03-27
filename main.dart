import "dart:math" as math;

///Here all the functions are called
void main() {
  print(adjusmentProof([55, 47, 98], [50, 50, 100], 3, 5.991));
}

///This method allows to calculate the value for
///"Pruebas de bondad de ajuste" in order to do that,
///we need to receive the frequency's expected events,
///frequency's looked events and the number of the categories
///or classes. In adition to that, this function returns
///the final hypothesis (true or false)
adjusmentProof(frequencyL, frequencyE, numberK, maximunValue) {
  var result = 0.0;
  for (var i = 0; i < numberK; i++) {
    result += math.pow(frequencyL[i] - frequencyE[i], 2) / frequencyE[i];
  }
  print("Value X^2: $result");
  return result < maximunValue ? "No se rechaza" : "Se rechaza";
}
