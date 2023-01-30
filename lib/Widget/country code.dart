import 'package:country_calling_code_picker/picker.dart';
import 'package:flutter/material.dart';

class Country_Code extends StatefulWidget {
  @override
  _Country_CodeState createState() => _Country_CodeState();
}

class _Country_CodeState extends State<Country_Code> {
  Country? _selectedCountry;

  @override
  void initCountry() async {
    final country = await getDefaultCountry(context);
    setState(() {
      _selectedCountry = country;
    });
  }

  @override
  Widget build(BuildContext context) {
    final country = _selectedCountry;
    return Scaffold(
      appBar: AppBar(
        title: Text('Country Calling Code Picker'),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed:  _onPressedShowDialog,child: Text("")),
          country == null
              ? Container()
              : Row(
                  children: [
                    InkWell(
                      onTap:
                        _onPressedShowDialog,
                      child: CircleAvatar(
                        child: Image.asset(
                          country.flag,
                          package: countryCodePackageName,
                          width: 100,
                        ),
                      ),
                    ),
                    Text("${country.callingCode}")
                  ],
                ),
        ],
      ),
    );
  }

  void _onPressedShowDialog() async {
    final country = await showCountryPickerDialog(
      context,
    );
    if (country != null) {
      setState(() {
        _selectedCountry = country;
      });
    }
  }
}

class PickerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Country'),
      ),
      body: Container(
        child: CountryPickerWidget(
          onSelected: (country) => Navigator.pop(context, country),
        ),
      ),
    );
  }
}
