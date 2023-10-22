import 'package:flutter/material.dart';
import 'description_page.dart';
import 'main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
                child: ListTile(
                  title: Text(
                    'Application',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              ListTile(
                onTap: (){},
                leading: const Icon(Icons.settings),
                title: const Text(
                  'Setting',
                ),
              ),
              ListTile(
                onTap: (){
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (BuildContext context){
                      return const LoginPage();
                    })
                  );
                },
                leading: const Icon(Icons.logout),
                title: const Text(
                  'Logout',
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white10,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  'Як не стати жертвою фішингу',
                ),
              ),
              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  shape: const StadiumBorder(),
                ),
                child: const Text('Як не стати жертвою телефонного шахрайства'),
              ),
              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  shape: const StadiumBorder(),
                ),
                child: const Text('Як не стати жертвою фальшивого інтернет магазину'),
              ),
              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  shape: const StadiumBorder(),
                ),
                child: const Text('Як не стати жертвою скімінгу та білого пластику'),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context){
                        return const DescriptionPage(
                          title: 'Як не стати жертвою фішингу',
                          imagePath: 'images/image1.png',
                        );
                      },
                    )
                  );
                },
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white10,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white10,
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset('images/image1.png'),
                      const ListTile(
                        title: Text(
                          'Як не стати жертвою фішингу',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context){
                        return const DescriptionPage(
                          title: 'Як не стати жертвою телефонного шахрайства',
                          imagePath: 'images/image2.jpg',
                        );
                      },
                      )
                  );
                },
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white10,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white10,
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset('images/image2.jpg'),
                      const ListTile(
                        title: Text(
                          'Як не стати жертвою телефонного шахрайства',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context){
                        return const DescriptionPage(
                          title: 'Як не стати жертвою фальшивого інтернет магазину',
                          imagePath: 'images/image3.jpg',
                        );
                      },
                      )
                  );
                },
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white10,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white10,
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset('images/image3.jpg'),
                      const ListTile(
                        title: Text(
                          'Як не стати жертвою фальшивого інтернет магазину',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context){
                        return const DescriptionPage(
                          title: 'Як не стати жертвою скімінгу та білого пластику',
                          imagePath: 'images/image4.png',
                        );
                      },
                      )
                  );
                },
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white10,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white10,
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset('images/image4.png'),
                      const ListTile(
                        title: Text(
                          'Як не стати жертвою скімінгу та білого пластику',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
