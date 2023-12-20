import 'package:flutter/material.dart';
import 'package:home_services_app/select_provider.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';
import 'package:home_services_app/global.dart' as globals;

class ScreenDate extends StatefulWidget {
  const ScreenDate({super.key});

  @override
  State<ScreenDate> createState() => _ScreenDateState();
}

class _ScreenDateState extends State<ScreenDate> {
  DateTime? _date;
  @override
  Widget build(BuildContext context) {
    _dateString() {
      if (_date == null) {
        return 'Please select a date...';
      } else {
        return '${_date?.day} - ${_date?.month} - ${_date?.year}';
      }
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_date != null) {
            globals.setSelectedDate(_date!);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ScreenSelectProvider(),
              ),
            );
          }
        },
        child: Icon(
          Icons.arrow_forward_ios,
          size: 20,
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_dateString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                textAlign: TextAlign.center),
            ElevatedButton.icon(
                onPressed: () async {
                  final result = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2010),
                    lastDate: DateTime(2050),
                  );
                  if (result != null) {
                    setState(() {
                      _date = result;
                    });
                  }
                },
                icon: Icon(Icons.calendar_today),
                label: Text('Choose date')),
          ],
        ),
      ),
    );
  }
}
