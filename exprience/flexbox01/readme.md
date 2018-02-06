flexbox

(CSS Flexible Box Layout )

公式サイト
https://www.w3.org/TR/css-flexbox/#box-model

各ブラウザの対応状況
https://caniuse.com/#feat=flexbox

flex-direction(default : row （つまり「->」の方向)を main axis と呼び、 それに直行する方向をcross axisと呼ぶ。
flex-directionがcolumn（縦方向）になれば関係は逆になる。

## flex containerのプロパティ
+ flex-direction
+ flex-wrap
+ justify-content
+ align-items
+ align-content

## flex itemのプロパティ
+ order
+ align-self
+ flex-grow
+ flex-shrink
+ flex-basis

flex-grow、 flex-shrink、 flex-basisは3つ併せて設定することができる
 -> flex: 0 1 auto;