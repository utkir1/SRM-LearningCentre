
const LOGIN = `
  select
    user_id,
    first_name,
    last_name,
    gender,
    contact,
    email
  from
    users
  where
    email = $1
    and contact = $2
`;

export default {  LOGIN };