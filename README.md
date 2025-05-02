# Night2Shell

## BPFtrace Scripts

### Large Write Monitor
A BPFtrace script to monitor large write operations (>1MB) across the system.

#### Prerequisites
- BPFtrace installed on your system
- Root/sudo access

#### Usage
The script is already executable. Simply run:
```bash
sudo ./bpftrace/large_write_monitor.bt
```

This will monitor and print information about any process writing more than 1MB of data at once.

### Openat Monitor
A BPFtrace script to monitor openat system calls across the system.

#### Usage
```bash
sudo ./bpftrace/openat_monitor.bt
```

This will show a histogram of which processes are using the openat system call, updated every 5 seconds.

### Connect Monitor
A BPFtrace script to monitor network connection attempts across the system.

#### Usage
```bash
sudo ./bpftrace/connect_monitor.bt
```

This will:
- Immediately notify when any process attempts to make a network connection
- Show the destination IP address and port for each connection attempt
- Display a histogram of connection attempts by process name, updated every 5 seconds

### Connect Detailed Monitor
⚠️ **Currently Not Working** - This script needs to be fixed to properly handle IP address conversion.

A BPFtrace script to monitor network connections with detailed IP address information.

#### Usage
```bash
sudo ./bpftrace/connect_detailed.bt
```

This will show detailed information about IPv4 connection attempts, including:
- Process name making the connection
- Destination IP address broken down into octets
- Destination port number

### Connect Scanner
A BPFtrace script to monitor connection attempts by process ID.

#### Usage
```bash
sudo ./bpftrace/connect_scanner.bt
```

This will:
- Track connection attempts by process ID (PID)
- Show a histogram of connection attempts per PID
- Update and clear the statistics every 10 seconds
- Useful for identifying processes that make frequent connection attempts

### Sendto Monitor
A BPFtrace script to monitor sendto system calls across the system.

#### Usage
```bash
sudo ./bpftrace/sendto_monitor.bt
```

This will show a histogram of which processes are using the sendto system call, updated every 5 seconds. This is useful for monitoring UDP traffic and other datagram-based network communications.