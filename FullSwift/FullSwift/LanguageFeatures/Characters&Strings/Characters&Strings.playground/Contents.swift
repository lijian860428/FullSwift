/*
 单行使用双引号",多行使用"""
 */

let hello = "hello"
let poem = """
rose are red
And so are you
"""

/*
 定义字符
 */

let aChar: Character = "A"


/*
 如果不指定类型，奖推断为字符串
 */

let aString = "A"
let aChar1: Character = "A"
print(type(of: aString))
print(type(of: aChar1))

/*
 字符串可以通过+拼接,但只能是字符串之间相加
 */

print("honey" + "comb")

//let C = aString + aChar1 //字符串和字符之间不可以

/*
 append方法既可以字符串也可以字符
 */
var greeting = "Hello"
let world = ", world"
let period: Character = "."

greeting.append(world)
print(greeting)

greeting.append(period)
print(greeting)

/*
 字符串插值，使用\(变量名)的方式
 */
let radius = 5.0
let circle = "The radius is \(radius)"
print(circle)

/*
 字符串的属性
 isEmpty ： 检测字符串是否为空
 count： 返回字符的数量
 */

let helloString = "hello"
print("The String is empty: \(helloString.isEmpty), count: \(helloString.count)")

/*
 字符的属性
 isLowerCase: 是否为小写
 isUpperCase: 是否为大写
 isNumber: 是否为数字
 isWhiteSpace: 是否为空格
 */
let a1Char: Character = "a"
let AChar: Character = "A"
let numberChar: Character = "1"
let whiteChar: Character = " "

print("aChar1: \(a1Char.isLowercase)")
print("AChar: \(AChar.isUppercase)")
print("numberChar: \(numberChar.isNumber)")
print("whiteChar: \(whiteChar.isWhitespace)")

/*
 类型转换，使用String()，可以把Int, Double, Character等转成字符串
 */
let charX: Character = "X"
print(String(charX))
print(String(110))
print(String(Double.pi))


//练习

// TODO: define the 'birthday' String constant
let birthday = "Birthday"

// TODO: define the 'valentine' String constant
let valentine = "Valentine's Day"

// TODO: define the 'anniversary' String constant
let anniversary = "Anniversary"

// TODO: define the 'space' Character constant
let space: Character = " "

// TODO: define the 'exclamation' Character constant
let exclamation: Character = "!"

func buildSign(for occasion: String, name: String) -> String {
    return "Happy \(occasion) \(name)!"
}

func graduationFor(name: String, year: Int) -> String {
    return """
Congratulations \(name)!
Class of \(year)
"""
}

func costOf(sign: String) -> Int {
    return sign.count * 2 + 20
}
