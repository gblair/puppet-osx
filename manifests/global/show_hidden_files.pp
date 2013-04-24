# Public: Show hidden files
class osx::global::show_hidden_files {
  boxen::osx_defaults { 'Show hidden files':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'AppleShowAllExtensions',
    value  => true,
    type   => 'bool',
    notify => Exec['killall Finder'];
  }
}
