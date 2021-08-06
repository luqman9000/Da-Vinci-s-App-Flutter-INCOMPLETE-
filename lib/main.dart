import 'package:flutter/material.dart';
import 'dart:io';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //MyHomePage({Key key, this.title}) : super(key: key);

  //final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(image: new AssetImage("asset/images/birujubo.jpg"),
              fit: BoxFit.cover,
              ),
            ),
          ),
          new Center(
            child:
            Column(children: <Widget>[
              SizedBox(height: 140,),
              Text('Da Vinci',
                  style: TextStyle(fontSize: 80, fontFamily: 'P22', shadows: [
                    Shadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(5, 5),
                        blurRadius: 10),
                  ])),
              SizedBox(height: 50,),
              Card(
                elevation: 20,
                shadowColor: Colors.black,
                color: Colors.white.withOpacity(0.5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: SizedBox(
                  width: 250,
                  height: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        SizedBox(
                          height: 60,
                          width: 160,
                          child: RaisedButton(
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => proceed_page()),
                                );
                              },
                              color: Color(0xffccc5a3),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.play_arrow_rounded),
                                    SizedBox(width: 22),
                                    Text('Proceed', textAlign: TextAlign.center, style: TextStyle(fontSize: 37, fontFamily: 'P22')),
                                  ],
                                ),
                              )
                          ),
                        ),
                        SizedBox(height: 55),
                        SizedBox(
                          height: 60,
                          width: 160,
                          child: RaisedButton(
                              onPressed: () => null,
                              color: Color(0xffccc5a3),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.image),
                                    SizedBox(width: 22),
                                    Text('Gallery', textAlign: TextAlign.center, style: TextStyle(fontSize: 37, fontFamily: 'P22')),
                                  ],
                                ),
                              )
                          ),
                        ),
                        SizedBox(height: 55),
                        SizedBox(
                          height: 60,
                          width: 160,
                          child: RaisedButton(
                              onPressed: () => exit(0),
                              color: Color(0xffccc5a3),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.book),
                                    SizedBox(width: 22),
                                    Text('About', textAlign: TextAlign.center, style: TextStyle(fontSize: 37, fontFamily: 'P22')),
                                  ],
                                ),
                              )
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],),
          )
        ],


      )
    );
  }
}

//===Procceed Page=====================================================================================================================================================

class proceed_page extends StatelessWidget
{
@override
  Widget build(BuildContext context){
  return Scaffold(
    body: new Stack(
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(image: new AssetImage("asset/images/birujubo2.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        new Center(
            child:
            Column(children: <Widget>[
              SizedBox(height: 200,),
              Card(
                elevation: 20,
                shadowColor: Colors.black,
                color: Colors.white.withOpacity(0.5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: SizedBox(
                  width: 250,
                  height: 400,
                  child:
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                    SizedBox(
                        height: 60,
                        width: 160,
                        child: RaisedButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => critical_thinking()),
                              );
                            },
                            color: Color(0xffccc5a3),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  SizedBox(width: 22),
                                  Text('Critical Thinking', textAlign: TextAlign.center, style: TextStyle(fontSize: 23, fontFamily: 'P22')),
                                ],
                              ),
                            )
                        )
                    ),
                        SizedBox(height: 55),
                        SizedBox(
                            height: 60,
                            width: 160,
                            child: RaisedButton(
                                onPressed: () => null,
                                color: Color(0xffccc5a3),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 22),
                                      Text('Observant', textAlign: TextAlign.center, style: TextStyle(fontSize: 38, fontFamily: 'P22')),
                                    ],
                                  ),
                                )
                            )
                        ),
                        SizedBox(height: 55),
                        SizedBox(
                            height: 60,
                            width: 160,
                            child: RaisedButton(
                                onPressed: () => null,
                                color: Color(0xffccc5a3),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 22),
                                      Text('Curious', textAlign: TextAlign.center, style: TextStyle(fontSize: 38, fontFamily: 'P22')),
                                    ],
                                  ),
                                )
                            )
                        ),
                      ]
                    ),
                  ),
                ),


              ),
            ]
            )
        ),
      ]
    )

  );
}
}

//========Critical Thinking page================================================================================================================================================

class critical_thinking extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
   return Scaffold(
     body: new Stack
       (
       children: <Widget>[
         new Container(
           decoration: new BoxDecoration(
             image: new DecorationImage(image: new AssetImage("asset/images/birujubo3.jpg"),
               fit: BoxFit.cover,
             ),
           ),
         ),

         new Center(
             child:
             Column(children: <Widget>[
               SizedBox(height: 200,),
               Card(
                 elevation: 20,
                 shadowColor: Colors.black,
                 color: Colors.white.withOpacity(0.5),
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(20)),
                 child: SizedBox(
                   width: 250,
                   height: 400,
                   child:
                   Padding(
                     padding: const EdgeInsets.all(20.0),
                     child: Column(
                         children: [
                           SizedBox(height: 20),
                           SizedBox(
                               height: 60,
                               width: 160,
                               child: RaisedButton(
                                   onPressed: (){
                                     Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) => ActivityPageOne()),
                                     );
                                   },
                                   color: Color(0xffccc5a3),
                                   shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(20)),
                                   child: Padding(
                                     padding: const EdgeInsets.all(4.0),
                                     child: Row(
                                       children: [
                                         SizedBox(width: 22),
                                         Text('Activity', textAlign: TextAlign.center, style: TextStyle(fontSize: 38, fontFamily: 'P22')),
                                       ],
                                     ),
                                   )
                               )
                           ),
                           SizedBox(height: 55),
                           SizedBox(
                               height: 60,
                               width: 160,
                               child: RaisedButton(
                                   onPressed: () => null,
                                   color: Color(0xffccc5a3),
                                   shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(20)),
                                   child: Padding(
                                     padding: const EdgeInsets.all(4.0),
                                     child: Row(
                                       children: [
                                         SizedBox(width: 22),
                                         Text('Activity', textAlign: TextAlign.center, style: TextStyle(fontSize: 38, fontFamily: 'P22')),
                                       ],
                                     ),
                                   )
                               )
                           ),
                           SizedBox(height: 55),
                           SizedBox(
                               height: 60,
                               width: 160,
                               child: RaisedButton(
                                   onPressed: () => null,
                                   color: Color(0xffccc5a3),
                                   shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(20)),
                                   child: Padding(
                                     padding: const EdgeInsets.all(4.0),
                                     child: Row(
                                       children: [
                                         SizedBox(width: 22),
                                         Text('Activity', textAlign: TextAlign.center, style: TextStyle(fontSize: 38, fontFamily: 'P22')),
                                       ],
                                     ),
                                   )
                               )
                           ),
                         ]
                     ),
                   ),
                 ),
               ),
             ]
             )
         ),


       ]
     ),
   );
  }

}

//================Activity page===============================================================================================================================

class ActivityPageOne extends StatelessWidget
{
  @override
  Widget build(BuildContext context){
    return const MaterialApp(title: 'Activity Page 1', home: ActivityPage1() );
  }
}

class ActivityPage1 extends StatefulWidget{
  const ActivityPage1({Key? key}) : super(key: key);

  @override
  _ActivityPage1State createState() => _ActivityPage1State();
}

class _ActivityPage1State extends State<ActivityPage1>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SfCalendar(
        view: CalendarView.month,
        dataSource: MeetingDataSource(_getDataSource()),
        monthViewSettings: const MonthViewSettings(
          appointmentDisplayMode: MonthAppointmentDisplayMode.appointment
        ),
      )
    );
  }

  List<Meeting> _getDataSource() {
    final List<Meeting> meetings = <Meeting>[];
    final DateTime today = DateTime.now();
    final DateTime startTime =
    DateTime(today.year, today.month, today.day, 9, 0, 0);
    final DateTime endTime = startTime.add(const Duration(hours: 2));
    meetings.add(Meeting(
        'Conference', startTime, endTime, const Color(0xFF0F8644), false));
    return meetings;
  }
}

class MeetingDataSource extends CalendarDataSource {
  /// Creates a meeting data source, which used to set the appointment
  /// collection to the calendar
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return _getMeetingData(index).from;
  }

  @override
  DateTime getEndTime(int index) {
    return _getMeetingData(index).to;
  }

  @override
  String getSubject(int index) {
    return _getMeetingData(index).eventName;
  }

  @override
  Color getColor(int index) {
    return _getMeetingData(index).background;
  }

  @override
  bool isAllDay(int index) {
    return _getMeetingData(index).isAllDay;
  }

  Meeting _getMeetingData(int index) {
    final dynamic meeting = appointments![index];
    late final Meeting meetingData;
    if (meeting is Meeting) {
      meetingData = meeting;
    }

    return meetingData;
  }
}

class Meeting {
  /// Creates a meeting class with required details.
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  /// Event name which is equivalent to subject property of [Appointment].
  String eventName;

  /// From which is equivalent to start time property of [Appointment].
  DateTime from;

  /// To which is equivalent to end time property of [Appointment].
  DateTime to;

  /// Background which is equivalent to color property of [Appointment].
  Color background;

  /// IsAllDay which is equivalent to isAllDay property of [Appointment].
  bool isAllDay;
}