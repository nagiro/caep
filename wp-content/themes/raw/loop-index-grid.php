<!--start blog grid-->
	<div id="content-inner-blog-grid">

		<div id="blog-grid-container">

		<?php if ( have_posts() ) while ( have_posts() ) : the_post();

			$udt_post_meta=get_post_meta($post->ID, '_udt_post_meta', true);

			?>

			<!--start post-->
			<article id="post-<?php the_ID(); ?>" <?php post_class('blog-post'); ?>>
				<div class="blog-post-grid-content">

					<?php
					if ( has_post_thumbnail() ) { // check if the post has a Post Thumbnail assigned to it.

						$udt_blog_image = '<div class="blog-post-featured-media">
							<div class="thumb">
								<a href="'.get_permalink($post->ID).'" title="'.the_title_attribute('echo=0').'">
									'.get_the_post_thumbnail($post->ID,'udt-blog-grid-thumb').'
								</a>
							</div>
							<div class="blog-post-meta-date">
								<span class="day">'.get_the_date('d').'</span>
								<span class="month-year">'.get_the_date('M')." '".get_the_date('y').'</span>
							</div>
						</div>';
						echo $udt_blog_image;
					}
					?>

					<div class="blog-post-grid-content-inner">

						<h2 class="blog-post-title"><a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>" rel="bookmark"><?php the_title(); ?></a></h2>

						<div class="blog-post-meta">
							<?php echo __('Comments:', 'raw').' <a href="'.get_comments_link().'" title="'.esc_attr(get_comments_number()).'">'.get_comments_number().'</a>'; ?> | 
							<?php echo __('Posted by:', 'raw').' '. get_the_author_link(); ?>
						</div>

						<?php the_content('',FALSE); ?>
						<?php if(!is_single() && !is_page()) echo '<a href="'. get_permalink($post->ID) . '" class="readMore blog-post-read-more" title="'. __("Read more", 'raw') .'">'. __("Read more &rarr;", 'raw') .'</a>'; ?>

					</div>

				</div>
			</article>

		<?php endwhile; // end of the loop. ?>

	</div>

	<?php if(get_next_posts_link() || get_previous_posts_link()) { ?>
		<div class="pagination">
			<div class="nav-previous"><?php next_posts_link( __( '&laquo; Older posts', 'raw' ) ); ?></div>
			<div class="nav-next"><?php previous_posts_link( __( 'Newer posts &raquo;', 'raw' ) ); ?></div>
		</div>
	<?php } ?>

	</div>
