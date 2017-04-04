class apache::install {
    $pack_name = $facts['os']['family'] ? {
        'RedHat' => 'httpd',
        'Debian' =>'apache2'
    }
package { $pack_name:
         ensure =>installed
}

}

