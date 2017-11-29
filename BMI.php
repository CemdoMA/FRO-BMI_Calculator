<?php

$gewicht = $_GET["gewicht"];
$lengte = $_GET["lengte"];
$result = BMIcalc($gewicht, $lengte);

function BMIcalc($gewicht,$lengte)
{

    $lengte = $lengte / 100;
    $BMI = round($gewicht / ($lengte * $lengte), 1);

    return $BMI;
}

    switch ($result){

        case ($result > 18.5 && $result < 24.9):
            echo "<p style='background-color: green' class='invoer'>Jouw BMI: <strong>" . $result . "</strong><br/>Je body mass is <strong>Normaal</strong>!</p>";
            break;
        case ($result > 25 && $result < 29.9):
            echo "<p style='background-color: orange' class='invoer'>Jouw BMI: <strong>" . $result . "</strong><br/>Je hebt <strong>Overgewicht</strong>! </p>";
            break;
        case ($result > 30 && $result < 39.9):
            echo "<p style='background-color: orangered' class='invoer'>Jouw BMI: <strong>" . $result . "</strong><br/>Je hebt <strong>Obese</strong>!</p>";
            break;
        case ($result > 40):
            echo "<p style='background-color: red' class='invoer'>Jouw BMI: <strong>" . $result . "</strong><br/>Je hebt <strong>Morbidly Obese</strong>!</p>";
            break;

        case ($result < 18.5):
            echo "<p style='background-color: cadetblue' class='invoer'>Ziek ondergewicht</p>";
            break;
    }
