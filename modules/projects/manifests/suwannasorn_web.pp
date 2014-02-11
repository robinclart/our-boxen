class projects::suwannasorn_web {
  boxen::project { 'suwannasorn-web':
    dir           => "/Users/${::boxen_user}/Code/robinclart/suwannasorn-web",
    postgresql    => true,
    nginx         => 'projects/shared/nginx.codedir.conf.erb',
    source        => 'ssh://bitbucket/robinclart/suwannasorn-web'
  }
}
