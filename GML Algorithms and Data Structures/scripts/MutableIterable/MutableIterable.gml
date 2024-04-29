//MutableIterable abstract class
/*
Base class for all iterable objects that are mutable.
Sets up methods which are present in all mutable iterable objects.

Methods:
- set(_objectL MutableIterable) -> -1 (abstract)
- set_item(_index: number, _item: Object) -> -1 (abstract)
- delete_item(_index: number) -> -1 (abstract)
- clear() -> -1 (abstract)
- __swap(_i: number, _j: number) (abstract)

Adam Yang
*/

function MutableIterable() : Iterable() constructor {
    //Methods

    //set(_object: MutableIterable) -> -1
    /*
    Sets the item stored within the object to a new item.

    Parameters:
    - _object: Object/item to replace with.
    */
    function set(_object) {abstract();}


    //set_item(_index: number, _item: Object) -> -1
    /*
    Sets a specific index in the object to the specified item.

    Parameters:
    - _index: Index in the iterable object to be set.
    - _item: Item to replace at specified index.
    */
    function set_item(_index, _item) {abstract();}


    //delete_item(_index: number) -> -1
    /*
    Removes the item at the specified index.

    Parameters:
    - _index: Index in the iterable object to be deleted.
    */
    function delete_item(_index) {abstract();}


    //clear() -> -1
    /*
    Clears all elements from the iterable object.
    */
    function clear() {
        length = 0;
    }


    //__swap(_i: number, _j: number) -> -1
    /*
    Swaps elements
    */
    function __swap() {abstract();}


    /*
    Implement in subclasses:
    - get()
    - copy()
    - to_string()
    - get_item()
    - contains()
    - get_item_index()
    - get_length()
    */
}