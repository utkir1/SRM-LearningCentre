import { Router } from "express";

import controller from "./controller.js";
import checktoken from "../../middlewares/checktoken.js";


const router = Router();

router.get("/users",checktoken, controller.GETUSERS)

export default router;