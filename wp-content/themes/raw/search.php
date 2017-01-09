<?php
/**
 * The template used to display search results.
 *
 * @package WordPress
 * @subpackage Raw
 * @since Raw 1.0
 */

get_header(); ?>

<!--start content-->
<div id="content-wrapper">

	<section class="pages clearfix">

		<div id="section-title">
			<h1><?php printf( __( 'Search Results for "%s"', 'raw' ), '<small>' . get_search_query() . '</small>' ); ?></h1>
		</div>

		<?php

		if ( have_posts() ) {
			get_template_part( 'loop', 'index-regular' );
		} else {
			echo '<div class="content-inner-left">
				<h2 class="nothing-found-title">'. __( 'Nothing Found', 'raw' ) .'</h2>
				<p>'. __( 'Sorry, but nothing matched your search criteria. Please try again with some different keywords.', 'raw' ) .'</p>
			</div>';

			// get_sidebar();
		}

		?>
		
	</section>

</div>
<!--end content-->
		
<?php get_footer(); ?>