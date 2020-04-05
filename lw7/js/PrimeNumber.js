function isPrimeNumber(n){
  let arr
  if (Array.isArray(n)) {
    arr = n;
  } else {	
    arr = [n];
  }
  for (let i = 0; i < arr.length; i++) {
    let digit = arr[i];
    if (typeof(digit) == "number") {
      if (isPrimeDigit(digit)) {
        console.log('Результат: ', digit, ' is prime number');
      } else {
        console.log('Результат: ', digit, ' is not prime number');
      }
    } else {
      console.log(digit, 'Переданный параметр не число');		
    }
  }
}

function isPrimeDigit(num) {
  let isPrime = true;	
  if (num >= 2)	{  
    for (let i = 2; i < num; i++) {
      if (num % i == 0) {
        isPrime = false;
        break;
      }
    }
  } else {
    isPrime = false;
  }
  return isPrime;  
}  
	  
	  
	  
	  
	  
	  
	  
	  
