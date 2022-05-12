<?php
require_once('eddit/header.php');
require_once('eddit/eddit.php');
EDDIT::init();
EDDIT::login('clickedit');
EDDIT::setupCMS();
// define('CE_SHOW_DEBUGGER',true);

$rootID = DB::queryFirstField('SELECT IDnodes FROM nodes WHERE parentID=0');
// $rootID = EDDIT::requestVar('rootID',$rootID);

$typeFilter = EDDIT::requestVar('type');   // just show "objects" nodes for example, used by node-chooser-jstree


$tree = EDDIT::nodesHierarchy($rootID);
// $tree = EDDIT::nodesHierarchy(1);
$options = array
(
    'class' => '',                  // CSS klasse des ersten <ul> containers
    'dropdown' => false,            // generiere dropdown-toggles
    'submenuClass' => '',    // CSS klasse der untermenues
);
$_icons = DB::query('SELECT IDtemplates, icon from templates');
$icons = DBHelper::verticalSlice($_icons, 'icon', 'IDtemplates');

header('Content-type: application/json; charset=UTF-8');
$nodes = nodes_worker($tree, 1, $options);
echo json_encode($nodes, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES | JSON_NUMERIC_CHECK);


function nodes_worker($tree, $depth, $options)
{
    global $icons,$typeFilter;
    $tree = (array)$tree;
    $_ret = array();
/*
    $icons = array(
        'objects' => 'fa fa-file-text-o',
        'persons' => 'fa fa-user',
        'i18n' => 'fa fa-flag-o',
        'templates' => 'fa fa-file-o',
        'newsletter' => 'fa fa-envelope-o',
    );
*/
    foreach($tree AS $id => $node)
    {
        // if ($id == 6 || $id == 10) continue;

        $tableID = '';
        $children = array();
        extract($node, EXTR_IF_EXISTS);

        if (!empty($typeFilter) && $tableID != $typeFilter) continue;

        $executePermission = EDDIT::nodes($id)->access('X');
        // syslog(LOG_INFO,__FILE__.' ID '.$id.' has $executePermission='.$executePermission);
        if (!$executePermission) continue;

        $readPermission = EDDIT::nodes($id)->access('R');
        // syslog(LOG_INFO,__FILE__.' ID '.$id.' has $readPermission='.$executePermission);

        $_node = EDDIT::nodes($id);

        $title = $_node->attr('title');
        $hidden = ($_node->attr('online') == 0 || $_node->attr('visible') == 0);
        $type = $node['tableID'];
        $class = EDDIT::arrayKey($type,$icons,'fa fa-file-o');
        if ($_node->attr('online') == 0) $class .= ' notonline';
        if ($_node->attr('visible') == 0) $class .= ' notvisible';
        if (!$readPermission) $class .= ' disabled';

        if ( isset($node['children']) )
		{
			$_ret[] = array(
				'id' => $id,
				'icon' => 'node '.$class,
				'text' => $title,
				'type' => $node['tableID'],
				'li_attr' => array('data-id'=>$id,'data-hidden'=>$hidden),
				'state' => array('opened'=>$depth == 1 && $readPermission, 'disabled'=>!$readPermission),
				'children' => nodes_worker($children, $depth+1, $options),
			);
		}
		else
		{
			$_ret[] = array(
				'id' => $id,
				'icon' => 'node '.$class,
				'text' => $title,
				'type' => $node['tableID'],
				'li_attr' => array('data-id'=>$id,'data-hidden'=>$hidden),
                'state' => array('disabled'=>!$readPermission),
			);
		}
    }
    return $_ret;
}

?>
