import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/back_arrow.dart';
import 'package:flutter_application_1/components/logo.dart';

class Terms extends StatefulWidget {
  const Terms({super.key});

  @override
  State<Terms> createState() => _LoginDesignState();
}

class _LoginDesignState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.blue,
            ],
          ),
        ),
        child: const SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BackArrow(),
                      Logo(radius: 33),
                    ],
                  ),
                  SizedBox(height: 33),
                  Text(
                    'Terms and Conditions and Privacy Policy',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color:
                          Colors.lightBlue,
                    ),
                  ),
                  SizedBox(height: 11),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vitae diam lectus. Donec rhoncus, nulla ac venenatis fringilla, nisi lectus dictum nisi, ac gravida purus mi vel massa. Integer placerat vel purus nec pellentesque. Vivamus faucibus augue vitae dolor facilisis, at ornare est ullamcorper. Sed nec porttitor elit. Sed accumsan quam mauris, a efficitur mi laoreet non. Mauris quis congue magna. Cras lobortis justo vel nunc facilisis pretium vel at augue. Quisque dui ipsum, laoreet dignissim faucibus vitae, vulputate vel sem. Ut interdum egestas est et pretium. Integer tempus varius massa at finibus. Phasellus vel quam eget ipsum eleifend sollicitudin in sit amet sapien. Maecenas molestie sapien ut ligula auctor aliquet. Duis imperdiet est rhoncus magna cursus vestibulum. Etiam ac placerat elit, vel tincidunt odio. Vestibulum mattis mattis magna vitae hendrerit. Duis id dolor nulla. Nulla ornare sem id velit porttitor, et cursus est finibus. Ut nec tristique lorem, at cursus nunc. Morbi eget volutpat ipsum. Phasellus quis eleifend ante, a posuere lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque rutrum nibh quis ligula porttitor, eu dictum massa auctor. In quis massa a quam scelerisque sagittis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam vel mattis turpis. Quisque blandit facilisis sapien, non porttitor sem imperdiet vel. Praesent sit amet rutrum diam, in imperdiet purus. Vestibulum pretium justo ac sapien pellentesque viverra. Sed in malesuada ex, in lacinia erat. Nunc congue, lacus nec imperdiet ultrices, ipsum diam sodales justo, et maximus quam felis quis risus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam nec nunc molestie velit dapibus sollicitudin eget non lorem. Donec varius lacinia porttitor. Praesent id nisl et libero aliquet hendrerit at eu erat. Nam consequat euismod diam, ac elementum nulla tristique at. Morbi dapibus ullamcorper dui, at accumsan augue ultricies et. Fusce vestibulum faucibus mi, a vulputate dui hendrerit sed. Donec gravida dui et leo semper feugiat ac sed sapien. Aliquam pulvinar blandit ex sit amet porta. Aliquam et tortor leo. In blandit vulputate tempor. Quisque ultricies arcu felis, eget varius dui feugiat at. Fusce accumsan justo quis turpis semper fermentum. Integer eget augue et sem feugiat mollis pulvinar ac lorem. Ut tellus felis, ultricies sed sollicitudin vel, consectetur vel dui. Quisque a rhoncus diam. Duis dapibus, ipsum eu molestie aliquet, dolor nibh congue lectus, posuere condimentum augue metus vel nibh. Nam ac iaculis tortor. Donec scelerisque, leo a scelerisque finibus, sem nibh ultrices diam, ac hendrerit magna nisl at est. Ut eu dui ornare, tristique orci sed, congue lacus. Fusce consequat nisl quam, et molestie nulla euismod non. Nulla facilisi. Nam dapibus at odio id semper. Vivamus ullamcorper quis arcu non placerat. Integer aliquet tempor felis id viverra. Duis quis quam facilisis, suscipit orci ut, laoreet leo. Quisque sit amet ultrices elit. Integer eget arcu vitae mi ultrices feugiat. Integer imperdiet turpis ultricies mi sodales pharetra. Sed ornare mauris ut metus sollicitudin, in vehicula diam egestas.',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color:
                            Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
