import 'package:flutter/material.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offertorio/auth/providers/fiebase_auth_phone/global_providers/firabase_phone_auth.dart';

class CountrySelectionScreen extends StatelessWidget {
  static const String routeName = 'country_selection_screen';
  const CountrySelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Country / Region"),
      ),
      body: Consumer(
        builder: (context, ref, _) {
          final authFirebase = ref.read(authFirebaseProvider);
          return ListView.separated(
            itemCount: authFirebase.countries.length,
            separatorBuilder: (_, __) => Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Divider(
                color: Colors.grey[400],
                height: 0.5,
              ),
            ),
            itemBuilder: (BuildContext context, int index) {
              final country = authFirebase.countries[index];
              return _countryListTile(context, ref, country);
            },
          );
        },
      ),
    );
  }

  Widget _countryListTile(
    BuildContext context,
    WidgetRef ref,
    CountryWithPhoneCode country,
  ) {
    return ListTile(
      dense: true,
      title: Text(
        '${country.countryName}',
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 16.0, color: Colors.black),
      ),
      trailing: Text(
        '+${country.phoneCode}',
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 16.0, color: Colors.grey),
      ),
      onTap: () {
        final authService = ref.read(authFirebaseProvider);
        authService.setCountry(country);
        Navigator.pop(context);
      },
    );
  }
}
