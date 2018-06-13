{*
* 2007-2016 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2016 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<!-- Block Newsletter module-->

<div id="newsletter_block_left" class="block">
	<h4 class="title_block">{l s='Newsletter' mod='blocknewsletter'}</h4>
	<div class="block_content newsletter-form">

		<form action="{$link->getPageLink('index', true)|escape:'html'}" method="post">
			
				<input class="inputNew" id="newsletter-input" type="text" name="email" size="18" placeholder="{l s='your e-mail' mod='blocknewsletter'}" />
				<button type="submit" name="submitNewsletter" class="btn btn-default btn-sm"></button>
				<input type="hidden" name="action" value="0" />
                <span class="newsletter-alert"></span>
			
		</form>
	</div>
</div>

<!-- /Block Newsletter module-->

<button type="submit" name="submitNewsletter" class="btn btn-default btn-sm">