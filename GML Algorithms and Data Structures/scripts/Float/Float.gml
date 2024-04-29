//Float class
/*
Class for representing numbers as floating point numbers.
Uses numbers for representation.

Attributes:
- value: number

Methods:
- get -> number
- copy() -> Float
- to_string() -> string
- to_integer() -> Integer

Adam Yang
*/

function Float(_value): Object() constructor {
    //Attributes
    value = 0; //Stored floating point value
    


    //Constructor
    /*
    Parameters:
    - _value: Value to be stored.

    Complexity:
    - Worst Case Time Complexity: O(1).
    - Auxiliary Space Complexity: O(1).
    */
    if typeof(_value) == "number" { //The provided input value must be a number.
        value = _value;
    }
    else {
        throw("TypeError: Double constructor expected type number, got " + typeof(_value));
    }



    //Methods
    /*
    get() -> number
    Returns the number used for floating point representation.

    Returns:
    - The number stored in the double.

    Complexity:
    - Worst Case Time Complexity: O(1).
    - Auxiliary Space Complexity: O(1).
    */
    function get() {
        return value;
    }


    /*
    copy() -> Float
    Creates a copy of the float and returns it.

    Returns:
    - A copy of the float.

    Complexity:
    - Worst Case Time Complexity: O(1).
    - Auxiliary Space Complexity: O(1).
    */
    //Override
    function copy() {
        return new Double(value);
    }


    /*
    to_string() -> string
    Creates a printable string version of the f,oat.

    Returns:
    - The float converted into a string.

    Complexity:
    - Worst Case Time Complexity: O(1).
    - Auxiliary Space Complexity: O(1).
    */
    //Override
    function to_string() {
        return string(value);
    }


    /*
    to_integer() -> Integer
    Down-casts the float to an integer.

    Returns:
    - An integer representation of the float (down-casted).

    Complexity:
    - Worst Case Time Complexity: O(1).
    - Auxiliary Space Complexity: O(1).
    */
    function to_integer() {
        return new Integer(value);
    }
}