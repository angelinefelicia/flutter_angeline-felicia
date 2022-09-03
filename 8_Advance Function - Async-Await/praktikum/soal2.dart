void main() {
  List dataInList = [
    ['0', 'Angeline'],
    ['1', 'Felicia']
  ];
  print("------------------------");
  print("Data in List: $dataInList");

  Map dataInMap = {};
  for (var data in dataInList) {
    dataInMap.addAll({data[0]: data[1]});
  }
  print("Data in Map: $dataInMap");
  print("------------------------");
}
