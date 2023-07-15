# Deployment web application with CI-CD
En este proyecto se muestra un ejemplo de canalización de CI-CD en Azure utilizando GitHub Actions y Azure Pipelines.

Dos de las prácticas fundamentales en DevOps son la integración continua (CI) y la entrega y despliegue continuo (CD).

- **Continuous Integration (CI)** es el proceso de integrar constantemente nuevo código y ejecutar pruebas automatizadas para detectar errores tempranamente.
- **Continuous Delivery and Deployment (CD)** es el proceso automatizado de construcción, pruebas, despliegue y entrega del software en producción de manera rápida y segura.

 [Ver más sobre el flujo de trabajo...](https://jhonnypz.super.site/projects/deployment/deployment-app "ver mas")

![DepWebApp](https://user-images.githubusercontent.com/90069821/233806759-50b0c6bf-b95d-4974-b88e-a108f3474166.png "img Project")

## Recursos
| Carpeta | Tipo | Lenguaje | Descripción |
| --- | --- | --- | --- |
| Infrastructure | Terraform | HCL | Carpeta para archivos de infraestructura en Terraform. |
| Pipelines | GitHub Actions & Azure Pipelines | YML | Carpeta con archivos de configuración de canalizaciones en GitHub Actions y Azure Pipelines. |
| src | Aplicación .NET | C# | Carpeta que contiene el código fuente de la aplicación .NET 6.0 |

## Despliegue
Guía paso a paso para el despliegue de la infraestructura
[Guía de despliegue](https://github.com/JhonnyPz/Infrastructure-as-Code/tree/main/Solution "Guía")

## Variables de las canalizaciones

```bash
# GitHub Actions
env:
AZURE_WEBAPP_NAME: "webapp-cicd-example"
AZURE_WEBAPP_PACKAGE_PATH: "."
DOTNET_VERSION: "6.x"

secrets:
name = "AZURE_WEBAPP_PUBLISH_PROFILE"
```
> Las variables secrets deben configurarse en *repository > settings > security > secrets > actions*. El perfil de publicación lo encontrarás en el recurso de App Services en Azure.

```bash
# Azure Pipelines
env:
buildConfiguration: 'Release'
dotnetSdkVersion: '6.x'
WebAppName: 'webapp-cicd-example'

secrets:
azureSubscription: 'Nombre de la conexión de servicio de Azure'
```
> Las variables secrets deben configurarse en *project > settings > pipelines > services connection* y vincular tu suscripción de Azure.