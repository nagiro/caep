<?php
/**
 * Template Name: Portfolio Index
 *
 * @package WordPress
 * @subpackage Raw
 * @since Raw 1.0
 */

get_header(); ?>

<?php 

if(returnOptionValue('portfolio_index_layout')=='portfolio-fixed-width-grid') {
	get_template_part( 'part-portfolio', 'fixed-width-grid' );
} else if(returnOptionValue('portfolio_index_layout')=='portfolio-full-width-grid') {
	get_template_part( 'part-portfolio', 'full-width-grid' );
}

?>

<?php get_footer(); ?>