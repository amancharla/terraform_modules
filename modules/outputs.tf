output "address" {
  value       = aws_db_instance.mydb.address
  description = "Connect to the database at this endpoint"
}

output "port" {
  value       = aws_db_instance.mydb.port
  description = "The port the database is listening on"
}
