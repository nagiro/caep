<?php
/**
 * The template part for displaying the full width media project layout.
 *
 * @package WordPress
 * @subpackage Raw
 * @since Raw 1.0
 */

global $udt_post_meta;

?>

<?php
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
		echo '<section class="slider-full-width clearfix">';
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
		
			echo '<section class="slider-full-width clearfix">';
			echo $udt_fullwidth_slider;
			echo '</section>';

		}

	} else {
		echo '<section class="slider-full-width clearfix">';
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
	
		echo '<section class="slider-full-width clearfix">';
		echo $udt_fullwidth_slider;
		echo '</section>';

	}

}
?>

<section class="pages clearfix">

	<!--section title-->
	<div id="section-title">
		<h1><?php
		if(isset($udt_post_meta['display_title']) && $udt_post_meta['display_title']!='') {
			echo $udt_post_meta['display_title'];
		} else {
			the_title();
		}
		?></h1>
		<?php
		if(isset($udt_post_meta['teaser']) && $udt_post_meta['teaser']!='') {
			echo '<div id="teaser">'.wptexturize(wpautop(do_shortcode(shortcode_unautop($udt_post_meta['teaser'])))).'</div>';
		}
		?>
	</div>
	<!--end section title-->

	<?php the_content('',FALSE); ?>

</section>

<?php
// Portfolio pagination
$prev_project = get_previous_post();
$next_project = get_next_post();
$output_pagination='';

if(!empty($next_project) || !empty($prev_project)) {

	$my_args_portfolio_index = array(
		'post_type' => 'page',
		'numberposts' => 1,
		'meta_key' => '_wp_page_template',
		'meta_value' => 'page-udt_portfolio-index.php',
		'post_status' => 'publish'
	);
	$udt_portfolio_index = get_posts( $my_args_portfolio_index );
	if(count($udt_portfolio_index)==1) {
		$back_to_grid_url=get_permalink($udt_portfolio_index[0]->ID);
	} else {
		$back_to_grid_url=home_url();
	}
	
	$output_pagination.='<div id="folio-navigation">
		<ul>';
		if(!empty($next_project)) {
		$output_pagination.='<li id="nextProject">
				<a href="'. get_permalink( $next_project->ID ) .'" title="'. $next_project->post_title .'">'. $next_project->post_title .'</a>';
		} else {
			$output_pagination.='<li id="nextProject" class="disabled">';
		}

		$output_pagination.='</li>';

		$output_pagination.='<li id="closeProject">
				<a href="'. $back_to_grid_url .'" title="'. __('Back to Grid', 'raw') .'"></a>
			</li>';

		if(!empty($prev_project)) {
			$output_pagination.='<li id="prevProject">
				<a href="'. get_permalink( $prev_project->ID ) .'" title="'. $prev_project->post_title .'">'. $prev_project->post_title .'</a>';
		} else {
			$output_pagination.='<li id="prevProject" class="disabled">';
		}
		$output_pagination.='</li>';
		$output_pagination.='</ul>
	</div>';
	echo $output_pagination;
}

?>