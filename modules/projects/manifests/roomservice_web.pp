class projects::roomservice_web {
  boxen::project { 'roomservice-web':
    dir           => "/Users/${::boxen_user}/Code/smartsoftasia/roomservice_web",
    postgresql    => false,
    nginx         => 'projects/shared/nginx.codedir.conf.erb',
    source        => 'ssh://bitbucket/smartsoftasia/roomservice_web'
  }
}
