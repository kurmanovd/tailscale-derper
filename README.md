# Custom Tailscale DERP Servers in Docker

## Setup

DERP setup offical documentation <https://tailscale.com/kb/1118/custom-derp-servers/>

| ENV             |  Description                                                  | Value           | Required  |
|---|---|---|---|
| DERP_HOSTNAME   | hostname                                                      | my.domain.name  | true      |
| DERP_CERT_MODE  | certificate mode                                              | letsencrypt     | false     |
| DERP_CERT_DIR   | directory to store LetsEncrypt certs(if addr's port is :443)  | /certs          | false     |
| DERP_ADDR       | listening address                                             | :443            | false     |
| DERP_STUN       | enable STUN server                                            | true            | false     |

## Tailscale ACL

  ```json
  "derpMap": {
    "OmitDefaultRegions": true,
    "Regions": { "950": {
      "RegionID": 950,
      "RegionCode": "derp-ru-0",
      "Nodes": [{
          "Name": "1",
          "RegionID": 950,
          "HostName": "my.domain.name",
          "DERPPort": 443
      }]
    }}
  }
  ```
