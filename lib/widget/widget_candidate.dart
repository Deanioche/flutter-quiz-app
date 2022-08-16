import 'package:flutter/material.dart';

class CandWidget extends StatefulWidget {
  // CandWidget을 사용하는 부모 위젯에서 onTap을 전달해주는 기능.
  VoidCallback tap;
  String text;
  int index;
  double width;
  bool answerState;

  CandWidget({this.tap, this.index, this.width, this.text, this.answerState});

  // 상태 관리 선언
  _CandWidgetState createState() => _CandWidgetState();
}

class _CandWidgetState extends State<CandWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width * 0.8,
      height: widget.width * 0.1,
      padding: EdgeInsets.fromLTRB(
        widget.width * 0.048,
        widget.width * 0.024,
        widget.width * 0.048,
        widget.width * 0.024,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.deepPurple),

        // 선택 되면 보라색, 아니면 흰색
        color: widget.answerState ? Colors.deepPurple : Colors.white,
      ),
      // 텍스트 또한 선택되면 흰색 아니면 보라색으로 만들기
      child: InkWell(
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: widget.width * 0.035,
            color: widget.answerState ? Colors.white : Colors.black,
          ),
        ),
        // 탭 했을 때
        onTap: () {
          setState(() {
            /*
              widget.tap(); 은
              screen_quiz.dart에서 
              CandWidget생성시 tap: 부분으로 넣어주는 setState함수를 실행
            */
            widget.tap();
            widget.answerState = !widget.answerState;
          });
        },
      ),
    );
  }
}
