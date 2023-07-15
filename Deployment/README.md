# CI-CD with GitHub And Azure

Este repositorio contiene los archivos necesarios para configurar una solución de CI/CD utilizando GitHub Actions o Azure Pipelines y desplegar la infraestructura en Azure.

### Requisitos

* [Una suscripción de Azure](https://azure.microsoft.com/en-us/free/ "Create account free")
* [Una cuenta de GitHub](https://github.com/ "Create account free")
* [(Opcional) Una cuenta de Azure DevOps](https://azure.microsoft.com/es-es/products/devops/ "Create account free")

### Entorno local

* [Git](https://git-scm.com/ "install git")
* [SDK .NET 7](https://dotnet.microsoft.com/en-us/download/dotnet/7.0 "install git")
* [Terraform CLI](https://learn.microsoft.com/es-es/azure/developer/terraform/get-started-cloud-shell-bash?tabs=bash "install terraform")

> **Nota**: Si utilizas Azure DevOps, verifica que esté activo el Agent Pools Free.

## Fork del repositorio

1. Realiza un fork del repositorio para configurar el CI/CD en tu repositorio personal.

2. Clona el repositorio en tu entorno local. `Cambia NAME por tu nombre de usuario.`
```bash
git clone https://github.com/NAME/Infrastructure-as-Code.git
```

## Despliegue de Infraestructura
Sigue los siguientes pasos para desplegar la solución de infraestructura en Azure:

[Deployment Solution in Azure](https://github.com/JhonnyPz/Infrastructure-as-Code/tree/main/Solution "IaC")

## Configuración de CI/CD
Hay dos maneras de configurar el CI/CD, utilizando GitHub Actions y Azure Pipelines.

### GitHub Actions
1. Ubícate en la carpeta raíz del proyecto.
```bash
cd Infrastructure-as-Code/Deployment/Web-Application
```
2. Ingresa a la carpeta Pipelines.
```bash
cd Pipelines
```
3. Crea una ruta de carpetas en la raíz del proyecto con el nombre **.github/workflows** y copia el archivo **github-actions.yml**.
```bash
mkdir ../../../.github/workflows
cp github-actions.yml ../../../.github/workflows
```
4. Configura las variables secret de conexión con Azure app services en el repositorio de GitHub.

> **Nota**: Revisa el archivo yml y configura las variables en GitHub con el mismo nombre. Los valores de las variables los puedes encontrar en el `README` del proyecto.

### Azure Pipelines
1. Ubícate en la carpeta raíz del proyecto.
```bash
cd Infrastructure-as-Code/Deployment/Web-Application
```
2. Ingresa a la carpeta Pipelines.
```bash
cd Pipelines
```
3. Copia la ruta del archivo `azure-pipelines.yml`.
```bash
/Deployment/Web-Application/Pipelines/azure-pipelines.yml
```
4. Crea un proyecto en Azure DevOps, vincula el repositorio de GitHub y configura la canalización en Azure Pipelines con la ruta antes copiada.

[Configuracion Azure DevOps](https://learn.microsoft.com/es-es/azure/devops/pipelines/create-first-pipeline?view=azure-devops&tabs=java%2Ctfs-2018-2%2Cbrowser#prerequisites---azure-devops "Azure Devops")


> **Nota**: Revisa el archivo yml y configura las variables en Azure DevOps con el mismo nombre. Los valores de las variables los puedes encontrar en el `README` del proyecto.

## Inicializar el despliegue

Realiza un git push.
```bash
git push origin main
```
Si todo ha ido bien, deberías poder ver la aplicación en el navegador.

## Limpieza
Si quieres eliminar la solución de infraestructura creada en Azure, simplemente ejecuta el comando terraform destroy en la carpeta raíz del proyecto.
```bash
terraform destroy
```
¡Y eso es todo! Espero que este README te haya ayudado a entender cómo configurar una solución de CI/CD en GitHub y Azure DevOps. Si tienes alguna pregunta o problema, no dudes en contactarme.

### En mi perfil encontrarás más información y proyectos similares.
[![web](https://img.shields.io/badge/GitHub-JhonnyPz-purple?style=for-the-badge&logo=github&logoColor=white&labelColor=101010)](https://github.com/jhonnypz/ "perfil")