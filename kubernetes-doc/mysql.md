# Mysql setup 
Use *mysql 8*. It should contains the following config:
```
character-set-server = utf8mb4
collation-server = utf8mb4_unicode_520_ci
sql-mode = '' # empty
```

#### For Amazon RDS create parameter group and apply the following:

```
character_set_server = utf8mb4
collation_server = <leave empty>
sql-mode = NO_ENGINE_SUBSTITUTION 
log_bin_trust_function_creators = 1

```

# Initialize mysql DB 
Use the following [sql files](https://github.com/Backendless/BackendlessPro/tree/master/scripts/mounts/mysql/init) to initialize DB