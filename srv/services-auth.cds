using { AccountsService } from './accounts-service';
using { UsersService } from './users-service';

annotate AccountsService with @(requires : 'authenticated-user');
annotate UsersService with @(requires : 'authenticated-user');