## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

Diagrams/Network Diagram.drawio.png

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. 
Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

elk-playbook.yml
filebeat-config.yml
filebeat-playbook.yml
metricbeat-config.yml
metricbeat-playbbok.yml

This document contains the following details:

- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the Damn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the data and system logs.
Filebeat watches the log files or locations that we specify, collects log events and forward them either to Elasticsearch or Logstash for indexing.
Metricbeat records metrics and statistics from the system and services running on the server.


The configuration details of each machine may be found below.

| Name     	  | Function    	| IP Address 	| Operating System 	|
|----------	  |-------------	|------------	|------------------	|
| Jump-Box 	  | Gateway     	| 10.0.0.4   	| Linux            	|
| Web-1    	  | Web Server 	  | 10.0.0.5   	| Linux            	|
| Web-2    	  | Web Server  	| 10.0.0.6   	| Linux            	|
| ELK-MACHINE | Elk Server 	  | 10.1.0.4   	| Linux            	|
                                                                                                                                                                                                                                	
### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
184.144.0.178


Machines within the network can only be accessed by Jump-Box

Which machine did you allow to access your ELK VM? What was its IP address?_
Jump-Box - 20.124.192.68


A summary of the access policies in place can be found in the table below.

| Name     	  | Publicly Accessible 	| Allowed IP Addresses 	|
|----------	  |---------------------	|----------------------	|
| Jump-Box 	  | Yes                 	| 184.144.0.178        	|
| Web-1    	  | No                  	| 10.0.0.4             	|
| Web-2    	  | No                  	| 10.0.0.4             	|
| ELK-MACHINE | No                  	| 10.0.0.4             	|

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because, you can orchestrate the entire application environment no matter where it’s deployed.
What is the main advantage of automating configuration with Ansible?
You can orchestrate the entire application environment no matter where it’s deployed. You can also customize it based on your needs.

The playbook implements the following tasks:
In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- ...Install Docker
- ...Download image
- ...Install image
- ...Enable image
- ...Setup image
- ...Start image

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

(Diagrams\docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:

Web-1 : 10.0.0.5
Web-2 : 10.0.0.6

We have installed the following Beats on these machines:

Filebeat and Metricbeat.
These Beats allow us to collect the following information from each machine:

Filebeat : Filebeat collects error logs, slow logs, acccess logs, system logs, ActiveMQ logs etc.
Apache logs collect and parse access and error logs created by the Apache HTTP server.
Elasticsearch logs collect and pasrse logs created by Elasticsearch.

Metricbeat : Metricbeat collects metrics from the operating system and from services running on the server
MS SQL Server metrics fetch monitoring metrics from a MS SQL server instance.
System metrics collect CPU, memory, network and disk statistics from the host.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the /etc/ansible/files/filebeat-config.yml file to /etc/filebeat/filebeat.yml
- Update the filebeat-config.yaml file to include ip addresses of web-1 and web-2
- Run the playbook, and navigate to the Filebeat installation page on the ELK server GUI.
- On the same page, scroll to Step 5: Module Status and click Check Data.
- Scroll to the bottom of the page and click Verify Incoming Data to check that the installation worked as expected.

- Which URL do you navigate to in order to check that the ELK server is running?
http://40.118.207.166:5601/app/kibana