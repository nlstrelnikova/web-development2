<?php
$str = $_GET['text'];
$str = ltrim($str, " "); //������� ������ � ������ ������ ��� $str = trim($str, " "); � ����� ������
$str = rtrim($str, " "); //������� ������ � ����� ������
$str = preg_replace('/\s+/', ' ', $str); //\s ������� ��� ���� �������� ��� �������, � + ������� ���� �� 1 ������
header("Content-Type:text/plain");
echo 'Correct string:'.$str; 
