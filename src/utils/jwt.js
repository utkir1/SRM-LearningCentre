import JWT from "jsonwebtoken";

import { SECRET } from "../configs/config.js";


export default {
  sign: (payload) => JWT.sign(payload, SECRET),
  verify: (token) => JWT.verify(token, SECRET)
};