import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/nav/controllers/nav_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../widgets/k_app_header.dart';
import 'form_view.dart';



class HomePage extends GetView<NavController> {
  const HomePage ({Key? key}) : super(key: key);
Widget _selectedPlanning({
 required Color color,
 required String title,
 required String subtitle,
}) {
  return Container(
  margin: EdgeInsets.symmetric(horizontal: 10.0),
  padding: EdgeInsets.only(left: 20),
  height: 120,
  width: 240,
  decoration: BoxDecoration(
   color: color
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(title,style: TextStyle(
        fontSize: 22,color: Colors.white,
      )),
      SizedBox(
        height: 5,
      ),
      Text(subtitle,style: TextStyle(
        fontSize: 19,color: Colors.white70,
      ),),
    ],
  ),
  );
}
  Widget _selectedExtras({required String image,
  required String name}){
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
      border: Border.all(color: Colors.red,width: 2)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(
            
            ),
          ),
          SizedBox(height: 10,),
          Text(name,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(
        backgroundColor: Colors.grey,
        child: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: [
           KAppHeader(), 
      Column( children: [SizedBox(height: 10),
          Row(children: [Icon(Icons.person),SizedBox(width: 10,),
          Text('About')],),
          SizedBox(height: 15),
          Row(children: [Icon(Icons.person_4_rounded),SizedBox(width: 10),
          Text('Donors group')],),
          SizedBox(height: 15),
          Row(children: [Icon(Icons.report_problem),SizedBox(width: 10),
          Text('Report a problem')],),
           SizedBox(height: 15),
          Row(children: [Icon(Icons.settings),SizedBox(width: 10),
          Text('Settings')],),
           SizedBox(height: 15),
          Row(children: [Icon(Icons.note),SizedBox(width: 10),
          Text('Privacy and policy')],),
           SizedBox(height: 15),
          Row(children: [Icon(Icons.star_border_sharp),SizedBox(width: 10),
          Text('Rate Us')],),
           SizedBox(height: 15),
          Row(children: [Icon(Icons.logout_rounded),SizedBox(width: 10),
          Text('Logout')],),
          ],),],),],))),


        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
        title: Text('Blood Bank',
        style: TextStyle(fontWeight: FontWeight.bold,
        fontSize:20),),
          actions: [Stack(children: [ Icon(Icons.notifications),
          Positioned(
            right: 5,
            child: Container(
            height: 10,width: 10,decoration: BoxDecoration(shape: BoxShape.circle,
            color: Colors.white),
          ))
          ],),SizedBox(width: 10),]
        ),
        
          floatingActionButton: FloatingActionButton(
            elevation: 10,
            onPressed: () {Navigator.pushReplacement(context, 
            MaterialPageRoute(builder:(context) => const FormView(),));},
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 223, 23, 12),
        foregroundColor: Colors.white,),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(shape: CircularNotchedRectangle(),
        color: Colors.red,
        height: 70,
         child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(children: [Icon(Icons.home),Text('Home')],),
            Column(children: [Icon(Icons.bloodtype_rounded),Text('Request')],)
           ],
        ),),
        body: Container(
          child: Container(
            height: 800,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30)
              )            ),
              child: ListView(
                padding:const EdgeInsets.only(left: 30,top: 30),
                children: [
                  Text('Planning',style: TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(padding: EdgeInsets.only(
                    left: 30,top: 30
                  ),
                  child: Row(
                    children: [
                      _selectedPlanning(
                        color: Colors.red,
                       title: 'Blood Planning', subtitle: 'Call for today'
                       ),
                       _selectedPlanning(
                        color: Colors.red,
                       title: 'Form fill for new', subtitle: 'New?')
                    
                    ],
                  ),),),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,
                    vertical: 30,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Selected Extras',style: TextStyle(
                          fontSize: 20,color: Colors.black,
                        ),),
                        Padding(padding: EdgeInsets.only(top:20 ),
                        child: Container(
                          height: 300,
                          child: GridView.count(
                            crossAxisCount: 2,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 8,
                            childAspectRatio: 1.30,
                            children: [
                            
                            ],
                            ),
                        ),)
                      ],
                    ),
                  )
                ],
              ),
          ),
        ),
      
        
        
        
        );
    
  }
}
