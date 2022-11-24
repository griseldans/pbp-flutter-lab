import 'package:counter_7/main.dart';
import 'package:counter_7/page/show_data.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/model/budget.dart';
import 'package:flutter/material.dart';

class DataFormPage extends StatefulWidget {
  const DataFormPage({super.key});

  @override
  State<DataFormPage> createState() => _DataFormPageState();
}

class _DataFormPageState extends State<DataFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  int _nominal = 0;
  String _pilihanjenis = "Pemasukan";
  DateTime __tanggal = DateTime.now();
  List<String> __jenis = ["Pengeluaran", "Pemasukan"];

  bool isNumeric(String value) {
    return int.tryParse(value) != null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Budget'),
      ),
      // Menambahkan drawer menu
      drawer: buildDrawer(context),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Contoh: Beli Siomay",
                      labelText: "Judul",
                      // Menambahkan circular border agar lebih rapi
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Menambahkan behavior saat nama diketik
                    onChanged: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    // Menambahkan behavior saat data disimpan
                    onSaved: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    // Validator sebagai validasi form
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Judul tidak boleh kosong!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "10000",
                      labelText: "Nominal",
                      // Menambahkan circular border agar lebih rapi
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Menambahkan behavior saat nama diketik
                    onChanged: (String? value) {
                      setState(() {
                        _nominal = int.parse(value!);
                      });
                    },
                    // Menambahkan behavior saat data disimpan
                    onSaved: (String? value) {
                      setState(() {
                        _nominal = value! as int;
                      });
                    },
                    // Validator sebagai validasi form
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Nominal tidak boleh kosong!';
                      } else if (isNumeric(value) == false) {
                        return 'Mohon isi hanya dengan angka!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: DropdownButton(
                      value: _pilihanjenis,
                      hint: const Text("Pilih Jenis"),
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: __jenis.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _pilihanjenis = newValue!;
                        });
                      },
                    ),
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Budget.listBudget.add(Budget(
                          judul: _judul,
                          nominal: _nominal,
                          pilihan_jenis: _pilihanjenis));
                          Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DataFormPage()),
                        );
                    }
                    
                  },
                  child: const Text(
                    "Simpan",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
