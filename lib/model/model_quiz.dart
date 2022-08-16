class Quiz {
  String title;
  List<String> candidates;
  int answer;

  Quiz({this.title, this.candidates, this.answer});

  Quiz.giveMeMap(Map<String, dynamic> map)
      : title = map['title'],
        candidates = map['candidates'],
        answer = map['answer'];

  Quiz.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        // 답을 /로 구분함
        candidates = json['body'].toString().split('/'),
        answer = json['answer'];
}
