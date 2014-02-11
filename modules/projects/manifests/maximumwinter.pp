class projects::maximumwinter {
  include imagemagick

  boxen::project { 'maximumwinter':
    dir           => "/Users/${::boxen_user}/Code/gedeon/maximumwinter",
    postgresql    => true,
    nginx         => 'projects/shared/nginx.codedir.conf.erb',
    source        => 'ssh://bitbucket/Gedeon/maximumwinter'
  }
}
