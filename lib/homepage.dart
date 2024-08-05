import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Text(
            'Skip',
            style: TextStyle(color: Colors.purple),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/mybank.png',
                  width: 250,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                'Hello,\nWelcome Back!',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  prefixStyle: TextStyle(color: Colors.black45),
                  labelText: 'Enter Your Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const TextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.security_update_rounded),
                  prefixStyle: TextStyle(color: Colors.black45),
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      const Text('Remember me')
                    ],
                  ),
                  GestureDetector(
                    child: const Text("Forget Password?"),
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              ElevatedButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(350, 50),
                ),
                child: const Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
