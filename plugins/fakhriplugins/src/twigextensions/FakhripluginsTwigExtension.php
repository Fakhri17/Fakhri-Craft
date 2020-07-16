<?php
/**
 * fakhri-plugins plugin for Craft CMS 3.x
 *
 * Learn build plugins craft
 *
 * @link      https://github.com/fakhri17
 * @copyright Copyright (c) 2020 Fakhri Alauddin
 */

namespace fakhri\fakhriplugins\twigextensions;

use fakhri\fakhriplugins\Fakhriplugins;

use Craft;

use Twig\Extension\AbstractExtension;
use Twig\TwigFilter;
use Twig\TwigFunction;

/**
 * Twig can be extended in many ways; you can add extra tags, filters, tests, operators,
 * global variables, and functions. You can even extend the parser itself with
 * node visitors.
 *
 * http://twig.sensiolabs.org/doc/advanced.html
 *
 * @author    Fakhri Alauddin
 * @package   Fakhriplugins
 * @since     1.0.0
 */
class FakhripluginsTwigExtension extends AbstractExtension
{
    // Public Methods
    // =========================================================================

    /**
     * Returns the name of the extension.
     *
     * @return string The extension name
     */
    public function getName()
    {
        return 'Fakhriplugins';
    }

    /**
     * Returns an array of Twig filters, used in Twig templates via:
     *
     *      {{ 'something' | someFilter }}
     *
     * @return array
     */
    public function getFilters()
    {
        return [
            new TwigFilter('someFilter', [$this, 'someInternalFunction']),
            new TwigFilter('dateFilter', [$this, 'dateFilter']),
        ];
    }

    /**
     * Returns an array of Twig functions, used in Twig templates via:
     *
     *      {% set this = someFunction('something') %}
     *
    * @return array
     */
    public function getFunctions()
    {
        return [
            new TwigFunction('someFunction', [$this, 'someInternalFunction']),
        ];
    }

    /**
     * Our function called via Twig; it can do anything you want
     *
     * @param null $text
     *
     * @return string
     */
    public function someInternalFunction($text = null)
    {
        $result = $text . " in the way";

        return $result;
    }
    public function dateFilter($date) {
      $bulan = [
        1 => 'Januari',
        'Februari',
        'Maret',
        'April',
        'Mei',
        'Juni',
        'Juli',
        'Agustus',
        'September',
        'Oktober',
        'November',
        'Desember'
      ];
        $array = explode('-', $date);
        $array[1] = date("m", mktime(0, 0, 0, $array[1], 10));
        $result = $array[2].' '.$bulan[(int) $array[1]].' '.$array[0];
        return $result;
    }
}
