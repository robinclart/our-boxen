class projects::thaiprogolf {
  php::project { 'thaiprogolf':
    dir           => "/Users/${::boxen_user}/Code/robinclart/thaiprogolf",
    source        => 'ssh://bitbucket/robinclart/thaiprogolf',
    mysql         => true,
    nginx         => 'projects/shared/nginx.wp.conf.erb',
    php           => '5.4.17'
  }
}
