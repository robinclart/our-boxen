class projects::samanea {
  boxen::project { 'samanea':
    dir           => "/Users/${::boxen_user}/Code/robinclart/samanea",
    source        => 'ssh://bitbucket/robinclart/samanea-static'
  }
}
