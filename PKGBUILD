# Maintainer: Ulrik Boll Djurtoft <ullebe1 at gmail dot com>, Jonas Tranberg Sørensen <>
pkgname=dagensdatalog-service
pkgver=1.0
pkgrel=1
pkgdesc="A Systemd service and timer for automatically changing the users wallpaper to todays wallpaper from Dagensdatalog.dk"
arch=('any')
url="https://github.com/naueramant/dagensdatalog-service"
license=('MIT')
depends=('systemd' 'gnome-shell')
source=('.install'
        'LICENSE'
        'dagensdatalog'
        'dagensdatalog.service'
        'dagensdatalog.timer')
noextract=()
install='.install'
md5sums=('bcaae4cc9a44dd61563308fbcf6a5fb9'
         '00c8ace1c77aa4155be87c874321dfc4'
         '21c2205fe57a5fe06606ef096fce848e'
         'cb67447b8c7588d16dbe5d724f56f7a1'
         '5f931b2182611c62bf66abc9d2191592')

package() {
  install -Dm 644 "${srcdir}/LICENSE" "${pkgdir}/usr/share/licenses/dagensdatalog-service/LICENSE"
  install -Dm 755 "${srcdir}/dagensdatalog" "${pkgdir}/usr/local/bin/dagensdatalog"
  install -Dm 644 "${srcdir}/dagensdatalog.service" "${pkgdir}/etc/systemd/user/dagensdatalog.service"
  install -Dm 644 "${srcdir}/dagensdatalog.timer" "${pkgdir}/etc/systemd/user/dagensdatalog.timer"
  echo "Run 'systemctl --user enable dagensdatalog.timer'"
}
