import { fetchAll , fetch } from "../../utils/postgres.js";
import query from './query.js';

const GET = async() => {
  try {
    const result = await fetchAll(query.GET);
    return result
  } catch (error) {
    console.log(error);
  }
};


export default { GET };