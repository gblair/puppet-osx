require 'spec_helper'

describe 'osx::mail::copy_only_address' do
  let(:facts) { {:boxen_user => 'ilikebees'} }

  it do
    should contain_boxen__osx_defaults('Show external drives on the desktop').with({
      :key    => 'AddressesIncludeNameOnPasteboard',
      :domain => 'com.apple.finder',
      :value  => false,
      :notify => 'Exec[killall Mail]',
      :user   => facts[:boxen_user]
    })
  end
end
