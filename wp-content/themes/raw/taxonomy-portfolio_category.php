<?php
/**
 * The Portfolio archive template
 *
 * @package WordPress
 * @subpackage Raw
 * @since Raw 1.0
 */

get_header(); ?>

<!--start content-->
<div id="content-wrapper">

	<section class="portfolio">


		<!--section title-->
		<div id="section-title">
			<h1><?php
				single_cat_title();
			?></h1>
		</div>
		<!--end section title-->

		<?php
		if(term_description()!='') { ?>
			<section class="pages clearfix">

				<?php echo term_description(); ?>

			</section>
		<?php } ?>

	</section>

	<?php

	$term = get_term_by( 'slug', get_query_var( 'term' ), get_query_var( 'taxonomy' ) );

	$my_args_portfolio = array(
		'post_type' => 'udt_portfolio',
		'portfolio_category' => $term->slug,
		'numberposts' => -1,
		'orderby' => 'menu_order',
		'order' => 'ASC',
		'post_status' => 'publish'
	);
	$udt_portfolio = get_posts( $my_args_portfolio );
	$count_udt_portfolio = count($udt_portfolio);
	$udt_portfolio_counter = 0;

	$display_media_size='udt-portfolio-thumb-1';

	if($count_udt_portfolio>0) {

		if(returnOptionValue('portfolio_index_layout')=='portfolio-fixed-width-grid') {
			echo '<section class="portfolio-fixed-width-grid">';
			$display_media_size='udt-portfolio-thumb-1';
		} else if(returnOptionValue('portfolio_index_layout')=='portfolio-full-width-grid') {
			echo '<section class="portfolio-full-width-grid">';
			$display_media_size='udt-portfolio-thumb-2';
		}

			echo '<div id="grid" class="clearfix">';

			foreach ( $udt_portfolio as $udt_project ) {
				$udt_portfolio_meta=get_post_meta($udt_project->ID, '_udt_portfolio_meta', true);

				if (has_post_thumbnail($udt_project->ID)) {
					$project_thumbnail_id = get_post_thumbnail_id( $udt_project->ID );
					$image_src=wp_get_attachment_image_src($project_thumbnail_id, $display_media_size);
					$display_media_caption='';
					if(isset($udt_portfolio_meta['display_media_caption']) && $udt_portfolio_meta['display_media_caption']!='') {
						$display_media_caption='data-caption="'.$udt_portfolio_meta['display_media_caption'].'"';
					}
					echo '<div class="thumb">
						<a href="'.get_permalink($udt_project->ID).'" title="'.esc_attr($udt_project->post_title).'" '.$display_media_caption.'>
							<img src="'.$image_src[0].'" alt="'.esc_attr($udt_project->post_title).'">
						</a>
					</div>';
				}
			}

			echo '</div>';

		echo '</section>';
	}

	?>

</div>

<?php get_footer(); ?>