<?php
/**
 * @link http://www.diemeisterei.de/
 * @copyright Copyright (c) 2015 diemeisterei GmbH, Stuttgart
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

// GDlib
if (!function_exists('imagecreatefromjpeg')) {
    echo "Error: imagecreatefromjpeg not found!\n";
    exit(1);
}

// APC
if (version_compare(phpversion(), '7', '>=')) {
    if (!function_exists('apcu_add')) {
        echo "Error: apcu_add not found!\n";
        exit(1);
    }
} else {
    if (!function_exists('apc_add')) {
        echo "Error: apc_add not found!\n";
        exit(1);
    }
}


echo "\nDone.\n";
exit(0);