class projects::pagi_blog {
  include heroku

  boxen::project { 'pagi-blog':
    dir           => "/Users/${::boxen_user}/Code/robinclart/pagi-blog",
    postgresql    => true,
    nginx         => 'projects/shared/nginx.codedir.conf.erb',
    source        => 'ssh://bitbucket/robinclart/pagi-blog'
  }
}
