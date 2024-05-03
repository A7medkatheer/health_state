import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthystate/presention/resources/routes_manager.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Profile'),
      ),
    );
  }
}

class DietsPage extends StatelessWidget {
  const DietsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
            child: CardsDiet(diet: diet[index])),
        itemCount: diet.length,
      ),
    );
  }
}

class CardsDiet extends StatelessWidget {
  const CardsDiet({super.key, required this.diet});
  final Diets diet;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.startDiets, arguments: diet);
      },
      child: CardDiet(diet: diet),
    );
  }
}

class StartDiet extends StatelessWidget {
  const StartDiet({super.key, required this.diet});
  final Diets diet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardDiet(diet: diet),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    foregroundImage: AssetImage('assets/images/coach.png'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Health State Dietitian ',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0),
                      ),
                      Text(
                        'Ahmed katheer',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                      Text(
                        'mS.RD.bC-ADE.ACE-PT.CDE',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0),
                      ),
                      Text(
                        'Don’t shortchange yourself on protein\n in order to save calories,Boosting your\n protein helps you feel full and maintain\n muscle mass as you lose weight,',
                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'How it Works',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'High-protein plans support weight loss by keeping you full longer and preventing loss of calorie-burning muscle mass, Personalize your protein target based on your body weight and nutrition goals, it’s a good fit for athletes and people looking to build muscle mass, Choose animal-and plant-based protein sources along with healthy carbs and fats.',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Text(
                'Highlights',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
            const CheckText(
                text:
                    ' Protein-rich foods keep you full longer\n and reduce hunger,making it easier to\n stick to your weight loss plan'),
            const CheckText(
              text:
                  ' Helps prevent muscle loss accompanying\n weight loss, maintaining a higher\n metabolic rate',
            ),
            const CheckText(
              text:
                  ' Enjoy flavorful and filling protein-rich\n foods and recipes',
            ),
            const CheckText(
              text:
                  ' Perfect for athletes-get strong and\n energized with high-quality carbs and\n healthy fats',
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: SizedText(
                text: 'Sample Recipes',
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: SizedBox(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/e1.jpeg'),
                            fit: BoxFit.fill)),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: SizedText(
                text: 'Includes',
              ),
            ),
            const CheckText(
              text:
                  ' Planning protein target, selecting your\n macros and planning your diet',
            ),
            const CheckText(
              text: ' Personalized vitamin, and mineral targets',
            ),
            const CheckText(
              text: ' AutoPilot to guide your weight loss',
            ),
            const CheckText(
              text:
                  ' Advice and feedback tailored for high-\n protein lifestyle',
            ),
            const CheckText(
              text: ' Easy and delicious high-protein recipes',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Center(child: Image.asset('assets/images/error.png')),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Text(
                  "If you have a chronic health condition, including kidney disease or liver disease, consult your healthcare provider before starting a high-protein diet plan."),
            )
          ],
        ),
      ),
    );
  }
}

class CheckText extends StatelessWidget {
  const CheckText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
      child: Row(
        children: [
          const Icon(
            Icons.check_sharp,
            color: Colors.green,
          ),
          Column(
            children: [Text(text)],
          )
        ],
      ),
    );
  }
}

class SizedText extends StatelessWidget {
  const SizedText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0));
  }
}

class Diets {
  final String images;
  final String nameDiet;
  final String title;

  Diets({required this.images, required this.nameDiet, required this.title});
}

List<Diets> diet = [
  Diets(
      images: "assets/images/Rectangle 3.png",
      nameDiet: "Premium",
      title: "Time-tested and proven, No food os off-limits"),
  Diets(
      images: "assets/images/Rectangle 6.png",
      nameDiet: "High-Protein",
      title: "Power with protein to curb hunger and build strong muscles"),
  Diets(
      images: "assets/images/Rectangle 4.png",
      nameDiet: "Low-Carb",
      title: "Pump up protein and put brakes on carbs to get faster results"),
  Diets(
      images: "assets/images/Rectangle 5.png",
      nameDiet: "Keto",
      title: "Limit carbs and pump up fats to burn fat more effectively"),
  Diets(
      images: "assets/images/Rectangle 7.png",
      nameDiet: "Low-Fat",
      title: "Naturally low-fat and nutrient-rich foods for weight loss."),
  Diets(
      images: "assets/images/Rectangle 8.png",
      nameDiet: "Mediterranean",
      title: "enjoy mediterranean flavors, promote whole-body health"),
  Diets(
      images: "assets/images/Rectangle 9.png",
      nameDiet: "Vegetarian",
      title: "Eat deliciously without meat. Get healthier with more veggies"),
  Diets(
      images: "assets/images/Rectangle 10.png",
      nameDiet: "Vegan",
      title: "A solely plant-based diet that comes with major health benefits"),
];

class CardDiet extends StatelessWidget {
  const CardDiet({super.key, required this.diet});
  final Diets diet;
  @override
  Widget build(BuildContext context) {
    return Stack(
      // textDirection: TextDirection.rtl,
      children: [
        Column(
          children: [
            Container(
              // padding: const EdgeInsets.only(left: 20, top: 30),
              height: 366.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(diet.images), fit: BoxFit.fill)),
            ),
          ],
        ),
        // const Text('Chat',
        //     style: TextStyle(fontSize: 30, color: Colors.black)),
        Container(
          // padding: const EdgeInsets.only(left: 30, top: 30),
          margin: const EdgeInsets.only(left: 30, top: 30),
          // alignment: Alignment.topLeft,
          // height: 400.h,
          // width: 336.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                // textAlign: TextAlign.start,
                diet.nameDiet,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 33.0),
              ),
              Text(
                // textAlign: TextAlign.start,
                'View Diet >',
                style: TextStyle(
                    color: diet.nameDiet == "Low-Carb"
                        ? const Color(0xffDC7700)
                        : const Color(0xffE4FF74),
                    fontWeight: FontWeight.bold,
                    fontSize: 19.0),
              ),
              const SizedBox(height: 290),
              Text(
                diet.title,
                style: const TextStyle(
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    fontSize: 19.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
