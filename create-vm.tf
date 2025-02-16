# Найти образ из семейства ubuntu 20.04 lts
data "yandex_compute_image" "ubuntu_image" {
  family = "ubuntu-2004-lts"
}
#
# создать прерываемую ВМ
resource "yandex_compute_instance" "vm-test1" {
  name = "test1"
  
  scheduling_policy {
    preemptible = true
  }
# 1 core 1 gb ram
  resources {
    core_fraction = 20
    cores         = 2
    gpus          = 0
    memory        = 2
  }
# Нужный образ тот что найден ранее
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu_image.id
    }
  }
# НАстройка сетевого интерфейса, должен быть в подсети виртуальной сети ниже, включить НАТ
  network_interface {
    subnet_id = yandex_vpc_subnet.subnet_terraform.id
    nat       = true
  }
# Путь к файлу метаданных (настроен юзер)
  metadata = {
    user-data = "${file("./meta.yml")}"
  }

}
# Создание виртуальной сети для ВМ
resource "yandex_vpc_network" "network_terraform" {
  name = "net_terraform"
}
# Настройка подсети в созданной виртуальной сети
resource "yandex_vpc_subnet" "subnet_terraform" {
  name           = "sub_terraform"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.network_terraform.id
  v4_cidr_blocks = ["10.129.0.0/24"]
  }
