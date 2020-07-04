<?php
/**
 * fakhri-plugins plugin for Craft CMS 3.x
 *
 * Learn build plugins craft
 *
 * @link      https://github.com/fakhri17
 * @copyright Copyright (c) 2020 Fakhri Alauddin
 */

namespace fakhri\fakhripluginstests\unit;

use Codeception\Test\Unit;
use UnitTester;
use Craft;
use fakhri\fakhriplugins\Fakhriplugins;

/**
 * ExampleUnitTest
 *
 *
 * @author    Fakhri Alauddin
 * @package   Fakhriplugins
 * @since     1.0.0
 */
class ExampleUnitTest extends Unit
{
    // Properties
    // =========================================================================

    /**
     * @var UnitTester
     */
    protected $tester;

    // Public methods
    // =========================================================================

    // Tests
    // =========================================================================

    /**
     *
     */
    public function testPluginInstance()
    {
        $this->assertInstanceOf(
            Fakhriplugins::class,
            Fakhriplugins::$plugin
        );
    }

    /**
     *
     */
    public function testCraftEdition()
    {
        Craft::$app->setEdition(Craft::Pro);

        $this->assertSame(
            Craft::Pro,
            Craft::$app->getEdition()
        );
    }
}
