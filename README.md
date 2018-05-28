# DNS service for Skwr

Note: Only the DNS cache has been tested.

## Goal
Run a DNS server on a local network.

## Configuration

### DNS Cache
To specify to which external DNS you want to forward requests, create the file `etc/secret` based on the following template:
```
# Define your own values for these variables
# - DO NOT put "" or '' around values, or add space around =
# - DO NOT use these special characters within values: \ " '

# Use the name of a file available in app/etc/cache, without the `.conf` file extension 
DNS=opendns
```

If no DNS is specified, OpenDNS-home will be used by default.
