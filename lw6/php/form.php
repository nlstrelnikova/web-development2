<?php
function getParameter(string $name): ?string
{
	return isset($_GET[$name]) ? (string) $_GET[$name] : null;
}

function getData() 
{
    $name = getParameter('name');
    $email = getParameter('email');
    $country = getParameter('country');
    $gender = getParameter('gender');
    $sms = getParameter('message');
    $data = "Имя: ${name}\nEmail: ${email}\nСтрана: $country\nПол: $gender\nСообщение: $sms";
    $form = [
      "data" => $data,
      "email" => $email,
    ];
    return $form;
}

function saveData()
{
    $form = getData();
    if (empty($form))
    {
        echo 'Empty name, email or message';
    }
    else
    {
        $data = $form['data'];
        $email = $form['email'];
        $file = "data/" . strtolower($email) . ".txt";
        file_put_contents($file, $data);
    }
}

saveData();
/*$redirect = isset($_SERVER['HTTP_REFERER'])? $_SERVER['HTTP_REFERER']:'redirect-form.html';
header("Location: $redirect");
exit();*/
?> 