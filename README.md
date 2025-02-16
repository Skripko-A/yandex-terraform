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
3. В файле 'default.autovars' заполните ваши данные для атворизации в Yndex Cloud
4. Инициация terraform, проврка плана, создание и уничтожение ресурсы
   ```bash
   terraform init
   terraform apply
   terraform destroy
   ```
## Структура
yandex-terraform/
├── main.tf              # Основной конфигурационный файл
├── variables.tf          # Файл с определением переменных
├── outputs.tf            # Файл с выводимыми значениями
├── providers.tf          # Конфигурация провайдера Yandex
├── secrets.auto.tfvars   # Файл с секретными данными (не добавлять в Git)
├── README.md             # Этот файл
└── .gitignore            # Исключения для Git

## Лицензия
Этот проект распространяется под лицензией MIT . См. файл LICENSE для получения дополнительной информации.
