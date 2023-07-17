import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Insider extends StatelessWidget {
  const Insider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),title: Text('MYNTRA INSIDER',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),backgroundColor: Colors.white,),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/insidermyntra.png'),fit: BoxFit.cover)),height: 400,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
              children: [
              Align(alignment: Alignment.centerLeft,child : Text('Hi Akshay,',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.amber[600]),),),
              SizedBox(height: 15,),
              Align(alignment: Alignment.centerLeft,child : Text('We are pleased to see your interest in the insider program.',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.amber[600]),),),
              SizedBox(height: 15,),
              Align(alignment: Alignment.centerLeft,child : Text('You are just a few purchases away from your goal!',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.grey),),),
              SizedBox(height: 15,),
              Row(children: [
              Container(height:80,child: Align(alignment: Alignment.bottomLeft,child: Text('How To Get There',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),)),
              SizedBox(width: MediaQuery.of(context).size.width*0.36),
              Container(height: 80,width: 100,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/Untitled1.png'),fit: BoxFit.cover,),),),],),
              SizedBox(height:15,),
              Container(child: Column(children: [
                Container(
                  child: Row(children: [
                    Align(alignment: Alignment.center,child: Image(image: AssetImage('assets/images/crown1.png'),fit: BoxFit.cover,height: 100,),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                  
                      child: Container(
                        height: 100,
                        child: Column(
                          children: [
                        Text('₹709',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                        Text('You have spent',style: TextStyle(fontSize: 15,color:Colors.grey[600]),),
                      ]),),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*0.2,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                  
                      child: Container(
                        height: 100,
                        child: Column(
                          children: [
                        Text('₹7000',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                        Text('Goal',style: TextStyle(fontSize: 15,color:Colors.grey[600]),),
                      ]),),
                    ),
                  ]),
                  decoration: BoxDecoration(color: Colors.grey[900],borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight:Radius.circular(10))),
                ),
                Container(
                  child: Row(children: [
                    Align(alignment: Alignment.center,child: Image(image: AssetImage('assets/images/crown1.png'),fit: BoxFit.cover,height: 100,),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                  
                      child: Container(
                        height: 100,
                        child: Column(
                          children: [
                        Text('1/5',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                        Text('Your Orders',style: TextStyle(fontSize: 15,color:Colors.grey[600]),),
                      ]),),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*0.2,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                  
                      child: Container(
                        height: 100,
                        child: Column(
                          children: [
                        Text('5',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                        Text('Goal',style: TextStyle(fontSize: 15,color:Colors.grey[600]),),
                      ]),),
                    ),
                  ]),
                  decoration: BoxDecoration(color: Colors.grey[900],),
                )
              ]),),
              SizedBox(height: 15,),
              Container(child: Text('Note: Recent purchases will only reflect in the goal once the return window is over',style: TextStyle(color: Colors.grey[600]),),),
              SizedBox(height: 25,),
              Align(alignment: Alignment.centerLeft,child: Container(child: Text('Benefits Of Joining The Program',style: TextStyle(color: Colors.amber[600],fontSize: 20,fontWeight: FontWeight.bold),),)),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(children: [
                    Container(child: Row(children: [
                      CircleAvatar(backgroundImage: AssetImage('assets/images/key.jpeg'),radius: 25,),
                      SizedBox(width: 20,),
                      Text('Early Access To The Sales',style: TextStyle(color: Colors.white,fontSize: 18),)
                    ]),),
                    Divider(
                      thickness: 1,
                      color: Colors.grey[800],
                    ),
                    SizedBox(height: 15,),
                     Container(child: Row(children: [
                      CircleAvatar(backgroundImage: AssetImage('assets/images/trophy.jpg'),radius: 25,),
                      SizedBox(width: 20,),
                      Text('Insider Exclusive Rewards & Benefits',style: TextStyle(color: Colors.white,fontSize: 18),)
                    ]),),
                    Divider(
                      thickness: 1,
                      color: Colors.grey[800],
                    ),
                    SizedBox(height: 15,),
                     Container(child: Row(children: [
                      CircleAvatar(backgroundImage: AssetImage('assets/images/phone.jpeg'),radius: 25,),
                      SizedBox(width: 20,),
                      Text('Priority Customer Support',style: TextStyle(color: Colors.white,fontSize: 18),)
                    ]),),
                  ],),
                ),
              ),
              Container(child: Column(
              children: [
              Align(alignment: Alignment.centerLeft,child: Container(child: Text('How does it work',style: TextStyle(color: Colors.amber[600],fontSize: 20,fontWeight: FontWeight.bold)),)),
              SizedBox(height: 10,),
              Align(alignment: Alignment.centerLeft,child: Container(child: Text('Earn Supercoins with every purchase.',style: TextStyle(fontSize: 15,color: Colors.grey),),)),
              SizedBox(height: 10,),
              Align(alignment: Alignment.centerLeft,child: Container(child: Text('You can get upto 3 SuperCoins for every 100 spent',style: TextStyle(fontSize: 15,color: Colors.grey),),),),
              SizedBox(height: 10,),
              Container(decoration: BoxDecoration(color: Colors.grey[900]),
                child: Column(children: [
                  Container(child: Image.asset('assets/images/insider1.png'),),
                ]),
              ),
               Container(decoration: BoxDecoration(color: Colors.grey[900]),
                  child: Row(children: [
                  SizedBox(width: 10,),
                  Container(child: Image.asset('assets/images/arrow.jpeg'),height: 30,),
                  SizedBox(width: 10,),
                  Container(child: Text('Shop on Myntra to Upgrade your tier',style: TextStyle(color: Colors.grey),),),
                ]),),
            ]),),
            ]),),),
        ]),
      ),
     bottomNavigationBar: BottomAppBar(
      color: Colors.grey[900],child: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Container(height: 50,child: ElevatedButton(onPressed: () => 
        Navigator.of(context).pop(), child: Text('CONTINUE SHOPPING'),
         style: ElevatedButton.styleFrom(
    primary: Colors.red[300], // Background color
  ),
       ),
       ),
     ),),

    );
  }
}