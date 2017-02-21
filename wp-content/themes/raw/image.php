<?php
/**
 * The Template for displaying image attachments.
 *
 * Note: By default, WordPress uses the Caption as the Alt text in images
 * and this can cause invalid markup and break the layout depending on
 * the content in the caption. This template checks if the Caption has
 * shortcodes in it and if so, uses the Alt text or Title instead,
 * depending on what has been entered by the user.
 *
 * @package WordPress
 * @subpackage Raw
 * @since Raw 1.0
 */

get_header(); ?>

<!--start content-->
<div id="content-wrapper">

	<section class="pages clearfix">
	
		<?php if ( have_posts() ) while ( have_posts() ) : the_post(); ?>
			
		<!--section title-->
		<div id="section-title">
			<h1><?php the_title(); ?></h1>
		</div>
		<!--end section title-->
				
		<!--start content left-->
		<div class="content-inner-left">
				
			<!--start post-->
			<article id="post-<?php the_ID(); ?>" <?php post_class('blog-post'); ?>>
					
				<div class="blog-post-content">
					
					<div class="blog-post-featured-media">

						<?php
							
							$alt_text=$post->post_excerpt;

							if( has_shortcode($post->post_excerpt, 'epicslider_caption') || 
								has_shortcode($post->post_excerpt, 'epicslider_background_video') || 
								has_shortcode($post->post_excerpt, 'span')) {
								
								$alt_text=get_post_meta($post->ID, '_wp_attachment_image_alt', true);

								if($alt_text=='') {
									$alt_text= esc_attr(get_the_title());
								}

							}

							//echo $alt_text;
							$att_image = wp_get_attachment_image_src( $post->id, "full");
						?>
						
						<a href="<?php echo wp_get_attachment_url($post->id); ?>" title="<?php esc_attr(the_title()); ?>" rel="attachment"><img src="<?php echo $att_image[0];?>" width="<?php echo $att_image[1];?>" height="<?php echo $att_image[2];?>" class="attachment-medium" alt="<?php echo $alt_text; ?>" /></a>						

					</div>

					<div class="blog-post-meta">
						<?php echo '<span>'.get_the_date('d').'/'.get_the_date('m').'/'.get_the_date('Y').'</span>'; ?> | 
						<?php echo __('Comments:', 'raw').' <a href="'.get_comments_link().'" title="'.esc_attr(get_comments_number()).'">'.get_comments_number().'</a>'; ?> | 
						<?php echo __('Posted by:', 'raw').' '. get_the_author_link(); ?>
					</div>

					<?php echo apply_filters( 'the_content', $post->post_content ); ?>
							
					<div class="clear"></div>

				</div>
				
			</article>
			<!--end post-->

			<?php comments_template(); ?>

		</div>
			
		<?php endwhile; // end of the loop. ?>
		
		<?php get_sidebar(); ?>
		
	</section>

</div>
<!--end content-->

<?php get_footer(); ?>