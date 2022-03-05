import 'package:flutter/material.dart';
import 'package:ganak_admin/screens/map_screen.dart';

class EmployeesList extends StatelessWidget {
  const EmployeesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Employees List'),
      ),
      body: Container(
        height: height*0.9,
        width: width,
        child: Stack(
          children: [
            Image.asset('assets/logo.png'),
            Container(
              padding: EdgeInsets.only(left: width*.02),
              alignment: Alignment.center,
              height: height*0.95,
              width: width*.96,
              child: ListView.builder(
                itemCount: 25,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: ()=>{Navigator.of(context).push(MaterialPageRoute(builder: (_)=>MapScreen()))},
                      child: Card(
                        color: Colors.white.withOpacity(0.7),
                        child: ListTile(
                          title: Text('Bijay Khadka',
                          style: TextStyle(
                            fontSize: height*0.022,
                            fontWeight: FontWeight.w600
                          ),),
                          trailing: Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      ),
                    );
              })),
          ],
        ),
      ),
    );
  }
}
