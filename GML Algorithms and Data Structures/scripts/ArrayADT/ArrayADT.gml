//ArrayADT class
/*
Used for when an array ADT is required in other classes.
Generally used for array representation for implementation.
Uses primitive arrays for representation.

Attributes:
- size: number
- array: array

Methods:
- get() -> array
- set(_array: array) -> -1
- append(_item: T) -> -1
- __resize(_size: number) -> -1
- copy() -> ArrayADT
- to_string() -> string
- get_item(_index: number) -> T
- set_item(_index: number, _item: T) -> -1
- delete_item(_index) -> T
- __linear_search(_target: T) -> number
- contains(_target: T) -> bool
- get_item_index(_target: T) -> number
- __swap(_i: number, _j: number) -> -1

Adam Yang
*/

function ArrayADT(_size) : MutableIterable() constructor {
    //Attributes
    size = 0; //Keeps track of the size of the array (fixed array size)
    array = []; //actual array structure storing the data



    //Constructor
    /*
    Parameters:
    - _size: Size of the fixed array ADT.

    Complexity:
    - Worst Case Time Complexity: O(n), where n is the size of the array.
    - Auxiliary Space Complexity: O(n), where n is the size of the array.
    */
    size = _size;
    array = array_constant(size, -1); //O(n)



    //Methods

    //get() -> array
    /*
    Returns the array that is used to store the array ADT.

    Returns:
    - The array used to store the array ADT.

    Complexity:
    - Worst Case Time Complexity: O(1).
    - Auxiliary Space Complexity: O(1).
    */
    //Override
    function get() {
        return array;
    }


    //set(_array: array) -> -1
    /*
    Sets the array ADT's array to a new given array.

    Parameters:
    - _array: new array to replace with.

    Complexity:
    - Worst Case Time Complexity: O(1).
    - Auxiliary Space Complexity: O(1).
    */
    //Override
    function set(_array) {
        array = _array;
        length = __len__(_array);
    }


    //append(_item: T) -> -1
    /*
    Appends an item to the end of the array.

    Parameters:
    - _item: The item to be appended.

    Complexity:
    - Worst Case Time Complexity:
      - Normally: O(1).
      - Resizing: O(n), where n is the length of the array.
    - Auxiliary Space Complexity:
      - Normally: O(1).
      - Resizing: O(n), where n is the length of the array.
    */
    function append(_item) {
        //If array size limit reached
        if length+1 > size {
            //Create new array of double size
            size *= 2;
            __resize(size);
        }

        //Otherwise, append the item
        array[length] = _item;
        length++;
    }


    //__resize(_size: number) -> -1
    /*
    Resizes the array to the new specified size.

    Parameters:
    - _size: Size to be resized to.

    Complexity:
    - Worst Case Time Complexity: O(n), where n is the length of the array.
    - Auxiliary Space Complexity: O(n), where n is the length of the array.
    */
    function __resize(_size) {
        var new_array = array_constant(_size, -1);

        //Copy all items over
        for (i = 0; i < length; i++) {
            new_array[i] = array[i];
        }

        //Set reference to the new array
        array = new_array;
    }


    //copy() -> ArrayADT
    /*
    Creates a copy of the array ADT and returns it.

    Returns:
    - A copy of the array ADT.

    Complexity:
    - Worst Case Time Complexity: O(n), where n is the length of the array.
    - Auxiliary Space Complexity: O(n), where n is the length of the array.
    */
    //Override
    function copy() {
        var copy_array = new ArrayADT(size);
        for (i = 0; i < length; i++) {
            copy_array.append(array[i]);
        }
        return copy_array;
    }


    //to_string() -> string
    /*
    Creates a printable string version of the array ADT.

    Returns:
    - The array converted into a string.

    Complexity:
    - Worst Case Time Complexity: O(n), where n is the length of the array.
    - Auxiliary Space Complexity: O(n), where n is the length of the array.
    */
    //Override
    function to_string() {
        var res = "[";
        var i;
        for (i = 0; i < length-1; i++) {
            res += string(array[i]) + ", " //needs to be updated when new data types are added
        }
        res += string[array[length-1]] + "]";
        return res
    }


    //get_item(_index: number) -> T
    /*
    Returns the item stored at _index in the array ADT.

    Complexity:
    - _index: the index the item is at.

    Returns:
    - The item stored in at the provided index in the array ADT.

    Complexity:
    - Worst Case Time Complexity: O(1).
    - Auxiliary Space Complexity: O(1).
    */
    //Override
    function get_item(_index) {
        return array[_index];
    }


    //set_item(_index: number, _item: T) -> -1
    /*
    Sets the index in the array to the specified item.

    Complexity:
    - _index: the index the item is at.
    - _item: item to be stored.

    Complexity:
    - Worst Case Time Complexity: O(1).
    - Auxiliary Space Complexity: O(1).
    */
    //Override
    function set_item(_index, _item) {
        if _index >= size {
            size *= 2;
            __resize(size);
        }
        
        if _index >= length {
            throw("IndexError: array assignment index out of range (" + string(_index) + " out of " + string(length-1));
        }

        array[_index] = _item;
    }

    
    //delete_item(_index) -> T
    /*
    Deletes the item stored at the specified index.

    Complexity:
    - _index: the index the item is at.

    Complexity:
    - Worst Case Time Complexity: O(n), where n is the length of the array (for shuffling).
    - Auxiliary Space Complexity: O(1).
    */
    //Override
    function delete_item(_index) {
        //Remove element
        array[_index] = -1;

        //Shuffle down
        var i;
        for (i = _index; i < length; i++) {
            array[i] = array[i+1];
        }

        //Decrement length
        length--;
    }


    //__linear_search(_target: T) -> number
    /*
    Performs linear search on the array in search for the provided target.

    Complexity:
    - _target: the target item to be searched for.

    Returns:
    - The index the target was found at.

    Complexity:
    - Worst Case Time Complexity: O(n), where n is the length of the array.
    - Auxiliary Space Complexity: O(1).
    */
    function __linear_search(_target) {
        var i;
        for (i = 0; i < length; i++) {
            if array[i] == _target {
                return i;
            }
        }
        return -1;
    }


    //contains(_target: T) -> bool
    /*
    Searches for the target item and returns whether the item is in the array or not.
    This method in this class should not be getting called.

    Complexity:
    - _target: the target to be searched for.

    Returns:
    - Whether the item is in the array or not.

    Complexity:
    - Worst Case Time Complexity: O(n), where n is the length of the array.
    - Auxiliary Space Complexity: O(1).
    */
    //Override
    function contains(_target) {
        show_debug_message("ArrayADT.contains shouldn't be called");
        if __linear_search(_target) != -1 {return true;}
        else {return false;}
    }


    //get_item_index(_target: T) -> number
    /*
    Searches for the target item and returns the element of the item if it is in the array.
    This method in this class should not be getting called.

    Complexity:
    - _target: the target to be searched for.

    Returns:
    - The index of the item if found.

    Complexity:
    - Worst Case Time Complexity: O(n), where n is the length of the array.
    - Auxiliary Space Complexity: O(1).
    */
    //Override
    function get_item_index(_target) {
        show_debug_message("ArrayADT.get_item_index shouldn't be called");
        return __linear_search(_target);
    }


    //__swap(_i: number, _j: number) -> -1
    /*
    Swaps two elements in the array.

    Parameters:
    - _i: First index.
    - _j: Second index.

    Complexity:
    - Worst Case Time Complexity: O(1).
    - Auxiliary Space Complexity: O(1).
    */
    //Override
    function __swap(_i, _j) {
        var temp = array[_i];
        array[_i] = array[_j]
        array[_j] = temp;
    }
}