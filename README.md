#README
<h2>Purpose</h2>
<p>The purpose of this configuration is to create Google Cloud VMs without having to go through the clunky Google Cloud UI.</p>

<h2> Setup </h2>
<p> In order to run these configurations from your local machine, it is recommended to read the documentation (link provided in links section). from HashiCorp in order to properly install Terraform on to your machine.</p>
<br/>
<p>Once you have installed and configured Terraform, follow the below steps to run thse configurations to create a GCP VM.</p>
<br/>
<br/>
<h2>How to use</h2>
Clink the URL in order to access the pipeline for the VM Creation.
<br/>
<br/>
Pipeline Link: https://app.terraform.io/app/DARI-Motion/workspaces/new-instance-creation
<br/>
<br/>
If you cannot access the pipeline, you more than likely need to be added as a user. If this is the case, please contact <strong>Matt Prentice</strong> and he will get you added to the pipeline as a user. 
<br/>
<br/>
Follow these steps to run the pipeline:
<br/>
<br/>
1. Select DARI Motion from the organizations list.
<br/>
2. Select new-instance-creation workspace
<br/>
4. Select <strong>Actions---->Start new run</strong>
<br/>
5. On the next screen leave <strong> plan and apply </strong> selected in the drop down box and select <strong> Start Run </strong>
<br/>
<br/>
 <p>Terraform cloud will then conduct a pull requet to the Terraform configs folder hosted in GitHub, (will be moving to Bitbucket), and then run the terraform commands that are need in order to create the new VM in GCP. </p>
