provider "helm" {
  kubernetes {
    config_path = local_file.kubeconfig.filename #./kubeconfig-prod
  }
}

resource "helm_release" "jenkins" {
  name      = "jenkins-chart"
  chart     = "./charts/jenkins"
  namespace = "default"
}

resource "helm_release" "petclinic" {
  name      = "petclinic-chart"
  chart     = "./charts/petclinic"
  namespace = "default"
}