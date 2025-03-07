import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SgptTextFormField extends StatefulWidget {
  final String labelText;
  final Function(String)? onChanged;
  final String? errorText;
  final bool isPassword;

  const SgptTextFormField({
    super.key,
    required this.labelText,
    this.onChanged,
    this.errorText,
    this.isPassword = false,
  });

  @override
  State<SgptTextFormField> createState() => _SgptTextFormFieldState();
}

class _SgptTextFormFieldState extends State<SgptTextFormField> {
  bool _isObscure = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          cursorColor: Colors.white,
          style: GoogleFonts.quicksand(
            color: Colors.white,
            fontSize: 14,
          ),
          obscureText: _isObscure,
          onChanged: widget.onChanged,
          decoration: InputDecoration(
            suffixIcon: widget.isPassword
                ? InkWell(
                    onTap: () {
                      _isObscure = !_isObscure;
                      setState(() {});
                    },
                    child: Icon(
                      _isObscure ? Icons.visibility_off : Icons.visibility,
                      size: 16,
                      color:
                          widget.errorText == null ? Colors.white : Colors.red,
                    ),
                  )
                : null,
            label: Text(
              widget.labelText,
              style: GoogleFonts.quicksand(
                color: widget.errorText == null ? Colors.white : Colors.red,
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: widget.errorText == null ? Colors.white : Colors.red,
                width: 0.4,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: widget.errorText == null ? Colors.white : Colors.red,
                width: 0.4,
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: widget.errorText == null ? Colors.white : Colors.red,
                width: 0.4,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        if (widget.errorText != null)
          Row(
            children: [
              const Icon(
                Icons.error,
                size: 14,
                color: Colors.red,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                widget.errorText!,
                style: GoogleFonts.quicksand(
                  color: Colors.red,
                  fontSize: 14,
                ),
              ),
            ],
          ),
      ],
    );
  }
}
