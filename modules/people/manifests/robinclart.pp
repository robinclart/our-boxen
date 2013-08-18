class people::robinclart {
  include textmate
  include dropbox
  include alfred
  include things
  include zsh

  include projects::all

  $home = "/Users/${::luser}"

  repository { 'robbyrussell_oh-my-zsh':
    source => 'robbyrussell/oh-my-zsh',
    path   => "${home}/.oh-my-zsh",
  }

  file { "${home}/.zshrc":
    ensure  => 'link',
    target  => "${home}/.oh-my-zsh/templates/zshrc",
    require => Repository['robbyrussell_oh-my-zsh']
  }
}
