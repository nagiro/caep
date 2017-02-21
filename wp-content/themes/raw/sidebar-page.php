<?php
/**
 * The Sidebar for the pages
 *
 * @package WordPress
 * @subpackage Raw
 * @since Raw 1.4
 */
?>
		<aside class="sidebar">
		
			<ul>
			
			<?php
			if ( ! dynamic_sidebar( 'page-sidebar' ) ) : ?>
			
				<li id="search" class="widget-container widget_search">
					<?php get_search_form(); ?>
				</li>
				
			<?php endif; // end widget area ?>
			
			</ul>
			
		</aside>