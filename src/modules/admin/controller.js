import model from './model.js';
import { AuthorizationError, InternalServerError, NotFoundError } from "../../utils/error.js";
import jwt from '../../utils/jwt.js'


const LOGIN = async (req, res, next) => {
  try {
    let user = await model.LOGIN(req.body);
    if (!user) return next(new AuthorizationError(401, "wrong email or number"));

    res.status(200).json({
      status: 200,
      message: "ok",
      token: jwt.sign({ adminId: user.user_id }),
      data: user,
    });

  } catch (error) {
    return next(new InternalServerError(500, error.message));
  }
};





export default { LOGIN }