import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:github_user_finder_app/models/account_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final formKey = GlobalKey<FormState>();
  final userController = TextEditingController(text: 'mrkzqsmv');
  late Future<AccountModel> futureAccount;

  @override
  void initState() {
    super.initState();
    futureAccount = fetchAccount();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(20, 29, 47, 1),
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Form(
                key: formKey,
                child: buildTextFormField(),
              ),
              const SizedBox(
                height: 10,
              ),
              FutureBuilder<AccountModel>(
                future: futureAccount,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  } else if (snapshot.hasData) {
                    return Container(
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(30, 42, 71, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Image.network(
                                          snapshot.data!.avatarUrl.toString()),
                                    )),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Name:  ${snapshot.data!.name.toString()}',
                                        style: GoogleFonts.acme(
                                            color: Colors.white),
                                      ),
                                      const Divider(),
                                      Text(
                                        snapshot.data!.bio != null
                                            ? 'Bio:  ${snapshot.data!.bio.toString()}'
                                            : 'Bio:  This profile has no bio',
                                        style: GoogleFonts.acme(
                                            color: Colors.white),
                                      ),
                                      const Divider(),
                                      Text(
                                        'Created at:  ${snapshot.data!.createdAt}',
                                        style: GoogleFonts.acme(
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                buildColumn(
                                    'Repos', snapshot.data!.reposUrl!.length),
                                buildColumn(
                                    'Followers', snapshot.data!.followers!),
                                buildColumn(
                                    'Following', snapshot.data!.following!),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                buildRow(
                                    const Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.white,
                                    ),
                                    snapshot.data!.location != null
                                        ? '${snapshot.data!.location}'
                                        : 'That user has not shared their location yet'),
                                const SizedBox(
                                  height: 10,
                                ),
                                buildRow(
                                    const Icon(
                                      Icons.chat,
                                      color: Colors.white,
                                    ),
                                    snapshot.data!.twitterUsername != null
                                        ? '${snapshot.data!.twitterUsername}'
                                        : 'That user has not shared their Twitter username yet'),
                                const SizedBox(
                                  height: 10,
                                ),
                                buildRow(
                                    const Icon(
                                      Icons.mail,
                                      color: Colors.white,
                                    ),
                                    snapshot.data!.email != null
                                        ? '${snapshot.data!.email}'
                                        : 'That user has not shared their email yet'),
                                const SizedBox(
                                  height: 10,
                                ),
                                buildRow(
                                    const Icon(
                                      Icons.home_work_outlined,
                                      color: Colors.white,
                                    ),
                                    snapshot.data!.company != null
                                        ? '${snapshot.data!.company}'
                                        : 'That user has not shared their company yet'),
                                const SizedBox(
                                  height: 10,
                                ),
                                buildRow(
                                    const Icon(
                                      Icons.person,
                                      color: Colors.white,
                                    ),
                                    snapshot.data!.login != null
                                        ? '${snapshot.data!.login}'
                                        : 'That user has not shared their username yet'),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                buildColumn('Public Repos',
                                    snapshot.data!.publicRepos!),
                                buildColumn('Public Gists',
                                    snapshot.data!.publicGists!),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    );
                  }
                  return Text(snapshot.data!.following.toString());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: const Color.fromRGBO(20, 29, 47, 1),
      title: Text(
        'Github User Finder',
        style: GoogleFonts.acme(fontSize: 25, color: Colors.white),
      ),
    );
  }

  Column buildColumn(String title, int value) {
    return Column(
      children: [
        Text(
          title,
          style: GoogleFonts.acme(color: Colors.white, fontSize: 20),
        ),
        Text(
          value.toString(),
          style: GoogleFonts.acme(color: Colors.white, fontSize: 25),
        ),
      ],
    );
  }

  Row buildRow(Icon icon, String text) {
    return Row(
      children: [
        icon,
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: Text(
            text.toString(),
            style: GoogleFonts.acme(color: Colors.white, fontSize: 15),
          ),
        ),
      ],
    );
  }

  TextFormField buildTextFormField() {
    return TextFormField(
      controller: userController,
      style: GoogleFonts.acme(color: Colors.white),
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        prefixIconColor: Colors.white,
        hintText: 'Github Account',
        hintStyle: GoogleFonts.acme(color: Colors.white),
        filled: true,
        fillColor: const Color.fromRGBO(30, 42, 71, 1),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(0, 121, 255, 1),
            ),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                setState(() {
                  futureAccount = fetchAccount();
                  userController.clear();
                });
              }
            },
            child: Text(
              'Search',
              style: GoogleFonts.acme(color: Colors.white),
            ),
          ),
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Username cannot be empty.';
        }
        return null;
      },
    );
  }

  Future<AccountModel> fetchAccount() async {
    final response = await http
        .get(Uri.parse('https://api.github.com/users/${userController.text}'));

    if (response.statusCode == 200) {
      return AccountModel.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('Sorry, I cant find this account');
    }
  }
}
