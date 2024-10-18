

 class TValidators{
  static String? emailValidators(String? value)
  {
    if (value==null|| value.isEmpty)
      {
        return 'email is required';
      }

    //regular expression for emil validation
    final emailRegExp= RegExp(r'^[\w-\.]+@([\w-]+\.)*[\w*]{2,4}$');

    if (!emailRegExp.hasMatch(value))
      {
        return 'invalid email adress';
      }
    return null;
  }
  static String? validatePassword(String? value)
  {
    if (value==null|| value.isEmpty)
    {
      return 'password is required';
    }

    //check for minimum password length
    if(value.length<6)
      {
        return 'password must be at least 6 characters long';
      }
    //check for upper case
    if(!value.contains(RegExp(r'[A-Z]'))){
      return 'password must contain at least one upper case letter';
    }
    //check for numbers
    if(!value.contains(RegExp(r'[0-9]'))){
      return 'password must contain at least number';
    }
    //check for special character
    if(!value.contains(RegExp(r'[!@#$%^&*(),.?\":{}|<>]'))){
      return 'password must contain least one special character';
    }
    return null;
  }
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'phone number is required';
    }

    final phoneRegExp = RegExp(r'^[0-9]{10}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'invalid phone number format 10 digit required';
    }
    return null;
  }
  }