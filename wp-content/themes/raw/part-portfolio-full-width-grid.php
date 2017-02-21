<?php
/**
 * Portfolio Index Full Width Grid Layout
 *
 * @package WordPress
 * @subpackage Raw
 * @since Raw 1.0
 */
?>

<!--start content-->
<div id="content-wrapper" class="full-width-grid-wrapper">

	<?php

	if ( have_posts() ) while ( have_posts() ) : the_post();

	$udt_page_meta=get_post_meta($post->ID, '_udt_page_meta', true);

	?>

	<?php endwhile; // end of the loop. ?>

	<?php

	$my_args_portfolio = array(
		'post_type' => 'udt_portfolio',
		'numberposts' => -1,
		'orderby' => 'date',
		'order' => 'DESC',
		'suppress_filters' => false
	);
	$udt_portfolio = get_posts( $my_args_portfolio );
	$count_udt_portfolio = count($udt_portfolio);
	$udt_portfolio_counter = 0;

	$display_media_size='udt-portfolio-thumb-2';

	if($count_udt_portfolio>0) {

		echo '<section class="portfolio-full-width-grid">';

			$porfolio_terms = get_terms( 'portfolio_category' );

			if ( $porfolio_terms && ! is_wp_error( $porfolio_terms ) ) {

				if(returnOptionValue('display_portfolio_filter') == '1') {

					echo '<div class="portfolio-filter-wrapper">';

					echo '<a href="#" title="'. esc_attr__('All', 'raw').'" data-category-slug="all" class="active">'.__('All','raw').'</a>';
					
					foreach ( $porfolio_terms as $porfolio_term ) {
						echo '<a href="'. get_term_link($porfolio_term) .'" title="' . esc_attr($porfolio_term->name) . '" data-category-slug="' . esc_attr($porfolio_term->slug) . '">' . $porfolio_term->name . '</a>';
					}

					echo '</div>';

				}

			}

			echo '<div id="grid" class="clearfix">';

				foreach ( $udt_portfolio as $udt_project ) {
					$udt_portfolio_meta=get_post_meta($udt_project->ID, '_udt_portfolio_meta', true);
					
					$project_terms = get_the_terms( $udt_project->ID, 'portfolio_category' );

					$project_categories='';
					if ( $project_terms && ! is_wp_error( $project_terms ) ) {
						$project_categories = array();
						foreach ( $project_terms as $project_term ) {
							$project_categories[] = $project_term->slug;
						}
						$project_categories = join( " ", $project_categories );
					}

					if (has_post_thumbnail($udt_project->ID)) {
						$project_thumbnail_id = get_post_thumbnail_id( $udt_project->ID );
						$image_src=wp_get_attachment_image_src($project_thumbnail_id, $display_media_size);
						$display_media_caption='';
						if(isset($udt_portfolio_meta['display_media_caption']) && $udt_portfolio_meta['display_media_caption']!='') {
							$display_media_caption='data-caption="'.$udt_portfolio_meta['display_media_caption'].'"';
						}
						echo '<div class="thumb" data-project-categories="'.$project_categories.'">
							<a href="'.get_permalink($udt_project->ID).'" title="'.esc_attr($udt_project->post_title).'" '.$display_media_caption.'>
								<img src="'.$image_src[0].'" alt="'.esc_attr($udt_project->post_title).'">
								<div class="titol_foto">'.$udt_project->post_title.'</div>
							</a>							
						</div>';
					}
				}

			echo '</div>';

		echo '</section>';
	} ?>

</div>