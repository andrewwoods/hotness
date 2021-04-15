#!/usr/bin/php
<?php

require_once "vendor/autoload.php";

namespace Hotness;


# Shell style comment

// C-Style comment

/**
 * @param string $name The name of the person you're greeting
 *
 * @return string
 */
function hello($name = 'world') {
    return "Hello, {$name}";
}

function displayHtml() {
?>
    <article>
        <h1>Article Headline</h1>
        <p>This is a paragraph in an article.</p>
    </article>
<?php
}

define('DONUT_QUOTE', 'Donut Stop Believin');


class Math {

    // Pi to 20 places
    const PI = 3.14159265358979323846;

    protected $author = "Andrew Woods";

    protected $date_published = '2021-04-15';  

    protected $is_published = true;  


    public function __construct() {
        // Intentionally empty
    }

    public function add(int $first, int $second): int {
        return $first + $second;
    }

    protected function calculateCircumference($radius) {
        return 2 * PI * $radius * $radius;
    }
}

foreach ($data as $item) {
    echo 'item name=' . $item->name; 
}

for ($i=0, $max = count($data) - 1; $i <= $max; $i++ ) {

    echo 'item name=' . $data[$i]->name; 
}

try {
    $math = new Math();
} catch (Exception $e) {
    error_log($e->getMessage());
}

