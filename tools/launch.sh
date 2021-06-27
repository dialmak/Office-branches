echo > defconfig
{
	echo "Channel Name                                        |Audience Data       |Available Build |Timestamp (UTC) |Audience ID                         |"
	echo "------------                                        |-------------       |--------------- |--------------- |-----------                         |"
    node src/Dogfood_DevMain.js
    node src/Dogfood_CC.js
    node src/Dogfood_DCEXT.js
    node src/Dogfood_FRDC.js
    echo ""
    node src/Microsoft_DevMain.js
    node src/Microsoft_CC.js
    node src/Microsoft_LTSC2021.js
    node src/Microsoft_FRDC.js
    node src/Microsoft_DC.js
    node src/Microsoft_LTSC.js
    echo ""
    node src/Insiders_DevMain.js
    node src/Insiders_CC.js
    node src/Insiders_FRDC.js
    node src/Insiders_LTSC.js
    echo ""
    node src/Production_CC.js
    node src/Production_LTSC2021.js
    node src/Production_MEC.js
    node src/Production_DC.js
    node src/Production_LTSC.js
	echo "---------------------------------"
	echo Last updated $(date)
} > defconfig
{
	echo "Channel Name                                        |Audience Data       |Available Build |Timestamp (UTC) |Audience ID                         |"
	echo "------------                                        |-------------       |--------------- |--------------- |-----------                         |"
    node src/Dogfood_DevMain_7.js
    node src/Dogfood_CC_7.js
    node src/Dogfood_DCEXT_7.js
    node src/Dogfood_FRDC_7.js
    echo ""
    node src/Microsoft_DevMain_7.js
    node src/Microsoft_CC_7.js
    node src/Microsoft_FRDC_7.js
    node src/Microsoft_DC_7.js
    echo ""
    node src/Insiders_DevMain_7.js
    node src/Insiders_CC_7.js
    node src/Insiders_FRDC_7.js
    echo ""
    node src/Production_CC_7.js
    node src/Production_MEC_7.js
    node src/Production_DC_7.js
	echo "---------------------------------"
	echo Last updated $(date)
} > defconfig_win7
echo $(date) > description
