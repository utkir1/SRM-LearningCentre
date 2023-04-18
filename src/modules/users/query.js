const GET = `
  select
    *
  from
    users
  where
   left_date is null
  ;
`;


export default { GET };