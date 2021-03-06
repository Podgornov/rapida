<?php
require_once('../../api/Simpla.php');
$simpla = new Simpla();
$limit = 100;

$keyword = $simpla->request->get('query', 'string');

$keywords = explode(' ', $keyword);
$keyword_sql = '';
foreach ($keywords as $keyword) {
    $kw = $simpla->db->escape(trim($keyword));
    $keyword_sql .= $simpla->db->placehold("AND (p.name LIKE '%$kw%' OR p.meta_keywords LIKE '%$kw%' OR p.id in (SELECT product_id FROM __variants WHERE sku LIKE '%$kw%'))");
}


$simpla->db->query('SELECT p.id, p.name, p.image, p.image_id FROM __products p WHERE 1 ' . $keyword_sql . ' ORDER BY p.name LIMIT ?', $limit);
$products = $simpla->db->results_array();

$suggestions = array();
if (is_array($products)) {
    foreach ($products as $product) {
        if (!empty($product['image'])) {
            $product['image'] = $simpla->design->resize_modifier($product['image'], 'products', $product['image_id'], 35, 35);
        }
        $suggestion = new stdClass();
        $suggestion->value = $product['name'];
        $suggestion->data = $product;
        $suggestions[] = $suggestion;
    }
}

$res = new stdClass;
$res->query = $keyword;
$res->suggestions = $suggestions;
header("Content-type: application/json; charset=UTF-8");
header("Cache-Control: must-revalidate");
header("Pragma: no-cache");
header("Expires: -1");
print json_encode($res);
