module.exports = {

  "development": {
    "username": process.env.db_username,
    "password": process.env.db_password,
    "database": process.env.db_database,
    "host": process.env.db_host,
    "dialect": process.env.db_dialect,
  },

  "test": {
    "username": process.env.db_username,
    "password": process.env.db_password,
    "database": process.env.db_testdatabase,
    "host": process.env.db_host,
    "dialect": process.env.db_dialect,
  },

  "production": {
    "use_env_variable": "JAWSDB_URL",
    "dialect": "mysql"
  }

};
