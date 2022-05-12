<?php
require_once('eddit/header.php');
require_once('eddit/eddit.php');
// define('CE_SHOW_DEBUGGER',true);

EDDIT::init();
EDDIT::login('clickedit');
EDDIT::setupCMS();

$IDnode = EDDIT::requestVar('IDnode',0);
if ($IDnode == 0) exit('[]');

$tree = EDDIT::objectsHierarchy($IDnode);
$options = array
(
    'class' => '',                  // CSS klasse des ersten <ul> containers
    'dropdown' => false,            // generiere dropdown-toggles
    'submenuClass' => '',    // CSS klasse der untermenues
);
$_icons = DB::query('SELECT IDtemplates, icon from templates');
$icons = DBHelper::verticalSlice($_icons, 'icon', 'IDtemplates');
// print_r($icons);

// $_object = EDDIT::objects(12,4);
// print_r($_object); exit();

header('Content-type: application/json; charset=UTF-8');
$objects = objects_worker($tree, 1, $options);
echo json_encode($objects, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES | JSON_NUMERIC_CHECK);


function objects_worker($tree, $depth, $options)
{
    global $IDnode, $icons;
    $tree = (array)$tree;
    $_ret = array();
/*
    $icons = array(
        // 'default' : { 'icon' : 'fa fa-object-group', 'valid_children': [] },
        'row' => 'fa fa-table',
        'column' => 'fa fa-columns',
        'headline' => 'fa fa-header',
        'download' => 'fa fa-download',
        'box' => 'fa fa-address-card-o',
        'persons' => 'fa fa-user',
        'html' => 'fa fa-code',
        'slide' => 'fa fa-image',
        'slider' => 'fa fa-map',
        'section' => 'fa fa-folder-o',
    );
*/
    foreach($tree AS $id => $object)
    {
        $templateID = '';
        $children = array();
        extract($object, EXTR_IF_EXISTS);

        $_object = EDDIT::objects($id,$IDnode);
        $title = $_object->templateName;
        $attributes = $_object->attributes;

        if ($titleAdd = $_object->attr('navtext'))
        {
            $title .= ' '.$titleAdd;
        }
        elseif ($titleAdd = $_object->attr('plugin'))
        {
            $title .= ' '.strtoupper($titleAdd);
        }

        $readPermission = true; //EDDIT::nodes($IDnode)->access('R');
        $hidden = (@$attributes['online'] == 0);
        // $class = $templateID;
        $class = EDDIT::arrayKey($templateID,$icons,'fa fa-object-group');

        if ($hidden) $class .= ' notvisible';
        if (!$readPermission) $class .= ' disabled';

        if ( isset($object['children']) )
		{
			$_ret[] = array(
				'id' => $id,
				'icon' => 'object '.$class,
				'text' => $title,
				// 'attributes' => $attributes,
				'type' => $templateID,
				'li_attr' => array('data-id'=>$id,'data-hidden'=>$hidden),
				'state' => array('disabled'=>!$readPermission),
				// 'state' => array('opened'=>$depth == 1 && $readPermission, 'disabled'=>!$readPermission),
				'children' => objects_worker($children, $depth+1, $options),
			);
		}
		else
		{
			$_ret[] = array(
				'id' => $id,
				'icon' => 'object '.$class,
				'text' => $title,
                // 'attributes' => $attributes,
				'type' => $templateID,
				'li_attr' => array('data-id'=>$id,'data-hidden'=>$hidden),
                'state' => array('disabled'=>!$readPermission),
			);
		}
    }
    return $_ret;
}

?>
