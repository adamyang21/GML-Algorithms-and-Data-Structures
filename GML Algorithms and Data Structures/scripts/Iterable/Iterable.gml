//Iterable abstract class
/*
Base class for all iterable objects.
Sets up methods which are present in all iterable objects.

Methods:
- get_item(_index) -> T (abstract)
- contains(_item: T) -> bool (abstract)
- get_item_index(_item: T) -> number (abstract)
- get_length() -> number

Adam Yang
*/

function Iterable(): Object() constructor {
    //Attributes
    length = 0; //Length of the iterable



    //Methods
    /*
    get_item(_index) -> T
    Gets the item stored at an index in an iterable object.

    Parameters:
    - _index: the index the item is stored at.

    Returns:
    - The item at the specified index.
    */
    function get_item(_index) {abstract();}


    /*
    contains(_item: T) -> bool
    Checks if the iterable object contains the specified item.

    Parameters:
    - _item: the item to be searched for.

    Returns:
    - Whether the item is in the object or not.
    */
    function contains(_item) {abstract();}


    /*
    get_item_index(_item: T) -> number
    Searches through the iterable object for the specified item and returns its index if found.

    Parameters:
    - _item: the item to be searched for.

    Returns:
    - The index of the item in the object, if it is in the object.
    */
    function get_item_index(_item) {abstract();}


    /*
    get_length() -> number
    Gets the length of the iterable object.

    Returns:
    - The length of the iterable object.

    Complexity:
    - Worst Case Time Complexity: O(1).
    - Auxiliary Space Complexity: O(1).
    */
    function get_length() {return length;}


    /*
    Implemented in subclasses:
    - get()
    - copy()
    - to_string()
    */
}