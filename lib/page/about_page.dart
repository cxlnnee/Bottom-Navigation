import 'package:flutter/material.dart';


class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
      body: Center(
        child : Column(
            mainAxisAlignment : MainAxisAlignment.center,
            children: [
              Image.network(
                'https://lh3.googleusercontent.com/a/ACg8ocItkI4S_XjVZMi4PsRDxU1KTPFm5J__nbFZR8AP-ccOMQDv9eCj=s288-c-no',
                width: 300,
                height: 300,
              ),
              const SizedBox(height: 20),
              const Text (
                'About Me',
                style: TextStyle(fontSize: 30),
              ),
              const Text (
                  'Hi, Im Celina Buenaventura, 20 yrs old, from imus cavite. currently 3rd yr IT student in GRC',
                  style: TextStyle(fontSize: 30)

              )
            ]
        ),
      ),
    );
  }
}

}

