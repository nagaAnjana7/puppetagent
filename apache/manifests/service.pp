class apache::sevice{
    $pack_name = $facts['os']['family']?{
        'redhat' => 'http',
        'debain' =>'apache'
    }

service { $pack_name  :
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    # pattern    => '',
}


}
