resource "google_sql_database_instance" "postgres" {
  name             = "archtek-wordpress-mysql-instance"
  database_version = "MYSQL_5_7"
  settings {
    tier              = "db-f1-micro"
    availability_type = "ZONAL"
  }
}

resource "random_password" "password" {
  length           = 18
  special          = true
  override_special = "_%@"
}


resource "local_file" "foo" {
  content  = random_password.password.result
  filename = "${path.module}/.wordpress-mysql-pwd"
}

resource "google_sql_user" "users" {
  name     = "wordpress"
  instance = google_sql_database_instance.postgres.name
  host     = "*"
  password = random_password.password.result
}
