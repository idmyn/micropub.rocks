INSERT INTO `tests` (`id`, `group`, `number`, `name`, `request`)
VALUES
  (1, 'server', 100, 'Create an h-entry post (form-encoded)', 'h=entry&content=Micropub+test+of+creating+a+basic+h-entry'),
  (3, 'server', 101, 'Create an h-entry post with multiple categories (form-encoded)', 'h=entry&content=Micropub+test+of+creating+an+h-entry+with+categories&category[]=test1&category[]=test2'),
  (18, 'server', 102, 'Create an h-entry post with multiple categories (form-encoded numeric array offset)', 'h=entry&content=Micropub+test+of+creating+an+h-entry+with+categories&category[0]=test1&category[1]=test2'),
  (5, 'server', 103, 'Create an h-entry post with a nested object (form-encoded)', 'h=entry&summary=Weighed+70.64+kg&weight[type]=h-measure&weight[properties][num]=70.64&weight[properties][unit]=kg'),
  (9, 'server', 104, 'Create an h-entry with a photo referenced by URL (form-encoded)', NULL),
  (10, 'server', 105, 'Create an h-entry with a photo referenced by URL with image alt text (form-encoded)', NULL),
  (2, 'server', 200, 'Create an h-entry post (JSON)', '{\"type\":\"h-entry\",\"properties\":{\"content\":[\"Micropub test of creating an h-entry with a JSON request\"]}}'),
  (4, 'server', 201, 'Create an h-entry post with multiple categories (JSON)', NULL),
  (6, 'server', 202, 'Create an h-entry post with a nested object (JSON)', NULL),
  (11, 'server', 203, 'Create an h-entry with a photo referenced by URL (JSON)', NULL),
  (7, 'server', 300, 'Create an h-entry with a photo (multipart)', NULL),
  (8, 'server', 301, 'Create an h-entry with two photos (multipart)', NULL),
  (12, 'server', 400, 'Replace a property', '{\"type\":\"h-entry\",\"properties\":{\"content\":[\"Micropub test of updating an h-entry. You should not see this text in the final post.\"]}}\n{\"action\":\"update\",\"url\":\"%%%\",\"replace\":{\"content\":[\"This is the replaced text\"]}}'),
  (13, 'server', 401, 'Add a value to an existing property', '{\"type\":\"h-entry\",\"properties\":{\"content\":[\"Micropub test of updating an h-entry. This post should end up with one category.\"],\"category\":[\"test1\",\"test2\"]}}\n{\"action\":\"update\",\"url\":\"%%%\",\"add\":{\"category\":[\"test2\"]}}'),
  (19, 'server', 402, 'Add a value to a non-existent property', '{\"type\":\"h-entry\",\"properties\":{\"content\":[\"Micropub test of updating an h-entry. This post should end up with one category.\"]}}\n{\"action\":\"update\",\"url\":\"%%%\",\"add\":{\"category\":[\"test\"]}}'),
  (20, 'server', 403, 'Remove a value from a property', '{\"type\":\"h-entry\",\"properties\":{\"content\":[\"Micropub test of updating an h-entry. This post should end up with two categories.\"],\"category\":[\"test1\"]}}\n{\"action\":\"update\",\"url\":\"%%%\",\"remove\":{\"category\":[\"test1\"]}}'),
  (21, 'server', 404, 'Remove a property', '{\"type\":\"h-entry\",\"properties\":{\"content\":[\"Micropub test of updating an h-entry. This post should end up with no categories.\"],\"category\":[\"test1\"]}}\n{\"action\":\"update\",\"url\":\"%%%\",\"remove\":[\"category\"]}'),
  (22, 'server', 405, 'Reject the request if operation is not an array', '{\"type\":\"h-entry\",\"properties\":{\"content\":[\"Micropub test of updating an h-entry. This post should not be modified since the update should fail.\"]}}\n{\"action\":\"update\",\"url\":\"%%%\",\"replace\":{\"content\":\"You should not see this text in your post\"}}'),
  (14, 'server', 500, 'Delete a post (form-encoded)', 'action=delete&url=%%%'),
  (15, 'server', 501, 'Delete a post (JSON)', '{\"action\":\"delete\",\"url\":\"%%%\"}'),
  (16, 'server', 502, 'Undelete a post (form-encoded)', 'action=undelete&url=%%%'),
  (17, 'server', 503, 'Undelete a post (JSON)', '{\"action\":\"undelete\",\"url\":\"%%%\"}');