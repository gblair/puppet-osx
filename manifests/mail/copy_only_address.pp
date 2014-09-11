# Public: Causes only the email (and not the full name + email) to be copied when using "Copy address" in Mail.app
class osx::mail::copy_only_address {
  include osx::mail

  boxen::osx_defaults { 'Copy only the email address when copying an address in Mail':
    user   => $::boxen_user,
    key    => 'AddressesIncludeNameOnPasteboard',
    domain => 'com.apple.mail',
    value  => false,
    type   => 'bool',
    notify => Exec['killall Mail'];
  }
}
