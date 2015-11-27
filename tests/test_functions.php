<?php
/**
 * @link http://www.diemeisterei.de/
 * @copyright Copyright (c) 2015 diemeisterei GmbH, Stuttgart
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

if (!function_exists('imagecreatefromjpeg')) {
    echo "Error: imagecreatefromjpeg not found!\n";
    exit(1);
}

echo "\nDone.\n";
exit(0);