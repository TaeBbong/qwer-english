class Phrase {
  int id;
  String kor;
  String eng;
  bool isDone;

  Phrase({
    required this.id,
    required this.kor,
    required this.eng,
    required this.isDone,
  });

  factory Phrase.fromMap(Map<String, dynamic> data) {
    return Phrase(
      id: data['id'],
      kor: data['kor'],
      eng: data['eng'],
      isDone: data['isDone'] == 0 ? false : true,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'kor': kor,
      'eng': eng,
      'isDone': isDone == true ? 1 : 0,
    };
  }

  Phrase copyWith({bool? isDone}) {
    return Phrase(id: id, kor: kor, eng: eng, isDone: isDone ?? this.isDone);
  }
}
