<?php
/**
 * The template for the front page.
 *
 * @package WordPress
 * @subpackage Raw
 * @since Raw 1.0
 */

get_header(); ?>

<?php if(is_home()) :

$blog_layout=returnOptionValue('blog_index_layout');

if(is_home() && $blog_layout=='grid') {
echo '<div id="content-wrapper" class="grid-layout">';
} else {
echo '<div id="content-wrapper">';
}

?>

	<section class="pages clearfix">

		<?php if(stripslashes(html_entity_decode(returnOptionValue('blog_title')))!='') : ?>
		<div id="section-title">
			<h1><?php echo stripslashes(html_entity_decode(returnOptionValue('blog_title'))); ?></h1>
			<?php
			if(stripslashes(html_entity_decode(returnOptionValue('blog_teaser')))!='') {
				echo '<div id="teaser">'.wptexturize(wpautop(do_shortcode(shortcode_unautop(stripslashes(html_entity_decode(returnOptionValue('blog_teaser'))))))).'</div>';
			}
			?>
		</div>
		<?php endif; ?>

		<?php

		if(is_search()) {
			get_template_part( 'loop', 'index-regular' );
		} else {
			if($blog_layout=='regular') {
				get_template_part( 'loop', 'index-regular' );
			} else if($blog_layout=='grid') {
				get_template_part( 'loop', 'index-grid' );
			}
		}

		?>

	</section>

</div>

<?php else : ?>

	<?php
	$frontpage_layout = returnOptionValue('frontpage_layout');

	if($frontpage_layout=='regular') {
		get_template_part( 'part-front-page', 'regular' );
	} else if($frontpage_layout=='full-width-media') {
		get_template_part( 'part-front-page', 'full-width-media' );
	} else if($frontpage_layout=='portfolio-full-width-grid') {
		get_template_part( 'part-portfolio', 'full-width-grid' );
	}

	?>

<?php endif; ?>

<?php get_footer(); ?>