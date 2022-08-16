import 'dart:convert';
import 'model_quiz.dart';

List<Quiz> parseQuizs(String responseBody) {
  /*
    parsed 된 데이터를 퀴즈 모델로 변환해 리스트로 만들어 반환
  */
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Quiz>((json) => Quiz.fromJson(json)).toList();
}
