<?php
/**
 * The search form that's usually in the sidebar
 *
 * @package WordPress
 * @subpackage Raw
 * @since Raw 1.0
 */
?>

<form role="search" method="get" id="searchform" action="<?php echo home_url( '/' ); ?>">
		<input type="text" placeholder="<?php _e('Search', 'raw'); ?>" name="s" id="s" class="sidebar-searchform" />
		<input type="submit" id="searchsubmit" class="submit submitTheme submitSmall" value="<?php _ex('Go', 'search button', 'raw'); ?>" />
</form>