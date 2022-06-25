import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var output = "";
  List <dynamic> lst =[1,3,4,5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: lst.length,
        itemBuilder: (context,index){
        return Container(
          margin: EdgeInsets.only(top: 10.0),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: ListTile(
            title: Text("${lst[index]}"),
            trailing: Container(
              width: 50,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                         showDialog(context: context, builder: (context){
          return AlertDialog(
            title: Text("Edit"),
            content: TextField(
              onChanged: (value){
                output =(value);
              },
            ),
            actions: [
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                setState(() {
                  lst.replaceRange(index, index+1, {output});
                });
              }, child: Text("Edit Item"))
            ],
          );
        });          
                      });
                    },
                    child: Icon(Icons.edit)),

                    GestureDetector(
                    onTap: (){
                      setState(() {
                        lst.removeAt(index);
                      });
                    },
                    child: Icon(Icons.delete)),
                ],
              ),
            ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(context: context, builder: (context){
          return AlertDialog(
            title: Text("Add Items"),
            content: TextField(
              onChanged: (value){
                output =(value);
              },
            ),
            actions: [
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                setState(() {
                  lst.add(output);
                });
              }, child: Text("Add Items"))
            ],
          );
        });
      },child: Text("Add"),),
    );
  }
}