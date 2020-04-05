function isPrimeNumber(n){
  let arr = n
  let isPrime
  if ((typeof arr !== "number") && (Object.prototype.toString.call(arr) !== '[object Array]')) {
	console.log('Переданный параметр не является числом либо массивом')
  } else {
	if (typeof arr === "number"){
      for (let i = 2; i < arr; i++) {
        isPrime = true
        if (arr % i == 0) {
          isPrime = false
          break
        }
      }
	  if (isPrime) {
        console.log('Результат: ', arr, ' is prime number')
      } else {
		console.log('Результат: ', arr, ' is not prime number')
      }
	} else {
	  for(let j=0; j < arr.length; j++) {
	    if (typeof arr[j] != "number") { 
	      console.log(arr[j], 'Элемент массива не число')
	    } else {
          for (let i = 2; i < arr[j]; i++) {
            isPrime = true
            if (arr[j] % i == 0) {
              isPrime = false
              break
            }
          }
	      if (isPrime) {
            console.log('Результат: ', arr[j], ' is prime number')
          } else {
		    console.log('Результат: ', arr[j], ' is not prime number')
		  }
        }
	  }
	}
  }
}

