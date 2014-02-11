class projects::devlop_cms {
  include imagemagick
  include heroku
  include mongodb

  boxen::project { 'devlop-cms':
    dir           => "/Users/${::boxen_user}/Code/robinclart/devlop-cms",
    postgresql    => true,
    nginx         => 'projects/shared/nginx.codedir.conf.erb',
    source        => 'ssh://bitbucket/robinclart/devlop-cms'
  }
}
