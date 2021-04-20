#!/usr/bin/php
<?php
/*
 * Parse the colormap.txt file to extract the important
 * data, to reformat it as a PHP array that can be re-used
 * easily by other programs.
 *
 */

function drop_leading_zeroes($value)
{
    return ltrim($value, '0');;
}

/*
 * The indentation on this function is non-standard
 * so the output will look correct.
 */
function output_array(array $data)
{
?>
$data = [];
<?php foreach ($data as $key => $value) : ?>
$data[<?php echo $key ?>] = [
    'name' => "<?php echo $value['name']; ?>",
    'color_id' => "<?php echo $value['color_id']; ?>",
    'name' => "<?php echo $value['name']; ?>",
    'term_color' => <?php echo $value['term_color']; ?>,
    'hex_color' => "<?php echo $value['hex_color']; ?>",
    'red' => <?php echo $value['red']; ?>,
    'green' => <?php echo $value['green']; ?>,
    'blue' => <?php echo $value['blue']; ?>,
];
<?php endforeach;
}

#
# Main
#
$filename = "colormap.txt";

$colorMap = [];
$fh = fopen($filename, 'r');
if ($fh === false) {
    error_log('could not open serial file for writing');
    exit(1);
}

$line = 0;
$data = [];;
while ($record = fgets($fh)) {
    $record = trim($record);
    if ($record === '') {
        // skip empty lines
        continue;
    }
    $line++;
    preg_match(
        '/hi\sx(\d{3})_([\w]+) ctermfg=(\d{1,3}) guifg=(#[0-9a-f]{6}) "rgb=(\d{1,3}),(\d{1,3}),(\d{1,3})/',
        $record,
        $matches
    );
    $id = drop_leading_zeroes($matches[1]);

    $data[$id] = [
        'color_id' => $matches[1],
        'name' => $matches[2],
        'term_color' => $matches[3],
        'hex_color' => $matches[4],
        'red' => $matches[5],
        'green' => $matches[6],
        'blue' => $matches[7],
    ];
}

fclose($fh);

# @todo Replace this with a function to display
#       the content as a valid PHP array in a file.
output_array($data);
