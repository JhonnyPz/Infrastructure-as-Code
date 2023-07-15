# CI on GitHub and CD on Azure

Este repositorio contiene los archivos necesarios para configurar una solucion de CI/CD utilizando GitHub Actions o Azure Pipelines y desplegando la infreastrutura en Azure.

## Requisitos

* [Una suscripción de Azure](https://azure.microsoft.com/en-us/free/ "Create account free")
* [Una cuenta de GitHub](https://github.com/ "Create account free")
* [(Opcional) Una cuenta de Azure DevOps](https://azure.microsoft.com/es-es/products/devops/ "Create account free")

#### *Entorno local*
* [Git](https://git-scm.com/ "install git")
* [SDK .NET 7](https://dotnet.microsoft.com/en-us/download/dotnet/7.0 "install git")
* [Terraform CLI](https://learn.microsoft.com/es-es/azure/developer/terraform/get-started-cloud-shell-bash?tabs=bash "install terraform")

> **Nota**: si utilizas Azure DevOps, verifica que esté activo el Agent pools Free.

## Fork de repositorio

1. Realiza un Fork de repositorio para configurar el CI/CD en tu repositorio personal

2. Clona el repositorio en tu entorno local `Cambia NAME por tu nombre de usuario.`
```bash
git clone https://github.com/NAME/Infrastructure-as-Code.git
```

## Despliegue de Infraestrutura
Sigue los siguientes pasos para desplegar la solución de infraestructura en Azure:

[Deployment Solution in Azure](https://github.com/JhonnyPz/Infrastructure-as-Code/tree/main/Solution "IaC")


## Configuracion de CI/CD
Hay dos maneras de configurar el CI/CD, utilizando GitHub Actions y Azure Pipelines

### Github Actions
1. ubiquese en la carpeta raiz de proyecto.
```bash
cd Infrastructure-as-Code/Deployment/Web-Application
```
2. Ingrese a la carpeta Pipelines.
```bash
cd Pipelines
```
3. Crear una ruta de carpetas en la raiz del prouyecto con el nombre `.github/workflows` y copie el archivo `github-actions.yml`
```bash
mkdir ../../../.github/workflows
cp github-actions.yml ../../../.github/workflows
```
> **Nota**: Revis el archivo yml y configura las variables en GiHuh con el mismo nombre. Los valores de las variables los puedes encontrar en el `README` de los proyecto

### Azure Pipelines
1. ubiquese en la carpeta raiz de proyecto.
```bash
cd Infrastructure-as-Code/Deployment/Web-Application
```
2. Ingrese a la carpeta Pipelines.
```bash
cd Pipelines
```
3. Copie el archivo `azure-pipelines.yml` y peguelo en la raiz de projecto
```bash
cp azure-pipelines.yml ../
```
> **Nota**: Revis el archivo yml y configura las variables en Azure devops con el mismo nombre. Los valores de las variables los puedes encontrar en el `README` de los proyecto

## Inicializar el despliegue

Realizar un git push
```bash
git push origin main
```
Si todo ha ido bien, deberías poder ver la aplicaion en el navegador.

## Limpieza
Si quieres eliminar la solución de infraestructura creada en Azure, simplemente ejecuta el comando terraform destroy en la carpeta raíz del proyecto.
```bash
terraform destroy
```
¡Y eso es todo! Espero que este README te haya ayudado a entender cómo configurar una solucion de CI/CD en GitHub y Azure DevOps. Si tienes alguna pregunta o problema, no dudes en contactarme.

### En mi perfil encontraras más información y proyectos similares
[![web](https://img.shields.io/badge/GitHub-JhonnyPz-purple?style=for-the-badge&logo=github&logoColor=white&labelColor=101010)](https://github.com/jhonnypz/ "perfil")