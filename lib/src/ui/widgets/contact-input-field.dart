import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _ContactCountryCode {
  final String code;
  final String name;
  final String image;
  const _ContactCountryCode(this.code, this.image, this.name);
}

const _codes = [
  _ContactCountryCode('+92', 'pakistan.png', 'Pakistan'),
  _ContactCountryCode('+966', 'saudi-arabia.png', 'Saudi Arabia'),
];

class ContactInputField extends StatefulWidget {
  final Function(String val, bool status) onChanged;
  final String preFilledPhone;
  ContactInputField(this.onChanged,[this.preFilledPhone]);

  @override
  _ContactInputFieldState createState() => _ContactInputFieldState();
}

class _ContactInputFieldState extends State<ContactInputField> {
  final _controller = TextEditingController();

  final _node = FocusNode();
  _ContactCountryCode _code = _codes[0];

  @override
  void initState() {
    super.initState();

    _node.addListener(() {
      setState(() {});
    });

    if(widget.preFilledPhone !=null)
      _controller.text = widget.preFilledPhone;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      SizedBox(
        height: 50,
        child: CupertinoTextField(
          focusNode: _node,
          controller: _controller,
          placeholder: '500303339 etc...',
          placeholderStyle: TextStyle(color: Colors.grey.shade400),
          onChanged: (value) {
            if (value.length > (_code.code == '+966' ? 8 : 9)) {
              widget.onChanged(_code.code + value, true);
            } else {
              widget.onChanged(_code.code + value, false);
            }
          },
          keyboardType: TextInputType.phone,
          style: TextStyle(
            color: Color(0xFF313F53),
            fontFamily: 'Lato',
            fontSize: 14,
          ),
          maxLength: _code.code == '+966' ? 9 : 10,
          padding: EdgeInsets.symmetric(horizontal: 9, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              width: _node.hasFocus ? 2 : 1,
              color:
                  _node.hasFocus ? Theme.of(context).primaryColor : Colors.grey,
            ),
            color: Colors.transparent,
          ),
          prefix: SizedBox(
            width: _node.hasFocus ? 100 : 101,
            child: Row(
              children: [
                SizedBox(
                  width: _node.hasFocus ? 60 : 61,
                  child: DropdownButtonHideUnderline(
                    child: ButtonTheme(
                      alignedDropdown: false,
                      child: DropdownButton(
                        isExpanded: true,
                        selectedItemBuilder: (context) =>
                            List.generate(_codes.length, (index) {
                          return Padding(
                            padding: EdgeInsets.fromLTRB(
                              _node.hasFocus ? 9 : 10,
                              _node.hasFocus ? 0 : 2,
                              10,
                              _node.hasFocus ? 0 : 2,
                            ),
                            child: Image.asset(
                              'assets/images/country-flags/' + _code.image,
                            ),
                          );
                        }),
                        icon: Icon(CupertinoIcons.chevron_down, size: 14),
                        value: _code,
                        items: _codes
                            .map(
                              (code) => DropdownMenuItem(
                                value: code,
                                child: Row(children: [
                                  Image.asset(
                                      'assets/images/country-flags/' +
                                          code.image,
                                      width: 24),
                                  Spacer(),
                                  Text(code.code)
                                ]),
                              ),
                            )
                            .toList(),
                        onChanged: (val) => setState(() => _code = val),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  _code.code,
                  style: TextStyle(
                    fontFamily: 'Lato',
                    color: Color(0xFF313F53),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      Positioned(
        top: -5.5,
        left: 10,
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            'Phone Number',
            style: TextStyle(
              fontSize: 12,
              color:
                  _node.hasFocus ? Theme.of(context).primaryColor : Colors.grey,
            ),
          ),
        ),
      ),
    ]);
  }
}
