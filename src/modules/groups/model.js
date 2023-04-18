import { fetchAll , fetch } from "../../utils/postgres.js";
import query from './query.js';

const GET = async() => {
  try {
    return  await fetchAll(query.GET);
  } catch (error) {
    console.log(error);
  }
};


export default { GET };