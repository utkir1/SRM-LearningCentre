import { Router } from "express";

import controller from "./controller.js";


const router = Router();

router.post("/admin/login", controller.LOGIN)

export default router;