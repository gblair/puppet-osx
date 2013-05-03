# Public: Causes the dock to hide itself when you're not pointing at it.
class osx::mail::no_copy_fullname_with_address {
  include osx::mail

  boxen::osx_defaults { 'Stop copying the full name when copying an address in Mail.':
    user   => $::boxen_user,
    key    => 'AddressesIncludeNameOnPasteboard',
    domain => 'com.apple.mail',
    value  => false,
    type   => 'bool',
    notify => Exec['killall Mail'];
  }
}
