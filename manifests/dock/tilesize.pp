# Public: Set the tile size of the Dock
class osx::dock::tilesize (
	$tilesize = 60,
) {
  include osx::dock

  boxen::osx_defaults { 'Set the tile size of the dock':
    user   => $::boxen_user,
    domain => 'com.apple.dock',
    key    => 'tilesize',
    value  => $tilesize,
    type   => 'float',
    notify => Exec['killall Dock'];
  }
}
