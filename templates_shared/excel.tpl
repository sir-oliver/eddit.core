<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
	<TITLE>Export {$title|upper}</TITLE>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	{literal}
	<style type="text/css" media="all">
	table {
		mso-displayed-decimal-separator:"\,";
		mso-displayed-thousand-separator:"\.";
	}
	td {
		text-align: left;
		vertical-align: top;
	}
	.num {
		mso-number-format:0;
	}
	.literal,
	.selectSingle,
	.radios,
	.switcher,
	.text {
		mso-font-charset:0;
		mso-number-format:"\@";
	}
	.date_short {
		mso-number-format:"Short Date";
	}
	.date,
	.timestamp,
	.datetime {
		mso-number-format:"d\.m\.yyyy\ hh\:mm";
	}
	</style>
	{/literal}
	<!-- http://cosicimiento.blogspot.co.at/2008/11/styling-excel-cells-with-mso-number.html -->
</HEAD>
<BODY>
<table cellpadding="2" cellspacing="0" border="1">
<tr>
{foreach from=$columns item='c'}
	<th class="txt">{$c.description}</th>
{/foreach}
</tr>
{foreach from=$data item='row'}
<tr>
{foreach from=$row key='field' item='d'}
	<td class="{$columns.$field.formtype}">{$d}</td>
{/foreach}
</tr>
{/foreach}
</table>
</BODY>
</HTML>