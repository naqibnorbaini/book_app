import 'package:book_app/ui/Category.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> category = ["Science Fiction", "Horror", "Biography"];
  String categorySelected = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book Categories"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: category.length,
                    itemBuilder: (context, index) {
                      return ListTile(title: Text(category[index]),
                      onTap: (){
                        setState(() {
                          categorySelected = category[index];
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Category(category: categorySelected,)),
                        );
                      },);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
