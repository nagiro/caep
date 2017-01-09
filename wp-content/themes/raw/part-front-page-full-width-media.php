<?php
/**
 * Front Page Full Width Layout
 *
 * @package WordPress
 * @subpackage Raw
 * @since Raw 1.0
 */
?>

<div id="content-wrapper" class="front-page front-page-full-width-media">

	<?php if ( have_posts() ) while ( have_posts() ) : the_post();

	$my_args_2 = array(
		'post_type' => 'attachment',
		'numberposts' => -1,
		'post_status' => 'inherit',
		'orderby' => 'menu_order',
		'order' => 'ASC',
		'post_parent' => $post->ID
	);
	$attachments = get_posts( $my_args_2 );
	$count_attachments = count($attachments);
	$udt_slider_count = 0;

	$udt_page_meta=get_post_meta($post->ID, '_udt_page_meta', true);

	// Full width slider
	if($count_attachments>1) {
		$udt_fullwidth_slider='<div id="epicSlider1" class="epic-slider slider-wrapper">
			<ul id="slides">';

			foreach ( $attachments as $attachment ) {
				$slide_display_opt = get_post_meta( $attachment->ID, '_udt_slide_display_opt', true );
				$slide_link_url = get_post_meta( $attachment->ID, '_udt_slide_link_url', true );

				if($slide_display_opt=='slider') {
					$image_attributes = wp_get_attachment_image_src($attachment->ID,'full');

					$udt_fullwidth_slider.= '<li data-image="'.$image_attributes[0].'"';
					if($slide_link_url!='') {
						$udt_fullwidth_slider.= ' data-link="'.$slide_link_url.'"';
					}
					$udt_fullwidth_slider.= '>';

					if(wp_get_attachment_metadata($attachment->ID)) {
						if($attachment->post_excerpt !='') {
							$udt_fullwidth_slider .= apply_filters('the_content', do_shortcode($attachment->post_excerpt));
						} else if($attachment->post_content !='') {
							$udt_fullwidth_slider .= apply_filters('the_content', do_shortcode($attachment->post_content));
						}
					}

					$udt_fullwidth_slider .= '</li>'."\n";
					
					$udt_slider_count++;

				}
			}

		$udt_fullwidth_slider .= '</ul>
		</div>';

		if($udt_slider_count>1) {
			echo '<section class="slider-full-width slider-homepage clearfix">';
			echo $udt_fullwidth_slider;
			echo '</section>';
		} else if ( has_post_thumbnail() ) { // Check if the post has a Post Thumbnail assigned to it.
			$slide_display_opt = get_post_meta( get_post_thumbnail_id(), '_udt_slide_display_opt', true );
			$slide_video_url = get_post_meta( get_post_thumbnail_id(), '_udt_slide_video_url', true );

			if($slide_display_opt=='video-youtube' || $slide_display_opt=='video-vimeo') {
				$udt_featured_image = '<div class="featured-media-container full-width-video-wrapper clearfix">';
				$udt_featured_image .= '<div class="video">';
				if($slide_display_opt=='video-youtube') {
					$udt_featured_image .= '<iframe src="http://www.youtube.com/embed/'.$slide_video_url.'?autohide=2&amp;disablekb=0&amp;fs=1&amp;hd=0&amp;loop=0&amp;rel=0&amp;showinfo=0&amp;showsearch=0&amp;wmode=transparent" frameborder="0" allowfullscreen></iframe>';
				} else if($slide_display_opt=='video-vimeo') {
					$udt_featured_image .= '<iframe src="http://player.vimeo.com/video/'.$slide_video_url.'?title=0&amp;byline=0&amp;portrait=0&amp;color='.returnOptionValue('vimeo_controls_color').'&amp;autoplay=0&amp;loop=0" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>';
				}
				$udt_featured_image .= '</div>';
				$udt_featured_image .= '</div>';

				echo $udt_featured_image;

			} else {
				$image_attributes = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID),'full');
				
				$udt_fullwidth_slider='<div id="epicSlider1" class="epic-slider slider-wrapper">
					<ul id="slides">';
						$udt_fullwidth_slider.= '<li data-image="'.$image_attributes[0].'">';

							if(wp_get_attachment_metadata(get_post_thumbnail_id($post->ID))) {
								if(get_post(get_post_thumbnail_id())->post_excerpt !='') {
									$udt_fullwidth_slider .= apply_filters('the_content', do_shortcode(get_post(get_post_thumbnail_id())->post_excerpt));
								} else if(get_post(get_post_thumbnail_id())->post_content !='') {
									$udt_fullwidth_slider .= apply_filters('the_content', do_shortcode(get_post(get_post_thumbnail_id())->post_content));
								}
							}

						$udt_fullwidth_slider .= '</li>'."\n";

					$udt_fullwidth_slider .= '</ul>
				</div>';
			
				echo '<section class="slider-full-width slider-homepage clearfix">';
				echo $udt_fullwidth_slider;
				echo '</section>';

			}
			

		} else {
			echo '<section class="slider-full-width slider-homepage clearfix">';
			echo '<div id="epicSlider1" class="epic-slider slider-wrapper">';
			echo '<span class="errorMsg">' . __('Please upload multiple images to the slider or set a featured image.', 'raw') . '</span>';
			echo '</div>';
			echo '</section>';
		}
	} else if ( has_post_thumbnail() ) { // Check if the post has a Post Thumbnail assigned to it.
		$slide_display_opt = get_post_meta( get_post_thumbnail_id(), '_udt_slide_display_opt', true );
		$slide_video_url = get_post_meta( get_post_thumbnail_id(), '_udt_slide_video_url', true );

		if($slide_display_opt=='video-youtube' || $slide_display_opt=='video-vimeo') {
			$udt_featured_image = '<div class="featured-media-container full-width-video-wrapper clearfix">';
			$udt_featured_image .= '<div class="video">';
			if($slide_display_opt=='video-youtube') {
				$udt_featured_image .= '<iframe src="http://www.youtube.com/embed/'.$slide_video_url.'?autohide=2&amp;disablekb=0&amp;fs=1&amp;hd=0&amp;loop=0&amp;rel=0&amp;showinfo=0&amp;showsearch=0&amp;wmode=transparent" frameborder="0" allowfullscreen></iframe>';
			} else if($slide_display_opt=='video-vimeo') {
				$udt_featured_image .= '<iframe src="http://player.vimeo.com/video/'.$slide_video_url.'?title=0&amp;byline=0&amp;portrait=0&amp;color='.returnOptionValue('vimeo_controls_color').'&amp;autoplay=0&amp;loop=0" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>';
			}
			$udt_featured_image .= '</div>';
			$udt_featured_image .= '</div>';

			echo $udt_featured_image;

		} else {
			$image_attributes = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID),'full');
			
			$udt_fullwidth_slider='<div id="epicSlider1" class="epic-slider slider-wrapper">
				<ul id="slides">';
					$udt_fullwidth_slider.= '<li data-image="'.$image_attributes[0].'">';

						if(wp_get_attachment_metadata(get_post_thumbnail_id($post->ID))) {
							if(get_post(get_post_thumbnail_id())->post_excerpt !='') {
								$udt_fullwidth_slider .= apply_filters('the_content', do_shortcode(get_post(get_post_thumbnail_id())->post_excerpt));
							} else if(get_post(get_post_thumbnail_id())->post_content !='') {
								$udt_fullwidth_slider .= apply_filters('the_content', do_shortcode(get_post(get_post_thumbnail_id())->post_content));
							}
						}

					$udt_fullwidth_slider .= '</li>'."\n";

				$udt_fullwidth_slider .= '</ul>
			</div>';
		
			echo '<section class="slider-full-width slider-homepage clearfix">';
			echo $udt_fullwidth_slider;
			echo '</section>';

		}

	}

	// Content area
	if((isset($udt_page_meta['display_title']) && $udt_page_meta['display_title']!='') || (isset($udt_page_meta['teaser']) && $udt_page_meta['teaser']!='') || $post->post_content!='') { ?>
		<section class="homepage">

			<?php if((isset($udt_page_meta['display_title']) && $udt_page_meta['display_title']!='') || (isset($udt_page_meta['teaser']) && $udt_page_meta['teaser']!='')) { ?>
			<!--section title-->
			<div id="section-title">
				<?php if(isset($udt_page_meta['display_title']) && $udt_page_meta['display_title']!='') {
					echo '<h1>'.$udt_page_meta['display_title'].'</h1>';
				}
				if(isset($udt_page_meta['teaser']) && $udt_page_meta['teaser']!='') {
					if(isset($udt_page_meta['display_title']) && $udt_page_meta['display_title']!='') {
						echo '<div id="teaser">';
					} else {
						echo '<div id="teaser" class="teaser-no-title">';
					}
					echo wptexturize(wpautop(do_shortcode(shortcode_unautop($udt_page_meta['teaser']))));
					echo '</div>';
				} ?>
			</div>
			<!--end section title-->
			<?php } ?>

			<?php if($post->post_content!='') { ?>
			<section class="pages clearfix">
				<?php the_content('',FALSE); ?>
			</section>
			<?php } ?>

		</section>
	<?php } ?>


	<?php

	if(returnOptionValue('frontpage_display_latest_projects')=='1') {

		if(returnOptionValue('portfolio_index_layout')=='portfolio-fixed-width-grid') {
			$latest_proj_numberposts=50;
		} else if(returnOptionValue('portfolio_index_layout')=='portfolio-full-width-grid') {
			$latest_proj_numberposts=50;
		}
			
		$my_args_portfolio = array(
			'post_type' => 'udt_portfolio',
			'numberposts' => $latest_proj_numberposts,
			'orderby' => 'date',
			'order' => 'DESC',
			'suppress_filters' => false
		);
		$udt_portfolio = get_posts( $my_args_portfolio );
		$count_udt_portfolio = count($udt_portfolio);
		$udt_portfolio_counter = 0;

		$display_media_size='udt-portfolio-thumb-1';

		if($count_udt_portfolio>0) {

			if($post->post_content!='') {
				$below_content=' portfolio-below-content';
			} else {
				$below_content='';
			}

			if(returnOptionValue('portfolio_index_layout')=='portfolio-fixed-width-grid') {
				echo '<section class="portfolio-fixed-width-grid'.$below_content.'">';
				$display_media_size='udt-portfolio-thumb-1';
			} else if(returnOptionValue('portfolio_index_layout')=='portfolio-full-width-grid') {
				echo '<section class="portfolio-full-width-grid'.$below_content.'">';
				$display_media_size='udt-portfolio-thumb-2';
			}


				if(returnOptionValue('frontpage_latest_projects_title') != '') {
					echo '<div class="sub-section-title">';
					echo '<h2>' . returnOptionValue('frontpage_latest_projects_title') . '</h2>';
					echo '</div>';
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
								</a>
							</div>';
						}
					}

				echo '</div>';

				$my_args_portfolio_index = array(
					'post_type' => 'page',
					'numberposts' => 1,
					'meta_key' => '_wp_page_template',
					'meta_value' => 'page-udt_portfolio-index.php',
					'post_status' => 'publish',
					'suppress_filters' => false
				);
				$udt_portfolio_index = get_posts( $my_args_portfolio_index );
				if(count($udt_portfolio_index)==1 && returnOptionValue('frontpage_latest_projects_button_label')!='') {
					echo '<div class="portfolio-button"><a href="' . get_permalink($udt_portfolio_index[0]->ID) . '" title="'.esc_attr(returnOptionValue('frontpage_latest_projects_button_label')).'">'.returnOptionValue('frontpage_latest_projects_button_label').' &rarr;</a></div>';
				}

			echo '</section>';
		}
	} ?>

	<?php

	if(returnOptionValue('frontpage_display_latest_posts')=='1') {

		global $post;

		$my_args_latest_posts = array(
			'post_type' => 'post',
			'numberposts' => 3,
			'orderby' => 'date',
			'order' => 'DESC',
			'suppress_filters' => false
		);
		$udt_latest_posts = get_posts( $my_args_latest_posts );
		$count_udt_latest_posts = count($udt_latest_posts);
		$udt_latest_posts_counter = 0;

		if($count_udt_latest_posts>0) {

			if(($post->post_content!='') || (returnOptionValue('frontpage_display_latest_projects')=='1' && $count_udt_portfolio>0)) {
				$below_content=' latest-posts-below-content';
			} else {
				$below_content='';
			}

			echo '<section class="latest-posts-grid'.$below_content.'">';

				if(returnOptionValue('frontpage_latest_posts_title') != '') {
					echo '<div class="sub-section-title">';
					echo '<h2>' . returnOptionValue('frontpage_latest_posts_title') . '</h2>';
					echo '</div>';
				}

				echo '<div id="content-inner-blog-grid">';

					echo '<div id="blog-grid-container">';

					foreach ( $udt_latest_posts as $post ) { setup_postdata($post); ?>

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

									<?php global $more; $more = 0; the_content('',FALSE); ?>
									<?php echo '<a href="'. get_permalink($post->ID) . '" class="readMore blog-post-read-more" title="'. __("Read more", 'raw') .'">'. __("Read more &rarr;", 'raw') .'</a>'; ?>

								</div>

							</div>
						</article>

					<?php } wp_reset_postdata();

					echo '</div>';

				echo '</div>';

			echo '</section>';

		}
	}

	?>

	<?php endwhile; // end of the loop. ?>

</div>