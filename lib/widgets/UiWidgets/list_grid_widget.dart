import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/UiWidgets/appBar_widget.dart';

class ListGridWidget extends StatelessWidget {
  Map employee = {
    'componey': ["google", "microsoft", "amazon", "atlassion", "capjemini"],
    'emploeyee': ["shubham", "omkar", "sandesh", "akash", "pavan"]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
          title: 'Listview And GridView',
          backgroundColor: Theme.of(context).primaryColor),
      body: Container(
        // child: ListView.builder(
        //     itemBuilder: (context, index) {
        //       var componey = employee['componey'][index];
        //       var employe = employee['emploeyee'][index];
        //       return Card(
        //         child: ListTile(
        //           onTap: (){
        //             print(componey);
        //             print(employe);
        //           },
        //           leading: Icon(
        //             Icons.person,
        //             color: Theme.of(context).primaryColor,
        //           ),
        //           title: Text(componey),
        //           subtitle: Text(employe),
        //         ),
        //       );
        //     },
        //     itemCount: employee['emploeyee'].length),
        // child: GridView(
        //   gridDelegate:
        //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        //       crossAxisSpacing: 10,
        //       mainAxisSpacing: 20,
        //       childAspectRatio: 2/3),
        //   children: [
        //     Card(
        //       child: Center(
        //         child: ListTile(
        //           leading: Icon(
        //             Icons.person,
        //             color: Colors.orange,
        //           ),
        //           title: Text("Grid view Bulder"),
        //           subtitle: Text("marine drive"),
        //         ),
        //       ),
        //     ),
        //     Card(
        //       child: Center(
        //         child: ListTile(
        //           leading: Icon(
        //             Icons.person,
        //             color: Colors.orange,
        //           ),
        //           title: Text("Grid view Bulder"),
        //           subtitle: Text("marine drive"),
        //         ),
        //       ),
        //     ),
        //     Card(
        //       child: Center(
        //         child: ListTile(
        //           leading: Icon(
        //             Icons.person,
        //             color: Colors.orange,
        //           ),
        //           title: Text("Grid view Bulder"),
        //           subtitle: Text("marine drive"),
        //         ),
        //       ),
        //     ),
        //     Card(
        //       child: Center(
        //         child: ListTile(
        //           leading: Icon(
        //             Icons.person,
        //             color: Colors.orange,
        //           ),
        //           title: Text("Grid view Bulder"),
        //           subtitle: Text("marine drive"),
        //         ),
        //       ),
        //     ),
        //     Card(
        //       child: Center(
        //         child: ListTile(
        //           leading: Icon(
        //             Icons.person,
        //             color: Colors.orange,
        //           ),
        //           title: Text("Grid view Bulder"),
        //           subtitle: Text("marine drive"),
        //         ),
        //       ),
        //     ),
        //     Card(
        //       child: Center(
        //         child: ListTile(
        //           leading: Icon(
        //             Icons.person,
        //             color: Colors.orange,
        //           ),
        //           title: Text("Grid view Bulder"),
        //           subtitle: Text("marine drive"),
        //         ),
        //       ),
        //     ),
        //     Card(
        //       child: Center(
        //         child: ListTile(
        //           leading: Icon(
        //             Icons.person,
        //             color: Colors.orange,
        //           ),
        //           title: Text("Grid view Bulder"),
        //           subtitle: Text("marine drive"),
        //         ),
        //       ),
        //     ),
        //     Card(
        //       child: Center(
        //         child: ListTile(
        //           leading: Icon(
        //             Icons.person,
        //             color: Colors.orange,
        //           ),
        //           title: Text("Grid view Bulder"),
        //           subtitle: Text("marine drive"),
        //         ),
        //       ),
        //     ),
        //     Card(
        //       child: Center(
        //         child: ListTile(

        //           leading: Icon(
        //             Icons.person,
        //             color: Colors.orange,
        //           ),
        //           title: Text("Grid view Bulder"),
        //           subtitle: Text("marine drive"),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              crossAxisSpacing: 10,mainAxisSpacing: 10,),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.black,
              child: Center(
                child: ListTile(
                  leading: Icon(Icons.person,color: Colors.orange,),
                  title: Text(employee['emploeyee'][index],style: TextStyle(color: Theme.of(context).primaryColor),),
                  subtitle: Text(employee['componey'][index],style: TextStyle(color: Theme.of(context).primaryColor),),
                ),
              ),
            );
          },
          itemCount: employee['emploeyee'].length,
        ),
      ),
    );
  }
}
