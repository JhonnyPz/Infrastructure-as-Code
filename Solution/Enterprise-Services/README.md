# Infrastructure-as-Code

# 💡 En construcción…

TFRG-example

Modules
    Network   
        -TFVnet-example
            -172.24.0.0/16
        -TFSnet-example
            -172.24.10.0/24
    Routing
        -dnspublic-example.com
        -dnsprivate-example.com
        -TFIP-AG-example
            -zone 3
        -TFIP-VPNG-example
            -zone 3
        -TFAG-example
            -Standard-V2
            -Auto True
            -Min 0
            -Max 10
            -Zone 3
            -(HTTP2) Disabled
            -TFSnet-example
            -Backend
                -AGpool-Linux
            -Setting Rule
                -HTTP-expample
                    -1001
                    -RoutingRuleHttp
                    -AGpool-Linux
                    -HTTP80
        -TFVPNG-example
            -VPN
            -Route-based
            -VpnGw1AZ
            -Generation1
            -Vnet-example
            -172.24.20.0/24
        -Azure_DNS_Private_Resolver
            -Out-AzureDNS-Private
            -In-OnpremisesDNS-Private
    App-Ent
        -VMSet-Linux-example
            -Zone 3
            -Uniforme
            -Ubuntu2004
            -Standard_D2s_v4 2cpu, 8gb
            -SSH Key
            -user-example
            -Generate new key pair
            -SSHkey-example
        -Sot
    Backup
    Security
