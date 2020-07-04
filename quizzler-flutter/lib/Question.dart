class Question{
  String question;
  bool answer;

  Question(String q, bool a){
    question=q;
    answer=a;
  }

}

class Questions{
  List<Question>questionBank;
  int q_no;
  int no_of_q;
  bool ended;

  Questions(){
    questionBank=[
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
    'No piece of square dry paper can be folded in half more than 7 times.',
    false),
    Question(
    'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
    true),
    Question(
    'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
    false),
    Question(
    'The total surface area of two human lungs is approximately 70 square metres.',
    true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
    'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
    true),
    Question(
    'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
    true),
    ];

    q_no=-1;
    no_of_q=questionBank.length;
    ended=false;

  }

  String getQuestion()
  {
    q_no++;
    if(q_no>=no_of_q) {
      ended=true;
      q_no = 0;
    }
    return questionBank[q_no].question;
  }

  bool checkAnswer(bool user_answer){
    if(user_answer==questionBank[q_no].answer)
      return true;
    else
      return false;
  }

}
