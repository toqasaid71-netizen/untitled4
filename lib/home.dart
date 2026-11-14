import "package:flutter/material.dart";
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
List<String> categories=[
  "All","Men ","women","Kids Wear"
  "All","Men ","women","Kids Wear"
  "All","Men ","women","Kids Wear"
];
int selectedindex=0;
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Let's find your \n Exclusive Outfit",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600
                ,color: Colors.black
            ),),Text("Top Categories",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500
                ,color: Colors.black
            ),),
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  bool isselected= index==selectedindex;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedindex=index;
                    });
                  },
                  child: Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black
                      ,),

                      color: isselected?Colors.green:Colors.white
                    ),
                    //
                    margin:  EdgeInsets.only(right: 8),
                    padding: EdgeInsets.all(2),
                    child: Center(
                      child: Text(categories[index],style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500
                          ,color: Colors.black
                      ),),
                    ),
                  ),
                );
              },),
            )
          ],
        ),
      ),
    );
  }
}
