<?php
include_once('g-fonts.php');
echo '
.contactForm .loading-animation { background-image:url('.returnUploadedImageByID('contact_loading_gif').'); }

.epic-slider { background:url('.returnUploadedImageByID('epic_slider_loading_gif').') no-repeat center center; }

.epic-slider #slides li { background-color:#'.returnOptionValue('epic_slider_slide_background_color').'; }

.epic-slider #slides li .es-background .es-overlay { background:url('.returnUploadedImageByID('epic_slider_overlay_pattern').') repeat 0 0; }

.epic-slider #es-play:hover, .epic-slider #es-next:hover, .epic-slider #es-prev:hover, .epic-slider .es-fullscreen:hover, .epic-slider #es-progress-button,
.flex-direction-nav li a:hover {
	background-color:#'.returnOptionValue('slider_theme_color').';
}

h1,h2,h3,h4,h5,h6,#section-title, h1 span,h2 span,h3 span,h4 span,h5 span,h6 span, #section-title span {
	font-family:'.$g_fonts[returnOptionValue('title_font')][1].';
}

h1, h1 span { font-size:'.returnOptionValue('h1_font_size').'; line-height:'.returnOptionValue('h1_line_height').'; }
h2, h2 span { font-size:'.returnOptionValue('h2_font_size').'; line-height:'.returnOptionValue('h2_line_height').'; }
h3, h3 span { font-size:'.returnOptionValue('h3_font_size').'; line-height:'.returnOptionValue('h3_line_height').'; }
h4, h4 span { font-size:'.returnOptionValue('h4_font_size').'; line-height:'.returnOptionValue('h4_line_height').'; }
h5, h5 span { font-size:'.returnOptionValue('h5_font_size').'; line-height:'.returnOptionValue('h5_line_height').'; }
h6, h6 span { font-size:'.returnOptionValue('h6_font_size').'; line-height:'.returnOptionValue('h6_line_height').'; }
#section-title,
#section-title h1, #section-title h1 span,
#section-title h2, #section-title h2 span,
#section-title h3, #section-title h3 span,
#section-title h4, #section-title h4 span,
#section-title h5, #section-title h5 span,
#section-title h6, #section-title h6 span {
	font-size:'.returnOptionValue('display_title_font_size').'; line-height:'.returnOptionValue('display_title_line_height').';
}

.display-image .boxed .size-1, .display-image .boxed .size-2, .display-image .boxed .size-3, .display-image .boxed .size-4, .display-image .boxed .size-5, .display-image .boxed .size-6,
.epic-slider .boxed .size-1, .epic-slider .boxed .size-2, .epic-slider .boxed .size-3, .epic-slider .boxed .size-4, .epic-slider .boxed .size-5, .epic-slider .boxed .size-6,
.display-image .elegant .size-1, .display-image .elegant .size-2, .display-image .elegant .size-3, .display-image .elegant .size-4, .display-image .elegant .size-5, .display-image .elegant .size-6,
.epic-slider .elegant .size-1, .epic-slider .elegant .size-2, .epic-slider .elegant .size-3, .epic-slider .elegant .size-4, .epic-slider .elegant .size-5, .epic-slider .elegant .size-6,
.display-image .impact .size-1, .display-image .impact .size-2, .display-image .impact .size-3, .display-image .impact .size-4, .display-image .impact .size-5, .display-image .impact .size-6,
.epic-slider .impact .size-1, .epic-slider .impact .size-2, .epic-slider .impact .size-3, .epic-slider .impact .size-4, .epic-slider .impact .size-5, .epic-slider .impact .size-6,
.display-image .single-border .size-1, .display-image .single-border .size-2, .display-image .single-border .size-3, .display-image .single-border .size-4, .display-image .single-border .size-5, .display-image .single-border .size-6,
.epic-slider .single-border .size-1, .epic-slider .single-border .size-2, .epic-slider .single-border .size-3, .epic-slider .single-border .size-4, .epic-slider .single-border .size-5, .epic-slider .single-border .size-6,
.display-image .striped .size-1, .display-image .striped .size-2, .display-image .striped .size-3, .display-image .striped .size-4, .display-image .striped .size-5, .display-image .striped .size-6,
.epic-slider .striped .size-1, .epic-slider .striped .size-2, .epic-slider .striped .size-3, .epic-slider .striped .size-4, .epic-slider .striped .size-5, .epic-slider .striped .size-6 {
	font-family:'.$g_fonts[returnOptionValue('caption_font')][1].';
}

.display-image .boxed .size-1, .epic-slider .boxed .size-1,
.display-image .elegant .size-1, .epic-slider .elegant .size-1,
.display-image .impact .size-1, .epic-slider .impact .size-1,
.display-image .single-border .size-1, .epic-slider .single-border .size-1,
.display-image .striped .size-1, .epic-slider .striped .size-1 {
	font-size:'.returnOptionValue('caption_size_1_font_size').'; line-height:'.returnOptionValue('caption_size_1_line_height').';
}

.display-image .boxed .size-2, .epic-slider .boxed .size-2,
.display-image .elegant .size-2, .epic-slider .elegant .size-2,
.display-image .impact .size-2, .epic-slider .impact .size-2,
.display-image .single-border .size-2, .epic-slider .single-border .size-2,
.display-image .striped .size-2, .epic-slider .striped .size-2 {
	font-size:'.returnOptionValue('caption_size_2_font_size').'; line-height:'.returnOptionValue('caption_size_2_line_height').';
}

.display-image .boxed .size-3, .epic-slider .boxed .size-3,
.display-image .elegant .size-3, .epic-slider .elegant .size-3,
.display-image .impact .size-3, .epic-slider .impact .size-3,
.display-image .single-border .size-3, .epic-slider .single-border .size-3,
.display-image .striped .size-3, .epic-slider .striped .size-3 {
	font-size:'.returnOptionValue('caption_size_3_font_size').'; line-height:'.returnOptionValue('caption_size_3_line_height').';
}

.display-image .boxed .size-4, .epic-slider .boxed .size-4,
.display-image .elegant .size-4, .epic-slider .elegant .size-4,
.display-image .impact .size-4, .epic-slider .impact .size-4,
.display-image .single-border .size-4, .epic-slider .single-border .size-4,
.display-image .striped .size-4, .epic-slider .striped .size-4 {
	font-size:'.returnOptionValue('caption_size_4_font_size').'; line-height:'.returnOptionValue('caption_size_4_line_height').';
}

.display-image .boxed .size-5, .epic-slider .boxed .size-5,
.display-image .elegant .size-5, .epic-slider .elegant .size-5,
.display-image .impact .size-5, .epic-slider .impact .size-5,
.display-image .single-border .size-5, .epic-slider .single-border .size-5,
.display-image .striped .size-5, .epic-slider .striped .size-5 {
	font-size:'.returnOptionValue('caption_size_5_font_size').'; line-height:'.returnOptionValue('caption_size_5_line_height').';
}

.display-image .boxed .size-6, .epic-slider .boxed .size-6,
.display-image .elegant .size-6, .epic-slider .elegant .size-6,
.display-image .impact .size-6, .epic-slider .impact .size-6,
.display-image .single-border .size-6, .epic-slider .single-border .size-6,
.display-image .striped .size-6, .epic-slider .striped .size-6 {
	font-size:'.returnOptionValue('caption_size_6_font_size').'; line-height:'.returnOptionValue('caption_size_6_line_height').';
}

.thumb a .thumb-rollover .thumbInfo { font-family:'.$g_fonts[returnOptionValue('thumb_rollover_font')][1].'; font-size:'.returnOptionValue('thumb_rollover_font_size').'; line-height:'.returnOptionValue('thumb_rollover_line_height').'; }

body, #lang_sel_footer { background:#'.returnOptionValue('background_color').'; color:#'.returnOptionValue('text_color').'; }

h1, h1 span,
h2, h2 span,
h3, h3 span,
h4, h4 span,
h5, h5 span,
h6, h6 span,
#section-title,
#section-title h1, #section-title h1 span,
#section-title h2, #section-title h2 span,
#section-title h3, #section-title h3 span,
#section-title h4, #section-title h4 span,
#section-title h5, #section-title h5 span,
#section-title h6, #section-title h6 span,
.blog-post-content .blog-post-title, .blog-post-content .blog-post-title a,
.blog-post-grid-content h2, .blog-post-grid-content h2 span, .blog-post-grid-content h2 a,
.blog-post-content .blog-post-meta span,
section#comments h2#comments-title, section#comments h3#reply-title {
	color:#'.returnOptionValue('title_color').';
}

.blog-post-content .blog-post-title a:hover { color:#'.returnOptionValue('link_hover_color').'; }

.blog-post-content .blog-post-meta { color:#'.returnOptionValue('text_color').'; }

a { color:#'.returnOptionValue('link_color').'; }
a:hover { color:#'.returnOptionValue('link_hover_color').'; }

aside.sidebar ul li h4.widget-title, aside.sidebar ul li h4.widget-title span { 
	color:#'.returnOptionValue('sidebar_title_color').';
}

aside.sidebar ul li ul li a, .footer-widget a, #lang_sel_list ul a, #lang_sel_list a.lang_sel_sel, #lang_sel_list_list ul a:visited, #lang_sel_list ul a.lang_sel_sel:hover { color:#'.returnOptionValue('sidebar_link_color').'; }
aside.sidebar ul li ul li a:hover, .footer-widget a:hover, #lang_sel_list ul a:hover { color:#'.returnOptionValue('sidebar_link_hover_color').'; }

.widget_tag_cloud a, .post-tags a { background-color:#'.returnOptionValue('tag_cloud_link_background_color').'; color:#'.returnOptionValue('tag_cloud_link_text_color').'; }
.widget_tag_cloud a:hover, .post-tags a:hover { background-color:#'.returnOptionValue('tag_cloud_link_hover_background_color').'; color:#'.returnOptionValue('tag_cloud_link_hover_text_color').'; }

.widget_calendar #wp-calendar tbody td { background-color:#'.returnOptionValue('calendar_date_background_color').'; color:#'.returnOptionValue('calendar_date_text_color').'; }
.widget_calendar #wp-calendar tbody td a { color:#'.returnOptionValue('calendar_date_link_color').'; }
.widget_calendar #wp-calendar tbody td a:hover { color:#'.returnOptionValue('calendar_date_hover_link_color').'; }
.widget_calendar #wp-calendar tbody td:hover { background-color:#'.returnOptionValue('calendar_date_hover_background_color').'; color:#'.returnOptionValue('calendar_date_hover_text_color').'; }

.sticky .blog-post-content { background-color:#'.returnOptionValue('sticky_post_background_color').'; }
#content-inner-blog-grid #blog-grid-container article.sticky .blog-post-grid-content-inner { background-color:#'.returnOptionValue('sticky_post_background_color').'; }

section#comments ol.comment-list li.depth-1 > div, ol.comment-list li ul.children li { background-color:#'.returnOptionValue('sticky_post_background_color').'; }
section#comments ol.comment-list li ul.children li:after {
	border-top:0;
	border-right:25px solid #'.returnOptionValue('sticky_post_background_color').';
	border-bottom:15px solid transparent;
	border-left:0;
}
@media only screen and (max-width: 767px) {
	section#comments ol.comment-list li ul.children li:after {
		border-top:0;
		border-right:10px solid transparent;
		border-bottom:10px solid #'.returnOptionValue('sticky_post_background_color').' !important;
		border-left:0;
	}
}

section#comments ol.comment-list li.comment { border-color:#'.returnOptionValue('divider_color').' !important; }
section#comments ol.comment-list li.comment .commentary .comment-meta,
section#comments ol.comment-list li.comment .commentary .comment-author { color:#'.returnOptionValue('text_color').'; }
section#comments ol.comment-list li.comment .commentary .comment-meta a { color:#'.returnOptionValue('link_color').'; }
section#comments ol.comment-list li.comment .commentary .comment-meta a:hover { color:#'.returnOptionValue('link_hover_color').'; }

.blog-post-meta-date, .blog-post-grid-content .blog-post-meta-date { border-color:#'.returnOptionValue('post_date_color').'; color:#'.returnOptionValue('post_date_color').'; }

::selection { background:#'.returnOptionValue('text_selection_color').'; color:#fff; }
::-moz-selection { background:#'.returnOptionValue('text_selection_color').'; color:#fff; }
::-webkit-selection { background:#'.returnOptionValue('text_selection_color').'; color:#fff; }

#header-wrapper .mobile-widget-box-toggle-wrapper { background-color:#'.returnOptionValue('background_color').'; }
#header-wrapper .header-widget-box {
	background:#'.returnOptionValue('header_background_color').';
	color:#'.returnOptionValue('header_text_color').';
}
#header-wrapper .header-widget-wrapper ul li h4.widget-title, #header-wrapper .header-widget-wrapper ul li h4.widget-title span {
	color:#'.returnOptionValue('header_title_color').';
}
#header-wrapper .header-widget-wrapper a { color:#'.returnOptionValue('header_link_color').'; }
#header-wrapper .header-widget-wrapper a:hover { color:#'.returnOptionValue('header_link_hover_color').'; }

#header-wrapper {
	background:#'.returnOptionValue('header_background_color').';
}

header nav#primary-nav ul li a { color:#'.returnOptionValue('menu_link_color').'; }
header nav#primary-nav ul li a:hover { color:#'.returnOptionValue('menu_link_hover_color').'; }
header nav#primary-nav ul li.current-menu-item a, header nav#primary-nav ul li.current_page_item a,
header nav#primary-nav ul li.current-menu-ancestor a, header nav#primary-nav ul li.current_page_parent a {
	color:#'.returnOptionValue('active_menu_link_color').';
}

header nav#primary-nav ul li ul.sub-menu li, header nav#primary-nav ul li ul.children li {
	background:#'.returnOptionValue('header_background_color').';
	background:rgba('.implode(',',hex2rgb(returnOptionValue('header_background_color'))).','.returnOptionValue('sub_menu_background_opacity').');
}
header nav#primary-nav ul li:after { border-color:#'.returnOptionValue('menu_divider_color').'; }
header nav#primary-nav ul li ul.sub-menu li a,header nav#primary-nav ul li ul.children li a { color:#'.returnOptionValue('sub_menu_link_color').'; }
header nav#primary-nav ul li ul.sub-menu li a:hover,header nav#primary-nav ul li ul.children li a:hover { color:#'.returnOptionValue('sub_menu_link_hover_color').'; }
header nav#primary-nav ul li ul.sub-menu li.current-menu-item a,header nav#primary-nav ul li ul.children li.current_page_item a { color:#'.returnOptionValue('sub_menu_active_link_color').'; }
header nav#primary-nav ul.mobile-navigation li ul.sub-menu li a, header nav#primary-nav ul.mobile-navigation li ul.children li a { color:#'.returnOptionValue('menu_link_color').'; }
header nav#primary-nav ul.mobile-navigation li ul.sub-menu li a:hover, header nav#primary-nav ul.mobile-navigation li ul.children li a:hover { color:#'.returnOptionValue('menu_link_hover_color').'; }
header nav#primary-nav ul.mobile-navigation li ul.sub-menu li.current-menu-item a,
header nav#primary-nav ul.mobile-navigation li ul.sub-menu li.current_page_item a { color:#'.returnOptionValue('active_menu_link_color').'; }
header nav#primary-nav ul.mobile-navigation li.current-menu-ancestor a, header nav#primary-nav ul.mobile-navigation li.current_page_parent a { color:#'.returnOptionValue('active_menu_link_color').'; }
header nav#primary-nav ul.mobile-navigation li.current-menu-ancestor ul.sub-menu li.current-menu-item a, header nav#primary-nav ul.mobile-navigation li.current_page_parent ul.children li.current_page_item a { color:#'.returnOptionValue('active_menu_link_color').'; }
header nav#primary-nav ul.mobile-navigation li.current-menu-ancestor a, header nav#primary-nav ul.mobile-navigation li.current_page_parent a { color:#'.returnOptionValue('active_menu_link_color').'; }

header .mobile-menu-toggle,
#header-wrapper .header-widget-wrapper ul li { border-color:#'.returnOptionValue('menu_divider_color').'; }

.blog header nav#primary-nav ul.mobile-navigation li.current-menu-item a, .blog header nav#primary-nav ul.mobile-navigation li.current_page_item a,
.single-post header nav#primary-nav ul.mobile-navigation li.current-menu-ancestor a, .single-post header nav#primary-nav ul.mobile-navigation li.current_page_parent a {
	color:#'.returnOptionValue('active_menu_link_color').';
}

.text-field, textarea, .widget_search #searchform input#s {
	background-color:#'.returnOptionValue('form_input_background_color').';
	border-color:#'.returnOptionValue('form_input_border_color').';
	color:#'.returnOptionValue('form_input_text_color').';
}
.text-field:hover, textarea:hover, .widget_search #searchform input#s:hover {
	background-color:#'.returnOptionValue('form_input_hover_background_color').';
	border-color:#'.returnOptionValue('form_input_hover_border_color').';
	color:#'.returnOptionValue('form_input_hover_text_color').';
}
.text-field:focus, textarea:focus, .widget_search #searchform input#s:focus {
	background-color:#'.returnOptionValue('form_input_active_background_color').';
	border-color:#'.returnOptionValue('form_input_active_border_color').';
	color:#'.returnOptionValue('form_input_active_text_color').';
}

.submitTheme, #commentform #submit, .blog-post-content .blog-post-read-more, .blog-post-grid-content .blog-post-read-more {
	background-color:#'.returnOptionValue('default_button_background_color').' !important;
	color:#'.returnOptionValue('default_button_text_color').' !important;
}

.errorMsg {
	color:#'.returnOptionValue('error_text_color').' !important;
}

.errorOutline {
	border-color:#'.returnOptionValue('error_text_color').' !important;
}

.accordion dt, .tabs .tabs_nav li {
	background-color:#'.returnOptionValue('accordions_tabs_label_background_color').';
}
.accordion dt, .accordion dd, .tabs .tabs_nav li, .tabs .tabs_content {
	border-color:#'.returnOptionValue('accordions_tabs_label_background_color').';
}
.accordion dt.active, .tabs .tabs_nav li.active {
	background-color:#'.returnOptionValue('accordions_tabs_active_label_background_color').';
	border-color:#'.returnOptionValue('accordions_tabs_active_label_background_color').';
}
.accordion dt a, .tabs .tabs_nav li a, .accordion dt a:hover, .tabs .tabs_nav li a:hover {
	color:#'.returnOptionValue('accordions_tabs_label_text_color').';
}
.accordion dt.active a, .tabs .tabs_nav li.active a, .accordion dt.active a:hover, .tabs .tabs_nav li.active a:hover {
	color:#'.returnOptionValue('accordions_tabs_active_label_text_color').';
}
.accordion dd, .tabs .tabs_content {
	background-color:#'.returnOptionValue('accordions_tabs_background_color').';
}

blockquote, blockquote.elegant, blockquote.boxed { border-color:#'.returnOptionValue('blockquote_border_color').'; }
blockquote, blockquote.elegant, blockquote.boxed, blockquote.overlayed { color:#'.returnOptionValue('blockquote_text_color').'; }
blockquote.boxed-background, blockquote.striped span {
	background-color:#'.returnOptionValue('blockquote_boxed_bg_striped_background_color').';
	color:#'.returnOptionValue('blockquote_boxed_bg_striped_text_color').';
}
blockquote.elegant { background-image:url('.returnUploadedImageByID('blockquote_elegant_graphic').'); }
blockquote.overlayed { background-image:url('.returnUploadedImageByID('blockquote_overlayed_graphic').'); }

.caption.elegant, .caption.single-border, .caption.impact, .es-caption.elegant, .es-caption.single-border, .es-caption.impact {
	color:#'.returnOptionValue('caption_text_color').';
}
.caption .divider, .epic-slider .divider { border-color:#'.returnOptionValue('caption_text_color').' !important; }
.caption.elegant a, .caption.single-border a, .caption.impact a, .es-caption.elegant a, .es-caption.single-border a, .es-caption.impact a {
	color:#'.returnOptionValue('caption_link_color').';
}
.caption.elegant a:hover, .caption.single-border a:hover, .caption.impact a:hover, .es-caption.elegant a:hover, .es-caption.single-border a:hover, .es-caption.impact a:hover {
	color:#'.returnOptionValue('caption_link_hover_color').';
}
.caption.striped span, .es-caption.striped span {
	background-color:#'.returnOptionValue('caption_boxed_striped_background_color').';
	background-color:rgba('.implode(',',hex2rgb(returnOptionValue('caption_boxed_striped_background_color'))).',0.7);
	color:#'.returnOptionValue('caption_boxed_striped_text_color').';
}
.caption.boxed, .es-caption.boxed, .es-caption.default {
	background-color:#'.returnOptionValue('caption_boxed_striped_background_color').';
	background-color:rgba('.implode(',',hex2rgb(returnOptionValue('caption_boxed_striped_background_color'))).',0.7);
	color:#'.returnOptionValue('caption_boxed_striped_text_color').';
}
.caption.boxed .divider, .es-caption.boxed .divider { border-color:#'.returnOptionValue('caption_boxed_striped_text_color').'; }
.caption.boxed a, .es-caption.boxed a, .caption.striped a span, .es-caption.striped a span {
	color:#'.returnOptionValue('caption_boxed_striped_link_color').';
}
.caption.boxed a:hover, .es-caption.boxed a:hover { color:#'.returnOptionValue('caption_boxed_striped_link_hover_color').'; }
.caption.striped a:hover span, .es-caption.striped a:hover span { background-color:#'.returnOptionValue('caption_boxed_striped_link_hover_color').'; }
.flex-caption {
	background-color:#'.returnOptionValue('caption_boxed_striped_background_color').';
	background-color:rgba('.implode(',',hex2rgb(returnOptionValue('caption_boxed_striped_background_color'))).',0.7);
	color:#'.returnOptionValue('caption_boxed_striped_text_color').';
}
.flex-caption a { color:#'.returnOptionValue('caption_boxed_striped_link_color').'; }
.flex-caption a:hover { color:#'.returnOptionValue('caption_boxed_striped_link_hover_color').'; }

@media only screen and (max-width: 767px) {
	.caption { border:1px solid #'.returnOptionValue('divider_color').' !important; background:#'.returnOptionValue('background_color').' !important; }
	.display-image .caption .size-1,.display-image .caption .size-2,.display-image .caption .size-3,.display-image .caption .size-4,.display-image .caption .size-5,.display-image .caption .size-6 { color:#'.returnOptionValue('title_color').' !important; }
	.display-image .caption p { color:#'.returnOptionValue('text_color').'; }
	.caption.elegant a, .caption.single-border a, .caption.impact a {
		color:#'.returnOptionValue('link_color').';
	}
	.caption.elegant a:hover, .caption.single-border a:hover, .caption.impact a:hover {
		color:#'.returnOptionValue('link_hover_color').';
	}
	.caption.boxed a, .caption.striped a span {
		color:#'.returnOptionValue('link_color').';
	}
	.caption.boxed a:hover, .caption.striped a:hover span {
		color:#'.returnOptionValue('link_hover_color').';
	}
	.caption.striped span, .caption.striped a:hover span {
		background-color:#'.returnOptionValue('background_color').';
	}
}

.chart-container ul.chart li div.bar {
	background-color:#'.returnOptionValue('chart_bar_color').';
	color:#'.returnOptionValue('chart_text_color').';
}

.chart-container ul.chart li div.bar-track {
	background-color:#'.returnOptionValue('chart_bar_track_color').';
}

ul.socialSmall li a { background-color:#'.returnOptionValue('social_link_background_color').'; }

#header-wrapper #header-inner,
#section-title,
#content-wrapper section.portfolio-below-content .sub-section-title, #content-wrapper section.latest-posts-below-content .sub-section-title,
article.blog-post,
#footer-wrapper #footer-top, #footer-wrapper #footer-bottom, #footer-wrapper #footer-bottom .back-to-top,
aside.sidebar,
aside.sidebar ul li,
#header-wrapper.is_tablet #header-inner .mobile-menu-toggle,
.pagination, #content-inner-blog-grid .pagination,
header nav#primary-nav ul.mobile-navigation li ul.sub-menu,
.divider,
#lang_sel_footer {
	border-color:#'.returnOptionValue('divider_color').' !important;
}

@media only screen and (max-width: 959px) {
	header .mobile-menu-toggle,
	header nav#primary-nav ul.mobile-navigation li ul.sub-menu,
	header nav ul.menu li ul.sub-menu,header nav#primary-nav .menu ul li ul.children {
		border-color:#'.returnOptionValue('menu_divider_color').' !important;
	}
}

aside.sidebar ul li ul li{ border:none !important; }

.pricing_table .pricing_table_col, .pricing_table .pricing_table_col > ul > li {
	border-color:#'.returnOptionValue('pricing_tables_border_color').';
}
.pricing_table .pricing_table_col > ul > li:first-child {
	background-color:#'.returnOptionValue('pricing_tables_header_background_color').';
	color:#'.returnOptionValue('pricing_tables_header_text_color').';
}
.pricing_table .pricing_table_col > ul > li.pricing_table_bg {
	background-color:#'.returnOptionValue('pricing_tables_price_background_color').';
	color:#'.returnOptionValue('pricing_tables_price_text_color').';
}
.pricing_table .pricing_table_col > ul > li span.price, .pricing_table .pricing_table_col > ul > li span.price_affix {
	color:#'.returnOptionValue('pricing_tables_price_text_color').';
}
.pricing_table .pricing_table_col > ul > li.pricing_table_bg {
	background:#'.returnOptionValue('pricing_tables_price_background_color').';
}
.pricing_table .pricing_table_col {
	background:#'.returnOptionValue('pricing_tables_background_color').';
}
.pricing_table .pricing_table_col > ul > li {
	color:#'.returnOptionValue('pricing_tables_text_color').';
}

.pricing_table .pricing_table_col:hover { background-color:#'.returnOptionValue('pricing_tables_hover_background_color').'; }
.pricing_table .pricing_table_col:hover > ul > li:first-child {
	background-color:#'.returnOptionValue('pricing_tables_hover_header_background_color').';
}

.portfolio-filter-wrapper { background-color:#'.returnOptionValue('portfolio_filter_background_color').'; }
.portfolio-filter-wrapper a { color:#'.returnOptionValue('portfolio_filter_link_color').'; }
.portfolio-filter-wrapper a:hover { color:#'.returnOptionValue('portfolio_filter_link_hover_color').'; border-color:#'.returnOptionValue('portfolio_filter_link_hover_color').'; }
.portfolio-filter-wrapper a.active { color:#'.returnOptionValue('portfolio_filter_active_link_color').'; border-color:#'.returnOptionValue('portfolio_filter_active_link_color').'; }

.pagination a, .wp-link-pages a, .widget_calendar #wp-calendar tfoot #next a, .widget_calendar #wp-calendar tfoot #prev a,
#folio-navigation ul li#closeProject a, #folio-navigation ul li#nextProject a, #folio-navigation ul li#prevProject a,
#folio-navigation ul li#nextProject.disabled, #folio-navigation ul li#prevProject.disabled,
.portfolio-button a {
	color:#'.returnOptionValue('text_color').'; border-color:#'.returnOptionValue('divider_color').';
}
.pagination a:hover, .wp-link-pages a:hover, .widget_calendar #wp-calendar tfoot #next a:hover, .widget_calendar #wp-calendar tfoot #prev a:hover,
#folio-navigation ul li#closeProject a:hover, #folio-navigation ul li#nextProject a:hover, #folio-navigation ul li#prevProject a:hover,
.portfolio-button a:hover {
	color:#'.returnOptionValue('text_color').'; border-color:#'.returnOptionValue('text_color').';
}

#fancybox-left-ico:hover, #fancybox-right-ico:hover {
	background-color:#'.returnOptionValue('lightbox_navigation_hover_color').';
}

';
?>