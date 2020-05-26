namespace cap.prototype.device;

using {
    cuid,
    managed,
    Language,
    sap.common.CodeList
} from '@sap/cds/common';

entity Devices : cuid, managed {
    name  : String;
    descr : String;
    Configurations: Composition of many DeviceConfigurations
    on Configurations.device = $self;
}

@cds.autoexpose
entity DeviceConfigurations : cuid {
    device    : Association to Devices;
    fieldName : String;
    label     : Association to Labels;
}

@cds.autoexpose
entity Labels : managed {
    key ID     : UUID;
        short  : localized String(20);
        medium : localized String(40);
        long   : localized String(60);
}
