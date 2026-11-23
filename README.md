# 5G Standalone (SA) Network Lab: Open5GS + UERANSIM on WSL2

A fully functional 5G SA network deployed on a single Windows laptop. This lab simulates a complete end-to-end 5G environment: a simulated User Equipment (UE) and gNodeB (gNB) connecting to an Open5GS 5G Core, with working user-plane traffic routed to the public internet.

## 🛠️ Skills & Technologies Demonstrated
*   **5G Core (Open5GS):** AMF, SMF, UPF, NRF, AUSF, UDM, UDR, PCF.
*   **5G RAN & UE (UERANSIM):** gNB simulation, UE simulation, NGAP, NAS.
*   **Linux Networking:** Network Namespaces (`ip netns`), virtual Ethernet (`veth`), `iptables` (NAT/MASQUERADE), IP Forwarding, Routing rules.
*   **Protocols:** SCTP, NGAP (N2), GTP-U (N3), PFCP (N4), 5G-AKA.
*   **Environment:** Ubuntu 24.04.1 LTS (WSL2), MongoDB 8.0.

## 📸 Validation & Screenshots
Successfully established a PDU session and achieved end-to-end internet connectivity from the simulated 5G UE to the public internet.

## 🏗️ Architecture
```text
UE (UERANSIM, netns ue1) --radio sim--> gNB --N2--> AMF --> AUSF/UDM/UDR
                                          |            \--> SMF --N4--> UPF --> NAT --> Internet
                                          \-----N3 (GTP-U)---------------/
