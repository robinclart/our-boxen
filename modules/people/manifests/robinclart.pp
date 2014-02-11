class people::robinclart {
  # include textmate
  include textmate::textmate2::release
  include cyberduck
  include forklift
  include kaleidoscope
  include dropbox
  include alfred
  include things
  include sequel_pro
  include wunderlist
  include codekit
  include skype
  include zsh
  include mou
  include vlc
  include emacs
  include hipchat
  # include minecraft

  git::config::global {
    'core.editor':      value => 'mate -w' ;
    'user.name':        value => 'Robin Clart' ;
    'user.email':       value => 'robin@clart.be' ;
    'difftool.prompt':  value => 'false' ;
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
