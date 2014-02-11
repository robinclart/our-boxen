class projects::pagi_consult {
  include imagemagick
  include heroku
  include redis

  package { 'ffmpeg': }

  boxen::project { 'pagi-consult':
    dir           => "/Users/${::boxen_user}/Code/robinclart/pagi-consult",
    postgresql    => true,
    nginx         => 'projects/shared/nginx.codedir.conf.erb',
    source        => 'ssh://bitbucket/robinclart/pagi-consult'
  }
}
