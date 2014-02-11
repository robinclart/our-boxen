class projects::invoices {
  include imagemagick

  boxen::project { 'invoices':
    dir           => "/Users/${::boxen_user}/Code/robinclart/invoices",
    postgresql    => true,
    nginx         => 'projects/shared/nginx.codedir.conf.erb',
    source        => 'ssh://bitbucket/robinclart/invoices'
  }
}
