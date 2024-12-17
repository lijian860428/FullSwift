/*
 逻辑操作符
 And(&&)
 两者都为真，才为真
*/
true && true //true
true && false //false

 /*
  Or(||)
  有一个为真就为真，两者都为假时，才为假
  */

 true || true //true
 true || true //true
 false || false //false

 /*
 Not(!)
 取反
 */
!true //false
!false //true

//例子

func bonusPoints(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
    return powerUpActive && touchingEagle
}

func score(touchingPowerUp: Bool, touchingSeed: Bool) -> Bool {
    return touchingPowerUp || touchingSeed
}

func lose(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
    return !powerUpActive && touchingEagle
}

func win(hasPickedUpAllSeeds: Bool, powerUpActive: Bool, touchingEagle: Bool) -> Bool {
    return hasPickedUpAllSeeds && !lose(powerUpActive: powerUpActive, touchingEagle: touchingEagle)
}
