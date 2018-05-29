install_packages:
  pkg.installed:
    - pkgs:
      - git
      - iftop
      - screen
      - telnet
      - nload
      - iptraf-ng
      - mtr
      - tcpdump
      - sysstat
      - nethogs
      - nmap
      - wget
      - p7zip
      - iperf
      - rkhunter
      - postfix
      - w3m
      - net-tools
      - links
      - htop
      - atop
      - nmon
      - glances
      - screen

remove_packages:
  pkg.removed:
    - pkgs:
      - vnstat

include:
  - unix-utils.sysstat
  - unix-utils.screen
