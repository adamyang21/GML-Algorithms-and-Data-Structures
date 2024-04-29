//Object abstract class
/*
Base class for all objects.
Sets up methods which are present in all objects.

Methods:
- get() -> T (abstract)
- copy() -> Object (abstract)
- to_string() -> string (abstract)

Adam Yang
*/

function Object() constructor {
    //Methods
    /*
    get() -> T
    Accessor/getter for stored representations in objects.

    Returns:
    - The object representation stored in the object.
    */
    function get() {abstract();}


    /*
    copy() -> Object
    Creates a copy of the object and returns it.

    Returns:
    - A copy of the object.
    */
    function copy() {abstract();}


    /*
    to_string() -> string
    Creates a printable string version of the object.

    Returns:
    - The object converted into a string.
    */
    function to_string() {abstract();}
}