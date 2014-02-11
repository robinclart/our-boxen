class projects::brubeck {
  include imagemagick
  include heroku
  include solr

  $brubeck_ruby_version = '1.9.3'

  boxen::project { 'brubeck':
    dir           => "/Users/${::boxen_user}/Code/siripong/brubeck",
    postgresql    => true,
    nginx         => 'projects/shared/nginx.codedir.conf.erb',
    ruby          => $brubeck_ruby_version,
    source        => 'siripong/brubeck'
  }
}
