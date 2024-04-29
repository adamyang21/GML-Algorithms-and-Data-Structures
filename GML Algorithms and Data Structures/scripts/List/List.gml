//List abstract class
/*
Base class for list objects.
Sets up methods which are present in all list objects.

Methods:
- append(_item: T) -> -1 (abstract)
- extend(_list: List) -> -1 (abstract)
- insert(_index: number, _item: T) -> -1 (abstract)
- splice(_range: array) -> List (abstract)
- pop() -> T (abstract)
- reverse() -> T (abstract)
- __linear_search(_target) -> number (abstract)
- __binary_search(_target) -> number (abstract)
- remove_duplicates() -> -1 (abstract)
- kth_smallest_index(_k) -> T (abstract)
- __quick_select_random(_k) -> T (abstract)
- __quick_select_MoM(_k) -> T (abstract)
- __median_of_medians(_k) -> T (abstract)
- sort() -> -1 (abstract)
- __selection_sort() -> -1 (abstract)
- __bubble_sort() -> -1 (abstract)
- __insertion_sort() -> -1 (abstract)
- __merge_sort() -> -1 (abstract)
- __quick_sort() -> -1 (abstract)
- __quick_sort_random() -> -1 (abstract)
- __quick_sort_MoM() -> -1 (abstract)
- __heap_sort() -> -1 (abstract)
- __tim_sort() -> -1 (abstract)
- __counting_sort() -> -1 (abstract)
- __radix_sort() -> -1 (abstract)

Adam Yang
*/

function List() : MutableIterable() constructor {
    //Attributes
    sorted = true;
    reverse_sorted = true;



    //Methods

    //append(_item: T) -> -1
    /*
    Appends an item to the end of the list.

    Parameters:
    - _item: The item to be appended.
    */
    function append(_item) {abstract();}


    //extend(_list: List) -> -1
    /*
    Extends the list by combining with another provided list.

    Parameters:
    - _list: List object to be combined with. Also accepts arrays.
    */
    function extend(_list) {abstract();}


    //insert(_index: number, _item: T) -> -1
    /*
    Inserts an item in the specified index. Does not replace existing items.

    Parameters:
    - _index: Index for the item to be inserted at.
    - _item: Item to be inserted.
    */
    function insert() {abstract();}


    //splice(_range: array) -> List
    /*
    Splices the list for the given range, then returns the spliced list.

    Parameters:
    - _range: Range to splice the list between (given as an array) (range function can be used to generate this).

    Returns:
    - The spliced list.
    */
    function splice() {abstract();}


    //pop() -> T
    /*
    Removes the last item in the list, then returns it.

    Returns:
    - The item that was in the last index of the list.
    */
    function pop() {abstract();}


    //reverse() -> T
    /*
    Reverses the order of elements in the list.
    */
    function reverse() {abstract();}


    //__linear_search(_target) -> number
    /*
    Performs linear search on the list in search for the provided target.

    Complexity:
    - _target: the target item to be searched for.

    Returns:
    - The index the target was found at.
    */
    function __linear_search(_target) {abstract();}


    //__binary_search(_target) -> number
    /*
    Performs binary search on the list in search for the provided target.

    Complexity:
    - _target: the target item to be searched for.

    Returns:
    - The index the target was found at.
    */
    function __binary_search(_target) {abstract();}


    //remove_duplicates() -> -1
    /*
    Removes all duplicates from the list.
    */
    function remove_duplicates() {abstract();}


    //kth_smallest_index(_k) -> T
    /*
    Returns the index of the kth smallest element.

    Parameters:
    - _k: k, where algorithm finds the kth smallest element.

    Returns:
    - The index of the kth smallest element.
    */
    function kth_smallest_index() {abstract();}


    //__quick_select_random(_k) -> T
    /*
    Performs quick select using random pivots.

    Parameters:
    - _k: k, where algorithm finds the kth smallest element.

    Returns:
    - The index of the kth smallest element.
    */
    function __quick_select_random() {abstract();}


    //__quick_select_MoM(_k) -> T
    /*
    Performs quick select where the pivots are chosen using median of medians.

    Parameters:
    - _k: k, where algorithm finds the kth smallest element.

    Returns:
    - The index of the kth smallest element.
    */
    function __quick_select_MoM() {abstract();}


    //__median_of_medians(_k) -> T
    /*
    Performs median of medians to find the kth smallest element.

    Parameters:
    - _k: k, where algorithm finds the kth smallest element.

    Returns:
    - The index of the kth smallest element.
    */
    function __median_of_medians() {abstract();}


    //sort() -> -1
    /*
    Sorts the list in ascending order.
    */
    function sort() {abstract();}


    //__selection_sort() -> -1
    /*
    Performs selection sort on the list.
    */
    function __selection_sort() {abstract();}


    //__bubble_sort() -> -1
    /*
    Performs bubble sort on the list.
    */
    function __bubble_sort() {abstract();}


    //__insertion_sort() -> -1
    /*
    Performs insertion sort on the list.
    */
    function __insertion_sort() {abstract();}


    //__merge_sort() -> -1
    /*
    Performs merge sort on the list.
    */
    function __merge_sort() {abstract();}


    //__quick_sort() -> -1
    /*
    Performs quick sort on the list.
    Chooses between __quick_sort_random or __quick_sort_MoM depending on the list size.
    */
    function __quick_sort() {abstract();}


    //__quick_sort_random() -> -1
    /*
    Performs quick sort on the list using random pivots.
    */
    function __quick_sort_random() {abstract();}


    //__quick_sort_MoM() -> -1
    /*
    Performs quick sort on the list using pivots chosen by median of medians.
    */
    function __quick_sort_MoM() {abstract();}


    //__heap_sort() -> -1
    /*
    Performs heap sort on the list.
    */
    function __heap_sort() {abstract();}


    //__tim_sort() -> -1
    /*
    Performs timsort on the list.
    */
    function __tim_sort() {abstract();}


    //__counting_sort() -> -1
    /*
    Performs counting sort on the list.
    Only works with certain types of elements.
    */
    function __counting_sort() {abstract();}


    //__radix_sort() -> -1
    /*
    Performs radix sort on the list.
    Only works with certain types of elements.
    */
    function __radix_sort() {abstract();}


    /*
    Implemented in subclasses:
    
    - get()
    - copy()
    - to_string()
    - get_item()
    - contains()
    - get_item_index()
    - get_length()
    - set()
    - set_item()
    - delete_item()
    - __swap()
    */
}