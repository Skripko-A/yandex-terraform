# Yandex Terraform

## Описание
Этот репозиторий содержит конфигурационные файлы Terraform для управления инфраструктурой в [Yandex Cloud](https://cloud.yandex.com/). 
Проект позволяет автоматизировать создание виртуальных машин, сетей, подсетей.

## Требования
Для работы с этим проектом вам потребуются следующие инструменты:
- **Terraform** версии >= 1.0.0 ([Скачать](https://developer.hashicorp.com/terraform/downloads))
- **Yandex Cloud CLI** для управления облачными ресурсами ([Установка](https://cloud.yandex.ru/docs/cli/quickstart))
- **Yandex Cloud API Token** для аутентификации ([Как получить](https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token))

## Установка и запуск
1. Клонируйте репозиторий:
   ```bash
   git clone https://github.com/Skripko-A/yandex-terraform.git
   cd yandex-terraform
   ```
2. Убедитесь что настроен Terraform
   ```bash
   terraform version
   ```
3. В файле 'default.auto.vars' заполните ваши данные для атворизации в Yndex Cloud
4. Добавьте свой публичный ключ ssh для подключения к новой ВМ в файл meta.yaml
5. Инициация terraform, проврка плана, создание и уничтожение ресурсы
   ```bash
   terraform init
   terraform apply
   ssh test@ipaddress
   terraform destroy
   ```
## Структура
yandex-terraform/  
├── create-vm.tf        # Создаваемые ресурсы  
├── providers.tf        # Подключение к Yandex CLI  
├── variables.tf        # Файл с определением переменных  
├── default.auto.tfvars # Файл с секретными данными (не добавлять в Git)  
├── meta.yml            # Файл конфигурации метаданных (пользователь, настойка конфигурации ssh сервера для подключения к новой ВМ по SSH включу)  
├── README.md           # Этот файл  
└── .gitignore          # Исключения для Git  

## Лицензия
Этот проект распространяется под лицензией MIT . См. файл LICENSE для получения дополнительной информации.
