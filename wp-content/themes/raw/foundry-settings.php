<?php
/*
	custom settings for the Foundry version 2.3 or above
	text encoding : utf-8
*/

// The Foundry theme specific constants

	define("PRODUCTID", 'udt_raw');
	define("THEMENAME", 'Raw');
	
	// The Foundry settings for Wordpress Admin
	define("ENABLE_WPCOREMENUS", TRUE );
	define("ENABLE_WPCOREWIDGETS", TRUE );
	define("ENABLE_WIDGETMENU", FALSE );
	

/* foundry bootloader */
include_once (get_template_directory(). '/z_admin/foundry-bootloader.php');

/* skin settings
just specify the filename of css to be loaded

default:
define("FOUNDRY_SKINFILE_URI",TEMPLATEURL."/z_admin/css/style_foundry.css");
*/

define("FOUNDRY_SKINFILE_URI",TEMPLATEURL."/z_admin/css/style_foundry.css");

/*

admin_style

default:
define("FOUNDRY_LOGOIMAGE_URI",TEMPLATEURL."/z_admin/images/logo.png");
*/

define("FOUNDRY_LOGOIMAGE_URI",TEMPLATEURL."/z_admin/images/logo.png");

/*

foundry square

default:
define("FOUNDRY_BOX_URI",TEMPLATEPATH.'/z_admin/foundry/admin_udthemes_box.php');

if you do not wish to use the foundry BOX, define blank or null to FOUNDRY_BOX_URI
*/

define("FOUNDRY_BOX_URI",TEMPLATEPATH.'/z_admin/foundry/admin_udthemes_box.php');
//define("FOUNDRY_BOX_URI",'');
/*

	The Foundry Footer Message

default:
define("FOUNDRY_LOGOIMAGE_URI",TEMPLATEURL."/z_admin/images/logo.png");
*/

define("FOUNDRY_FOOTER_MESSAGE",'&copy;'.date('Y').' UDTHEMES.');

/*

	The Foundry Options Panel Diagnostic

default:
define("FOUNDRY_LOGOIMAGE_URI",TEMPLATEURL."/z_admin/images/logo.png");
*/

define("FOUNDRY_DIAGO", FALSE);

/* save all settings in the welcome screen */

/* enable save all */
define("ENABLE_SAVEALL",TRUE);

/* enable save all */
define("SAVEALL_TITLE", 'Initialize Foundry Settings');

/* enable save all */
define("SAVEALL_MESSAGE", 'If you\'re using a plugin that requiers access to any of the settings in Foundry, e.g. WPML String Translations, you may need to initialize all Foundry settings first to save them to the database, hence making them available to the plugins.');

define("SAVEALL_BUTTON_LABEL", "Initialize Foundry Settings");