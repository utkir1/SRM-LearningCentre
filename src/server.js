import express from 'express';
import modules from './modules/modules.js';
import { PORT } from './configs/config.js';

const app = express();

app.use(express.json());



app.use(modules);




app.listen(PORT, () => console.log(PORT));
