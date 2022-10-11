part of "pages.dart";

class BookForm extends StatefulWidget {
  static const routename = '/bookform';
  const BookForm({super.key});

  @override
  State<BookForm> createState() => _BookFormState();
}

class _BookFormState extends State<BookForm> {
  @override
  void initState() {
    super.initState();
  }

  final _loginKey = GlobalKey<FormState>();
  final ctrlEmail = TextEditingController();
  final ctrlName = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlCity = TextEditingController();

  String nama = "", email = "", telp = "", kota = "";
  bool isHide = true;

  bool checkNum(String value) {
    return (int.tryParse(value) == null) ? false : true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Form"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _loginKey,
          child: Column(children: [
            SizedBox(
              height: 16,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Name",
                prefixIcon: Icon(Icons.people),
              ),
              controller: ctrlName,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                return value.toString().length < 5
                    ? 'Name at least 5 character!'
                    : null;
              },
            ),
            SizedBox(
              height: 16,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Email", prefixIcon: Icon(Icons.email)),
              controller: ctrlEmail,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                return !EmailValidator.validate(value.toString())
                    ? 'Email tidak valid !'
                    : null;
              },
            ),
            SizedBox(
              height: 16,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Phone", prefixIcon: Icon(Icons.phone)),
              controller: ctrlPhone,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                return !checkNum(value.toString())
                    ? 'Your number must be numeric !'
                    : null;
              },
            ),
            SizedBox(
              height: 16,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "City", prefixIcon: Icon(Icons.home)),
              controller: ctrlCity,
            ),
            SizedBox(
              height: 32,
            ),
            ElevatedButton(
                onPressed: () {
                  if (_loginKey.currentState!.validate()) {
                    nama = ctrlName.text;
                    email = ctrlEmail.text;
                    telp = ctrlPhone.text.toString();
                    kota = ctrlCity.text;

                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Book Now?'),
                        content: Text('Name: $nama\nEmail: $email\nPhone: $telp\nCity: $kota\n'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil('/',(Route<dynamic> route)=> false),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  } else {
                    Fluttertoast.showToast(
                        msg: "Please fill all fields !",
                        toastLength: Toast.LENGTH_SHORT,
                        fontSize: 14,
                        backgroundColor: Colors.redAccent,
                        textColor: Colors.white);
                  }
                },
                child: Text("Book Now"))
          ]),
        ),
      ),
    );
  }
}
