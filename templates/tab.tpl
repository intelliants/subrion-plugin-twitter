{if 'members' == $item.item && isset($item.twitter) && $item.twitter}
	<div class="ia-wrap" id="member-twitter-timeline">
		<a class="twitter-timeline" href="https://twitter.com/{$item.twitter}"
			data-chrome="noborders noheader"
			data-widget-id="{$core.config.twitter_widget_id}"
			data-tweet-limit="{$core.config.number_of_tweets}"
			data-theme="{$core.config.twitter_theme}"
			data-screen-name="{$item.twitter}"
			lang="{$core.config.twitter_lang}">Tweets by @{$item.twitter}</a>
	</div>

	{ia_add_js}
		$('#tab-fieldgroup_twitter').append($('#member-twitter-timeline'));
		$('#twitter_fieldzone').parent().hide();
	{/ia_add_js}
{/if}