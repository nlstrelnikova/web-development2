function run() {
  const form = document.querySelector('form');
  form.addEventListener('submit', onSubmit);
}

async function onSubmit(event) {
  if (event.cancelable) {
    event.preventDefault();
  }
  const name = document.getElementById('name');
  const email = document.getElementById('email');
  const country = document.getElementById('country');
  const gender = document.querySelector('input[name="gender"]:checked');
  const message = document.getElementById('message');
  const data = {
    'name': name.value,
    'email': email.value,
    'country': country.value,
    'gender': gender.value,
    'message': message.value
  };
  const response = await ajaxSend(data);
  let notice = 'Ваше сообщение успешно отправлено';
  const check_fields = {
    'name': name, 
    'email': email, 
    'country': country, 
    'message': message
  };
  for (var key in check_fields) {
    if (response[key] == 'error') {
      check_fields[key].classList.add('error');
      notice = '';
    } else {
      check_fields[key].classList.remove('error');
    }
  }
  document.getElementById('notice').innerHTML = notice;
}

async function ajaxSend(data) {
  let response = await fetch('http://localhost:8080/index.php', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify(data)
  })
  let result = null;
  if (response.ok) {
    result = await response.json();
  } else {
    alert("Ошибка HTTP: " + response.status);
  }
  return result;
}

window.onload = run;