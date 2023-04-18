import dotenv from "dotenv";

dotenv.config();

const SECRET = process.env.JWT_SECRET;


const pgConfig = {
  host: process.env.PGHOST,
  port: process.env.PGPORT,
  database: process.env.PGDATABASE,
  user: process.env.PGUSER,
  password: process.env.PGPASSWORD,
};

export const PORT = process.env.PORT || 3000

export { SECRET, pgConfig };