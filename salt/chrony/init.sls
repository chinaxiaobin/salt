{% set ntp_server = ["salt-master"]%}
{% if grains["fqdn"] in ntp_server%}
include:
  - chrony.server
{% else %}
include:
  - chrony.client
{% endif %}
