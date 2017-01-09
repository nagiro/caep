<?php
/**
 * The header widget area
 *
 * @package WordPress
 * @subpackage Raw
 * @since Raw 1.0
 */
?>
	<?php if(!is_active_sidebar('header-sidebar') &&
		returnOptionValue('sns_type_1')=='0' &&
		returnOptionValue('sns_type_2')=='0' &&
		returnOptionValue('sns_type_3')=='0' &&
		returnOptionValue('sns_type_4')=='0' &&
		returnOptionValue('sns_type_5')=='0' &&
		returnOptionValue('sns_type_6')=='0') {
		return false;
	} ?>

	<div style="clear:both;"></div>

	<div class="header-widget-box">
		<div class="header-outer-widget-wrapper">
			<?php if(is_active_sidebar('header-sidebar')) { ?>
			<?php
			if(returnOptionValue('sns_type_1')=='0' &&
			returnOptionValue('sns_type_2')=='0' &&
			returnOptionValue('sns_type_3')=='0' &&
			returnOptionValue('sns_type_4')=='0' &&
			returnOptionValue('sns_type_5')=='0' &&
			returnOptionValue('sns_type_6')=='0') {
				$last_class='last-wrapper';
			} else {
				$last_class='';
			}
			?>
			<div class="header-widget-wrapper <?php echo $last_class; ?>">
				<ul>
				<?php
				if ( ! dynamic_sidebar( 'header-sidebar' ) ) : ?>
				
					<li id="search" class="widget-container widget_search">
						<?php get_search_form(); ?>
					</li>
					
				<?php endif; // end widget area ?>
				</ul>
			</div>
			<?php } ?>

			<?php
			$networks['behance']['network_name']='Behance';
			$networks['behance']['network_class']='behance';

			$networks['deviantart']['network_name']='DeviantArt';
			$networks['deviantart']['network_class']='deviantart';

			$networks['dribbble']['network_name']='Dribbble';
			$networks['dribbble']['network_class']='dribbble';
			
			$networks['facebook']['network_name']='Facebook';
			$networks['facebook']['network_class']='facebook';
			
			$networks['flickr']['network_name']='Flickr';
			$networks['flickr']['network_class']='flickr';
			
			$networks['forrst']['network_name']='Forrst';
			$networks['forrst']['network_class']='forrst';
			
			$networks['googleplus']['network_name']='Google+';
			$networks['googleplus']['network_class']='googleplus';

			$networks['instagram']['network_name']='Instagram';
			$networks['instagram']['network_class']='instagram';
			
			$networks['linkedin']['network_name']='LinkedIn';
			$networks['linkedin']['network_class']='linkedin';
			
			$networks['myspace']['network_name']='Myspace';
			$networks['myspace']['network_class']='myspace';

			$networks['pinterest']['network_name']='Pinterest';
			$networks['pinterest']['network_class']='pinterest';
			
			$networks['rss']['network_name']='RSS';
			$networks['rss']['network_class']='rss';
			
			$networks['skype']['network_name']='Skype';
			$networks['skype']['network_class']='skype';

			$networks['soundcloud']['network_name']='SoundCloud';
			$networks['soundcloud']['network_class']='soundcloud';
			
			$networks['tumblr']['network_name']='Tumblr';
			$networks['tumblr']['network_class']='tumblr';

			$networks['twitter']['network_name']='Twitter';
			$networks['twitter']['network_class']='twitter';
			
			$networks['vimeo']['network_name']='Vimeo';
			$networks['vimeo']['network_class']='vimeo';

			$networks['vine']['network_name']='Vine';
			$networks['vine']['network_class']='vine';

			$networks['youtube']['network_name']='YouTube';
			$networks['youtube']['network_class']='youtube';

			$networks['fivehundredpx']['network_name']='500px';
			$networks['fivehundredpx']['network_class']='fivehundredpx';
			
			$snsCounter=0;
			
			$social_color_class='black';
			if(returnOptionValue('header_social_link_icon_color')!='') {
				$social_color_class=returnOptionValue('header_social_link_icon_color');
			}

			$outputSns='<ul class="connect '.$social_color_class.'">';
			
			if(returnOptionValue('sns_type_1')!='0') {
				if(isset($networks[returnOptionValue('sns_type_1')]['network_class'])) {
					$outputSns.='<li><a href="'.returnOptionValue('sns_url_1').'" title="'.$networks[returnOptionValue('sns_type_1')]['network_name'].'" class="'.$networks[returnOptionValue('sns_type_1')]['network_class'].'">'.$networks[returnOptionValue('sns_type_1')]['network_name'].'</a></li>';
					$snsCounter++;
				}
			}
			
			if(returnOptionValue('sns_type_2')!='0') {
				if(isset($networks[returnOptionValue('sns_type_2')]['network_class'])) {
					$outputSns.='<li><a href="'.returnOptionValue('sns_url_2').'" title="'.$networks[returnOptionValue('sns_type_2')]['network_name'].'" class="'.$networks[returnOptionValue('sns_type_2')]['network_class'].'">'.$networks[returnOptionValue('sns_type_2')]['network_name'].'</a></li>';
					$snsCounter++;
				}
			}
			
			if(returnOptionValue('sns_type_3')!='0') {
				if(isset($networks[returnOptionValue('sns_type_3')]['network_class'])) {
					$outputSns.='<li><a href="'.returnOptionValue('sns_url_3').'" title="'.$networks[returnOptionValue('sns_type_3')]['network_name'].'" class="'.$networks[returnOptionValue('sns_type_3')]['network_class'].'">'.$networks[returnOptionValue('sns_type_3')]['network_name'].'</a></li>';
					$snsCounter++;
				}
			}
			
			if(returnOptionValue('sns_type_4')!='0') {
				if(isset($networks[returnOptionValue('sns_type_4')]['network_class'])) {
					$outputSns.='<li><a href="'.returnOptionValue('sns_url_4').'" title="'.$networks[returnOptionValue('sns_type_4')]['network_name'].'" class="'.$networks[returnOptionValue('sns_type_4')]['network_class'].'">'.$networks[returnOptionValue('sns_type_4')]['network_name'].'</a></li>';
					$snsCounter++;
				}
			}
			
			if(returnOptionValue('sns_type_5')!='0') {
				if(isset($networks[returnOptionValue('sns_type_5')]['network_class'])) {
					$outputSns.='<li><a href="'.returnOptionValue('sns_url_5').'" title="'.$networks[returnOptionValue('sns_type_5')]['network_name'].'" class="'.$networks[returnOptionValue('sns_type_5')]['network_class'].'">'.$networks[returnOptionValue('sns_type_5')]['network_name'].'</a></li>';
					$snsCounter++;
				}
			}
			
			if(returnOptionValue('sns_type_6')!='0') {
				if(isset($networks[returnOptionValue('sns_type_6')]['network_class'])) {
					$outputSns.='<li><a href="'.returnOptionValue('sns_url_6').'" title="'.$networks[returnOptionValue('sns_type_6')]['network_name'].'" class="'.$networks[returnOptionValue('sns_type_6')]['network_class'].'">'.$networks[returnOptionValue('sns_type_6')]['network_name'].'</a></li>';
					$snsCounter++;
				}
			}
			
			$outputSns.='</ul>';
			
			if($snsCounter>0) {
				echo $outputSns;
			}
			?>

			<div style="clear:both;"></div>

			<div class="mobile-widget-box-toggle-wrapper">
				<a href="#">Toggle</a>
			</div>
		</div>
	</div>

	<div style="clear:both;"></div>