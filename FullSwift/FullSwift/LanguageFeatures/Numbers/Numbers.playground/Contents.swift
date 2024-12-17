/*
 Swift有两种主要的数值类型 整数和浮点数，定义整数使用Int关键字，定义浮点数使用Double关键字
 */
let speed: Int = 42
let pi: Double = 3.14

/*
 swift 的加法+ 减法- 乘法*
 */
4 + 6
15 - 10
2 * 3

/*
 需要注意的是，Swift在算术运算中不允许不同类型的数字混用，如上面定义的变量speed,pi就不可以
 */
//speed + pi //Binary operator '+' cannot be applied to operands of type 'Int' and 'Double'

/*
 除法操作符，要注意，整数除以整数还是整数，如果想要变成浮点数，字面量就必须是浮点数才行。
 */

5 / 2
5.0 / 2
5 / 2.0


/*
 余数%
 */

5 % 2
-5 % 2

/*
 四舍五入rounded(),用于对浮点数操作，想要四舍五入就直接使用rounded(),如果想要往上取整，使用rounded(.up)，向下就使用rounded(.down),请注意操作以后仍然是浮点数
 */
let x = 3.54
let y = x.rounded()
let w = x.rounded(.down)
let z = x.rounded(.up)

/*
 类型转换
 */
let x1 = 42
let d = Double(x1)
print(d)
print(type(of: d))

let pi1 = 3.14
let iPi = Int(pi1)
print(iPi)
print(type(of: iPi))


//例子

func dailyRateFrom(hourlyRate: Int) -> Double {
    return 8.0 * Double(hourlyRate)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount: Double) -> Double {
    let a = Double(hourlyRate) * 8 * 22 * (1 - withDiscount * 0.01)
    return a.rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount: Double) -> Double {
    let a = budget / (Double(hourlyRate) * 8 * (1 - withDiscount * 0.01))
    return a.rounded(.down)
}

let www = workdaysIn(budget: 1000, hourlyRate: 50, withDiscount: 10)
