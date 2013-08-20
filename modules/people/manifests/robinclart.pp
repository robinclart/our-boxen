class people::robinclart {
  include textmate
  include cyberduck
  include forklift
  include dropbox
  include alfred
  include things
  include skype
  include zsh

  git::config::global {
    'core.editor': value => 'mate -w' ;
    'user.name':   value => 'Robin Clart' ;
    'user.email':  value => 'robin@clart.be' ;
  }

  include projects::all

  $home = "/Users/${::boxen_user}"

  repository { 'robinclart_ohmyzsh':
    source => 'robinclart/oh-my-zsh',
    path   => "${home}/.oh-my-zsh",
  }

  file { "${home}/.zshrc":
    ensure  => 'link',
    target  => "${home}/.oh-my-zsh/templates/zshrc",
    require => Repository['robinclart_ohmyzsh']
  }
}
