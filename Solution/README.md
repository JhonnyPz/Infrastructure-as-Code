# Deployment Solution in Azure

Este repositorio contiene los archivos necesarios para desplegar una solución de infraestructura en Azure utilizando Terraform.

## Requisitos

* [Una suscripción de Azure](https://azure.microsoft.com/en-us/free/ "Create account free")

#### *Azure Cloud Shell*
* [Terraform CLI instalado](https://learn.microsoft.com/es-es/azure/developer/terraform/get-started-cloud-shell-bash?tabs=bash "install terraform")

#### *Entorno local*
* [Git Instalado](https://git-scm.com/ "install git")
* [Azure CLI instalado](https://developer.hashicorp.com/terraform/tutorials/azure-get-started/azure-build#install-the-azure-cli-tool "install")
* [Terraform CLI instalado](https://developer.hashicorp.com/terraform/tutorials/azure-get-started/install-cli "install")

> **Nota**: si utilizas Azure Cloud Shell, verifica que esté instalado Terraform CLI.

## Autenticación mediante la CLI de Azure
Terraform debe autenticarse en Azure para crear infraestructura.

Para ello se recomienda la creacion de una una [entidad de servicio](https://developer.hashicorp.com/terraform/tutorials/azure-get-started/azure-build#authenticate-using-the-azure-cli "create identity Service"). Una vez que termine la creación, puedes continuar con el despliegue.

> **Nota**: si utilizas Azure Cloud Shell, puedes omitir este paso.

## Despliegue
Sigue los siguientes pasos para desplegar la solución de infraestructura en Azure:

1. Clona este repositorio en Azure Cloud Shell o en tu entorno local.
```bash
git clone https://github.com/JhonnyPz/Infrastructure-as-Code.git
```
2. Accede a la carpeta del proyecto de solución que deseas desplegar.
```bash
cd Infrastructure-as-Code/Solution/name-project
```
3. Inicializa Terraform en el directorio del proyecto.
```bash
terraform init
```
4. Crea un archivo terraform.tfvars en la carpeta raíz del proyecto y proporciona los valores necesarios para las variables. Un ejemplo de cómo podría ser este archivo se proporciona en terraform.example.tfvars. 

> Los valores de las variables los puedes encontrar en el `README` de los proyectos o puedes utilizar los valores por defecto del archivo `variables.tf`.

5. Ejecuta el comando terraform plan para verificar que no hay errores.
```bash
terraform plan -var-file="terraform.example.tfvars"
```
6. Ejecuta el comando terraform apply para desplegar la solución de infraestructura en Azure.
```bash
terraform apply -var-file="terraform.example.tfvars"
```
7. Si todo ha ido bien, deberías poder ver los recursos creados en el portal de Azure.

## Limpieza
Si quieres eliminar la solución de infraestructura creada en Azure, simplemente ejecuta el comando terraform destroy en la carpeta raíz del proyecto.
```bash
terraform destroy
```
¡Y eso es todo! Espero que este README te haya ayudado a entender cómo desplegar una solución de infraestructura de Azure con Terraform. Si tienes alguna pregunta o problema, no dudes en contactarme.

### En mi perfil encontraras más información y proyectos similares
[![web](https://img.shields.io/badge/GitHub-JhonnyPz-purple?style=for-the-badge&logo=github&logoColor=white&labelColor=101010)](https://github.com/jhonnypz/ "perfil")