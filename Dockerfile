FROM archlinux:base-devel
RUN pacman -Syu --noconfirm && pacman -S sudo --noconfirm && useradd build && \
    echo "build ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers
COPY PKGBUILD LICENSE telegraf.install telegraf.sysusers telegraf.tmpfiles /workdir/
RUN chown -R build:build /workdir
WORKDIR /workdir
USER build
RUN makepkg -si --noconfirm
ENTRYPOINT [ "/usr/bin/telegraf", "--test" ]
