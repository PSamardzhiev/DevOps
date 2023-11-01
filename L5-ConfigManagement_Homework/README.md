<h3> Configuration Management with Ansible - Homework Solution </h3>
<br>
</br>
<h4> Homework assignment Link <H4>
Source: https://github.com/vutoff/devops-programme/tree/main/M1-3-Ansible#readme
<br>
</br>
<h4> Homework Solution </h4>
<br>
<b> Please check build.yml in this folder for the complete homework solution source code </b>
<br>
</br>
When executed Ansible will create a temporary build directory on the Linux host in /tmp/ \
It will copy requirements.txt Dockerfile and app directory with all of its content to that temp directory \
It will build the container iamge with the name and tag defined in the variables "{{ image_name }}:{{ image_tag }}" \
