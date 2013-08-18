class projects::leofolio {
  boxen::project { 'leofolio':
    dir           => "/Users/${::boxen_user}/Code/robinclart/leofolio",
    nginx         => 'projects/shared/nginx.static.conf.erb',
    source        => 'ssh://bitbucket/robinclart/leofolio-static'
  }
}
