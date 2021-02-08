# vault-apparmor

AppArmor profile (usr.bin.vault.txt) that works with Vault agent (v1.6.1) under Ubuntu 20.04.1 LTS in enforce mode. This can serve as a baseline and will need to be updated with paths specific to your environment:

- Vault binary installation path
- Vault config directory
- Any token sink or template output paths you have defined

Network permissions are pulled in through abstractions/nameservice in Ubuntu 20 and they're still very course without support for IP ranges or port numbers. Moving to JWT or machine identity auth methods shouldn't require updates since TCP connections to the local metadata service is already covered by TCP entries in abstractions/nameservice. 

This is the tutorial I used to build the profile and has instructions for tuning the profile for different environments:
https://ubuntu.com/tutorials/beginning-apparmor-profile-development#1-overview
