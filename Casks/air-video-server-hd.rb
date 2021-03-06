cask :v1 => 'air-video-server-hd' do
  version '2.1.3'
  sha256 '8b6b8bc849d88515f41ac2ae4d709079e1b30ed5f577d51ccf0e06f5dbb3ecda'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/AirVideoHD/Download/Air+Video+Server+HD+#{version}.dmg"
  name 'Air Video Server HD'
  appcast 'https://s3.amazonaws.com/AirVideoHD/Download/appcast.xml',
          :sha256 => 'b4b89e84e52dc52b699826f65fdb04a32b43c87f134ada629904af84fdff1bb4'
  homepage 'http://www.inmethod.com/airvideohd'
  license :gratis

  app 'Air Video Server HD.app'

  zap :delete => [
                  '~/Library/Caches/com.inmethod.AirVideoServerHD',
                  '~/Library/Logs/AirVideoServerHD',
                  '~/Library/Preferences/com.inmethod.AirVideoServerHD.plist',
                 ]
end
