import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Terms_Conditions extends StatefulWidget {
  const Terms_Conditions({Key? key}) : super(key: key);

  @override
  State<Terms_Conditions> createState() => _Terms_ConditionsState();
}

class _Terms_ConditionsState extends State<Terms_Conditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.asset("assets/Back Navigator.svg"))),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Terms & Conditions.",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Accusamus sit at ut consequatur sit nobis\nplaceat. Quo deleniti veritatis velit incidunt\nillum reiciendis. Omnis libero et aperiam aut\nvoluptatem alias molestiae. Autem eius rerum\nreprehenderit amet aut amet minima.\n\nCumque nulla veritatis neque quo voluptatem\nmollitia sint recusandae eum. Perferendis quo\nmollitia unde ex nihil.\n\nAut omnis fuga facilis et qui pariatur nihil non\nincidunt. Quos sunt perspiciatis ratione\nducimus laboriosam blanditiis deleniti\nrepellat. Vitae vitae dignissimos voluptas\nasperiores voluptatum quia.\n\nEt natus dicta omnis aut ea nobis aperiam et\nratione. Id asperiores maiores. Repudiandae\nratione totam consequuntur recusandae\naliquam et tempora.\n",
                  style: TextStyle(fontSize: 17, color: Color(0xffc6c6c6)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Culpa ut sint velit. Magni delectus amet\nveritatis. Et eveniet aut iure. Ducimus\naccusantium rerum iusto iure occaecati qui\ncumque nemo impedit.\n\nModi nobis quia incidunt optio qui esse et et\ndolorem. Excepturi labore reiciendis veniam.\nTempore voluptates architecto. Consectetur\net fuga error et.",
                  style: TextStyle(fontSize: 17, color: Color(0xffc6c6c6)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
