<?php
/**
 * The template for displaying the footer.
 *
 *
 * @package WordPress
 * @subpackage Raw
 * @since Raw 1.0
 */
?>

<?php
if((is_page_template('page-udt_portfolio-index.php') && returnOptionValue('portfolio_index_layout')=='portfolio-full-width-grid') ||
	(is_front_page() && !is_home() && returnOptionValue('frontpage_layout')=='portfolio-full-width-grid')) {
} else {
?>
<div id="footer-wrapper">
	
	<?php get_sidebar('footer'); ?>

	<div id="footer-bottom">

		<div id="footer-bottom-inner-wrapper">

			<footer>

				<!--copyright info-->
				<p class="footer-copyright"><?php echo do_shortcode(stripslashes(html_entity_decode(returnOptionValue('footer_copyright'),ENT_QUOTES,"UTF-8"))); ?></p>

			</footer>

			<a class="back-to-top" title="<?php _e('Back to top', 'raw'); ?>" href="#"><?php _e('Back to top', 'raw'); ?></a>

		</div>

	</div>

</div>
<?php } ?>

<?php
/* Always have wp_footer() just before the closing </body>
 * tag of your theme, or you will break many plugins, which
 * generally use this hook to reference JavaScript files.
 */
wp_footer();
?>

</body>
</html>