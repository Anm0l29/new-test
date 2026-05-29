Testing real-time GitHub Webhook! Direct push to Jenkins build.Testing my automated Poll SCM trigger for DevOps interview preparation!
29/05/2026
Enel Green Power 
sudo dnf update -y
echo "Installing Java 21..."
sudo dnf install java-21-openjdk-devel -y
 
echo "Adding Jenkins Repository..."
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
 
echo "Installing Jenkins..."
sudo dnf install jenkins -y
echo "Starting Jenkins Service..."
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins
