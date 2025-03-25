param (

    # Parameter help description
    [array]$items,

    # Parameter help description
    [Parameter()]
    [switch]
    $Sorted

)

if ($PSBoundParameters.containerskey('Sorted') ) {
    $items = | $items | sort-object
}

if  ($items.count -eq 1) {
    # For one item, it should print the one item.
    # You are bringing sandwiches.
    write-output "You are bringing $items"
} elseif ($items.count -eq 2) {
    # For two items, place "and" in between:
    # You are bringing sandwiches and chips.
    write-output "You are bringing $($items[0]) and $($items1])"
} else {
    # For three or more items, use commas and "and":
    # You are bringing sandwiches, chips, and cake.

    $string = "You are bringing "
    $total = $items.count #3

    for ($i =0; $i -lt ($total) ; $i += 1) {
        $string =+ $items[$i] + ', '
    }

    # get last item
    $string =+ "and $($items[-1])"
}