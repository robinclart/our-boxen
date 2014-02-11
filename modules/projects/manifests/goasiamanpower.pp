class projects::goasiamanpower {
  php::project { 'goasiamanpower':
    dir           => "/Users/${::boxen_user}/Code/robinclart/goasiamanpower",
    source        => 'ssh://bitbucket/robinclart/goasiamanpower',
    mysql         => true,
    nginx         => 'projects/shared/nginx.wp.conf.erb',
    php           => '5.4.17'
  }
}
