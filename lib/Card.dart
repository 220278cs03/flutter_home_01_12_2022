import 'package:flutter/material.dart';

import 'models/card_model.dart';

class Card_Page extends StatefulWidget {
  const Card_Page({Key? key}) : super(key: key);

  @override
  State<Card_Page> createState() => _Card_PageState();
}

class _Card_PageState extends State<Card_Page> {
  int index = -1;
  List<CardModel> list = [
    CardModel(image: 'master.png', number: '**** 1234 '),
    CardModel(image: 'visa.png', number: '**** 4887 ')
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/2,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Choose payment method", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.close), color: Colors.black,)
                ],
              ),
              SizedBox(height: 38,),
              Text("EXISTING CARDS", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xff8A8A8A)),),
              Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    itemCount: 2,
                    itemBuilder: (context, index){
                      return InkWell(
                        child: Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                              color: Color(0xffF8F8FA),
                              borderRadius: BorderRadius.all(Radius.circular(6)),
                              border: Border.all(color: this.index == index ? Color(0xff334D8F) : Colors.transparent)
                          ),
                          child: Row(
                              children: [
                                Image.asset(list[index].image),
                                SizedBox(width: 18,),
                                Text(list[index].number, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                              ]
                          ),
                        ),
                        onTap: (){
                          if(this.index == index){
                            this.index = -1;
                          }else{
                            this.index = index;
                          }

                          setState(() {});
                        },
                      );
                    }),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    border: Border.all(color: Color(0xff334D8F))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Add new payment method', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff334D8F)),),
                    Icon(Icons.add, color: Color(0xff334D8F),)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: Color(0xff334D8F),
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
                child: Center(child: Text('Continue', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),)),
              )
            ]
        ),
      ),
    );
  }
}
