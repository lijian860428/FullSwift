
//变量
/*
变量定义的时候使用 var 关键字
 */
var variableName = 10

/*
 swift是类型安全的语言，或者你可以明确的指定类型，或者让编译器推断出类型
 */
var explicitVar: Int = 10 //明确指定为Int型
var implicitVar = 10 //编译器推断为Int

/*
 类型确定，就固定了
 */
variableName = 13 //更新值
// variableName = "Hello" //Cannot assign value of type 'String' to type 'Int'


//常量
/*
 常量一旦赋初始值以后，就不能再更改，使用关键字 let
 */
let constantName = 10
let ExplicitConstant: Int = 10


//函数
/*
 定义函数使用关键字func，返回值类型使用 ->
 
 func functionName(argumentLabel parameterName: ArgumentType) -> ReturnType {
   // function body
 }
 */
func addTen(number value: Int) -> Int {
    return value + 10
}

/*
 swift有参数标签，参数标签用于调用函数的时候使用，还有参数名称，参数名称则用来在函数内部使用参数值。如果既有参数标签，又有参数值是这样的
 */
func functionWithArgumentLabelAndParameterName(argumentLabel parameterName: String) {
    print("\(parameterName)")
}

functionWithArgumentLabelAndParameterName(argumentLabel: "Hello")

/*
 如果只有参数名称，那么这个参数名称就会同时当做参数标签和参数名称，例如
 */
func functionOnlyWithParameterName(argumentLabel parameterName: String) {
    print("\(parameterName)")
}

functionOnlyWithParameterName(argumentLabel: "Hello1")

/*
 如果你把标签指定为_，调用该函数就不需要标签了
 */
func functionWithoutArgumentLabel(_ parameterName: String) {
    print("\(parameterName)")
}

functionWithoutArgumentLabel("Hello2")

//练习
/*
 1. Define the expected oven time in minutes
 Define the expectedMinutesInOven constant, that stores how many minutes the lasagna should be in the oven. According to the cooking book, the expected oven time in minutes is 40:
 
 2. Calculate the remaining oven time in minutes
 Define the function remainingMinutesInOven(elapsedMinutes:) that takes the argument elapsedMinutes which holds the number of minutes the lasagna has already been in the oven. The function should return how many minutes the lasagna still has to remain in the oven, based on the expected oven time in minutes from the previous task.
 
 3. Calculate the preparation time in minutes
 Define the function preparationTimeInMinutes(layers:) that takes the argument layers which holds the number of layers you added to the lasagna. The function should return how many minutes you spent preparing the lasagna, assuming each layer takes you 2 minutes to prepare.
 
 4. Calculate the total working time in minutes
 Define the function totalTimeInMinutes(layers:elapsedMinutes:) that takes two arguments: the layers parameter is the number of layers you added to the lasagna, and the elapsedMinutes parameter is the number of minutes the lasagna has been in the oven. The function should return how many minutes in total you've worked on cooking the lasagna, which is the sum of the preparation time in minutes, and the time in minutes the lasagna has spent in the oven at the moment.
 */
let expectedMinutesInOven = 40
func remainingMinutesInOven(elapsedMinutes: Int) -> Int {
  return 40 - elapsedMinutes
}
func preparationTimeInMinutes(layers: Int) -> Int {
  return 2 * layers
}
func totalTimeInMinutes(layers: Int, elapsedMinutes: Int) -> Int {
    return elapsedMinutes + preparationTimeInMinutes(layers: layers)
}
