# Maintainer: Thor77 <thor77 at thor77 dot org>

pkgname=telegraf-bin
pkgver=1.0.1
pkgrel=1
pkgdesc="An open source agent for collecting metrics and data on the system; Binary release"
arch=('i686' 'x86_64' 'arm')
url="https://www.influxdata.com/time-series-platform/telegraf/"
license=('MIT')
backup=('etc/telegraf/telegraf.conf')
install=telegraf.install

source_i686=(telegraf.tar.gz::"https://dl.influxdata.com/telegraf/releases/telegraf-${pkgver}_linux_i386.tar.gz")
md5sums_i686=('7d8f7faf5d8e60c66bf5e28990dec865')
source_x86_64=(telegraf.tar.gz::"https://dl.influxdata.com/telegraf/releases/telegraf-${pkgver}_linux_amd64.tar.gz")
md5sums_x86_64=('81b323f79492e4157d9eac4eb2d5e8af')
source_arm=(telegraf.tar.gz::"https://dl.influxdata.com/telegraf/releases/telegraf-${pkgver}_linux_armhf.tar.gz")
md5sums_arm=('346563cf853c940c946de174505e7d94')
source=('telegraf.service' 'telegraf.sysusers' 'telegraf.tmpfiles')
md5sums=('35beb49d2b02153ec6691f41e3f9557c' '58cc9edf8fbf07e7d3a0357db78121b1' '9c7a4df3556cab94837c432f5e46cf04')

package() {
  cd $srcdir
  install -Dm644 telegraf.sysusers "$pkgdir/usr/lib/sysusers.d/telegraf.conf"
  install -Dm644 telegraf.tmpfiles "$pkgdir/usr/lib/tmpfiles.d/telegraf.conf"
  install -Dm644 telegraf.service "$pkgdir/usr/lib/systemd/system/telegraf.service"

  cd telegraf
  install -Dm755 usr/bin/telegraf "$pkgdir/usr/bin/telegraf"
  install -Dm644 etc/telegraf/telegraf.conf "$pkgdir/etc/telegraf/telegraf.conf"
}
