// import 'package:bank_detail/ModalData.dart';
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class Detail extends StatefulWidget {
//   const Detail({Key? key}) : super(key: key);
//
//   @override
//   State<Detail> createState() => _DetailState();
// }
//
// class _DetailState extends State<Detail> {
//   @override
//   Widget build(BuildContext context) {
//     Data d1 = ModalRoute.of(context)!.settings.arguments as Data;
//     return SafeArea(
//       child: Scaffold(
//         body: Center(
//           child: Column(
//             children: [
//               CircleAvatar(
//                 backgroundColor: Colors.white,
//                 radius: 100,
//                 backgroundImage: AssetImage("${d1.Logo}"),
//               ),
//               Text(
//                 "${d1.Name}",
//                 style: TextStyle(
//                   fontSize: 40,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               Hello("${d1.Url}"),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget Hello(String Url)
//   {
//     Uri uri = Uri.parse("${Url}");
//     return Container(
//       height: 50,
//       width: 100,
//       child: Text("Website"),
//     );
//   }
// }

import 'package:bank_detail/ModalData.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    Data d1 = ModalRoute.of(context)!.settings.arguments as Data;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                child: Image.asset(
                  "${d1.Logo}",
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "${d1.Name}",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.black12,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.call),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "${d1.Call}",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        call("${d1.Call}"),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.black12,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.web_outlined),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "${d1.Url}",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        url("${d1.Url}")
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget url(String Url) {
    Uri uri = Uri.parse("${Url}");
    return InkWell(
      onTap: () {
        launchUrl(uri);
      },
      child: Container(
        height: 50,
        width: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black, width: 2),
        ),
        child: Text(
          "Website",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget call(String call) {
    return InkWell(
      onTap: () async {
        Uri lanchUri = Uri(
          scheme: "tel",
          path: call,
        );
        await launchUrl(lanchUri);
      },
      child: Container(
        height: 50,
        width: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black, width: 2),
        ),
        child: Text(
          "Call",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
