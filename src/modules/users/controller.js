import model from './model.js';
import {  InternalServerError, NotFoundError } from "../../utils/error.js";



const GETUSERS = async (req, res, next) => {
  try {
    let users = await model.GET();

    if (users.length === 0) return next(new NotFoundError(404, "client Error"));

    res.status(200).json({
      status: 200,
      message: "ok",
      data: users
    });

  } catch (error) {
    return next(new InternalServerError(500, error.message));
  }
};



export default { GETUSERS }