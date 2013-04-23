# Public: Set the positioning of the Dock
class osx::dock::orientation (
	$position = 'left',
) {
  include osx::dock

  boxen::osx_defaults { 'Set the positioning of the dock':
    user   => $::boxen_user,
    domain => 'com.apple.dock',
    key    => 'orientation',
    value  => "${position}",
    notify => Exec['killall Dock'];
  }
}
