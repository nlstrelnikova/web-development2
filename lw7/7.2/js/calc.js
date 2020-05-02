function calc(str){ 
  if (str != null){
    while (str.includes('(')){
      str = simpleExpression(str);
    }
    return calculateExpression(str)
  } else {
    console.log('Ошибка');
  }
}

function calculate(sign, x, y) {
  if (sign == '+') return x + y;
  if (sign == '-') return x - y;
  if (sign == '*') return x * y;
  if (sign == '/') {
	if (y != 0){
      return x / y
    } else {	
      console.log('Деление на ноль');
      return NaN
    }
  }
}

function calculateExpression(result){ 
  const operations = '*/+-';	
  result = result.trim();
  let operand = result.split(/ +/);
  if (operations.includes(operand[0])){
    return calculate(operand[0], Number(operand[1]), Number(operand[2]));
  } else { 
    console.log('Некорректное выражение');
    return NaN
  }
}

function simpleExpression(str){		
  if (str.includes(')')){
    let i = str.indexOf(')')
    while (str[i] != '('){
      i--;
    }
    let substr = str.substring(i, str.indexOf(')') + 1);
    str = str.replace(substr, calculateExpression(substr.substring(1, substr.length - 1)));
    return str
  } else {
	console.log('Некорректное выражение');
    return NaN
  }
}