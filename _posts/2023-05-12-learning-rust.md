---
layout: post
title: 🦀 learning rust [wip]
seo_title: 🦀 learning rust
date: 2023-05-12 00:00:00-0000
description: brain dump / notes zone
tags: programming, open-source
related_posts: false
img: /assets/img/rust.webp
---
#### Resources
---

- [Jayson Lennon's Rust 101 Crash Course (6h)](https://www.youtube.com/watch?v=lzKeecy4OmQ)
- [The Rust Programming Book](https://doc.rust-lang.org/book/)


---
### [00:02:03](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=123s) Rust Introduction
#### Why Rust?
- High level language features
- Program behaviours enforced at compile time = reliability
- Built in dependency management
- Growing ecosystem of libraries

#### Technical goodies
- First class multi-threading (compiler error to improperly access shared data)
- Type System
	- Can uncover bugs at compile time
	- Makes refactoring simple
	- Reduces number of tests needed
- Module system makes code separation simple
- Dependency is 1 line in a config file
- Tooling
	- Generate docs, lint code, and auto-form

---
### [00:04:30](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=270s) Data types
## What is data?
- Memory only stores binary data
	- But don't worry! Anything can be represented in binary
	- The program determines what this binary represents
- There are some basic types that are universally useful, and these are provided by the language
- We're not limited to these types, as we can make more

## Basic data types
- Boolean
	- True or false
- Integer
	- 1, 2, 50, -2
- Double / Float
	- 1.2, 5.5, 200.3
- Character
	- 'A', 'c', '$', '5'
- String

	- "Hello", "string", "it's 52"
<!-- --- -->

<!-- ### [00:06:59](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=419s) Variables -->
## What is a variable?
- A way to assign data to a temporary memory location
	- Allows programmer to easily work with memory
- Can be set to any value & type
- Immutable by default but can be mutable (less likely to make errors, and also faster since no checks needed)
	- Immutable: cannot be changed
	- Mutable: can be changed

## Examples
```rust
let two = 2; // let some variable named 'two' be assigned the value 2
let hello = "hello";
let j = 'j';
let mut my_name = "Sam"; // let mut makes the variable mutable
let quit_program = false;
let your_half = my_half;
```

- Variables make it easier to work with data, and therefore memory
- Variables can be assigned to any value including other variables


<!-- --- -->

<!-- ### [00:13:36](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=816s) Functions -->
## What are functions
- A way to encapsulate program functionality
- Optionally accept / return data
- Utilised for code organisation
	- Makes code easier to read too!

## Anatomy of a function
- `fn` function 
- `add` name
- `(z: y)` parameters with name `z` with type `y`
- `-> x` return with type `x`
- `{}`  body
- Last expression is implicitly treated as the return, do not append it with `;`

```rust
fn add(a: i32, b: i32) -> i32 {
	a + b
}
```

## Using a function

- "Call" a function by using its name, and adding any 'arguments' you want to pass to the parameters in the function
```rust
let x = add(1,1);
let y = add(3,0);
let z = add(x,1);
```
---

### [00:21:52](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=1312s) `println!` macro
- Macros (denoted with `!`) are similar to functions, but they expand into additional code
- `println` "Prints" information to the terminal, which is useful for debugging
- It prints what is inside the quotation marks `""`
- Tokens are substituted with the variable, and they are denoted with curly braces `{}`
- After the `""` quotation marks, variables can be listed and comma-separated.
- Alternatively they can be invoked in-line, e.g. `println!("{var:?}");` instead of `println!("{:?}", var);`
- Debug only print by using `:?`
- End-user display without `:?`, e.g. `println!("{var}");`

```rust
let life: i32 = 42;
println!("hello");
println!("{:?}", life);
println!("{:?} {:?}", life, life);
println!("the meaning is {life:?}"); // in line variable invocation
```

---

### [00:24:57](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=1497s) Control flow using if
- Add logic to programs, and decide which line of code is executed next
- Code is normally executed line-by-line
- Actions are performed & control flow can be changed
	- `if`
	- `else`
	- `else if`

<div class="row">
    <div class="col-sm">
        {% include figure.html path="/assets/img/rust/simple-flow.jpg" title="a photo" class="img-fluid rounded z-depth-1"  style="object-fit: cover; height: 100px;" %}
    </div>
    <div class="col-sm">
        {% include figure.html path="/assets/img/rust/if-flow.jpg" title="a photo" class="img-fluid rounded z-depth-1"  style="object-fit: cover; height: 100px;" %}
    </div>
</div>

Simple if else

```rust
let a = 99;
if a > 99 {
	println!("big number");
} else {
	println!("small number");
}
```


Nested if else

```rust
let a = 201;
if a > 99 {
	if a > 200 {
		println!("huge number");
	} else {
		println!("big number");
	}
} else {
	println!("small number");
}
```


Nested else if are like "or checks"
- Important to check larger first, otherwise the condition will exit early!

```rust
    if a > 200 {
        println!("huge number");
    } else if a > 99 {        
        println!("number number");
    } else {
        println!("small number");
    }
```

Always include `else` statements, unless there are truly no alternative cases

---

### [00:33:38](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=2018s) Repetition using loops
- Called "looping" or "iteration"
- Multiple types of loops in Rust, these are invoked via their keywords:
  - `loop` - infinite loop
  - `while` - conditional loop
- Both loops can exit using `break`

#### Loop
<div class="row">
    <div class="col-sm">
        {% include figure.html path="/assets/img/rust/loop.png" title="a photo" class="img-fluid rounded z-depth-1"  style="object-fit: cover; height: 100px;" %}
    </div>
</div>

```rust
    let mut example = 0;
    loop {
        if example == 5{
            break;
        }
        println!("{example:?}");
        example = example + 1;
    }
```

#### While loop
```rust
    let mut example = 0;
    while example != 5 {
        println!("{example:?}");
        example = example + 1;
    }
```

---

### [00:40:12](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=2412s) Tool Installation
- `rustup` manages Rust installation, including all elements of the toolchain
- To install on Linux (Arch):
```sh
yay -S rustup && \
rustup toolchain install stable
```
- Creating, building, and running a hello-world Rust project
```sh
cargo init hello-world && \
cd hello-world && \
cargo build && \
cargo run -q
```

---

### [00:45:03](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=2703s) Comments
- Comments are made using `//` or `/* */`
- Make sure that they are informative, not unnecessary

---

### [00:48:42](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=2922s) Exercise - Functions
```rust
// Topic: Functions
//
// Program requirements:
// * Displays your first and last name
//
// Notes:
// * Use a function to display your first name
// * Use a function to display your last name
// * Use the println macro to display messages to the terminal

fn first_name() {
    println!("Sam");
}

fn last_name() {
    println!("Bilbow");
}

fn main() {
    first_name();
    last_name();
}

```

```sh
❯ cargo run -q --bin a1
Sam
Bilbow
```

---

### [00:55:54](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=3354s) Basic Arithmetic

```rust
fn sub(a: i32, b: i32) -> i32 {
	a - b
}

fn main() {
	let sum = 2 + 2;
	let value = 10 - 5;
	let division = 10 / 2;
	let mult = 5 * 5;

	let five = sub(8,3);
	println!("{five:?}, {sum} {value} {division} {mult}");


	let rem = 6 % 3; // 0 remainder division (modulo)
	let rem2 = 6 % 4; // 1 (useful for even / odd ) e.g. if x % 2 !== 0 means odd
	rem2;
}
```

---

### [00:59:33](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=3573s) Exercise - Arithmetic
```rust
// Topic: Basic arithmetic
//
// Program requirements:
// * Displays the result of the sum of two numbers
//
// Notes:
// * Use a function to add two numbers together
// * Use a function to display the result
// * Use the "{:?}" token in the println macro to display the result

fn sum(a: i32, b: i32) -> i32{
    a + b
}

fn main() {
    let a = 23;
    let b = 46;
    let x = sum(a,b);
    println!("{x:?}");
}
```

```sh
❯ cargo run -q --bin a2
69
```

---

### [1:05:04](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=3904s) Control Flow if and else

```rust
fn main() {
    let age = 15;
    if age >= 21 {
        println!("ok to purchase");
    } else {
        println!("cannot purchase");
    }
}
```

---

### [1:07:40](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=4060s) Exercise - 3a Control flow with if & else

```rust
// Topic: Flow control using if..else
//
// Program requirements:
// * Displays a message based on the value of a boolean variable
// * When the variable is set to true, display "hello"
// * When the variable is set to false, display "goodbye"
//
// Notes:
// * Use a variable set to either true or false
// * Use an if..else block to determine which message to display
// * Use the println macro to display messages to the terminal

fn main() {
    let mut var = true;
    eval(var);
    var = false;
    eval(var);
}

fn eval(var: bool){
    if var {
        println!("hello");
    } else {
        println!("goodbye");
    }
}
```
---

### [1:11:45](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=4305s) Exercise - 3b Control flow with if & else

```rust
// Topic: Flow control using if..else if..else
//
// Program requirements:
// * Display ">5", "<5", or "=5" based on the value of a variable
//   is > 5, < 5, or == 5, respectively
//
// Notes:
// * Use a variable set to any integer value
// * Use an if..else if..else block to determine which message to display
// * Use the println macro to display messages to the terminal

fn main() {
    let mut var = 4;
    print_result(var);
    var = 5;
    print_result(var);
    var = 6;
    print_result(var);
    
}

fn print_result(var: i32){
    if var > 5 {
        println!("{var} is greater than 5");
    } 
    else if var == 5{
        println!("{var} is equal to 5");
    }
    else {
        println!("{var} is less than 5");
    }
}
```

---

### [1:17:00](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=4620s) Match
- Match expressions are similar to if else, and are used to add logic to the program
- They are exhaustive, meaning all options **must** be accounted for.
- Within the body of the `match` expression, you must list all accountable options.
  - `=>` denotes the action performed based on the expression matched.
  - `,` conditions are comma separated (match works on expressions **not** statements)

Example with boolean value

```rust
fn main() {
    let some_bool = true;
    match some_bool {
        true => println!("its true"),
        false => println!("its false"),
    }
}
```
Example with integer
- `_` underscore denotes "everything else"
```rust
fn main() {
    let some_int = 3;
    match some_int {
        1 => println!("its 1"),
        2 => println!("its 2"),
        3 => println!("its 3"),
        _ => println!("its something else: {some_int}"),
    }
}
```

`match` compared to `else..if`
- `match` will be checked by the compiler
  - compiler tells you if options are accounted for or not
- `else..if` is not checked by the compiler
  - compiler will not tell you if another option is added but not accounted for
- `match` leads to more robust code in these cases


---

### [1:21:28](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=4888s) Making decisions with match
- `match` helps you make decisions in the code, about where it should go next

```rust
fn main() {
    let my_name = "Bob";
    match my_name {
        "Sam" => println!("that is my name"),
        "Jayson" => println!("that is his name"),
        "Bob" => println!("not my name"),
        _ => println!("nice to meet you"),
    }
}
```
---

### [1:24:42](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=5082s) Exercise - 4a Basic Match expressions

```rust
// Topic: Decision making with match
//
// Program requirements:
// * Display "it's true" or "it's false" based on the value of a variable
//
// Notes:
// * Use a variable set to either true or false
// * Use a match expression to determine which message to display

fn main() {
    let mut var : bool = true;
    eval(var);
    var = false;
    eval(var);
}

fn eval(var: bool){
    match var {
        true => println!("it's true"),
        false => println!("it's false"),
    }
}
```
---

### [1:28:49](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=5329s) Exercise - 4b Basic Match expressions

```rust
// Topic: Decision making with match
//
// Program requirements:
// * Display "one", "two", "three", or "other" based on whether
//   the value of a variable is 1, 2, 3, or some other number,
//   respectively
//
// Notes:
// * Use a variable set to any integer
// * Use a match expression to determine which message to display
// * Use an underscore (_) to match on any value

fn main() {
    let mut var : i32 = 0;
    eval(var);
    var = 1;
    eval(var);
    var = 2;
    eval(var);
    var = 3;
    eval(var);
    var = 4;
    eval(var);

}

fn eval(var: i32){
    match var {
        1 => println!("one"),
        2 => println!("two"),
        3 => println!("three"),
        _ => println!("other"),
    }
}
```

---

### [1:34:03](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=5643s) Repetition using loop
- Good for repeating things
- Repeats forever until broken out of 

``` rust
fn main() {
    let mut countdown: i32 = 3;
    loop {
        println!("{countdown}");
        countdown = countdown - 1;
        if countdown == 0 {
            break;
        }
    }
    println!("GO!");
}
```

```sh
❯ cargo run -q --bin main
3
2
1
GO!
```

---

### [1:38:54](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=5934s) Exercise - Repetition using loop

```rust
// Topic: Looping using the loop statement
//
// Program requirements:
// * Display "1" through "4" in the terminal
//
// Notes:
// * Use a mutable integer variable
// * Use a loop statement
// * Print the variable within the loop statement
// * Use break to exit the loop

fn main() {
    let mut i: i32 = 1;
    loop {
        println!("{i}");
        i+=1;
        if i == 5{
            break;
        }
    }

}
```

```sh
❯ cargo run -q --bin a5
1
2
3
4
```

---

<!-- ### [1:43:55](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=6235s) Demo - Repetition using while -->


<!-- --- -->

### [1:47:22](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=6442s) Exercise - Repetition using while

```rust
// Topic: Looping using the while statement
//
// Program requirements:
// * Counts down from 5 to 1, displays the countdown
//   in the terminal, then prints "done!" when complete.
//
// Notes:
// * Use a mutable integer variable
// * Use a while statement
// * Print the variable within the while loop
// * Do not use break to exit the loop

fn main() {
    let mut i = 5;
    while i !=0 {
        println!("{i}");
        i-=1;
    }
    println!("done!")
}
```

---

### [1:52:10](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=6730s) Lecture - Enum
- Working with data in a type safe manner
- A piece of data that can be one of multiple different possiblities
  - Each possiblity is called a "variant"
- Provides information about your program to the compiler
  - Results in more robust programmes
- Outside of `fn main()`

```rust

enum Direction {
	Up,
	Down,
	Left,
	Right
}

fn which_way(go: Direction){
    match go {
        Direction::Up => "up",
        Direction::Down => "down",
        Direction::Left => "left",
        Direction::Right => "right",
    }
}
```

- `Direction` can be any one of four different variants.
- Using `match`, use the syntax `enum::variant => "action",`

---

### [1:55:23](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=6923s) Demo - Enum

```rust
enum Direction {
    Left,
    Right,
    Up
}

fn main(){
    let mut go = Direction::Left;
    eval(go);
    go = Direction::Right;
    eval(go);
    go = Direction::Up;
    eval(go);
}

fn eval(go: Direction){
    match go {
        Direction::Left => println!("we're going left!"),
        Direction::Right => println!("we're going right!"),
        _ => println!("we're going another direction!"),
    }
}
```

---

### [1:59:10](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=7150s) Exercise Enum

```rust
// Topic: Working with an enum
//
// Program requirements:
// * Prints the name of a color to the terminal
//
// Notes:
// * Use an enum with color names as variants
// * Use a function to print the color name
// * The function must use the enum as a parameter
// * Use a match expression to determine which color
//   name to print

enum Color{
    Red,
    Yellow,
    Blue,
}

fn print_color(color: Color){
    match color{
        Color::Red => println!{"The color is blood red"},
        Color::Yellow => println!{"The color is a golden yellow"},
        Color::Blue => println!{"The color is a rich blue"},
    }
}

fn main() {
    let mut color = Color::Red;
    print_color(color);
    color = Color::Yellow;
    print_color(color);
    color = Color::Blue;
    print_color(color);
}
```

---

### [2:05:23](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=7523s) Lecture - Struct
- Short for structure
- I guess they're kind of like objects that you can instantiate?
- Data type that contains multiple pieces of data
  - All or nothing - cannot have some pieces of data and not others
  - No part of a structure and not others
- Each piece of data is called a 'field'
- Makes working with data easier
  - Similar data can be grouped together
- `struct` fields are in its body, and are comma separated, and have types.
- Fields can be accessed by using `.` on an instanced structure

```rust
struct CourierBox {
    weight: i32,
    depth:  i32,
    width:  i32,
    height: i32,
}

fn main(){
    let new_courier_box = CourierBox{
        weight: 5,
        depth:  432,
        width:  291, 
        height: 921,
    };

    let weight = new_courier_box.weight;
    let depth = new_courier_box.depth;
    let width = new_courier_box.width;
    let height = new_courier_box.height;
    println!("your box is {weight}kg");
    println!("your box is {depth}mm deep");
    println!("your box is {width}mm wide");
    println!("your box is {height}mm tall");
}
```

---

### [2:08:13](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=7693s) Demo - Struct
- When matching `enums`, be careful not to try and print them! They are not strings.

---

### [2:11:07](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=7867s) Exercise - Struct

```rust
// Topic: Organizing similar data using structs
//
// Requirements:
// * Print the flavor of a drink and it's fluid ounces
//
// Notes:
// * Use an enum to create different flavors of drinks
// * Use a struct to store drink flavor and fluid ounce information
// * Use a function to print out the drink flavor and ounces
// * Use a match expression to print the drink flavor

enum Flavours{
    Apple,
    Orange,
    Lychee,
    Mango,
}

struct Drink{
    flavour: Flavours,
    volume: i32,
}

fn main() {
    let apple_juice_from_concentrate: Drink = Drink{
        flavour: Flavours::Apple,
        volume: 330,
    };
    print_flavour(apple_juice_from_concentrate);
    
    let fresh_orange_juice: Drink = Drink{
        flavour: Flavours::Orange,
        volume: 250,
    };
    print_flavour(fresh_orange_juice);
    
    let lychee_flavoured_water: Drink = Drink{
        flavour: Flavours::Lychee,
        volume: 500,
    };
    print_flavour(lychee_flavoured_water);
    
    let mango_nectar: Drink = Drink{
        flavour: Flavours::Mango,
        volume: 1000,
    };
    print_flavour(mango_nectar);
}

fn print_flavour(drink: Drink){
    match drink.flavour{
        Flavours::Apple => println!("The drink you've chosen has an apple flavour, and contains {}ml of liquid.", drink.volume),
        Flavours::Orange => println!("The drink you've chosen has an orange flavour, and contains {}ml of liquid.", drink.volume),
        Flavours::Lychee => println!("The drink you've chosen has a lychee flavour, and contains {}ml of liquid.", drink.volume),
        Flavours::Mango => println!("The drink you've chosen has a mango flavour, and contains {}ml of liquid.", drink.volume),
    }
}
```

---

### [2:20:38](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=8438s) Lecture - Tuple
- A type of 'record'
  - A line of information on a piece of paper
- A way to access each piece of data in that record
- Store data anonymously
  - No need to name fields like in an enum variant or struct field
- Useful to return pairs of data fom functions
- Can be destructured easily into variables
- Tuples are surrounded in parentheses and are comma separated.
- Tuple values are accessed using `.x` where `x` is the value index starting from 0
- Alternatively they can be assigned to a new tuple variable and accessed by name:

<div class="row">
    <div class="col-sm">
        {% include figure.html path="/assets/img/rust/tuples.png" title="a photo" class="img-fluid rounded z-depth-1"  style="object-fit: cover; height: 100px;" %}
    </div>
</div>

---

### [2:24:12](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=8652s) Demo - Tuples

```rust
// Enumeration containing variants based on type of access
enum Access {
    Full,
    Partial,
    Guest
}

// Structured data containing member information
struct NewMember{
    name: String,
    age: i32,
    species: String,
    access: Access,
}

// Function that creates a vector containing members, defines new members, and prints those members using a for loop that features match and tuple.
fn main(){
    let mut member_list = vec![];

    let celine = NewMember{
        name: String::from("Celine"),
        age: 94,
        species: String::from("Octopus"),
        access: Access::Full,
    };
    member_list.push(celine);

    let otto = NewMember{
        name: String::from("Otto"),
        age: 83,
        species: String::from("Octopus"),
        access: Access::Partial,
    };
    member_list.push(otto);
    
    let diane = NewMember{
        name: String::from("Diane"),
        age: 2,
        species: String::from("Cat"),
        access: Access::Guest,
    };
    member_list.push(diane);

    let george = NewMember{
        name: String::from("George"),
        age: 62,
        species: String::from("Panda"),
        access: Access::Guest,
    };
    member_list.push(george);

    println!("List of Socialist Revolutionaries:");
    
    for member in member_list {
        let access_str: &str;
        match member.access {
            Access::Full => access_str = "full",
            Access::Partial => access_str = "partial",
            Access::Guest => access_str = "guest",
        };
        let (name, age, species, access) = (member.name, member.age,member.species, access_str);
        println!("Staff member {0} ({1}), is {2}, and has {3} access.", name, species, age, access)
    }
}
```

```sh
❯ cargo run -q --bin main
List of Socialist Revolutionaries:
Staff member Celine (Octopus), is 94, and has full access.
Staff member Otto (Octopus), is 83, and has partial access.
Staff member Diane (Cat), is 2, and has guest access.
Staff member George (Panda), is 2, and has guest access.
```

---

### [2:30:05](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=9005s) Exercise - Tuples

```rust
// Topic: Data management using tuples
//
// Requirements:
// * Print whether the y-value of a cartesian coordinate is
//   greater than 5, less than 5, or equal to 5
//
// Notes:
// * Use a function that returns a tuple
// * Destructure the return value into two variables
// * Use an if..else if..else block to determine what to print

fn main() {
    let coordinates = tuplizer(32,2);
    print_y_value(coordinates);
}

fn tuplizer(x: i32, y: i32) -> (i32, i32){
    (x,y)
}

fn print_y_value(coordinates: (i32, i32)){
    let (_x, y) = (coordinates.0, coordinates.1);
    if y > 5 {
        println!("The y coordinate: {y} is greater than 5")
    }
    else if y < 5 {
        println!("The y coordinate: {y} is less than 5")
    }
    else {
        println!("The y coordinate: {y} is equal to 5")
    }
} 
```

```sh
❯ cargo run -q --bin a9
The y coordinate: 2 is less than 5
```

---

### [2:36:01](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=9361s) Lecture - Expressions
- Rust is an expression-based language
  - Most things are evaluated and return some value
- Expression values coalesce to a single point
  - As a result expressions can be used for nesting logic
- Assigning condition outputs to variables: 
- Good way of compressing LoC
- Best not to use more than two or three nests

```rust
fn main() {
    let x = 3;
    let is_x_5: bool = if x == 5{
        true
    } else {
        false
    };
    
    let y = 5;
    let is_y_5: bool = y == 5;
}
```

---

### [2:39:53](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=9593s) Demo - Expressions

```rust
enum Access {
    Admin,
    Manager,
    User,
    Guest,
}

fn main() {
    let access_level: Access = Access::Guest;
    let can_access_file: bool = match access_level {
        Access::Admin => true,
        _ => false
    };
    println!("can access? {can_access_file}")
}
```

---

### [2:45:05](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=9905s) Exercise - Expressions

```rust
// Topic: Working with expressions
//
// Requirements:
// * Print "its big" if a variable is > 100
// * Print "its small" if a variable is <= 100
//
// Notes:
// * Use a boolean variable set to the result of
//   an if..else expression to store whether the value
//   is > 100 or <= 100
// * Use a function to print the messages
// * Use a match expression to determine which message
//   to print

fn main () {
    let var: i32 = 100;
    let var_gt_100 = var > 100;
    eval(var_gt_100);

}

fn eval (var_gt_100: bool) {
    match var_gt_100{
        true => println!("{var_gt_100}, it is bigger than 100") ,
        false => println!("{var_gt_100}, it is less than or equal to 100") ,
    }
}
```

---

### [2:52:18](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=10338s) Lecture - Memory Intermediate
- Memory is stored using binary 
  - Bits: 0 or 1
  - Smallest data type
- Computer optimized for bytes
  - 1 byte == 8 contiguous bits
- Memory can be thought of a fully contiguous string of bits

#### Addresses
- All data in memory has an address
  -  This is used to locate data
  -  They are always the same, only the data changes
-  We don't usually utilize addresses directly
   -  Variables do most of this hard work

#### Offsets
- Items can be located at an address using an "offset"
- Offsets begin at 0
- This represents the number of bytes away from the original addresses
  - Normally we don't deal with offsets, we deal with indexes, and the compiler calculates the offset from this.

<div class="row">
    <div class="col-sm">
        {% include figure.html path="/assets/img/rust/addresses.png" title="a photo" class="img-fluid rounded z-depth-1"  style="object-fit: cover; height: 100px;" %}
    </div>
</div>

---

### [2:55:55](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=10555s) Lecture- Ownership
- Ownership allows performant compilation
- All programs must track their memory usage
  - Otherwise you get leaks where new memory keeps getting allocated! 🚰
- Rust utilises an ownership model to manage memory
  - The "owner" of the memory is responsible for clearing up memory when it is no longer needed
  - This automatically occurs at the end of the scope
  - The owner is the function in which the variable is declared.
- Memory can either be moved or borrowed.

#### Moving

```rust
enum Light {
    Bright,
    Dull
}

fn display_light(light: Light) {
    match light {
        Light::Bright => println!("light!"),
        Light:: Dull => println!("dull")
    }
}
fn main() {
    let dull = Light::Dull; // dull is owned by main()
    display_light(dull); // dull is now owned by display_light()
    display_light(dull); // Error here, as dull's ownership has moved to display_light(), and dull doesn't exist within the scope of this function anymore.
}
```

#### Borrowing
- Borrowing or referencing data is denoted by using the ampersand `&`, use on parameter type, e.g. (`int: &i32`). Remember by "borrowed type"

```rust
enum Light {
    Bright,
    Dull
}

fn display_light(light: &Light) {
    match light {
        Light::Bright => println!("bright!"),
        Light:: Dull => println!("dull")
    }
}
fn main() {
    let dull = Light::Dull; // dull is owned by main()
    display_light(&dull); // dull is now borrowed by display_light()
    display_light(&dull); // main() still owns and can lend dull a second time.
} // dull is unallocated now
```

---

### [3:02:16](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=10936s) Demo - Ownership
- Cleaning memory is called a `drop`
- Happens automatically once the end of the function comes (scope / block)

---

### [3:08:26](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=11306s) Exercise - Ownership

```rust
// Topic: Ownership
//
// Requirements:
// * Print out the quantity and id number of a grocery item
//
// Notes:
// * Use a struct for the grocery item
// * Use two i32 fields for the quantity and id number
// * Create a function to display the quantity, with the struct as a parameter
// * Create a function to display the id number, with the struct as a parameter

struct GroceryItem {
    name: String,
    quantity: i32,
    id_number: i32,
}

fn main() {

    let mut shopping_list = vec![];

    let tofu = GroceryItem {
        name: "Tofu".to_string(),
        quantity: 6,
        id_number: 9348912,
    };
    shopping_list.push(tofu);
    
    let beansprouts = GroceryItem {
        name: "Beansprouts".to_string(),
        quantity: 14,
        id_number: 2342341,
    };
    shopping_list.push(beansprouts);
    
    let gochujang = GroceryItem {
        name: "Gochujang".to_string(),
        quantity: 1,
        id_number: 4326116,
    };
    shopping_list.push(gochujang);
    
    let peanut_butter = GroceryItem {
        name: "Peanut Butter".to_string(),
        quantity: 2,
        id_number: 343946,
    };
    shopping_list.push(peanut_butter);

    for item in shopping_list {
        display_information(&item);
    }

}

fn display_information(grocery_item: &GroceryItem) {
    let name = grocery_item.name.to_string();
    let quantity = grocery_item.quantity;
    let id_number = grocery_item.id_number;
    println!("There are {quantity} of item {id_number} ({name})");
}
```

---

### [3:13:26](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=11606s) Demo - Impl
- Allows you to implement functionality on `enum` and `Struct` 
- More organised code
- `impl` keyword followed by the name of the `enum` or `Struct`
- Place functions inside the scope
- Access with `Struct::Fn`
- You can take a reference to self to make it more 'organised' with `&self`. Refers to itself as a `Struct` or `enum`

```rust
struct Temperature {
    degrees_f: f64,
}

fn show_temp (temp: Temperature) {
    println!("{:?} degrees F", temp.degrees_f);
}

fn main() {
    let hot = Temperature { degrees_f: 99.9 };
    show_temp(hot);
}
```

Tidied up

```rust
struct Temperature {
    degrees_f: f64,
}

impl Temperature {
    fn show_temp (&self) {
        println!("{:?} degrees F", self.degrees_f);
    }
}

fn main() {
    let hot = Temperature { degrees_f: 99.9 };
    hot.show_temp();
}
```

Variables placed within the `impl` as Self (type) referring return functions

```rust
struct Temperature {
    degrees_f: f64,
}

impl Temperature {
    fn hot() -> Self {
        Self { degrees_f: 99.9 }
    }
    fn freezing() -> Self {
        Self { degrees_f: 32.0 }
    }
    fn boiling() -> Self {
        Self { degrees_f: 212.0 }
    }
    fn show_temp(&self) {
        println!("{:?} degrees F", self.degrees_f);
    }
}

fn main() {
    Temperature::hot().show_temp();
    Temperature::freezing().show_temp();
    Temperature::boiling().show_temp();
}
```

---

### [3:22:50](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=12170s) Exercise - Impl

```rust
// Topic: Implementing functionality with the impl keyword
//
// Requirements:
// * Print the characteristics of a shipping box
// * Must include dimensions, weight, and color
//
// Notes:
// * Use a struct to encapsulate the box characteristics
// * Use an enum for the box color
// * Implement functionality on the box struct to create a new box
// * Implement functionality on the box struct to print the characteristics

enum BoxColor{
    Blue,
    Yellow,
    Red
}

struct ShippingBox {
    dimensions: [f32;3],
    weight: f32,
    color: BoxColor,
}

impl ShippingBox {
    fn create(dimensions: [f32;3], weight: f32, color: BoxColor) -> Self {
        Self { dimensions: dimensions, weight: weight, color: color }
    }
    
    fn p_box(&self){
        println!("The box has the following characteristics");
        println!("- It is {}mm wide", self.dimensions[0]);
        println!("- It is {}mm tall", self.dimensions[1]);
        println!("- It is {}mm deep", self.dimensions[2]);
        println!("- It is {}kg", self.weight);
        let color_str = match &self.color {
            BoxColor::Blue => "blue",
            BoxColor::Yellow => "yellow",
            BoxColor::Red => "red",
        };
        println!("- It is {color_str}");
    }
}

fn main() {
    let heavy_blue_box: ShippingBox = ShippingBox::create([232.3,235.2,512.3], 65.32, BoxColor::Blue);
    heavy_blue_box.p_box();

    let tiny_yellow_box: ShippingBox = ShippingBox::create([12.2,25.5,21.2], 2.1, BoxColor::Yellow);
    tiny_yellow_box.p_box();
    
    let massive_red_box: ShippingBox = ShippingBox::create([1267.2,2567.5,2671.2], 223.1, BoxColor::Red);
    massive_red_box.p_box();
}
```
---

### [3:39:22](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=13162s) Lecture - Vectors
- Vector is a data type that lets you store multiple pieces of data
  - These must be of the same type.
- Used for lists of information
- `let x = vec![data,data2,data3]` for known
- `let mut y = Vec::new();` for mutable, or
- `z: vec![type;amount],` in Struct fields
- You can add, remove and traverse these entries.
    - add via the `.push(<item to add>)` function
    - remove via the `.pop(<index to remove>)` function
    - return length via the `.len()` function
    - access via the slice notation `<vector name>[<index>]`

---

### [3:44:19](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=13459s) Demo - Vectors


```rust
struct Test {
    score: i32,
}

fn main (){
     let my_scores: Vec<Test> = vec![
        Test { score: 89 },
        Test { score: 65 },
        Test { score: 74 },
        Test { score: 12 },
        Test { score: 32 },
     ];

     for test in my_scores {
        println!("score = {:?}", test.score);
     }
}
```

---

### [3:46:51](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=13611s) Exercise - Vectors

```rust
// Topic: Vectors
//
// Requirements:
// * Print 10, 20, "thirty", and 40 in a loop
// * Print the total number of elements in a vector
//
// Notes:
// * Use a vector to store 4 numbers
// * Iterate through the vector using a for..in loop
// * Determine whether to print the number or print "thirty" inside the loop
// * Use the .len() function to print the number of elements in a vector

fn main() {
    let numbers: Vec<i32> = vec![10,20,30,40];
    for i in &numbers {
        match i {
            30 => println!("thirty"),
            _ => println!("{:?}", i),
        }
    }
    println!("The vector \"numbers\" contains {:?} items", numbers.len());
}
```

---

### [3:53:41](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=14021s) Lecture - String
- Strings are used to store text information
  - Two common types are:
  - String - **owned**
  - &str - **borrowed** String slice
- Using String data in a struct requires an owned String
- Use &str when passing to a function

Example - Pass to function

```rust

```

---

<!-- ### [3:57:44](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=14264s) Demo - Strings -->


<!-- --- -->

<!-- ### [4:02:15](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=14535s) Exercise - Strings -->


<!-- --- -->

<!-- ### [4:09:40](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=14980s) Demo - Derive -->


<!-- --- -->

<!-- ### [4:15:51](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=15351s) Lecture - Type Annotations -->


<!-- --- -->

<!-- ### [4:20:02](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=15602s) Lecture - Enum Revisited -->


<!-- --- -->

<!-- ### [4:24:04](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=15844s) Demo Advanced Match -->


<!-- --- -->

<!-- ### [4:32:04](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=16324s) Exercise Advanced Match -->


<!-- --- -->

<!-- ### [4:42:49](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=16969s) Lecture - Option -->


<!-- --- -->

<!-- ### [4:49:18](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=17358s) Demo - Option -->


<!-- --- -->

<!-- ### [4:53:48](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=17628s) Activity Option -->


<!-- --- -->

<!-- ### [4:58:52](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=17932s) Demo Documentation -->


<!-- --- -->

<!-- ### [5:01:20](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=18080s) Demo - Standard Library -->


<!-- --- -->

<!-- ### [5:04:56](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=18296s) Exercise - Utilizing SLF -->


<!-- --- -->

<!-- ### [5:08:45](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=18525s) Lecture - Result -->


<!-- --- -->

<!-- ### [5:13:28](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=18808s) Demo - Result -->


<!-- --- -->

<!-- ### [5:27:47](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=19667s) Exercise - Result -->


<!-- --- -->

<!-- ### [5:34:29](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=20069s) Exercise - Result and ? Operator -->


<!-- --- -->

<!-- ### [5:42:23](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=20543s) Lecture - Hashmap -->


<!-- --- -->

<!-- ### [5:46:46](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=20806s) Demo - Hashmap -->


<!-- --- -->

<!-- ### [5:52:21](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=21141s) Exercise - Hashmap -->


<!-- --- -->

<!-- ### [6:00:49](https://www.youtube.com/watch?v=lzKeecy4OmQ&t=21649s) Where to keep learning & how to get hired as a Rust Developer -->