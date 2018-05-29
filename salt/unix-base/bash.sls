/etc/bashrc:
  file.managed:
    - source: salt://unix-base/files/bashrc/bashrc
    - user: root
    - group: root
    - mode: 644
    - backup: minion
