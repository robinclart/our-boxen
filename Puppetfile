# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

def robinclart(name, version, options = nil)
  github name, version, :repo => "robinclart/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen",      "3.0.1"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "autoconf",   "1.0.0"
github "dnsmasq",    "1.0.0"
github "gcc",        "2.0.1"
github "git",        "1.2.5"
github "homebrew",   "1.4.1"
github "hub",        "1.0.3"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.2"
github "nodejs",     "3.2.9"
github "openssl",    "1.0.0"
github "repository", "2.2.0"
github "ruby",       "6.3.0"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "osx",         "1.6.0"
github "textmate",    "1.1.0"
github "dropbox",     "1.1.1"
github "alfred",      "1.1.2"
github "things",      "1.0.1"
github "sysctl",      "1.0.0"
github "postgresql",  "2.0.0"
github "imagemagick", "1.2.1"
github "heroku",      "2.0.0"
github "java",        "1.1.2"
github "solr",        "1.0.3"
github "zsh",         "1.0.0"
github "skype",       "1.0.4"
github "spotify",     "1.0.1"
github "cyberduck",   "1.0.1"
github "wunderlist",  "1.0.0"
github "sequel_pro",  "1.0.0"
github "wget",        "1.0.0"
github "libtool",     "1.0.0"
github "pkgconfig",   "1.0.0"
github "pcre",        "1.0.0"
github "libpng",      "1.0.0"
github "php",         "1.1.0"
github "mysql",       "1.1.5"
github "codekit",     "1.0.3"
github "mou",         "1.1.3"
github "vlc",         "1.0.5"
github "emacs",       "1.1.0"
# github "minecraft",   "1.0.2"
github "mongodb",     "1.0.5"
github "redis",       "0.3.0"
github "hipchat",     "1.1.0"

robinclart "forklift",      "1.0.0"
robinclart "kaleidoscope",  "1.0.1"
