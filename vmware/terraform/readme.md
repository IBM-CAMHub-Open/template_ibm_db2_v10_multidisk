# Template - IBM DB2 Enterprise Server Edition V10.5 multiple disks on a single virtual machine
Template Version - 1.0

## Description

This template deploys IBM DB2 Enterprise Server Edition V10.5 on a Linux virtual machine.<br>

## Features

### Clouds

 VMware<br>
<br>
### Template Version

1.0<br>
<br>
### Operating Systems Supported

Red Hat Enterprise Linux 7<br>
Red Hat Enterprise Linux 6<br>
Ubuntu 14.04 LTS<br>
<br>
### Topology

1 virtual machine:<br>
  IBM DB2 Enterprise Server Edition V10.5<br>
    db2 instance 1, 1 database<br>
<br>
### Software Deployed

IBM DB2 Enterprise Server Edition V10.5<br>
<br>
### Default Virtual Machine Settings

 vCPU 2, Memory (GB) 4<br>
<br>
### Usage and Special Notes

1. The user is responsible for obtaining appropriate software licenses and downloads prior to template deployment.<br>
2. Detailed system requirements for DB2 V10.5 - <a href=\"https://www.ibm.com/software/reports/compatibility/clarity/index.html\" target=\"_blank\">https://www.ibm.com/software/reports/compatibility/clarity/index.html</a><br>
3. IBM Knowledge Center for DB2 V10.5 - <a href=\"https://www.ibm.com/support/knowledgecenter/en/SSEPGG_10.5.0\" target=\"_blank\">https://www.ibm.com/support/knowledgecenter/en/SSEPGG_10.5.0</a><br>
4. IBM Support Portal - <a href=\"https://www.ibm.com/support/home/\" target=\"_blank\">https://www.ibm.com/support/home/</a><br>
<br>


## Overview

### License and Maintainer

Copyright IBM Corp. 2016, 2017 

### Target Cloud Type

VMware vSphere

### Software Deployed


### Major Versions



### Minor Versions



*Note, these represent base versions only, explicit fixpacks may also be added.*

### Platforms Supported

The following Operating Systems are supported for software defined in this template.



### Nodes Description

The following table describes the nodes and relevant software component deployed on each node.

<table>
  <tr>
    <th>Node Name</th>
    <th>Component</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>DB2Node01</code></td>
    <td>linux_cloud_fs</code></td>
    <td></code></td>
  </tr>
  <tr>
    <td>DB2Node01</code></td>
    <td>db2_v105_install</code></td>
    <td></code></td>
  </tr>
  <tr>
    <td>DB2Node01</code></td>
    <td>db2_create_db</code></td>
    <td></code></td>
  </tr>
</table>


### Autoscaling Support

Nil

## Software Resource Minimal Requirements

The following is a summary of the minimal requirements available to the base operating system to support a successful deployment.



## Disk Requirements

The following lists on a per-product basis the minimal reccomended disk required for each product installed.



## Software Repository Libraries

The following standard operating system libraries are required in the relevant Operating System library for each Operating System.



## Network Connectivity and Security Groups

Network connectivity is required from the deployed nodes to standard infrastructure. The following is a description of the network Ports required on each node based on the software deployed on that node.



# Software Repository Requirements

The following files are neccessary on the Software Repository to successfully install this product. Please refer to the document on managing software repositories for the correct method to load  and manage files on the Software Repository.



# Cloud Specific Requirements

The following is required prior to deploying the template on the target cloud. These details will either be required by the deployer or injected by the platform at runtime.

<table>
  <tr>
    <th>Terraform Provider Variable</th>
    <th>Terraform Provider Variable Description.</th>
  </tr>
  <tr>
    <td>user</th>
    <td>The user name for vSphere API operations.</th>
  </tr>
  <tr>
    <td>password</code></td>
    <td>The user password for vSphere API operations.</td>
  </tr>
  <tr>
    <td>vsphere_server</code></td>
    <td>The vSphere Server name for vSphere API operations.</td>
  </tr>
  <tr>
    <td>allow_unverified_ssl</code></td>
    <td>Set True, VMware vSphere client will permit unverifiable SSL certificates.</td>
  </tr>
</table>

These variables are typically defined when creating a Cloud Connection.

