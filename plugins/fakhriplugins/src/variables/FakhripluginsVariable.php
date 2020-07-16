<?php
/**
 * fakhri-plugins plugin for Craft CMS 3.x
 *
 * Learn build plugins craft
 *
 * @link      https://github.com/fakhri17
 * @copyright Copyright (c) 2020 Fakhri Alauddin
 */

namespace fakhri\fakhriplugins\variables;

use fakhri\fakhriplugins\Fakhriplugins;

use Craft;

/**
 * fakhri-plugins Variable
 *
 * Craft allows plugins to provide their own template variables, accessible from
 * the {{ craft }} global variable (e.g. {{ craft.fakhriplugins }}).
 *
 * https://craftcms.com/docs/plugins/variables
 *
 * @author    Fakhri Alauddin
 * @package   Fakhriplugins
 * @since     1.0.0
 */
class FakhripluginsVariable
{
    // Public Methods
    // =========================================================================

    /**
     * Whatever you want to output to a Twig template can go into a Variable method.
     * You can have as many variable functions as you want.  From any Twig template,
     * call it like this:
     *
     *     {{ craft.fakhriplugins.exampleVariable }}
     *
     * Or, if your variable requires parameters from Twig:
     *
     *     {{ craft.fakhriplugins.exampleVariable(twigValue) }}
     *
     * @param null $optional
     * @return string
     */
    public function exampleVariable($optional = null)
    {
        $result = "And away we go to the Twig template...";
        if ($optional) {
            $result = "I'm feeling optional today...";
        }
        return $result;
    }
    public function getCustomers() {
        return Fakhriplugins::$plugin->fakhripluginsService->getCustomers();
    }
}
