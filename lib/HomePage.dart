import 'package:bank_detail/ModalData.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List Name = [
    "Axis Bank Ltd.",
    "City Union Bank Ltd.",
    "Bank of Baroda",
    "Bank of India",
    "Punjab & Sind Bank",
    "State Bank of India",
    "Union Bank of India",
    "HDFC Bank Ltd",
    "ICICI Bank Ltd.",
    "Kotak Mahindra Bank Ltd",
    "Nainital bank Ltd.",
    "YES Bank Ltd.",
  ];

  List Bank_Logo = [
    "Assets/Images/BankLogo/Axis.png",
    "Assets/Images/BankLogo/cub.png",
    "Assets/Images/BankLogo/bob.png",
    "Assets/Images/BankLogo/Boi.png",
    "Assets/Images/BankLogo/psb.png",
    "Assets/Images/BankLogo/sbi.png",
    "Assets/Images/BankLogo/ubi.png",
    "Assets/Images/BankLogo/hdfc.png",
    "Assets/Images/BankLogo/icici.png",
    "Assets/Images/BankLogo/kb.png",
    "Assets/Images/BankLogo/nb.png",
    "Assets/Images/BankLogo/yb.png",
  ];

  List Bank_Url = [
    "https://www.axisbank.com",
    "https://www.cityunionbank.com",
    "https://www.bankofbaroda.in",
    "https://bankofindia.co.in",
    "https://punjabandsindbank.co.in",
    "https://sbi.co.in",
    "https://www.unionbankofindia.co.in/english/home.aspx",
    "https://www.hdfcbank.com",
    "https://www.icicibank.com",
    "https://www.kotak.com/en/home.html",
    "https://www.nainitalbank.co.in/english/home.aspx",
    "https://www.yesbank.in",
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: Name.length,
          itemBuilder: (context, index) =>
              Bank_Name(Name[index], Bank_Logo[index],Bank_Url[index]),
        ),
      ),
    );
  }

  Widget Bank_Name(String Name, String Logo,String Url) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Data d1 = Data(Logo: Logo,Name: Name,Url: Url);
          Navigator.pushNamed(context, 'detail',arguments: d1);
        },
        child: Container(
          height: 80,
          width: double.infinity,
          color: Colors.black12,
          alignment: Alignment.center,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  "$Logo",
                  height: 60,
                  width: 60,
                ),
              ),
              Column(
                children: [
                  Text(
                    "$Name",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "$Name",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
