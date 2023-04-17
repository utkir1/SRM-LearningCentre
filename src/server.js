import express from 'express';
import modules from './modules/modules.js';

const app = express()

app.use(express.json());



app.use(modules)




app.listen(process.env.PORT || 3000, () => console.log(process.env.PORT || 3000));
