import 'package:carshare/presentation/login_page/login_page_viewmodel.dart';
import 'package:carshare/presentation/themes.dart';
import 'package:carshare/telegram/telegram_api.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginPageViewModel viewModel = LoginPageViewModel();
  PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    viewModel.addListener(() {
      setState(() {});
    });
    viewModel.page.listen(() => pageController.animateToPage(
        viewModel.page.value,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeIn));

    TelegramWebApp.expand();
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).themesExtension;

    return Scaffold(
      backgroundColor: theme.semiaccent100,
      body: PageView(
        controller: pageController,
        children: [
          Padding(
            padding: EdgeInsets.all(40),
            child: Stack(
              children: [
                Align(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Вход', style: TextStyle(color: theme.background100, fontSize: 24, fontWeight: FontWeight.w500),),
                      SizedBox(height: 100,),
                      TextField(
                        style: TextStyle(fontWeight: FontWeight.w700, color: theme.background100),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                          hintText: "EMAIL ИЛИ НОМЕР ТЕЛЕФОНА",
                          hintStyle: TextStyle(fontWeight: FontWeight.w700, color: theme.semiaccent80),
                          fillColor: theme.foreground,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8,),
                      TextField(
                        style: TextStyle(fontWeight: FontWeight.w700, color: theme.background100),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                          hintText: "ПАРОЛЬ",
                          hintStyle: TextStyle(fontWeight: FontWeight.w700, color: theme.semiaccent80),
                          fillColor: theme.foreground,
                          filled: true,
                          suffixIcon: Padding(padding: EdgeInsets.only(right: 15), child: Icon(Icons.password),),
                          suffixIconColor: theme.background100,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text('ЗАБЫЛ ПАРОЛЬ', style: TextStyle(fontWeight: FontWeight.w700, color: theme.accent70, fontSize: 16),)
                    ],
                  ),
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('ЕЩЕ НЕТ АККАУНТА? ', style: TextStyle(fontWeight: FontWeight.w700, color: theme.background100, fontSize: 14),),
                          Text('ЗАРЕГИСТРИРОВАТЬСЯ', style: TextStyle(fontWeight: FontWeight.w700, color: theme.accent70, fontSize: 14),)
                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: double.infinity,
                        height: 55,
                        child: Material(
                          borderRadius: BorderRadius.circular(10),
                          color: theme.accent100,
                          child: InkWell(
                            customBorder: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text("ВОЙТИ", style: TextStyle(fontWeight: FontWeight.w700, color: theme.background100, fontSize: 14),),
                            ),
                            onTap: () {viewModel.page.value = 1;},
                          ),
                        )
                      ),
                    ],
                  ),
                )
              ],
            )
          ),

          Center(
            child: Stack(
              children: [
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Вы вошли успешно!", style: TextStyle(fontWeight: FontWeight.w700, color: theme.background100, fontSize: 24),),
                      SizedBox(height: 12,),
                      Text("Можете закрыть окно", style: TextStyle(fontWeight: FontWeight.w500, color: theme.background100, fontSize: 16),),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.all(40),
                    child: Container(
                        width: double.infinity,
                        height: 55,
                        child: Material(
                          borderRadius: BorderRadius.circular(10),
                          color: theme.accent100,
                          child: InkWell(
                            customBorder: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text("ЗАКРЫТЬ", style: TextStyle(fontWeight: FontWeight.w700, color: theme.background100, fontSize: 14),),
                            ),
                            onTap: () {TelegramWebApp.close();},
                          ),
                        )
                    ),
                  )
                )
              ],
            )
          )
        ],
      )
    );
  }
}
