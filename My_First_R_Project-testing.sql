-- !preview conn=con


SELECT 
'Name'=authors.au_fname+', '+authors.au_lname,
authors.address,
authors.city,
authors.state
FROM authors
WHERE au_id IN (SELECT au_id FROM titles WHERE type = 'popular_comp') AND state='CA';