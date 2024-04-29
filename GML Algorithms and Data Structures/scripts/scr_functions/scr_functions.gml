/*
print() -> string
Function for printing the string representation of an instance or string to standard output.

Parameters:
- expression: Object
  - Object to print.
*/
function print(expression) {
    if is_struct(expression) {
        show_debug_message(expression.to_string());
    }
    else {
        show_debug_message(expression);
    }
}


/*
popup() -> string
Function for printing the string representation of an instance or string to a popup.

Parameters:
- expression: Object
  - Object to print.
*/
function popup(expression) {
    if is_struct(expression) {
        show_message(expression.to_string());
    }
    else {
        show_message(expression);
    }
}