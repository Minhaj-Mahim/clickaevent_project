import 'package:clickaevent_project/ui/screens/home_page_screen.dart';
import 'package:clickaevent_project/ui/widgets/nav_bar.dart';
import 'package:clickaevent_project/ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  MySnakesBar(massage,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(massage))
    );
  }


  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var currentIndex = 0;


  @override
  Widget build(BuildContext context) {


     return Scaffold(
       drawer: const Navbar(),
       appBar: AppBar(
         elevation: 50,
         //backgroundColor: Colors.blueAccent,
         title: const Text("clickAEvent"),
         centerTitle: true,
         actions: [
           IconButton(onPressed: (){
             showSearch(
                 context: context,
                 delegate: Search());
           },
               icon: const Icon(Icons.search))
         ],
       ),
       backgroundColor: Colors.amberAccent,
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: currentIndex,
         type: BottomNavigationBarType.fixed,
         onTap: (index){
           currentIndex = index;
         },
         items: const [
           BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home" ),
           BottomNavigationBarItem(icon: Icon(Icons.search),label:"Search" ),
           BottomNavigationBarItem(icon: Icon(Icons.calendar_view_month_rounded),label:"Calendar" ),
           BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label:"Account", ),
           BottomNavigationBarItem(icon: Icon(Icons.menu),label:"Menu" ),
         ],
       ),
       body: getBodyWidget(),
     );
  }
  getBodyWidget() {
  return (currentIndex==0)? const HomePageScreen():Container();
  }

}