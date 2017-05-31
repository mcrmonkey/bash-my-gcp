# bash-my-gcp

bash-my-gcp assists people using Google Cloud Platform services from the
command line by providing shorter memorable commands for operating on the Google Cloud platform.

All of these functions and aliases are wrappers around the Google Cloud SDK
command line tools.

Although these scripts make use of Google products and services, these scripts are not
endorsed and/or supported by Google themselves. Use at your own risk etc.

This project has been inspired by the [bash-my-aws](https://github.com/realestate-com-au/bash-my-aws) project.


## Requirements

* [Google Cloud SDK](https://cloud.google.com/sdk/docs/quickstart-linux)
* [bash](https://www.gnu.org/software/bash/)


## Installation

Ensure you have the cloudsdk installed on your system and you have it in
a working state


Clone this repository:

```
git clone https://www.github.com/mcrmonkey/bash-my-gcp
```

The scripts will need to be loaded in to your bash session:

If you have make installed run the following to add it to you bashrc file:

```
make install
```

or add the following line to your bashrc file manually:

```
. /path/to/bash-my-gcp/loader.sh
```

You can also run the above line manually as and when you need it


## Usage:

The following commands are available:

### Configuration profile operations

#### `gcp [config profile]`

This command handles switching between GCP configuration profiles and is
a wrapper around the `gcloud config conigurations` command

Example:

```
gcp customer-prod
```

Running the command without arguments will display your configuration profiles
and which one of them is active

Tab completion is available for this command.

run the following command to learn more about configuration profiles and how to
set them up:

```
gcloud topic configurations
```

#### `gcp-id`

Display the current project ID

#### `gcp-create <config_name> <gcloud_account> <project_name>`

Create a new configuration profile 

`<config_name>` - Name of the config profile. e.g.: gaskets-nonprod
`<gcloud_account>` - The account you want to use with the project. This account will be tested against the project as its added. 
`<project_name>` - The project name

### Console operations

#### `gconsole [section]`

This command will open the cloud console on either the home page or the
specified section i.e. networks

TODO: This command probably needs a better way of starting a browser that is
fully compatible with all/vast majority of linux distributions. If your distro doesn't have
xdg-open ( Part of Gnome ) the URL will be dropped in your terminal.


This command currently requires the project ID to be set in your configuration
profile.

Examples:

Open the console home page for the current project:

```
gconsole
```

Open the console in the networking section:

```
gconsole net
```

Tab completion is available for this command.

### Cloud DNS operations

#### `gcd-zones`

List or describe managed zones.

Tab completion is available for this command.

#### `gcd`

List DNS record sets

### Instance operations

#### `gci`

This command will list the current instances and their state in the currently
loaded project in a fancy table.

`--filter` is available and will fuzzy match instances. `--filter="this AND that"`
will fail however due to a bug :\


#### `gci-status <instance>`

Obtain the status of an instance or group of instances.
Fuzzy matching of instance names is available.


#### `gci-start <instance>`

Start an instance

Currently only supports one instance name

#### `gci-stop <instance>`

Stop an instance

Currently only supports one instance name

#### `gci-zone <instance>`

Return the zone for an instance

#### `gci-ips <instance>`

List the IP's for an instance

#### `gci-iip <instance>`

Show internal IP's for an instance

#### `gci-eip <instance>`

Show external IP's for an instance


### Zones and regions

#### `gcr [zone]`

List the available regions with your project quotas and region status along side


#### `gcz [zone]`

List the available zones, the region it lives in and the zones status


### Misc

#### `gssh <IP or hostname>`

Wrapper around ssh command to funnel host key ID's in to knownhost file suffixed with the project ID
eg: ~/.ssh/known_hosts-abc-prod-1234


