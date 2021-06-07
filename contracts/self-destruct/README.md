# Unprotected SELFDESTRUCT Instruction

- [SWC-106](https://swcregistry.io/docs/SWC-106)
- [CWE-284](https://cwe.mitre.org/data/definitions/284.html) Improper Access Control

## Description

Due to missing or insufficient access controls, malicious parties can **self-destruct** the contract.

## Remediation

Consider removing the self-destruct functionality unless it is absolutely required. If there is a valid use-case, it is recommended to implement a multisig scheme so that multiple parties must approve the self-destruct action.