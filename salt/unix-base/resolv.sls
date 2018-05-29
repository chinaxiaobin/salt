/etc/resolve.conf:
  file.managed:
    - source: salt://unix-base/files/dns/resolv.conf
    - user: root
    - group: root
    - mode: 644
    - backup: minion
