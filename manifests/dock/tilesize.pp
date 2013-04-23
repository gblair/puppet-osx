# Public: Set the tile size of the Dock
class osx::dock::tilesize (
	$tilesize = '60',
) {
  include osx::dock

  boxen::osx_defaults { 'Set the tile size of the dock (20 to 256)':
    user   => $::boxen_user,
    domain => 'com.apple.dock',
    key    => 'tilesize',
    value  => "${tilesize}",
    notify => Exec['killall Dock'];
  }
}
