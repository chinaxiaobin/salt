/etc/vimrc:
  file.managed:
    - source: salt://unix-base/files/vim/vimrc
    - user: root
    - group: root
    - mode: 644
    - backup: minion
