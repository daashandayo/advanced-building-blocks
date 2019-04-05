# Enumerable Methods

Rebuiling iterator methods in `Enumerable` module to undertand how they get mixed into the Array and Hash classes (among others).

## Instructions

1. Open [`irb`](https://github.com/ruby/irb#usage) in your terminal.
2. Add `enumerable_methods` methods to `irb` environment :
    ```ruby
    require './lib/enumerable_methods.rb'
    ```

## Usage

1. Run the methods on arrays the same way their original counterparts are run
    
    Example:
    ```ruby
    # my_each : each
    [1,2,3,4,5].my_each { |x| puts x}
    ```

