
using { cap.prototype.device } from '../db/schema';

service DevicesService {

    entity Devices as projection on device.Devices;
    

}
