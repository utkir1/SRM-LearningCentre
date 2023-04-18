
import { ForbiddenError } from "../utils/error.js";

import jwt from "../utils/jwt.js";

export default (req, res, next) => {

  try {

    let { token } = req.headers;

    if (!token) {
      return next(new ForbiddenError(403, "token required"));
    }

    let { userId, adminId } = jwt.verify(token);


    req.adminId = adminId;
    req.userId = userId;

    return next();


  } catch (error) {
    return next(new ForbiddenError(403, error.message));
  }
};
