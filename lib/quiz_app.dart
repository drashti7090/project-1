import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List attemptAns = [];
  List rightAns = [];
  List storeIndex = [];
  PageController pageController = PageController();
  List group = List.generate(5, (index) => 0);
  List quizList = [
    {
      "question": "Epsom (England) is the place associated with",
      "option1": ["A.Horse racing", "B.Polo", "C.Shooting", "D.Snooker"],
      "ans": 0,
      "select": null
    },
    {
      "question":
          "First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in",
      "option1": ["A.1968", "B.1967", "C.1958", "D.1922"],
      "ans": 1,
      "select": null
    },
    {
      "question": "Golf player Vijay Singh belongs to which country?",
      "option1": ["A.USA", "B.INDIA", "C.Fiji", "D.UK"],
      "ans": 2,
      "select": null
    },
    {
      "question": "First Afghan War took place in",
      "option1": ["A.1848", "B.1833", "C.1843", "D.1839"],
      "ans": 3,
      "select": null
    },
    {
      "question":
          "Federation Cup, World Cup, Allywyn International Trophy and Challenge Cup are awarded to winners of",
      "option1": ["A.Volleyball", "B.Tennis", "C.Basketball", "D.Cricket"],
      "ans": 0,
      "select": null
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: 5,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(right: 0.3, left: 0.3),
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "Assets/Images/navy-background.png",
                    ),
                    fit: BoxFit.fill)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 170),
                        child: Text(
                            "${index + 1}. ${quizList[index]["question"]}",
                            style: const TextStyle(
                                color: Color(0xffADA9A8), fontSize: 20)),
                      ),
                      GridView.builder(
                        itemCount: quizList[index]["option1"].length,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 300,
                          childAspectRatio: 3,
                          mainAxisSpacing: 20,
                        ),
                        itemBuilder: (context, i) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("${quizList[index]["option1"][i]}",
                                  style: const TextStyle(
                                      color: Color(0xffADA9A8), fontSize: 20)),
                              Radio(
                                value: i,
                                groupValue: group[index],
                                onChanged: (value) {
                                  group[index] = value!;
                                  pageController.nextPage(
                                      duration: const Duration(microseconds: 1),
                                      curve: Curves.ease);
                                  storeIndex.add(index);
                                  quizList[index]["select"] = i;
                                  attemptAns = quizList
                                      .where((element) =>
                                          element["select"] != null)
                                      .toList();
                                  rightAns = quizList
                                      .where((element) =>
                                          element["select"] == element["ans"])
                                      .toList();
                                  setState(() {});
                                },
                                fillColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                    return const Color(0xffADA9A8);
                                  },
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 20, left: 10, right: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          commonButton(
                            name: "Previous",
                            buttonPress: () {
                              pageController.previousPage(
                                  duration: const Duration(microseconds: 1),
                                  curve: Curves.easeInQuad);
                            },
                          ),
                          Text(
                            "${index + 1}/5",
                            style: const TextStyle(
                              color: Color(0xff085FA4),
                            ),
                          ),
                          if (index != quizList.length - 1)
                            commonButton(
                              name: "Next",
                              buttonPress: () {
                                pageController.nextPage(
                                    duration: const Duration(microseconds: 1),
                                    curve: Curves.easeInQuad);
                              },
                            )
                          else
                            commonButton(
                                buttonPress: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Result(
                                            ans: attemptAns.length,
                                            unAns: (quizList.length -
                                                attemptAns.length),
                                            right: rightAns.length,
                                            wrong: (quizList.length -
                                                rightAns.length)),
                                      ));
                                },
                                name: "Submit"),
                        ]),
                  )
                ]),
          );
        },
      ),
    );
  }

  Widget commonButton({String? name, Function()? buttonPress}) {
    return ElevatedButton(
      onPressed: buttonPress,
      style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          shadowColor: const Color(0xff085FA4),
          side: BorderSide(color: const Color(0xff085FA4).withOpacity(0.60)),
          backgroundColor: const Color(0xff011834),
          elevation: 50),
      child: Text(
        "$name",
        style: const TextStyle(
          color: Color(0xff085FA4),
        ),
      ),
    );
  }
}

class Result extends StatefulWidget {
  final int? ans;
  final int? unAns;
  final int? right;
  final int? wrong;

  const Result({Key? key, this.ans, this.unAns, this.wrong, this.right})
      : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("Assets/Images/navy-background.png"),
              fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Result",
              style: TextStyle(
                  color: Color(0xffADA9A8),
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            GridView(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 3.5,
              ),
              shrinkWrap: true,
              children: [
                children(name: "Attempt ans."),
                children(name: "${widget.ans}"),
                children(name: "Un-Attempt ans."),
                children(name: "${widget.unAns}"),
                children(name: "Right ans."),
                children(name: "${widget.right}"),
                children(name: "Wrong ans."),
                children(name: "${widget.wrong}"),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget children({required String name}) {
    return Container(
      color: const Color(0xffADA9A8),
      alignment: Alignment.center,
      child: Text(name,
          style: const TextStyle(
              color: Color(0xff011834),
              fontSize: 20,
              fontWeight: FontWeight.w500)),
    );
  }
}
