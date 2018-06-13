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
<div id="newsletter_block_left" class="block col-xs-12">
	<div class="newsletter-block mx-auto">
		<h4>{l s='Newsletter' mod='blocknewsletter'}</h4>
		<div class="block_content newsletter-form">
			<form class="m-b10" action="{$link->getPageLink('index', null, null, null, false, null, true)|escape:'html':'UTF-8'}" method="post">
				<div class="input-group{if isset($msg) && $msg } {if $nw_error}input-error{else}input-ok{/if}{/if}" >
					<input class="inputNew form-control grey newsletter-input col-xs-6" id="newsletter-input" type="email" name="email" size="18" placeholder="{if isset($msg) && $msg}{$msg}{elseif isset($value) && $value}{$value}{else}{l s='Enter your e-mail' mod='blocknewsletter'}{/if}" />
					<input type="text" name="postcode" class="postcode inputNew form-control grey newsletter-input col-xs-6" placeholder="Kod pocztowy">
					<input type="hidden" name="action" value="0" />
				</div>
				<span class="input-group-btn">
					<button type="submit" name="submitNewsletter" gender="2" class="btn btn-primary text-uppercase col-xs-6"><span class="hidden-xs"> Dla kobiet </span><i class="icon icon-envelope visible-xs"></i>
                	</button>
                	<button type="submit" name="submitNewsletter" gender="1" class="btn btn-primary text-uppercase col-xs-6"><span class="hidden-xs"> Dla mężczyzn </span><i class="icon icon-envelope visible-xs"></i>
                	</button>
                </span>
				<span class="newsletter-alert"></span>
			</form>
		</div>
		<span class="h4">Přihlaste se k odběru novinek a ukořistěte slevu <strong>200 Kč</strong></span>
	    {hook h="displayBlockNewsletterBottom" from='blocknewsletter'}
    </div>
</div>
<!-- /Block Newsletter module-->
{strip}
{if isset($msg) && $msg}
{addJsDef msg_newsl=$msg|@addcslashes:'\''}
{/if}
{if isset($nw_error)}
{addJsDef nw_error=$nw_error}
{/if}
{addJsDefL name=placeholder_blocknewsletter}{l s='Enter your e-mail' mod='blocknewsletter' js=1}{/addJsDefL}
{if isset($msg) && $msg}
	{addJsDefL name=alert_blocknewsletter}{l s='Newsletter : %1$s' sprintf=$msg js=1 mod="blocknewsletter"}{/addJsDefL}
{/if}

{addJsDef this_path=$this_path}

{/strip}