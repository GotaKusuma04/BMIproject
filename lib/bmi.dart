import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:bmi_project/about.dart';
import 'bmi_result.dart';

class InputBMI extends StatefulWidget {
  @override
  _InputBMIState createState() => _InputBMIState();
}

class _InputBMIState extends State<InputBMI> {
  final nama = TextEditingController();
  final jenis_kelamin = TextEditingController();
  int tinggi = 0;
  int tanggal = 2;
  int bulan = 2;
  int tahun = 4;
  int berat = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[50],
      appBar: AppBar(
        //backgroundColor: Colors.blue[900],
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => About()));
            },
            icon: Icon(Icons.person_pin)),
        title: Text('MENGHITUNG BMI'),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Image.asset(
                      'images/bmi1.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Text('Calculator BMI',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ))),
                  SizedBox(
                    height: 10,
                  ),
                  // NAMA LENGKAP DAN JENIS KELAMIN
                  Container(
                      child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        TextFormField(
                            controller: nama,
                            decoration: InputDecoration(
                              labelText: "Nama Lengkap",
                              hintText: "Masukkan nama lengkap anda",
                              border: new OutlineInputBorder(
                                  borderRadius:
                                      new BorderRadius.circular(30.0)),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                            controller: jenis_kelamin,
                            decoration: InputDecoration(
                              labelText: "Jenis Kelamin",
                              hintText: "Masukkan jenis kelamin anda",
                              border: new OutlineInputBorder(
                                  borderRadius:
                                      new BorderRadius.circular(30.0)),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        // TANGGAL
                        Container(
                          margin: EdgeInsets.only(top: 3),
                          child: TextFormField(
                            onChanged: (txt) {
                              setState(() {
                                bulan = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 2,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                            decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0)),
                                labelText: "Tanggal",
                                hintText: 'Tanggal  Lahir Anda'),
                          ),
                        ),
                        // BULAN
                        Container(
                          margin: EdgeInsets.only(top: 3),
                          child: TextField(
                            onChanged: (txt) {
                              setState(() {
                                tanggal = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 2,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                            decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0)),
                                labelText: "Bulan",
                                hintText: 'Bulan Lahir Anda'),
                          ),
                        ),
                        // TAHUN
                        Container(
                          margin: EdgeInsets.only(top: 3),
                          child: TextField(
                            onChanged: (txt) {
                              setState(() {
                                tahun = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 4,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                            decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0)),
                                labelText: "Tahun",
                                hintText: 'Tahun Lahir Anda'),
                          ),
                        ),
                        // TINGGI BADAN
                        Container(
                          margin: EdgeInsets.only(top: 3),
                          child: TextField(
                            onChanged: (txt) {
                              setState(() {
                                tinggi = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 4,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                            decoration: new InputDecoration(
                                suffix: Text('cm'),
                                border: new OutlineInputBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0)),
                                labelText: "Tinggi",
                                hintText: 'Tinggi Badan'),
                          ),
                        ),
                        // BERAT BADAN
                        Container(
                          margin: EdgeInsets.only(top: 3),
                          child: TextField(
                            onChanged: (txt) {
                              setState(() {
                                berat = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 4,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                            decoration: new InputDecoration(
                                suffix: Text('kg'),
                                border: new OutlineInputBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0)),
                                labelText: "Berat",
                                hintText: 'Berat Badan'),
                          ),
                        ),
                      ],
                    ),
                  )),
                  // TINGGI DAN BERAT

                  // Container(
                  //     margin: EdgeInsets.only(top: 30, left: 10, right: 10),
                  //     padding: EdgeInsets.all(10),
                  //     color: Colors.blue,
                  //     child: Row(
                  //       children: <Widget>[
                  //         Expanded(
                  //           child: TextField(
                  //             onChanged: (txt) {
                  //               setState(() {
                  //                 tinggi = int.parse(txt);
                  //               });
                  //             },
                  //             keyboardType: TextInputType.number,
                  //             maxLength: 3,
                  //             textAlign: TextAlign.center,
                  //             style: TextStyle(
                  //               fontSize: 20,
                  //             ),
                  //             decoration: InputDecoration(
                  //                 suffix: Text('cm'),
                  //                 filled: true,
                  //                 hintText: 'Tinggi'),
                  //           ),
                  //         ),
                  //         SizedBox(
                  //           width: 10,
                  //         ),
                  //         Expanded(
                  //           child: TextField(
                  //             onChanged: (txt) {
                  //               setState(() {
                  //                 berat = int.parse(txt);
                  //               });
                  //             },
                  //             keyboardType: TextInputType.number,
                  //             maxLength: 3,
                  //             textAlign: TextAlign.center,
                  //             style: TextStyle(
                  //               fontSize: 20,
                  //             ),
                  //             decoration: InputDecoration(
                  //                 suffix: Text('kg'),
                  //                 filled: true,
                  //                 hintText: 'Berat'),
                  //           ),
                  //         ),
                  //       ],
                  //     )),
                  Container(
                      //height: double.infinity,
                      margin: EdgeInsets.only(
                          left: 10, right: 10, top: 40, bottom: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BMIResult(
                                        nama: nama.text,
                                        jenis_kelamin: jenis_kelamin.text,
                                        tinggi_badan: tinggi,
                                        berat_badan: berat,
                                        tahun: tahun,
                                        bulan: bulan,
                                        tanggal: tanggal,
                                      )),
                            );
                          },
                          padding: EdgeInsets.only(top: 20, bottom: 20),
                          color: Colors.green,
                          // textColor: Colors.white,
                          child: Text(
                            'Hitung BMI',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        //color: Colors.transparent,
        child: Container(
          height: 60,
          color: Colors.green,
          alignment: Alignment.center,
          child: Text(
            '@Gota Kusuma',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
        //elevation: 0,
      ),
    );
  }
}
