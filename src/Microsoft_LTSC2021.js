"use strict";

const https = require("https");

const getBranch = "Microsoft::LTSC2021" + " ";
const getFFN = "86752282-5841-4120-ac80-db03ae6b5fdb";

const getLastUpdated = "--------------";
const getBuild = "----------------";

function print(getBranch, getBuild, getLastUpdated, getFFN) {
    console.log(getBranch + "  " + getBuild + "  " + getLastUpdated + "  " + getFFN);
}

https.get("https://mrodevicemgr.officeapps.live.com/mrodevicemgrsvc/api/v2/C2RReleaseData?audienceFFN=" + getFFN, (getResponse) => {
    getResponse.on("data", (getData) => {
        if (getResponse.statusCode === 200) {
            const getParsedData = JSON.parse(getData);

            const getYear = getParsedData.TimestampUtc.substring(6, 10);
            const getMonth = getParsedData.TimestampUtc.substring(0, 2);
            const getDay = getParsedData.TimestampUtc.substring(3, 5);
            const getHour = getParsedData.TimestampUtc.substring(11, 13);
            const getMinute = getParsedData.TimestampUtc.substring(14, 16);

            const getDate = getDay + "." + getMonth + "." + getYear;
            const getTime = getHour + ":" + getMinute;

            const getLastUpdated = getDate + " " + getTime;

            const getBuild = getParsedData.AvailableBuild;

            print(getBranch, getBuild, getLastUpdated, getFFN);
        } else {
            print(getBranch, getBuild, getLastUpdated, getFFN);
        }
    });
}).on("error", (getError) => {
    print(getBranch, getBuild, getLastUpdated, getFFN);
});
