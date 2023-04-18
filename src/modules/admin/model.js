import { fetchAll, fetch } from "../../utils/postgres.js";
import query from './query.js';



const LOGIN = async ({ email, contact }) => {
  try {
    return await fetch(query.LOGIN, email, contact);
  } catch (error) {
    console.log(error);
  }
};

export default {  LOGIN };