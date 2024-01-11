class Phrase {
  String kor;
  String eng;
  bool isDone;

  Phrase({required this.kor, required this.eng, required this.isDone});

  factory Phrase.fromMap(Map<String, dynamic> data) {
    return Phrase(
      kor: data['kor'],
      eng: data['eng'],
      isDone: data['isDone'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'kor': kor,
      'eng': eng,
      'isDone': isDone,
    };
  }
}
