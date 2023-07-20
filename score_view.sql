CREATE VIEW score_view AS
SELECT *,
       (LENGTH(html_content) - MIN(LENGTH(html_content)) OVER ()) / (MAX(LENGTH(html_content)) OVER () - MIN(LENGTH(html_content)) OVER ()) AS score
FROM louis_v004.crawl;
