
<walkthrough-author author="mcrmonkey" repositoryUrl="https://github.com/mcrmonkey/bash-my-gcp"></walkthrough-author>
# Quick Tutorial for bash-my-gcp

## What is bash-my-gcp ?

`bash-my-gcp` aims to assist people using Google Cloud Platform services from their bash command line, either on their linux workstation or in a cloud shell, by providing some shortcuts for operating on the platform.


Here you'll get to have a quick play with bash-my-gcp.


**Prerequisites**:
 - a bash shell
 - linux environment

**Nice to have**:
 - A GCP account
 - A GCP project
 - Some instaces


**Time to complete this tutorial**: About 5 minutes





<walkthrough-footnote></walkthrough-footnote>

Click the **Next** button to move to the next step.

## Lets Get started

You'll need to load bash-my-gcp in to your environment to use it.


You can do this with the following command in your shell now:

```shell

source loader.sh

```



Once loaded you should then be able to try out some of the commands.


See the [README.md file in the repository](https://github.com/mcrmonkey/bash-my-gcp/blob/master/README.md) for how to add this to your regular bash environment.



<walkthrough-footnote></walkthrough-footnote>

Click the **Next** button to move to the next step.

## Instance operations

### Listing instances

To list the instances in your project type the following:

```shell
gci
```

To list instances who's name contains the word "web" you can type the following:

```shell
gci web
```

### Controlling instances

Instances can be stoped, started, reset and deleted with the following commands:


Stopping an instance:

```shell
gci-stop web-server1
```

Starting an instance:

```shell
gci-start web-server1
```


Resetting an instance:

```shell
gci-reset web-server1
```


Deleting an instance:

```shell
gci-delete web-server1
```




**Tip:** Tab completion is available for instance operations



<walkthrough-footnote></walkthrough-footnote>

Click the **Next** button to move to the next step.

## Named configurations

gcloud allows you to store named configurations for your projects.

These configurations are collections of key-value pairs that influence how the gcloud commands work.

Named configurations are intended to be an advanced feature, and you can probably ignore them entirely if you only work with a single project.

### Creating a configuration profile

You can create configuration profiles by using the gcpro-create command:

```shell
gcpro-create
```

This command requires:
 * A name for your configuration
 * Your gcloud account email
 * Your project ID


### Listing saved configurations

You can list your saved configurations by typing:


```shell
gcpro
```
### Switching between configurations

You can switch between configurations by typing:

```shell
gcpro config-name
```

**Tip:** If you dont know the name of your configuration profile you can use tab completion.


<walkthrough-footnote></walkthrough-footnote>

Click the **Next** button to move to the next step.

## SSH-ing to an instance

You can ssh to your instance using the following command:

```shell
gssh <external-IP>
```

**Note:** This command requires you have your configurations profiles project-ID value correctly set

### Whats this command doing different to standard ssh ?

gssh sets an extra ssh client option so that all the host keys of your projects instances are put in to a separate known_hosts file.


<walkthrough-footnote></walkthrough-footnote>

Click the **Next** button to move to the next step.

## Hows that thing doing that?

Each of the commands mentioned in this tutorial are basic bash functions that
call the corresponding command, or sequence of commands, in gcloud.

You can find out what each of them are doing by executing the following command:

```shell
type gci
```




<walkthrough-footnote></walkthrough-footnote>

Click the **Next** button to move to the next step.

## Congratulations!

<walkthrough-conclusion-trophy></walkthrough-conclusion-trophy>

You completed this quick tutorial for bash-my-gcp!


If you have an idea or a fix; pull requests for bash-my-gcp are welcome



<walkthrough-footnote></walkthrough-footnote>
<walkthrough-notification-menu-icon></walkthrough-notification-menu-icon> **Don't Forget!**


Ensure you clean up any resources you may have created during this tutorial so you dont get an unexpected bill


