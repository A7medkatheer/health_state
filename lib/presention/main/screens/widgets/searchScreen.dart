// import 'package:flutter/material.dart';
// import 'package:healthystate/presention/resources/color_manager.dart';
// import 'package:lottie/lottie.dart'; // Add this line to import the 'lottie' package
//
// class ItemEx extends StatelessWidget {
//   const ItemEx({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Card(
//         child: Column(
//           children: [
//             Lottie.asset('assets/images/lottie1.json', fit: BoxFit.fill),
//             Text(
//               'ISTRUTIONS',
//               style: TextStyle(
//                 color: ColorManager.primary,
//                 fontWeight: FontWeight.w500,
//                 fontSize: 30,
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Text(
//               'Classification of straightness in the place designated for exercise in f'
//               'ause a change about 45 times divided into 3 consecutive sets.',
//               style: TextStyle(
//                   color: ColorManager.black,
//                   fontWeight: FontWeight.w500,
//                   fontSize: 10),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';

class searchScreen extends StatelessWidget {
  const searchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController TextSearch = TextEditingController();
    return Scaffold(
      appBar: AppBar(
          leading: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.sports_gymnastics),
                onPressed: () {},
              ),
            ],
          ),
          title: const Text('Health State'),
          actions: [
            IconButton(
              icon: Image.asset(
                'assets/images/health.png',
                height: 50,
                width: 80,
              ),
              onPressed: () {},
            ),
          ]),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              textDirection: TextDirection.rtl,
              onTap: () {},
              // validator: validate,
              controller: TextSearch,
              keyboardType: TextInputType.text,
              onChanged: (String value) {},
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                label: const Text('Search'),
                labelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w800),
                hintText: 'Entre your food',
                hintStyle: const TextStyle(backgroundColor: Colors.white10),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
              ),
            ),
          ),
          Expanded(
            child: ConditionalBuilder(
              condition: true,
              builder: (context) => ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return null;
                  },
                  separatorBuilder: (context, index) {
                    return Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey,
                    );
                  },
                  itemCount: 10),
              fallback: (context) =>
                  const Center(child: CircularProgressIndicator()),
            ),
          )
        ],
      ),
    );
  }
}

List<String> food = [
  'eggs',
  'mango',
  'fish',
  'meat',
  'chiken',
];
