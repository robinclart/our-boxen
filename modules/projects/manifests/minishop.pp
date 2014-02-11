class projects::minishop {
  include imagemagick
  include heroku

  boxen::project { 'minishop':
    dir           => "/Users/${::boxen_user}/Code/robinclart/minishop",
    postgresql    => true,
    nginx         => 'projects/shared/nginx.codedir.conf.erb',
    source        => 'ssh://bitbucket/robinclart/minishop'
  }
}
