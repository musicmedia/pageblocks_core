# ---------------------------------------------
# Config Data

# btnName```btnLocation```width
# btnLoc does not include _on|_off|_dim -- that is added by the tag
# First button MUST be named btnNavBegin.
# All image heights must be the same.
# The button name (less the `btnNav` string) must equal the form name
# so that `btnNavBegin` will open the form `form_begin.dsp`
# and `btnNavFilters` will open the form `form_filters.dsp`
# the button image file name can be anything

{nav_imageType===.gif}

{nav_imageHeight===22}

{nav_inputList===
	fw_s===[var:'fw_s']
}

{nav_imageList===

imgFill```[($fw_mPath->'edp_navImgs') + 'tab_fill']```10

btnNavBegin```[($fw_mPath->'edp_navImgs') + 'tab_auth']```71
imgFill```[($fw_mPath->'edp_navImgs') + 'tab_fill']```3

btnNavProfile```[($fw_mPath->'edp_navImgs') + 'tab_profile']```71
imgFill```[($fw_mPath->'edp_navImgs') + 'tab_fill']```3

btnNavPrivileges```[($fw_mPath->'edp_navImgs') + 'tab_privileges']```82
imgFill```[($fw_mPath->'edp_navImgs') + 'tab_fill']```3

btnNavFilters```[($fw_mPath->'edp_navImgs') + 'tab_filters']```71
imgFill```[($fw_mPath->'edp_navImgs') + 'tab_fill']```3

imgFill```[($fw_mPath->'edp_navImgs') + 'tab_fill']```274

btnNavSummary```[($fw_mPath->'edp_navImgs') + 'tab_summary']```99
imgFill```[($fw_mPath->'edp_navImgs') + 'tab_fill']```10
}

# ---------------------------------------------
# Display Code

<div id="edpcntlbarnav">
{edp_navCntlbar_buttons}
</div>