<?php
require_once('api/Simpla.php');


############################################
# Class Category - Edit the good gategory
############################################
class BrandAdmin extends Simpla
{
    private $allowed_image_extentions = array('png', 'gif', 'jpg', 'jpeg', 'ico');

    function fetch()
    {
        $brand = array();
        if ($this->request->method('post')) {
            $brand['id'] = $this->request->post('id', 'integer');
            $brand['name'] = $this->request->post('name');
            $brand['description'] = $this->request->post('description');
            $brand['annotation'] = $this->request->post('annotation');

            $brand['trans'] = trim($this->request->post('trans', 'string'));
            $brand['meta_title'] = $this->request->post('meta_title');
            $brand['meta_keywords'] = $this->request->post('meta_keywords');
            $brand['meta_description'] = $this->request->post('meta_description');

            // Не допустить одинаковые транслит названия разделов.
            $c = $this->brands->get_brand($brand['trans']);
            if ($c && $c['id'] != $brand['id']) {
                $this->design->assign('message_error', 'url_exists');

            } else {
                if (empty($brand['id'])) {
                    $brand['id'] = $this->brands->add_brand($brand);
                    $this->design->assign('message_success', 'added');
                } else {
                    $this->brands->update_brand($brand['id'], $brand);
                    $this->design->assign('message_success', 'updated');
                }
                // Удаление изображения
                if ($this->request->post('delete_image')) {
                    $this->brands->delete_image($brand['id']);
                }
                // Загрузка изображения
                $image = $this->request->files('image');
                if (!empty($image['name']) && in_array(strtolower(pathinfo($image['name'], PATHINFO_EXTENSION)), $this->allowed_image_extentions)) {
                    //Надо переписать по новой схеме работы с изображениями
                    //$this->brands->delete_image($brand['id']);
                    //move_uploaded_file($image['tmp_name'], $this->root_dir . $this->config->brands_images_dir . $image->name);
                    $this->brands->update_brand($brand['id'], array('image' => $image['name']));
                }
                $brand = $this->brands->get_brand($brand['id']);
            }
        } else {
            $brand['id'] = $this->request->get('id', 'integer');
            $brand = $this->brands->get_brand($brand['id']);
        }


        $this->design->assign('brand', $brand);
        return $this->design->fetch('brand.tpl');
    }
}
