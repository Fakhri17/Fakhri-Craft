<?php

return [
    '*' => [
        'primaryDomain' => null,
        'redirectStatusCode' => 302,

        'sslRoutingBaseUrl' => "http://fakhri-craft.test",
        'sslRoutingEnabled' => true,
        'sslRoutingRestrictedUrls' => ['/'],

        'maintenanceModeEnabled' => false,
        'maintenanceModePageUrl' => '/offline',
        'maintenanceModeAuthorizedIps' => ['::1', '127.0.0.1'],
        'maintenanceModeResponseStatusCode' => 410,
    ],
    'dev' => [
        'sslRoutingEnabled' => false,
    ],
    'staging' => [
        'maintenanceModePageUrl' => null,
        'maintenanceModeResponseStatusCode' => 410,
    ],
    'production' => [
        'redirectStatusCode' => 301,
        'maintenanceModeResponseStatusCode' => 503,
    ]
];