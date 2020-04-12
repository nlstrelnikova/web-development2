<?php
$email = strtolower($_GET['email']);
if (file_exists("data/" . $email . ".txt"))
{
    $data = file_get_contents("data/" . $email . ".txt");
}
else
{
    $data = null;
}
if (isset($data)) 
{
    $array_data = explode("\n", $data);
}
?>

<!DOCTYPE html>
<html lang="ru">
  <head>
    <meta charset="UTF-8">
    <title>Данные отправителя</title>
    <link href="css/form.css" rel="stylesheet">
  </head>
  <body>
    <div class="list">
      <div class="data">
        <?php  
        if (!empty($data)) 
        {
            foreach ($array_data as $value) 
            {
                $array_definition = explode(":", $value);
                echo "<li>$array_definition[0]: $array_definition[1]</li>";
            }
        }   
        else 
        {
            echo "<dd>Данные отправителя не найдены</dd>";
        }
        ?>
      </div>
    </div>
  </body>
</html>