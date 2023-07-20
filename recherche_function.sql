CREATE FUNCTION recherche(keyword TEXT)
RETURNS TABLE (id INT, html_content TEXT, score FLOAT)
AS $$
BEGIN
  RETURN QUERY
  SELECT id, html_content, score
  FROM louis_v004.score
  WHERE html_content ILIKE '%' || keyword || '%'
  ORDER BY score DESC
  LIMIT 10;
END;
$$
LANGUAGE plpgsql;
