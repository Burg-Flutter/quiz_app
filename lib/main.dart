

import 'package:flutter/material.dart';


void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State createState() => _MyHomePageState();
}

class _MyHomePageState extends State {
  List<Map> allQuestions = [
    {
      "question": "Which of the following are CPU scheduling algorithms?",
      "options": [
        "Priority Scheduling",
        "Round Robin",
        "FCFS",
        "All of the above"
      ],
      "answerIndex": 3,
    },
    {
      "question": "FIFO scheduling is a type of:",
      "options": [
        "Pre-Emptive ",
        "Non-Pre-Emptive ",
        "DeadLine Scheduling",
        "None Of the above"
      ],
      "answerIndex": 1,
    },
    {
      "question": "FIFO scheduling is a type of:",
      "options": [
        'Quick Sharing OS',
        'Quick Sharing OS',
        'RealTime OS',
        'Batch OS'
      ],
      "answerIndex": 2,
    },
    {
      "question": "UNIX is written in which language?",
      "options": ["C", "C++", "JAVA", "PYTHON"],
      "answerIndex": 0,
    },
    {
      "question": "Which of the following schedules threads?",
      "options": ["Virtual Memory", "Operating System", 'Input', 'CPU'],
      "answerIndex": 1,
    },
  ];

  bool questionScreen = true;
  int questionIndex = 0;
  int selectedAnswerIndex = -1;
  int noOfCorrectAnswers = 0;

  MaterialStateProperty<Color?> checkAnswer(int buttonIndex) {
    if (selectedAnswerIndex != -1) {
      if (buttonIndex == allQuestions[questionIndex]["answerIndex"]) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (buttonIndex == selectedAnswerIndex) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(null);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }

  void validateCurrentPage() {
    if (selectedAnswerIndex == -1) {
      return;
    }
    if (selectedAnswerIndex == allQuestions[questionIndex]["answerIndex"]) {
      noOfCorrectAnswers += 1;
    }
    if (selectedAnswerIndex != -1) {
      if (questionIndex == allQuestions.length - 1) {
        setState(() {
          questionScreen = false;
        });
      }
      selectedAnswerIndex = -1;
      setState(() {
        questionIndex += 1;
      });
    }
  }

  Scaffold isQuestionScreen() {
    if (questionScreen == true) {
      return Scaffold(
        appBar: AppBar(
          toolbarOpacity: 0.9,
          toolbarHeight: 120,
          title: const Text(
            'Quiz App',
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.w800,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(70),
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            Container(
              height: 644,
              width: 411,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(142, 11, 127, 235),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(50))),
              //color: Color.fromARGB(78, 3, 136, 245),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    'Score $noOfCorrectAnswers/${allQuestions.length}',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 77, 2, 239),
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Question : ${questionIndex + 1} / ${allQuestions.length}',
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    height: 100,
                    width: 400,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Text(
                      ' ${allQuestions[questionIndex]['question']}',
                      style: const TextStyle(
                          //backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 60,
                    width: 380,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: checkAnswer(0),
                          foregroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 20, 14, 14))),
                      onPressed: () {
                        if (selectedAnswerIndex == -1) {
                          setState(() {
                            selectedAnswerIndex = 0;
                          });
                        }
                      },
                      child: Text(
                        '${allQuestions[questionIndex]['options'][0]}',
                        style: const TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 60,
                    width: 380,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: checkAnswer(1),
                          foregroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 20, 14, 14))),
                      onPressed: () {
                        if (selectedAnswerIndex == -1) {
                          setState(() {
                            selectedAnswerIndex = 1;
                          });
                        }
                      },
                      child: Text(
                        '${allQuestions[questionIndex]['options'][1]}',
                        style: const TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 60,
                    width: 380,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: checkAnswer(2),
                          foregroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 20, 14, 14))),
                      onPressed: () {
                        if (selectedAnswerIndex == -1) {
                          setState(() {
                            selectedAnswerIndex = 2;
                          });
                        }
                      },
                      child: Text(
                        '${allQuestions[questionIndex]['options'][2]}',
                        style: const TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 60,
                    width: 380,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: checkAnswer(3),
                          foregroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 20, 14, 14))),
                      onPressed: () {
                        if (selectedAnswerIndex == -1) {
                          setState(() {
                            selectedAnswerIndex = 3;
                          });
                        }
                      },
                      child: Text(
                        '${allQuestions[questionIndex]['options'][3]}',
                        style: const TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            validateCurrentPage();
          },
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          child: const Icon(
            Icons.forward,
            color: Color.fromARGB(255, 0, 187, 255),
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          toolbarOpacity: 0.9,
          toolbarHeight: 120,
          title: const Text(
            'Quiz App',
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.w800,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(70),
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Image.network(
              "https://m.media-amazon.com/images/I/71gacP4F04L._AC_UF1000,1000_QL80_.jpg",
              height: 470,
              width: 410,
            ),
            const Text(
              "Congratulations!!!",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Quiz Score ",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "$noOfCorrectAnswers/${allQuestions.length}",
              style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0), fontSize: 30),
            ),
            ElevatedButton(
                onPressed: () {
                  questionIndex = 0;
                  questionScreen = true;
                  noOfCorrectAnswers = 0;
                  selectedAnswerIndex = -1;
                  setState(() {});
                },
                child: const Text(
                  "Take Quiz Again",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.orange,
                  ),
                ))
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isQuestionScreen(),
    );
  }
}

