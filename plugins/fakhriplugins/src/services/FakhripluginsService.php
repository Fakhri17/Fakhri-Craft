<?php
/**
 * fakhri-plugins plugin for Craft CMS 3.x
 *
 * Learn build plugins craft
 *
 * @link      https://github.com/fakhri17
 * @copyright Copyright (c) 2020 Fakhri Alauddin
 */

namespace fakhri\fakhriplugins\services;

use fakhri\fakhriplugins\Fakhriplugins;

use Craft;
use craft\base\Component;

/**
 * FakhripluginsService Service
 *
 * All of your plugin’s business logic should go in services, including saving data,
 * retrieving data, etc. They provide APIs that your controllers, template variables,
 * and other plugins can interact with.
 *
 * https://craftcms.com/docs/plugins/services
 *
 * @author    Fakhri Alauddin
 * @package   Fakhriplugins
 * @since     1.0.0
 */
class FakhripluginsService extends Component
{
    // Public Methods
    // =========================================================================

    /**
     * This function can literally be anything you want, and you can have as many service
     * functions as you want
     *
     * From any other plugin file, call it like this:
     *
     *     Fakhriplugins::$plugin->fakhripluginsService->exampleService()
     *
     * @return mixed
     */
    public function exampleService()
    {
        $result = 'something';

        return $result;
    }

    public function getCustomers(){
      $customer = [
        [
          'name' => 'Dzulfikar Adiputra',
          'email' => 'dzulfikar@gmail.com',
          'totalPurchase' => 11,
          'birthday' => '1998-12-24',
        ],
        [
          'name' => 'Fakhri Alauddin',
          'email' => 'fakhri@gmail.com',
          'totalPurchase' => 12,
          'birthday' => '2001-03-31',
        ],
        [
          'name' => 'Rama Maulana',
          'email' => 'rama@gmail.com',
          'totalPurchase' => 13,
          'birthday' => '2003-04-21',
        ],
        [
          'name' => 'Renaldy Permana',
          'email' => 'renaldy@gmail.com',
          'totalPurchase' => 14,
          'birthday' => '2003-05-11',
        ],
        [
          'name' => 'Anonymouse',
          'email' => 'Anonymouse@gmail.com',
          'totalPurchase' => 15,
          'birthday' => '2001-01-01',
        ],
      ];
      return $customer;
    }

    public function curl($url){
      $curl = curl_init(); 
      curl_setopt($curl, CURLOPT_URL, $url); 
      curl_setopt($curl,CURLOPT_USERAGENT,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36');
      curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1); 
      $result = curl_exec($curl); 
      curl_close($curl);
            
      return $result;
    }
}
