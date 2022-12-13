import 'package:flutter/material.dart';
import 'package:book_app/constant.dart' as constant;

class Category extends StatefulWidget {
  final String category;
  const Category(
      {Key? key,
        required this.category})
      : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {

  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.category),),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: constant.result.length,
                itemBuilder: (context, index){
                 if(constant.result[index]['categoryName'] == widget.category){
                  return Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.grey)
                          )
                        ),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                    width: 100,
                                    height: 110,
                                    child: Image.network(constant.result[index]['bookCoverUrl']))),
                            Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(constant.result[index]['title'])
                                      ],
                                    ),
                                    Row(
                                      children: [
                                         Text("by "),
                                         Text(constant.result[index]['authorName'], style: TextStyle(fontStyle: FontStyle.italic),)
                                      ],
                                    )
                                  ],
                                ))
                          ],
                        ),
                      )
                    ],
                  );
                   
                   /* ListTile(
                    leading: Container(
                        width: 80,
                        height: 200,
                        child: Image.network(constant.result[index]['bookCoverUrl'])),*//*Image.network(constant.result[index]['bookCoverUrl'], width: 100, height: 100,),*//*
                    title: Text(constant.result[index]['title']),
                  );*/
                 }else{
                  return SizedBox();
                 }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
