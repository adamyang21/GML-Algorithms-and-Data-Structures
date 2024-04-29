//Integer class
/*
Class for representing numbers as integers.
Uses numbers for representation.

Attributes:
- value: number

Methods:
- get() -> number
- copy() -> Integer
- to_string() -> string
- to_float() -> Float

Adam Yang
*/

function Integer(_value) : Object() constructor {
    //Attributes
    value = 0; //Stored integer value



    //Constructor
    /*
    Parameters:
    - _value: Value to be stored as a integer.

    Complexity:
    - Worst Case Time Complexity: O(1).
    - Auxiliary Space Complexity: O(1).
    */
    if typeof(_value) == "number" { //The provided input value must be a number.
        value = floor(_value); //Down-cast to integer
    }
    else {
        throw("TypeError: Integer constructor expected type number, got " + typeof(_value));
    }



    //Methods
    
    //get() -> number
    /*
    Returns the number used for integer representation.

    Returns:
    - The number stored in the integer.

    Complexity:
    - Worst Case Time Complexity: O(1).
    - Auxiliary Space Complexity: O(1).
    */
    //Override
    function get() {
        return value;
    }


    //copy() -> Integer
    /*
    Creates a copy of the integer and returns it.

    Returns:
    - A copy of the integer.

    Complexity:
    - Worst Case Time Complexity: O(1).
    - Auxiliary Space Complexity: O(1).
    */
    //Override
    function copy() {
        return new Integer(value);
    }


    //to_string() -> string
    /*
    Creates a printable string version of the integer.

    Returns:
    - The integer converted into a string.

    Complexity:
    - Worst Case Time Complexity: O(1).
    - Auxiliary Space Complexity: O(1).
    */
    //Override
    function to_string() {
        return string(value);
    }


    //to_float() -> Float
    /*
    Up-casts the integer to a float.

    Returns:
    - A floating point representation of the integer.

    Complexity:
    - Worst Case Time Complexity: O(1).
    - Auxiliary Space Complexity: O(1).
    */
    function to_float() {
        return new Double(value);
    }
}
