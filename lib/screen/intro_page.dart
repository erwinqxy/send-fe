import 'package:animate_do/animate_do.dart';
import 'package:send/screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:slide_to_act/slide_to_act.dart';

////////////////////////////////////////
///   @faiz.rhm on Instagram
///
///   https://github.com/Faiz-rhm
///////////////////////////////////////

class IntroPage extends StatelessWidget {
  const IntroPage({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left : 16.0, top: 64, right: 16),
            child: Column(
              children: [
                FadeInDown(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/NFT_4.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                FadeInLeft(child: Text('Uplifting the Unbanked', style: TextStyle(color:Colors.yellowAccent[700], fontSize: 42, fontWeight: FontWeight.bold, fontFamily: ''),)),
                const SizedBox(height: 10,),
                FadeInLeft(child: const Text('Transact cheaply, quickly, securely with Stablecoins', style: TextStyle(color: Colors.grey, fontSize: 20),)),
                const SizedBox(height: 30,),
                FadeInUp(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/logo_send.png'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
              ]
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Builder(builder: (context) {
              final GlobalKey<SlideActionState> key = GlobalKey();
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SlideAction(
                  sliderRotate: false,
                  outerColor: Colors.grey[900],
                  innerColor: Colors.blue[700],
                  key: key,
                  sliderButtonIcon: const Icon(IconlyBroken.arrow_right),
                  onSubmit: () {
                    Future.delayed(
                      const Duration(seconds: 1),
                      () { Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomePage()),
                        );
                      },
                    );
                  },
                  child: FadeInRight(child: const Text('Swipe to get started', style: TextStyle(color: Colors.white, fontSize: 17),)),
                ),
              );
            },),
          ),
        ],
      ),
    );
  }
}
