# Hostfile

The Hostfile script is a simple utility that allows you to:

- Add IP addresses and domain(s) to your `/etc/hosts` file.
- Remove domain(s) from `/etc/hosts`.
- Group multiple domains on a single line for cleaner management.
- Run the script without needing `sudo` every time using SUID.

## Usage
```
  1. hostfile <IP> <DOMAIN> [ADDITIONAL_DOMAINS...] (Add entry for domain)
  2. hostfile -R <DOMAIN> (Remove entry for domain)
  3. hostfile -h | --h | --help (Show this help message)
```

## Installation

To install the Hostfile script, simply run the following one-liner:

```bash
curl -s https://raw.githubusercontent.com/Rezy-Dev/Hostfile/refs/heads/main/install.sh | sudo bash
```
This will clone the repository, move the script to `/usr/bin/`, and make it executable without needing sudo each time.

> **Note:** To know what the script does, visit the [install.sh](https://github.com/Rezy-Dev/Hostfile/blob/main/install.sh) script and read it.
