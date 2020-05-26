## CDS service crashes at run time

When an incorrect format for an Association is provided during a POST request for an Entity, the CDS service 
crashes instead of returning an HTTP response with desired error information. 
The expected handling is that the CDS service does not crashes and an HTTP 500 server error is returned.

Please refer to ```db/schema.cds```, ```DeviceConfigurations``` entity which has an ```Association for Labels``` entity. 
In the ```test/device.http``` test file, please observe how the data for a label assoication is passed. 

Following is the resulting error:

```POST /devices/Devices```

```
[2020-05-26T07:32:49.854Z | ERROR | 1244619]: Cannot read property 'links' of undefined
[INTERNAL ERROR] TypeError: Cannot read property 'links' of undefined
    at _toOneKeys (/home/user/projects/cap-usage-prototyping.git/node_modules/@sap/cds-runtime/lib/cds-sql/composition/compositionTree.js:393:8)
    at propagateKeys (/home/user/projects/cap-usage-prototyping.git/node_modules/@sap/cds-runtime/lib/cds-sql/composition/compositionTree.js:443:23)
    at _deepProcessWithDiffComposition (/home/user/projects/cap-usage-prototyping.git/node_modules/@sap/cds-runtime/lib/cds-services/util/dataProcessUtils.js:51:3)
    at Object.keys.forEach.key (/home/user/projects/cap-usage-prototyping.git/node_modules/@sap/cds-runtime/lib/cds-services/util/dataProcessUtils.js:84:9)
    at Array.forEach (<anonymous>)
    at data.forEach.entry (/home/user/projects/cap-usage-prototyping.git/node_modules/@sap/cds-runtime/lib/cds-services/util/dataProcessUtils.js:80:40)
    at Array.forEach (<anonymous>)
    at processDeepWithDiff (/home/user/projects/cap-usage-prototyping.git/node_modules/@sap/cds-runtime/lib/cds-services/util/dataProcessUtils.js:73:8)
    at processDeepWithDiff (/home/user/projects/cap-usage-prototyping.git/node_modules/@sap/cds-runtime/lib/cds-services/util/dataProcessUtils.js:69:5)
    at fillDataDeep (/home/user/projects/cap-usage-prototyping.git/node_modules/@sap/cds-runtime/lib/cds-services/util/dataProcessUtils.js:164:3)
Please report this error.
```
