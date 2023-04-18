import model from './model.js';
import {  InternalServerError, NotFoundError } from "../../utils/error.js";



const GET = async (req, res, next) => {
  try {
    let groups = await model.GET();

    if (groups.length === 0) return next(new NotFoundError(404, "client Error"));

    res.status(200).json({
      status: 200,
      message: "ok",
      data: groups
    });

  } catch (error) {
    return next(new InternalServerError(500, error.message));
  }
};



export default { GET }