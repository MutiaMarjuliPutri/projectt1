import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormDosen extends StatefulWidget {
  const FormDosen({super.key});

  @override
  State<FormDosen> createState() => _FormDosenState();
}

class _FormDosenState extends State<FormDosen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nidn = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController tglLahir = TextEditingController();
  TextEditingController alamat = TextEditingController();
  String? pendidikan, status;

  Future selectDate() async {
    DateTime? pickDate = await showDatePicker(
      context: context,
      firstDate: DateTime(1950),
      lastDate: DateTime(2100),
      initialDate: DateTime.now(),
    );
    if (pickDate != null) {
      tglLahir.text = DateFormat("dd-MM-yyyy").format(pickDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Dosen")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildInputField("NIDN", nidn, TextInputType.number),
                buildInputField("Nama", nama, TextInputType.name),
                buildInputField("Tanggal Lahir", tglLahir, TextInputType.datetime, onTap: selectDate),
                buildDropdown("Pendidikan", ["S1", "S2", "S3"], (val) => setState(() => pendidikan = val)),
                buildRadio("Status", ["Menikah", "Single"], (val) => setState(() => status = val)),
                buildInputField("Alamat", alamat, TextInputType.text),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      if (pendidikan != null && status != null) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("Data Dosen"),
                            content: Text("""
NIDN: ${nidn.text}
Nama: ${nama.text}
Tanggal Lahir: ${tglLahir.text}
Pendidikan: $pendidikan
Status: $status
Alamat: ${alamat.text}
"""),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text("OK"),
                              )
                            ],
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Silakan pilih Pendidikan dan Status"),
                        ));
                      }
                    }
                  },
                  child: Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildInputField(String label, TextEditingController controller, TextInputType type, {VoidCallback? onTap}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontSize: 16)),
          SizedBox(height: 5),
          TextFormField(
            controller: controller,
            keyboardType: type,
            validator: (val) => val!.isEmpty ? "$label tidak boleh kosong" : null,
            onTap: onTap,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Masukkan $label",
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDropdown(String label, List<String> items, ValueChanged<String?> onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontSize: 16)),
          SizedBox(height: 5),
          DropdownButtonFormField(
            decoration: InputDecoration(border: OutlineInputBorder()),
            items: items.map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
            onChanged: onChanged,
            validator: (val) => val == null ? "$label harus dipilih" : null,
          ),
        ],
      ),
    );
  }

  Widget buildRadio(String label, List<String> options, ValueChanged<String?> onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontSize: 16)),
          Row(
            children: options.map((e) => Expanded(
              child: RadioListTile(
                value: e,
                groupValue: status,
                onChanged: onChanged,
                title: Text(e),
              ),
            )).toList(),
          ),
        ],
      ),
    );
  }
}
