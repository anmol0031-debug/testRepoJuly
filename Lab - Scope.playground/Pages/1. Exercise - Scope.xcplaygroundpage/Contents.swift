/*:
## Exercise - Scope
 
 Using a comment or print statement, describe why the code below will generate a compiler error if you uncomment line 10.
 */
for _ in 0..<10 {
    let foo = 55
    print("The value of foo is \(foo)")
}
//print("The value of foo is \(foo)")
//This happens because for the variable foo its scope is only inside the for loop where its declared and intialised so the compiler can't find the variable foo in the scope i.e. globally it cant find it

//:  Using a comment or print statement, describe why both print statements below compile when similar-looking code did not compile above. In what scope is `x` defined, and in what scope is it modified? In contrast, in what scope is `foo` defined and used?
var x = 10
for _ in 0..<10 {
    x += 1
    print("The value of x is \(x)")
}
print("The final value of x is \(x)")
//Here this code compiles as the var x is declared globally and also locally (for the loop) and also intialised hence the code works correctly and prints both values of x (inside the loop and the final value outside the loop)

//:  In the body of the function `greeting` below, use variable shadowing when unwrapping `greeting`. If `greeting` is successfully unwrapped, print a statement that uses the given greeting to greet the given name (i.e. if `greeting` successfully unwraps to have the value "Hi there" and `name` is `Sara`, print "Hi there, Sara."). Otherwise, use "Hello" to print a statement greeting the given name. Call the function twice, once passing in a value for greeting, and once passing in `nil`.
//change kiya function to return so that i could use guard
func greeting(_ greeting: String?,_ name: String){
    guard let greeting = greeting else{
         print("Hello \(name)")
        return
    }
    print("\(greeting) \(name)")
    return
}

greeting("Kaisa hai bhai","Krish")
greeting(nil,"Krish")


//:  Create a class called `Car`. It should have properties for `make`, `model`, and `year` that are of type `String`, `String`, and `Int`, respectively. Since this is a class, you'll need to write your own memberwise initializer. Use shadowing when naming parameters in your initializer.
class Car{
    let make:String
    let model:String
    let year:Int
    
    init(make:String,model:String,year:Int){
        self.make = make
        self.model = model
        self.year = year
    }
}


/*:
page 1 of 2  |  [Next: App Exercise - Step Competition](@next)
 */
