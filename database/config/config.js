require("dotenv").config();
const pg = require("pg");

module.exports = {
  development: {
    url: process.env.DEV_DATABASE_URL,
    dialect: "postgres",
  },
  test: {
    url: process.env.TEST_DATABASE_URL,
    dialect: "postgres",
  },
  production: {
    url: process.env.DATABASE_URL,
    dialect: "postgres",
  },
};

// configuration details
const connectionString = process.env.DEV_DATABASE_URL;

// if project has been deployed, connect with the host's DATABASE_URL
// else connect with the local DATABASE_URL
const pool = new pg.Pool({
  connectionString: process.env.DEV_DATABASE_URL,
  ssl: true,
});

// display message on success if successful
pool.on("connect", () => {
  console.log("Teamwork Database connected successfully!");
});
