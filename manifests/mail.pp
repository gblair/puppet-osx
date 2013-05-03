# Internal: Restart Mail when necessary.
#
# Example
#
#   boxen::osx_defaults { 'Do a thing':
#     # ... other stuff here ...
#     notify => Exec['killall Mail'];
#   }
class osx::mail {
  exec { 'killall Mail':
    refreshonly => true
  }
}

