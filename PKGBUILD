# Maintainer: Thor77 <thor77 at thor77 dot org>
# Contributor: Sebastian Krebs <sebastian[at]krebs[dot]one>

pkgname=telegraf-bin
pkgver=1.21.3
pkgrel=1
pkgdesc="An open source agent for collecting metrics and data on the system; Binary release"
arch=('i686' 'x86_64' 'armv6h' 'armv7h' 'aarch64')
url="https://github.com/influxdata/telegraf"
license=('MIT')
conflicts=('telegraf')
backup=('etc/telegraf/telegraf.conf')
install=telegraf.install

source_i686=("https://dl.influxdata.com/telegraf/releases/telegraf-${pkgver}_linux_i386.tar.gz")
source_x86_64=("https://dl.influxdata.com/telegraf/releases/telegraf-${pkgver}_linux_amd64.tar.gz")
source_armv6h=("https://dl.influxdata.com/telegraf/releases/telegraf-${pkgver}_linux_armhf.tar.gz")
source_armv7h=("https://dl.influxdata.com/telegraf/releases/telegraf-${pkgver}_linux_armhf.tar.gz")
source_aarch64=("https://dl.influxdata.com/telegraf/releases/telegraf-${pkgver}_linux_arm64.tar.gz")
source=('telegraf.sysusers' 'telegraf.tmpfiles' 'LICENSE')

sha256sums=('31c038721ff674519a506418b0d70045e2c51115a78a5939743886c44ef5e1bb'
            '36b309e79422ddbaf6067f814c8bd69bd842cc662c3c9dbbf507ee5716282779'
            'bece49bfc61abbb9d0b69bebb47955a44617ada83186c95db5651cd40c0a867a')
sha256sums_i686=('64b53424c7e6f0f9808c2e90e600a3e3c065b7a0ce8b0c96e4a58b0eb5c79db8')
sha256sums_x86_64=('cdf23ba657243a27fc0f78717ae095c10f16ca5be8e668c5c284cd92ca8fc309')
sha256sums_armv6h=('dd11c4604d93ebd6ab7d997140615b8ef55a682d8c51342de43ba16390304aed')
sha256sums_armv7h=('dd11c4604d93ebd6ab7d997140615b8ef55a682d8c51342de43ba16390304aed')
sha256sums_aarch64=('a1a6e81174b2fcdccb3af6b105d5aaf46f967e6599fbabd8ff392ba831a7a800')

package() {
  cd "$srcdir"
  install -Dm644 telegraf.sysusers "$pkgdir/usr/lib/sysusers.d/telegraf.conf"
  install -Dm644 telegraf.tmpfiles "$pkgdir/usr/lib/tmpfiles.d/telegraf.conf"
  install -Dm644 LICENSE "${pkgdir}/usr/share/licenses/telegraf/LICENSE"

  cd "telegraf-$pkgver"
  install -Dm755 usr/bin/telegraf "$pkgdir/usr/bin/telegraf"
  install -Dm644 usr/lib/telegraf/scripts/telegraf.service "$pkgdir/usr/lib/systemd/system/telegraf.service"
  install -Dm644 etc/telegraf/telegraf.conf "$pkgdir/etc/telegraf/telegraf.conf"
  install -Dm644 etc/logrotate.d/telegraf "$pkgdir/etc/logrotate.d/telegraf"
}
