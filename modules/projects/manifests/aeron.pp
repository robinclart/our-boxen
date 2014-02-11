class projects::aeron {
  include heroku

  boxen::project { 'aeron':
    dir           => "/Users/${::boxen_user}/Code/siripong/aeron",
    postgresql    => true,
    nginx         => 'projects/shared/nginx.codedir.conf.erb',
    source        => 'siripong/aeron'
  }
}
