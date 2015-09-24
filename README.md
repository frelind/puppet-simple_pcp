# simple_pcp

Puppet module for Performance Co-Pilot

This module will install the required pcp packages and manage it's services.
Tested on RHEL7 with Puppet 3.7.4 

**Table of Contents**
- [Usage](#usage)
- [Parameters](#parameters)
  - [Web Interface parameters](#web-interface-parameters)
- [Development](#development)

## Usage

```puppet
class { 'simple_pcp': }
```

## Parameters

pcp_ensure
----------
Install/uninstall package
- *Default*: 'present'

pmcd_ensure
-----------
Install/uninstall package
- *Default*: 'present'

pmcd_enable
-----------
Enable/disable service
- *Default*: 'true'

pmlogger_ensure
---------------
Ensure service is running/stopped
- *Default*: 'running'

pmlogger_enable
---------------
Enable/disable service
- *Default*: 'true'

### Web Interface parameters
web_service
-----------
If true, will install Web Interface
- *Default*: 'false'

webapi_ensure
-------------
Install/uninstall webapi package
- *Default*: 'true'

pmweb_ensure
------------
Ensure service is running
- *Default*: 'true'

pmweb_enable
------------
Enable/disable service 
- *Default*: 'true'

## Development

Feel free to contribute and add functionality
