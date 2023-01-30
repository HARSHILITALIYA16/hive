import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Date_Time extends StatefulWidget {
  const Date_Time({Key? key}) : super(key: key);

  @override
  State<Date_Time> createState() => _Date_TimeState();
}

class _Date_TimeState extends State<Date_Time> {
  TextEditingController _time = TextEditingController();
  void initState() {
    _time.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width * 0.42,
            child: DateTimePicker(
              // controller: date,
              type: DateTimePickerType.date,
              dateMask: 'dd/MM/yyyy',
              style: GoogleFonts.rubik(color: Colors.white),
              // initialValue: DateTime.now().toString(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
              // icon: Icon(
              //   Icons.event,
              //   size: 20,
              //   color: Colors.grey,
              // ),
              // dateLabelText: 'Date',

              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.event,
                    size: 20,
                    color: Colors.grey,
                  ),
                  fillColor: Colors.white,
                  hintText: "Date",
                  hintStyle: TextStyle(color: Colors.white)),
              onChanged: (val) => print(val),
              onSaved: (val) => print(val),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.42,
            child: TextField(
              controller: _time, style: TextStyle(color: Colors.white),
              //editing controller of this TextField
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.timer,
                  color: Colors.grey,
                  size: 20,
                ), //icon of text field
                hintText: "Time",
                hintStyle: GoogleFonts.rubik(color: Colors.white),
              ),
              readOnly: true,
              //set it true, so that user will not able to edit text
              onTap: () async {
                TimeOfDay? pickedTime = await showTimePicker(
                  initialTime: TimeOfDay.now(),
                  context: context,
                );

                if (pickedTime != null) {
                  print(pickedTime.format(context)); //output 10:51 PM
                  DateTime parsedTime = DateFormat.jm()
                      .parse(pickedTime.format(context).toString());
                  //converting to DateTime so that we can further format on different pattern.
                  print(parsedTime); //output 1970-01-01 22:53:00.000
                  String formattedTime = DateFormat('HH:mm').format(parsedTime);
                  print(formattedTime); //output 14:59:00
                  //DateFormat() is from intl package, you can format the time on any pattern you need.

                  setState(() {
                    _time.text = formattedTime; //set the value of text field.
                  });
                } else {
                  print("Time is not selected");
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
