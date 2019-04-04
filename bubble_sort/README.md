# Bubble Sort

Bubble sort implementation in [Ruby](https://www.ruby-lang.org/en/)

## Instructions

1. Open [`irb`](https://github.com/ruby/irb#usage) in your terminal.
2. Add `bubble_sort` and `bubble_sort_by` methods to `irb` environment :
    ```ruby
    require './lib/bubble_sort.rb'
    require './lib/bubble_sort_by.rb'
    ```

## Usage

1. `bubble_sort` method expects an array to be sorted as a required parameter and returns the sorted array.
    
    Example:
    ```ruby
    # Ascending Order sort
    bubble_sort([5, 1, 4, 2, 8])
    ```

2. `bubble_sort_by` method expects an array to be sorted and a `block` of code which determines the sorting order as parameters and returns the sorted array.

    Example:
    ```ruby
    #  Descending Order sort
    bubble_sort_by([5, 1, 4, 2, 8]) do |left, right|
      right-left
    end

    #  Ascending Order sort
    bubble_sort_by([5, 1, 4, 2, 8]) do |left, right|
      left-right
    end
    ```
