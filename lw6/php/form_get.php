<!DOCTYPE html>
<html lang="ru">
  <head>
    <meta charset="UTF-8">
    <title>Message</title>
    <link href="css/form.css" rel="stylesheet">
  </head>
  <body>
    <div class="form">
      <form action="message.php" method="GET"> 
        <label for="email">Email отправителя<span class="star">*</span></label> 
        <div>
          <input class="email" name="email" id="email" type="email" maxlength="255" required placeholder="Например, name@yandex.ru" title="Email">
        </div>
        <input class="submit" type="submit" value="Отправить">
      </form>
    </div>  
  </body>
</html>
