<h3> Configuration Management with Ansible - Homework Solution </h3>
<br>
</br>
<h4> Homework assignment Link <H4>
Source: https://github.com/vutoff/devops-programme/tree/main/M1-3-Ansible#readme
<br>
</br>
<h4> Homework Solution - using build.yml </h4>
<b> Please check build.yml in this folder for the complete homework solution source code </b>
<br> For demo: clone the repository (git clone https://github.com/PSamardzhiev/DevOps.git)</br>
<br> Navigate to <path>/L5-ConfigManagement_Homework </br>
<br> Execute: ansible-playbook build.yml </br>
<br><b> ! You need Ansilbe and Docker installed on your box in order for the automated deployment to be successful !</b></br>
<br>To test the container from a linux terminal: curl localhost:5000 or from Windows box: open powershell -> Invoke-RestMethod http://localhost:5000 </br>
<br>
</br>
<br>When executed Ansible will create a temporary build directory on the Linux host in /tmp/ </br>
<br>It will copy requirements.txt Dockerfile and app directory with all of its content to that temp directory </br>
<br>It will build the container image using copied Dockerfile in the buld directory with the name and tag defined in the variables 
"{{ image_name }}:{{ image_tag }}" </br>
<br> The container will be started with the name defined in {{ cnt_name }} </br>
<br> The image build in the previous Ansible tasks will be pushed to DockerHub with {{ image_name }} and {{ image_tag }} </br>
<br>Target Dockerhub Repository is: https://hub.docker.com/layers/psamardzhiev/docker-ansible-image/v0.1/images/sha256-63ebb69462eadfe3f1ae9307d90d52f2a11ef931beae9f9d9d8899d273621895?context=repo </br>

<br><b> To Pull the Docker Image Directly from the above mentioned Repo: docker pull psamardzhiev/docker-ansible-image:v0.1 </b></br>
<hr> --- </hr>
<h4><b>Homework Solution - using build-v2.yml</b></h4>
<br>build-v2.yml clones the https://github.com/vutoff/devops-programme.git to a directory at /tmp/docker_build and then builds, tags and uploads the container created based on the files from that repo</br>

<br>For this version of the implementation again the target Dockerhub Repository is: https://hub.docker.com/layers/psamardzhiev/docker-ansible-image/v0.1/images/sha256-63ebb69462eadfe3f1ae9307d90d52f2a11ef931beae9f9d9d8899d273621895?context=repo </br>


