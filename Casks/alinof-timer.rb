cask :v1 => 'alinof-timer' do
  version :latest
  sha256 :no_check

  url 'http://www.alinofsoftware.ch/resources/AlinofTimer.pkg'
  name 'Alinof Timer'
  homepage 'http://www.alinofsoftware.ch/en/products/products-timer/'
  license :gratis

  pkg 'AlinofTimer.pkg', :allow_untrusted => true

  uninstall :pkgutil => 'com.alinofsoftware.alinoftimer'
end
