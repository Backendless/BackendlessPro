USE `main_backendless`;

INSERT INTO `Version` (`main`, `application`) values (78, 116);

INSERT INTO `DeveloperStatus` (`id`, `name`) VALUES ('1', 'ACTIVE');
INSERT INTO `DeveloperStatus` (`id`, `name`) VALUES ('2', 'SUSPENDED');
INSERT INTO `DeveloperStatus` (`id`, `name`) VALUES ('3', 'INVITED');
INSERT INTO `DeveloperStatus` (`id`, `name`) VALUES ('4', 'PANIC');

INSERT INTO `DeveloperOperation` VALUES ('1','INVITE_REMOVE_TEAM_MEMBER');
INSERT INTO `DeveloperOperation` VALUES ('102','STORED_PROCEDURE');
INSERT INTO `DeveloperOperation` VALUES ('106','VIEW_DIRECTORY_CONTENT');
INSERT INTO `DeveloperOperation` VALUES ('11','DELETE_APPLICATION');
INSERT INTO `DeveloperOperation` VALUES ('110','RENAME_APPLICATION');
INSERT INTO `DeveloperOperation` VALUES ('13','APP_RESET');
INSERT INTO `DeveloperOperation` VALUES ('14','CHANGE_LIMIT_NOTIFICATION');
INSERT INTO `DeveloperOperation` VALUES ('17','CHANGE_LOG_CONFIG');
INSERT INTO `DeveloperOperation` VALUES ('18','DELETE_LOGGERS');
INSERT INTO `DeveloperOperation` VALUES ('19','CHANGE_LOG_INTEGRATIONS');
INSERT INTO `DeveloperOperation` VALUES ('22','MARKETPLACE_PURCHASE');
INSERT INTO `DeveloperOperation` VALUES ('23','MARKETPLACE_DELETE_PURCHASE');
INSERT INTO `DeveloperOperation` VALUES ('24','EXPORT_APP');
INSERT INTO `DeveloperOperation` VALUES ('25','IMPORT');
INSERT INTO `DeveloperOperation` VALUES ('27','CLONE_APP');
INSERT INTO `DeveloperOperation` VALUES ('3','ASSIGN_TEAM_MEMBER_PERMISSION');
INSERT INTO `DeveloperOperation` VALUES ('31','CHANGE_USER_REGISTRATION_PROPS');
INSERT INTO `DeveloperOperation` VALUES ('32','CHANGE_LOGIN_PROPS');
INSERT INTO `DeveloperOperation` VALUES ('33','EMAIL_TEMPLATE_ACCESS');
INSERT INTO `DeveloperOperation` VALUES ('37','ADD_MODIFY_DELETE_ROLE');
INSERT INTO `DeveloperOperation` VALUES ('39','ASSIGN_ROLE_PERMISSIONS');
INSERT INTO `DeveloperOperation` VALUES ('4','MANAGE_API_KEYS');
INSERT INTO `DeveloperOperation` VALUES ('40','CREATE_MODIFY_DELETE_TABLE');
INSERT INTO `DeveloperOperation` VALUES ('42','CREATE_MODIFY_DELETE_COLUMN');
INSERT INTO `DeveloperOperation` VALUES ('44','CREATE_MODIFY_DELETE_TABLE_PERMISSIONS');
INSERT INTO `DeveloperOperation` VALUES ('46','CREATE_DELETE_UPDATE_OBJECTS');
INSERT INTO `DeveloperOperation` VALUES ('47','CHANGE_DYNAMIC_SCHEMA_DEFINITION');
INSERT INTO `DeveloperOperation` VALUES ('5','MANAGE_OAUTH_PROVIDERS');
INSERT INTO `DeveloperOperation` VALUES ('54','CREATE_MODIFY_DELETE_OWNER_PERMISSIONS');
INSERT INTO `DeveloperOperation` VALUES ('57','MANAGE_DIRECTORIES_AND_FILES');
INSERT INTO `DeveloperOperation` VALUES ('59','UPLOAD_CREATE_FILES');
INSERT INTO `DeveloperOperation` VALUES ('6','CHANGE_MOBILE_SETTINGS');
INSERT INTO `DeveloperOperation` VALUES ('60','MANAGE_FILE_PERMISSIONS');
INSERT INTO `DeveloperOperation` VALUES ('67','CREATE_MODIFY_CHANEL');
INSERT INTO `DeveloperOperation` VALUES ('69','SEND_MESSAGE_TO_CHANNEL');
INSERT INTO `DeveloperOperation` VALUES ('7','CHANGE_EMAIL_SETTINGS');
INSERT INTO `DeveloperOperation` VALUES ('70','MANAGE_MESSAGING_CHANNEL_PERMISSIONS');
INSERT INTO `DeveloperOperation` VALUES ('71','CREATE_MODIFY_DELETE_PUSH_TEMPLATE');
INSERT INTO `DeveloperOperation` VALUES ('73','CREATE_MODIFY_DELETE_PUSH_BUTTON');
INSERT INTO `DeveloperOperation` VALUES ('75','CREATE_MODIFY_DELETE_CHANEL_OPTIONS');
INSERT INTO `DeveloperOperation` VALUES ('77','SEND_PUSH_BY_TEMPLATE');
INSERT INTO `DeveloperOperation` VALUES ('8','CHANGE_CORS_DOMAIN_CONTROL');
INSERT INTO `DeveloperOperation` VALUES ('9','CHANGE_CUSTOM_DOMAIN');
INSERT INTO `DeveloperOperation` VALUES ('93','MODIFY_BL');
INSERT INTO `DeveloperOperation` VALUES ('94','PUBLISH_TO_MARKETPLACE');
INSERT INTO `DeveloperOperation` VALUES ('96','RUN_TIMER');
INSERT INTO `DeveloperOperation` VALUES ('97','INVOKE_EVENT_WITH_MODEL');
INSERT INTO `DeveloperOperation` VALUES ('98','DELETE_FROM_MARKETPLACE');
INSERT INTO `DeveloperOperation` VALUES ('99','CREATE_MODIFY_DELETE_DATA_CONNECTOR');
INSERT INTO `DeveloperOperation` VALUES ('107','LOGOUT_ALL_USERS');
INSERT INTO `DeveloperOperation` VALUES ('108','CREATE_BLUE_PRINT');
INSERT INTO `DeveloperOperation` VALUES ('109','MODIFY_COLUMNS_VISIBILITY');
INSERT INTO `DeveloperOperation` VALUES ('111','PUBLISH_UI_CONTAINERS');
INSERT INTO DeveloperOperation VALUES ('112','ENABLE_PANIC');
INSERT INTO DeveloperOperation VALUES ('113','MANAGE_AUTH0_SECURITY');
INSERT INTO `DeveloperOperation` VALUES ('114','HIPAA_COMPLIANCE');
INSERT INTO `DeveloperOperation` VALUES ('115','DELETE_AUDIT_LOGS');
INSERT INTO `DeveloperOperation` VALUES ('116','CHANGE_CACHE_CONTROL');
INSERT INTO `DeveloperOperation` VALUES ('117','CREATE_MODIFY_DELETE_FLOW');


INSERT INTO `DeveloperWorkspaceOperation` VALUES ('1','INVITE_REMOVE_TEAM_MEMBER');
INSERT INTO `DeveloperWorkspaceOperation` VALUES ('2','ASSIGN_TEAM_MEMBER_PERMISSION');
INSERT INTO `DeveloperWorkspaceOperation` VALUES ('3','DELETE_WORKSPACE');
INSERT INTO `DeveloperWorkspaceOperation` VALUES ('4','RENAME_WORKSPACE');
INSERT INTO `DeveloperWorkspaceOperation` VALUES ('5','CHANGE_LIMIT_NOTIFICATION');
INSERT INTO `DeveloperWorkspaceOperation` VALUES ('7','MARKETPLACE_PURCHASE');
INSERT INTO `DeveloperWorkspaceOperation` VALUES ('8','MARKETPLACE_DELETE_PURCHASE');
INSERT INTO `DeveloperWorkspaceOperation` VALUES ('9','CREATE_MODIFY_DELETE_FLOW');


INSERT INTO `main_backendless`.`ClusterZone` VALUES (1, 'Main', 'Main Cluster', 'backendless.local', 'http://backendless.local:9000', null, null, true, null);


-- MySQL Script generated by MySQL Workbench
-- Mon 11 Dec 2017 02:23:23 PM EET
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

-- -----------------------------------------------------
-- Schema main_application
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `main_application` ;
CREATE SCHEMA IF NOT EXISTS `main_application` ;

USE `main_application` ;

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';


-- -----------------------------------------------------
-- Table `AccountType`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AccountType` ;

CREATE TABLE IF NOT EXISTS `AccountType` (
                                             `id` INT NOT NULL,
                                             `name` VARCHAR(45) NULL,
    PRIMARY KEY (`id`) )
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `UserStatus`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `UserStatus` ;

CREATE TABLE IF NOT EXISTS `UserStatus` (
                                            `id` INT NOT NULL,
                                            `name` VARCHAR(45) NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `User`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `User` ;

CREATE TABLE IF NOT EXISTS `User` (
    `id` VARCHAR(100) NOT NULL,
    `loggedIn` TINYINT(1) NOT NULL DEFAULT 0,
    `failedLoginCount` INT NOT NULL DEFAULT 0,
    `logsCount` INT NOT NULL DEFAULT 0,
    `default` TINYINT(1) NOT NULL DEFAULT 0,
    `accountTypeId` INT NOT NULL DEFAULT 1,
    `userStatusId` INT NULL DEFAULT 1,
    `lastLogin` DATETIME NULL,
    `lastTimeReturningCount` DATETIME NULL,
    `oAuthIdentities` json NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_User_AccountType1`
    FOREIGN KEY (`accountTypeId`)
    REFERENCES `AccountType` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_User_UserStatus1`
    FOREIGN KEY (`userStatusId`)
    REFERENCES `UserStatus` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;

CREATE INDEX `fk_User_AccountType1_idx` ON `User` (`accountTypeId` ASC);

CREATE INDEX `fk_User_UserStatus1_idx` ON `User` (`userStatusId` ASC);


-- -----------------------------------------------------
-- Table `AppHosting`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AppHosting` ;

CREATE TABLE IF NOT EXISTS `AppHosting` (
    `id` VARCHAR(100) NOT NULL,
    `rootPath` VARCHAR(200) NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DeploymentType`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DeploymentType` ;

CREATE TABLE IF NOT EXISTS `DeploymentType` (
    `id` VARCHAR(100) NOT NULL,
    `name` VARCHAR(45) NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Deployment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Deployment` ;

CREATE TABLE IF NOT EXISTS `Deployment` (
    `id` VARCHAR(100) NOT NULL,
    `deploymentTypeId` VARCHAR(100) NOT NULL,
    `username` VARCHAR(45) NULL,
    `password` VARCHAR(45) NULL,
    `deploymentURL` VARCHAR(45) NULL,
    `appHostingId` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_Deployment_DeploymentType1`
    FOREIGN KEY (`deploymentTypeId`)
    REFERENCES `DeploymentType` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_Deployment_AppHosting1`
    FOREIGN KEY (`appHostingId`)
    REFERENCES `AppHosting` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;

CREATE INDEX `fk_Deployment_DeploymentType1_idx` ON `Deployment` (`deploymentTypeId` ASC);

CREATE INDEX `fk_Deployment_AppHosting1_idx` ON `Deployment` (`appHostingId` ASC);


-- -----------------------------------------------------
-- Table `DataColumnType`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DataColumnType` ;

CREATE TABLE IF NOT EXISTS `DataColumnType` (
    `id` VARCHAR(100) NOT NULL COMMENT 'possible values:\ninteger\nstring\nboolean\ndatetime\none to many relationship\nmany to many relationsip\none to one relationship',
    `columnType` VARCHAR(45) NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ExternalAuthProtocolType`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ExternalAuthProtocolType` ;

CREATE TABLE IF NOT EXISTS `ExternalAuthProtocolType` (
    `id` VARCHAR(100) NOT NULL COMMENT 'there are two options Backendless REST and OAth',
    `name` VARCHAR(45) NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LoginSettings`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LoginSettings` ;

CREATE TABLE IF NOT EXISTS `LoginSettings` (
    `id` VARCHAR(100) NOT NULL,
    `enableExternalAuth` TINYINT(1) NOT NULL DEFAULT 0,
    `externalAuthURL` VARCHAR(512) NULL,
    `externalAuthProtocolTypeId` VARCHAR(100) NULL,
    `enableMultipleLogin` TINYINT(1) NOT NULL DEFAULT 0,
    `logoutLastUser` TINYINT(1) NOT NULL DEFAULT 1,
    `enableSessionExpiration` TINYINT(1) NOT NULL DEFAULT 0,
    `useAuthorizationCookie` BOOLEAN NOT NULL DEFAULT false,
    `sessionTimeout` INT NULL,
    `failedLoginsLock` INT NOT NULL DEFAULT 0 COMMENT 'value of 0 indicated unlimited failed logins',
    `unlockWaitingTime` INT NULL,
    `enableLogin` TINYINT(1) NOT NULL DEFAULT 1,
    `mailUserForFirstTimeLogin` TINYINT(1) NOT NULL DEFAULT 0,
    `mailUserForXTimeLogin` INT NOT NULL DEFAULT 0 COMMENT 'if mailUserForXTimeLogin == 0 then do not mail user',
    `maxConcurrentLogins` INT NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_LoginSettings_ExternalAuthTypes1`
    FOREIGN KEY (`externalAuthProtocolTypeId`)
    REFERENCES `ExternalAuthProtocolType` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;

CREATE INDEX `fk_LoginSettings_ExternalAuthTypes1_idx` ON `LoginSettings` (`externalAuthProtocolTypeId` ASC);


-- -----------------------------------------------------
-- Table `UserRegistrationSettings`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `UserRegistrationSettings` ;

CREATE TABLE IF NOT EXISTS `UserRegistrationSettings` (
    `id` VARCHAR(100) NOT NULL,
    `userRegistration` TINYINT(1) NOT NULL DEFAULT 1 COMMENT 'when false, new user registration is disabled',
    `userEmailConfirmation` TINYINT(1) NOT NULL DEFAULT 1 COMMENT 'when true, email address for new user registration must be confirmed',
    `enableDynamicUserProperties` TINYINT(1) NOT NULL DEFAULT 1,
    `userIdentityColumnId` VARCHAR(36) NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Event`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Event` ;

CREATE TABLE IF NOT EXISTS `Event` (
                                       `id` INT NOT NULL,
                                       `name` VARCHAR(45) NULL,
    `subject` VARCHAR(100) NULL,
    `body` TEXT NULL,
    `triggersEmail` TINYINT(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MessagingChannel`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `MessagingChannel` ;

CREATE TABLE IF NOT EXISTS `MessagingChannel` (
    `id` VARCHAR(100) NOT NULL,
    `name` VARCHAR(45) NOT NULL,
    `webSocketPort` INT NULL COMMENT 'a special value of 0 sets WebSockets as disabled ',
    `enablePollingAccess` TINYINT(1) NULL,
    `rtmpPort` INT NULL COMMENT 'a special value of 0 sets RTMP as disabled ',
    `connectorId` VARCHAR(45) NOT NULL DEFAULT 'internal',
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;

CREATE UNIQUE INDEX `name_UNIQUE` ON `MessagingChannel` (`name` ASC);


-- -----------------------------------------------------
-- Table `Role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Role` ;

CREATE TABLE IF NOT EXISTS `Role` (
    `id` VARCHAR(100) NOT NULL,
    `name` VARCHAR(70) NOT NULL,
    `systemRole` TINYINT(1) NOT NULL DEFAULT 0,
    `longValue` BIGINT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;

CREATE UNIQUE INDEX `name_UNIQUE` ON `Role` (`name` ASC);


-- -----------------------------------------------------
-- Table `RoleToUser`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `RoleToUser` ;

CREATE TABLE IF NOT EXISTS `RoleToUser` (
    `roleId` VARCHAR(100) NOT NULL,
    `userId` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`roleId`, `userId`),
    CONSTRAINT `fk_Role_has_User_Role1`
    FOREIGN KEY (`roleId`)
    REFERENCES `Role` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_Role_has_User_User1`
    FOREIGN KEY (`userId`)
    REFERENCES `User` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;

CREATE INDEX `fk_Role_has_User_User1_idx` ON `RoleToUser` (`userId` ASC);

CREATE INDEX `fk_Role_has_User_Role1_idx` ON `RoleToUser` (`roleId` ASC);


-- -----------------------------------------------------
-- Table `ChannelOperation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ChannelOperation` ;

CREATE TABLE IF NOT EXISTS `ChannelOperation` (
    `id` VARCHAR(100) NOT NULL,
    `name` VARCHAR(45) NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PermissionType`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `PermissionType` ;

CREATE TABLE IF NOT EXISTS `PermissionType` (
    `id` VARCHAR(100) NOT NULL COMMENT 'there are three types: Grant, Deny, Inherit\n',
    `name` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `UserChannelPermission`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `UserChannelPermission` ;

CREATE TABLE IF NOT EXISTS `UserChannelPermission` (
    `userId` VARCHAR(100) NOT NULL,
    `channelOperationId` VARCHAR(100) NOT NULL,
    `permissionTypeId` VARCHAR(100) NOT NULL,
    `messagingChannelId` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`userId`, `channelOperationId`, `messagingChannelId`),
    CONSTRAINT `fk_UserChannelPermission_PermissionType1`
    FOREIGN KEY (`permissionTypeId`)
    REFERENCES `PermissionType` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_UserChannelPermission_MessagingChannel1`
    FOREIGN KEY (`messagingChannelId`)
    REFERENCES `MessagingChannel` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_UserChannelPermission_User1`
    FOREIGN KEY (`userId`)
    REFERENCES `User` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_UserChannelPermission_ChannelPermission1`
    FOREIGN KEY (`channelOperationId`)
    REFERENCES `ChannelOperation` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;

CREATE INDEX `fk_UserChannelPermission_PermissionType1_idx` ON `UserChannelPermission` (`permissionTypeId` ASC);

CREATE INDEX `fk_UserChannelPermission_MessagingChannel1_idx` ON `UserChannelPermission` (`messagingChannelId` ASC);

CREATE INDEX `fk_UserChannelPermission_User1_idx` ON `UserChannelPermission` (`userId` ASC);

CREATE INDEX `fk_UserChannelPermission_ChannelPermission1_idx` ON `UserChannelPermission` (`channelOperationId` ASC);


-- -----------------------------------------------------
-- Table `RoleChannelPermission`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `RoleChannelPermission` ;

CREATE TABLE IF NOT EXISTS `RoleChannelPermission` (
    `roleId` VARCHAR(100) NOT NULL,
    `channelOperationId` VARCHAR(100) NOT NULL,
    `permissionTypeId` VARCHAR(100) NOT NULL,
    `messagingChannelId` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`roleId`, `channelOperationId`, `messagingChannelId`),
    CONSTRAINT `fk_RoleChannelPermission_PermissionType1`
    FOREIGN KEY (`permissionTypeId`)
    REFERENCES `PermissionType` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_RoleChannelPermission_MessagingChannel1`
    FOREIGN KEY (`messagingChannelId`)
    REFERENCES `MessagingChannel` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_RoleChannelPermission_Role1`
    FOREIGN KEY (`roleId`)
    REFERENCES `Role` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_RoleChannelPermission_ChannelPermission1`
    FOREIGN KEY (`channelOperationId`)
    REFERENCES `ChannelOperation` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;

CREATE INDEX `fk_RoleChannelPermission_PermissionType1_idx` ON `RoleChannelPermission` (`permissionTypeId` ASC);

CREATE INDEX `fk_RoleChannelPermission_MessagingChannel1_idx` ON `RoleChannelPermission` (`messagingChannelId` ASC);

CREATE INDEX `fk_RoleChannelPermission_Role1_idx` ON `RoleChannelPermission` (`roleId` ASC);

CREATE INDEX `fk_RoleChannelPermission_ChannelPermission1_idx` ON `RoleChannelPermission` (`channelOperationId` ASC);


-- -----------------------------------------------------
-- Table `DataConnector`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DataConnector` ;

CREATE TABLE IF NOT EXISTS `DataConnector` (
    `id` VARCHAR(36) NOT NULL,
    `templateId` INT NOT NULL DEFAULT 0,
    `name` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`));

CREATE UNIQUE INDEX `name_UNIQUE` ON `DataConnector` (`name` ASC);


-- -----------------------------------------------------
-- Table `UserDataTable`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `UserDataTable` ;

CREATE TABLE IF NOT EXISTS `UserDataTable` (
    `id` VARCHAR(100) NOT NULL,
    `name` VARCHAR(174) NOT NULL,
    `originalName` VARCHAR(128) NULL,
    `isView` TINYINT(1) NOT NULL DEFAULT 0,
    `connectorId` VARCHAR(36) NULL DEFAULT NULL,
    `metaInfo` json NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_user_data_table_to_data_connector_id`
    FOREIGN KEY (`connectorId`)
    REFERENCES `DataConnector` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
    ENGINE = InnoDB;

CREATE INDEX `fk_user_data_table_to_data_connector_id_idx` ON `UserDataTable` (`connectorId` ASC);

CREATE UNIQUE INDEX `name_UNIQUE` ON `UserDataTable` (`name` ASC);


-- -----------------------------------------------------
-- Table `UserDataTableColumn`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `UserDataTableColumn` ;

CREATE TABLE IF NOT EXISTS `UserDataTableColumn` (
    `id` VARCHAR(100) NOT NULL,
    `name` VARCHAR(64) NULL,
    `originalName` VARCHAR(64) NULL,
    `dataColumnTypeId` VARCHAR(100) NOT NULL,
    `userDataTableId` VARCHAR(100) NOT NULL,
    `defaultValue` VARCHAR(500) NULL,
    `required` TINYINT(1) NOT NULL DEFAULT 0,
    `dataSize` INT NULL,
    `autoLoad` TINYINT(1) NULL,
    `customRegex` VARCHAR(2000) NULL,
    `expression` VARCHAR(2000) NULL,
    `isPrimaryKey` TINYINT(1) NULL,
    `unique` TINYINT(1) NOT NULL DEFAULT 0,
    `indexed` TINYINT(1) NOT NULL DEFAULT 0,
    `internal` BOOLEAN DEFAULT false,
    `metaInfo` json NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_UserDataTable_UserDataColumnTypes1`
    FOREIGN KEY (`dataColumnTypeId`)
    REFERENCES `DataColumnType` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_UserDataTableColumn_UserDataTable1`
    FOREIGN KEY (`userDataTableId`)
    REFERENCES `UserDataTable` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT )
    ENGINE = InnoDB;

CREATE INDEX `fk_UserDataTable_UserDataColumnTypes1_idx` ON `UserDataTableColumn` (`dataColumnTypeId` ASC);

CREATE INDEX `fk_UserDataTableColumn_UserDataTable1_idx` ON `UserDataTableColumn` (`userDataTableId` ASC);

CREATE UNIQUE INDEX `name_UNIQUE` ON `UserDataTableColumn` (`name` ASC, `userDataTableId` ASC);


-- -----------------------------------------------------
-- Table `DataTableOperation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DataTableOperation` ;

CREATE TABLE IF NOT EXISTS `DataTableOperation` (
    `id` VARCHAR(100) NOT NULL,
    `name` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `UserDataTablePermission`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `UserDataTablePermission` ;

CREATE TABLE IF NOT EXISTS `UserDataTablePermission` (
    `userId` VARCHAR(100) NOT NULL,
    `userDataTableId` VARCHAR(100) NOT NULL,
    `dataTableOperationId` VARCHAR(100) NOT NULL,
    `permissionTypeId` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`userId`, `userDataTableId`, `dataTableOperationId`),
    CONSTRAINT `fk_UserDataTablePermission_PermissionType1`
    FOREIGN KEY (`permissionTypeId`)
    REFERENCES `PermissionType` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_UserDataTablePermission_User1`
    FOREIGN KEY (`userId`)
    REFERENCES `User` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_UserDataTablePermission_DataTablePermission1`
    FOREIGN KEY (`dataTableOperationId`)
    REFERENCES `DataTableOperation` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_UserDataTablePermission_UserDataTable1`
    FOREIGN KEY (`userDataTableId`)
    REFERENCES `UserDataTable` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;

CREATE INDEX `fk_UserDataTablePermission_PermissionType1_idx` ON `UserDataTablePermission` (`permissionTypeId` ASC);

CREATE INDEX `fk_UserDataTablePermission_User1_idx` ON `UserDataTablePermission` (`userId` ASC);

CREATE INDEX `fk_UserDataTablePermission_DataTablePermission1_idx` ON `UserDataTablePermission` (`dataTableOperationId` ASC);

CREATE INDEX `fk_UserDataTablePermission_UserDataTable1_idx` ON `UserDataTablePermission` (`userDataTableId` ASC);


-- -----------------------------------------------------
-- Table `RoleDataTablePermission`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `RoleDataTablePermission` ;

CREATE TABLE IF NOT EXISTS `RoleDataTablePermission` (
    `roleId` VARCHAR(100) NOT NULL,
    `dataTableOperationId` VARCHAR(100) NOT NULL,
    `userDataTableId` VARCHAR(100) NOT NULL,
    `permissionTypeId` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`roleId`, `dataTableOperationId`, `userDataTableId`),
    CONSTRAINT `fk_RoleDataTablePermission_PermissionType1`
    FOREIGN KEY (`permissionTypeId`)
    REFERENCES `PermissionType` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_RoleDataTablePermission_Role1`
    FOREIGN KEY (`roleId`)
    REFERENCES `Role` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_RoleDataTablePermission_DataTablePermission1`
    FOREIGN KEY (`dataTableOperationId`)
    REFERENCES `DataTableOperation` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_RoleDataTablePermission_UserDataTable1`
    FOREIGN KEY (`userDataTableId`)
    REFERENCES `UserDataTable` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;

CREATE INDEX `fk_RoleDataTablePermission_PermissionType1_idx` ON `RoleDataTablePermission` (`permissionTypeId` ASC);

CREATE INDEX `fk_RoleDataTablePermission_Role1_idx` ON `RoleDataTablePermission` (`roleId` ASC);

CREATE INDEX `fk_RoleDataTablePermission_DataTablePermission1_idx` ON `RoleDataTablePermission` (`dataTableOperationId` ASC);

CREATE INDEX `fk_RoleDataTablePermission_UserDataTable1_idx` ON `RoleDataTablePermission` (`userDataTableId` ASC);


-- -----------------------------------------------------
-- Table `UserDataTableRelation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `UserDataTableRelation` ;

CREATE TABLE IF NOT EXISTS `UserDataTableRelation` (
    `foreignUserDataTableId` VARCHAR(100) NOT NULL,
    `userDataTableColumnId` VARCHAR(100) NOT NULL,
    `relationType` ENUM('ONE_TO_ONE', 'ONE_TO_MANY') NOT NULL,
    PRIMARY KEY (`userDataTableColumnId`),
    CONSTRAINT `fk_UserDataTableRelation_UserDataTable1`
    FOREIGN KEY (`foreignUserDataTableId`)
    REFERENCES `UserDataTable` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_UserDataTableRelation_UserDataTableColumn1`
    FOREIGN KEY (`userDataTableColumnId`)
    REFERENCES `UserDataTableColumn` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT )
    ENGINE = InnoDB;

CREATE INDEX `fk_UserDataTableRelation_UserDataTable1_idx` ON `UserDataTableRelation` (`foreignUserDataTableId` ASC);

CREATE INDEX `fk_UserDataTableRelation_UserDataTableColumn1_idx` ON `UserDataTableRelation` (`userDataTableColumnId` ASC);


-- -----------------------------------------------------
-- Table `udt.DeviceRegistration`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `udt.DeviceRegistration` ;

CREATE TABLE IF NOT EXISTS `udt.DeviceRegistration` (
    `objectId` VARCHAR(100) NOT NULL,
    `channelName` VARCHAR(45) NOT NULL DEFAULT 'default',
    `deviceToken` VARCHAR(256) NOT NULL,
    `deviceId` VARCHAR(45) NOT NULL,
    `operatingSystemName` CHAR(15) NOT NULL,
    `operatingSystemVersion` VARCHAR(45) NULL,
    `expiration` DATETIME NULL,
    `created` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
    `updated` DATETIME NULL,
    `ownerId` VARCHAR(100) NULL,
    PRIMARY KEY (`objectId`),
    CONSTRAINT `fk_channelName_MessagingChannel_name`
    FOREIGN KEY (`channelName`)
    REFERENCES `MessagingChannel` (`name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;

CREATE INDEX `deviceId` ON `udt.DeviceRegistration` (`deviceId` ASC);

CREATE INDEX `deviceToken` ON `udt.DeviceRegistration` (`deviceToken`(100) ASC);

CREATE INDEX `fk_channelName_MessagingChannel_name_idx` ON `udt.DeviceRegistration` (`channelName` ASC);

CREATE UNIQUE INDEX `channelName_deviceId` ON `udt.DeviceRegistration` (`channelName` ASC , `deviceId` ASC );


-- -----------------------------------------------------
-- Table `GlobalRoleDataPermission`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `GlobalRoleDataPermission` ;

CREATE TABLE IF NOT EXISTS `GlobalRoleDataPermission` (
    `roleId` VARCHAR(100) NOT NULL,
    `dataTableOperationId` VARCHAR(100) NOT NULL,
    `permissionTypeId` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`roleId`, `dataTableOperationId`),
    CONSTRAINT `fk_GlobalRoleDataPermission_Role1`
    FOREIGN KEY (`roleId`)
    REFERENCES `Role` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_GlobalRoleDataPermission_PermissionType1`
    FOREIGN KEY (`permissionTypeId`)
    REFERENCES `PermissionType` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_GlobalRoleDataPermission_DataTableOperation1`
    FOREIGN KEY (`dataTableOperationId`)
    REFERENCES `DataTableOperation` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;

CREATE INDEX `fk_GlobalRoleDataPermission_Role1_idx` ON `GlobalRoleDataPermission` (`roleId` ASC);

CREATE INDEX `fk_GlobalRoleDataPermission_PermissionType1_idx` ON `GlobalRoleDataPermission` (`permissionTypeId` ASC);


-- -----------------------------------------------------
-- Table `GlobalRoleMessagingPermission`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `GlobalRoleMessagingPermission` ;

CREATE TABLE IF NOT EXISTS `GlobalRoleMessagingPermission` (
    `roleId` VARCHAR(100) NOT NULL,
    `channelOperationId` VARCHAR(100) NOT NULL,
    `permissionTypeId` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`roleId`, `channelOperationId`),
    CONSTRAINT `fk_GlobalRoleMessagingPermission_PermissionType1`
    FOREIGN KEY (`permissionTypeId`)
    REFERENCES `PermissionType` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_GlobalRoleMessagingPermission_Role1`
    FOREIGN KEY (`roleId`)
    REFERENCES `Role` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_GlobalRoleMessagingPermission_ChannelOperation1`
    FOREIGN KEY (`channelOperationId`)
    REFERENCES `ChannelOperation` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;

CREATE INDEX `fk_GlobalRoleMessagingPermission_PermissionType1_idx` ON `GlobalRoleMessagingPermission` (`permissionTypeId` ASC);

CREATE INDEX `fk_GlobalRoleMessagingPermission_Role1_idx` ON `GlobalRoleMessagingPermission` (`roleId` ASC);

CREATE INDEX `fk_GlobalRoleMessagingPermission_ChannelOperation1_idx` ON `GlobalRoleMessagingPermission` (`channelOperationId` ASC);


-- -----------------------------------------------------
-- Table `ApiKey`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ApiKey` ;

CREATE TABLE `ApiKey` (
                          `id` varchar(100) NOT NULL,
                          `deviceType` varchar(20) NOT NULL,
                          `apiKey` varchar(100) NOT NULL,
                          `name` varchar(100) NOT NULL,
                          `roleId` varchar(100) NOT NULL,
                          PRIMARY KEY (`id`),
                          UNIQUE KEY `apiKey_UNIQUE` (`apiKey`),
                          UNIQUE KEY `name_idx` (`name`),
                          KEY `fk_ApiKey_Role` (`roleId`),
                          CONSTRAINT `fk_ApiKey_Role` FOREIGN KEY (`roleId`) REFERENCES `Role` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB;

-- -----------------------------------------------------
-- Table `OAuth2Provider`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `OAuth2Provider` ;

CREATE TABLE IF NOT EXISTS `OAuth2Provider`
(
    `id`                  integer NOT NULL,
    `name`                varchar(100) NOT NULL,
    `code`                varchar(100) NOT NULL,
    `authUrl`             varchar(500) NOT NULL,
    `clientId`            varchar(500) NOT NULL,
    `clientSecret`        varchar(500) NOT NULL,
    `redirectAfterLoginUrl` varchar(500) NULL,
    `active`              boolean NOT NULL,
    `tokenInfo`           JSON NOT NULL,
    `userInfoUrls`        JSON NOT NULL,
    `tenantBased`         boolean NOT NULL DEFAULT '0',
    `tenantDomain`        varchar(255),
    `editedInAdvancedMode` boolean NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`),
    UNIQUE KEY `name_UNIQUE` (`name`),
    UNIQUE KEY `code_UNIQUE` (`code`)
    ) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `OAuth1Provider`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `OAuth1Provider`
(
    `id`              integer      NOT NULL,
    `name`            VARCHAR(100) NOT NULL,
    `code`            VARCHAR(100) NOT NULL,
    `clientId`        VARCHAR(500) NOT NULL,
    `clientSecret`    VARCHAR(500) NOT NULL,
    `redirectAfterLoginUrl` varchar(500) NULL,
    `active`          boolean NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `name_UNIQUE` (`name`),
    UNIQUE KEY `code_UNIQUE` (`code`)
    ) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Auth0UserToUser`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Auth0UserToUser`
(
    `auth0UserId`     VARCHAR(100) NOT NULL,
    `userId`          VARCHAR(100) NOT NULL,
    PRIMARY KEY (`auth0UserId`, `userId`)
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Auth0ScopeToRole`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Auth0ScopeToRole`
(
    `id`              VARCHAR(100) NOT NULL,
    `roleId`          VARCHAR(100) NOT NULL,
    `clientScope`     VARCHAR(255) NOT NULL,
    `enabled`         BOOLEAN NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_Auth0ScopeToRole_Role`
        FOREIGN KEY (`roleId`)
            REFERENCES `Role` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Auth0SecurityConfig`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Auth0SecurityConfig`
(
    `id`              VARCHAR(100) NOT NULL,
    `certificate`     VARCHAR(2000),
    `tenantDomain`    VARCHAR(255),
    `enabled`         BOOLEAN NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LoggedInUser`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LoggedInUser` ;

CREATE TABLE IF NOT EXISTS `LoggedInUser` (
    `id` VARCHAR(100) NOT NULL,
    `userId` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_LoggedInUsers_User1`
    FOREIGN KEY (`userId`)
    REFERENCES `User` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;

CREATE INDEX `fk_LoggedInUsers_User1_idx` ON `LoggedInUser` (`userId` ASC);


-- -----------------------------------------------------
-- Table `EmailSettings`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `EmailSettings` ;

CREATE TABLE IF NOT EXISTS `EmailSettings` (
    `id` VARCHAR(100) NOT NULL,
    `smtpServer` VARCHAR(100) NULL,
    `smtpPort` INT NULL,
    `protocol` INT NOT NULL DEFAULT 1,
    `userid` VARCHAR(255) NULL,
    `password` VARCHAR(200) NULL,
    `sentFrom` VARCHAR(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
    `emailFrom` VARCHAR(45) NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EventHandler`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `EventHandler` ;

CREATE TABLE IF NOT EXISTS `EventHandler` (
    `id` VARCHAR(100) NOT NULL,
    `context` VARCHAR(45) NOT NULL,
    `async` TINYINT(1) NOT NULL,
    `enabled` TINYINT(1) NOT NULL,
    `eventId` INT NOT NULL,
    `provider` VARCHAR(500) NOT NULL,
    `modelName` VARCHAR(45) NOT NULL,
    `mode` INT NOT NULL,
    `created` DATETIME NULL,
    `lang` INT NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;

CREATE UNIQUE INDEX `modelName_UNIQUE` ON `EventHandler` (`modelName` ASC, `eventId` ASC, `mode` ASC, `context` ASC, `lang` ASC);


-- -----------------------------------------------------
-- Table `Timer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Timer` ;

CREATE TABLE IF NOT EXISTS `Timer` (
    `id` VARCHAR(100) NOT NULL,
    `timername` VARCHAR(100) NOT NULL,
    `startdate` DATETIME NULL,
    `expire` DATETIME NULL,
    `type` ENUM('once','daily','weekly','monthly','custom','cron') NOT NULL,
    `frequency` VARCHAR(1000) NULL,
    `startup` BIGINT NULL,
    `nextStartup` BIGINT NULL,
    `modelName` VARCHAR(45) NOT NULL,
    `lang` INT NOT NULL,
    `mode` INT NOT NULL,
    `provider` VARCHAR(500) NOT NULL,
    `enabled` TINYINT(1) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;

CREATE UNIQUE INDEX `timername_UNIQUE` ON `Timer` (`timername` ASC, `modelName` ASC, `mode` ASC);


-- -----------------------------------------------------
-- Table `FileOperations`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `FileOperations` ;

CREATE TABLE IF NOT EXISTS `FileOperations` (
    `id` VARCHAR(100) NOT NULL,
    `name` VARCHAR(45) NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `FileUserPermission`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `FileUserPermission` ;

CREATE TABLE IF NOT EXISTS `FileUserPermission` (
    `fileOperationId` VARCHAR(100) NOT NULL,
    `userId` VARCHAR(100) NOT NULL,
    `resourceId` VARCHAR(200) BINARY NOT NULL,
    `permissionTypeId` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`fileOperationId`, `userId`, `resourceId`),
    CONSTRAINT `fk_FileUserPermission_FileOperations1`
    FOREIGN KEY (`fileOperationId`)
    REFERENCES `FileOperations` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_FileUserPermission_User1`
    FOREIGN KEY (`userId`)
    REFERENCES `User` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_FileUserPermission_PermissionType1`
    FOREIGN KEY (`permissionTypeId`)
    REFERENCES `PermissionType` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;

CREATE INDEX `fk_FileUserPermission_User1_idx` ON `FileUserPermission` (`userId` ASC);

CREATE INDEX `fk_FileUserPermission_PermissionType1_idx` ON `FileUserPermission` (`permissionTypeId` ASC);


-- -----------------------------------------------------
-- Table `FileRolePermission`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `FileRolePermission` ;

CREATE TABLE IF NOT EXISTS `FileRolePermission` (
    `resourceId` VARCHAR(200) BINARY NOT NULL,
    `roleId` VARCHAR(100) NOT NULL,
    `fileOperationId` VARCHAR(100) NOT NULL,
    `permissionTypeId` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`roleId`, `fileOperationId`, `resourceId`),
    CONSTRAINT `fk_FileRolePermission_Role1`
    FOREIGN KEY (`roleId`)
    REFERENCES `Role` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_FileRolePermission_FileOperations1`
    FOREIGN KEY (`fileOperationId`)
    REFERENCES `FileOperations` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_FileRolePermission_PermissionType1`
    FOREIGN KEY (`permissionTypeId`)
    REFERENCES `PermissionType` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;

CREATE INDEX `fk_FileRolePermission_Role1_idx` ON `FileRolePermission` (`roleId` ASC);

CREATE INDEX `fk_FileRolePermission_FileOperations1_idx` ON `FileRolePermission` (`fileOperationId` ASC);

CREATE INDEX `fk_FileRolePermission_PermissionType1_idx` ON `FileRolePermission` (`permissionTypeId` ASC);


-- -----------------------------------------------------
-- Table `GlobalFileRolePermissions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `GlobalFileRolePermissions` ;

CREATE TABLE IF NOT EXISTS `GlobalFileRolePermissions` (
    `fileOperationId` VARCHAR(100) NOT NULL,
    `roleId` VARCHAR(100) NOT NULL,
    `permissionTypeId` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`fileOperationId`, `roleId`),
    CONSTRAINT `fk_GlobalFileRolePermissions_FileOperations1`
    FOREIGN KEY (`fileOperationId`)
    REFERENCES `FileOperations` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_GlobalFileRolePermissions_Role1`
    FOREIGN KEY (`roleId`)
    REFERENCES `Role` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_GlobalFileRolePermissions_PermissionType1`
    FOREIGN KEY (`permissionTypeId`)
    REFERENCES `PermissionType` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;

CREATE INDEX `fk_GlobalFileRolePermissions_Role1_idx` ON `GlobalFileRolePermissions` (`roleId` ASC);

CREATE INDEX `fk_GlobalFileRolePermissions_PermissionType1_idx` ON `GlobalFileRolePermissions` (`permissionTypeId` ASC);


-- -----------------------------------------------------
-- Table `UserDataTableColumnToRolePermission`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DataColumnRolePermission` ;

CREATE TABLE IF NOT EXISTS `DataColumnRolePermission` (
  `columnId` VARCHAR(100) NOT NULL,
  `roleId` VARCHAR(100) NOT NULL,
  `operationId` VARCHAR(100) NOT NULL,
  `permissionTypeId` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`columnId`, `roleId`, `operationId`),
  CONSTRAINT `fk_DataColumnRolePermission_Role1`
    FOREIGN KEY (`roleId`)
      REFERENCES `Role` (`id`)
      ON DELETE CASCADE
      ON UPDATE NO ACTION,
  CONSTRAINT `fk_DataColumnRolePermission_UserDataTableColumn1`
    FOREIGN KEY (`columnId`)
      REFERENCES `UserDataTableColumn` (`id`)
      ON DELETE CASCADE
      ON UPDATE NO ACTION)
  ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DataOwnerAcl`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DataOwnerAcl` ;

CREATE TABLE IF NOT EXISTS `DataOwnerAcl` (
    `id` VARCHAR(100) NOT NULL,
    `operationId` VARCHAR(100) NOT NULL,
    `userDataTableId` VARCHAR(100) NOT NULL,
    `permissionTypeId` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_DataOwnerAcl_DataTableOperation1`
    FOREIGN KEY (`operationId`)
    REFERENCES `DataTableOperation` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_DataOwnerAcl_UserDataTable1`
    FOREIGN KEY (`userDataTableId`)
    REFERENCES `UserDataTable` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_DataOwnerAcl_PermissionType1`
    FOREIGN KEY (`permissionTypeId`)
    REFERENCES `PermissionType` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;

CREATE INDEX `fk_DataOwnerAcl_DataTableOperation1_idx` ON `DataOwnerAcl` (`operationId` ASC);

CREATE INDEX `fk_DataOwnerAcl_UserDataTable1_idx` ON `DataOwnerAcl` (`userDataTableId` ASC);

CREATE INDEX `fk_DataOwnerAcl_PermissionType1_idx` ON `DataOwnerAcl` (`permissionTypeId` ASC);


-- -----------------------------------------------------
-- Table `GlobalDataOwnerAcl`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `GlobalDataOwnerAcl` ;

CREATE TABLE IF NOT EXISTS `GlobalDataOwnerAcl` (
    `id` VARCHAR(100) NOT NULL,
    `operationId` VARCHAR(100) NOT NULL,
    `permissionTypeId` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_DataOwnerAcl_DataTableOperation10`
    FOREIGN KEY (`operationId`)
    REFERENCES `DataTableOperation` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_DataOwnerAcl_PermissionType10`
    FOREIGN KEY (`permissionTypeId`)
    REFERENCES `PermissionType` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;

CREATE INDEX `fk_DataOwnerAcl_DataTableOperation1_idx` ON `GlobalDataOwnerAcl` (`operationId` ASC);

CREATE INDEX `fk_DataOwnerAcl_PermissionType1_idx` ON `GlobalDataOwnerAcl` (`permissionTypeId` ASC);


-- -----------------------------------------------------
-- Table `ExternalConnection`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ExternalConnection` ;

CREATE TABLE IF NOT EXISTS `ExternalConnection` (
    `id` VARCHAR(100) NOT NULL,
    `servertype` VARCHAR(45) NOT NULL,
    `hostname` VARCHAR(500) NOT NULL,
    `port` MEDIUMINT NOT NULL,
    `login` VARCHAR(200) NULL,
    `password` VARCHAR(200) NULL,
    `SID` VARCHAR(200) NULL,
    `database` VARCHAR(200) NULL,
    `isActive` TINYINT(1) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LocalService`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LocalService` ;

CREATE TABLE IF NOT EXISTS `LocalService` (
    `id` VARCHAR(36) NOT NULL,
    `name` VARCHAR(45) NOT NULL,
    `created` DATETIME NOT NULL,
    `type` INT NOT NULL,
    `lang` INT NOT NULL DEFAULT 0,
    `pathToSchema` VARCHAR(255) NULL DEFAULT NULL,
    `host` VARCHAR(100) NULL DEFAULT NULL COMMENT 'Must be like\nprotocol://host.domain:port',
    `basePath` VARCHAR(255) NULL DEFAULT NULL,
    `className` VARCHAR(255) NULL DEFAULT NULL,
    `configured` TINYINT(1) NOT NULL DEFAULT 0,
    `description` VARCHAR(1024) NULL DEFAULT NULL,
    `updateNotes` TEXT NULL DEFAULT NULL,
    `internalOnly` TINYINT(1) NOT NULL DEFAULT 1,
    `modelName` VARCHAR(45) NOT NULL,
    `mode` INT NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;

CREATE UNIQUE INDEX `name_UNIQUE` ON `LocalService` (`name` ASC, `mode` ASC);


-- -----------------------------------------------------
-- Table `LocalServiceMethod`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LocalServiceMethod` ;

CREATE TABLE IF NOT EXISTS `LocalServiceMethod` (
    `id` VARCHAR(36) NOT NULL,
    `serviceVersionId` VARCHAR(36) NOT NULL,
    `name` VARCHAR(45) NOT NULL,
    `httpType` INT NOT NULL DEFAULT 2,
    `returnType` VARCHAR(255) NULL DEFAULT NULL,
    `path` VARCHAR(255) NULL DEFAULT NULL,
    `order` int(11) NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_local_service_method_service_id`
    FOREIGN KEY (`serviceVersionId`)
    REFERENCES `LocalService` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;

CREATE INDEX `fk_local_service_method_service_id_idx` ON `LocalServiceMethod` (`serviceVersionId` ASC);

CREATE UNIQUE INDEX `ui_serviceVersionId_httpType_path` ON `LocalServiceMethod` (`serviceVersionId` ASC, `httpType` ASC, `path` ASC);

CREATE UNIQUE INDEX `ui_serviceVersionId_name` ON `LocalServiceMethod` (`serviceVersionId` ASC, `name` ASC);


-- -----------------------------------------------------
-- Table `LocalServiceMethodUserACL`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LocalServiceMethodUserACL` ;

CREATE TABLE IF NOT EXISTS `LocalServiceMethodUserACL` (
    `userId` VARCHAR(36) NOT NULL,
    `methodId` VARCHAR(36) NOT NULL,
    `permissionType` INT NOT NULL DEFAULT 1,
    PRIMARY KEY (`userId`, `methodId`),
    CONSTRAINT `fk_localservicemethod_acl_user`
    FOREIGN KEY (`userId`)
    REFERENCES `User` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_localservicemethod_acl_method`
    FOREIGN KEY (`methodId`)
    REFERENCES `LocalServiceMethod` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;

CREATE INDEX `fk_localservicemethod_acl_method_idx` ON `LocalServiceMethodUserACL` (`methodId` ASC);

CREATE INDEX `fk_localservicemethod_acl_user` ON `LocalServiceMethodUserACL` (`userId` ASC);


-- -----------------------------------------------------
-- Table `LocalServiceMethodRoleACL`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LocalServiceMethodRoleACL` ;

CREATE TABLE IF NOT EXISTS `LocalServiceMethodRoleACL` (
    `roleId` VARCHAR(36) NOT NULL,
    `methodId` VARCHAR(36) NOT NULL,
    `permissionType` INT NOT NULL DEFAULT 1,
    PRIMARY KEY (`roleId`, `methodId`),
    CONSTRAINT `fk_localservicemethodrole_acl_role`
    FOREIGN KEY (`roleId`)
    REFERENCES `Role` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_localservicemethodrole_acl_method`
    FOREIGN KEY (`methodId`)
    REFERENCES `LocalServiceMethod` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;

CREATE INDEX `fk_localservicemethodroleacl_rol_idx` ON `LocalServiceMethodRoleACL` (`roleId` ASC);

CREATE INDEX `fk_localservicemethodrole_acl_method_idx` ON `LocalServiceMethodRoleACL` (`methodId` ASC);


-- -----------------------------------------------------
-- Table `LocalServiceMethodArg`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `LocalServiceMethodArg` ;

CREATE TABLE IF NOT EXISTS `LocalServiceMethodArg` (
    `id` VARCHAR(36) NOT NULL,
    `methodId` VARCHAR(36) NOT NULL,
    `name` VARCHAR(45) BINARY NULL DEFAULT NULL,
    `type` VARCHAR(255) NULL DEFAULT NULL,
    `targetPlace` INT NULL DEFAULT NULL,
    `position` SMALLINT NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `fl_local_service_method_arg_methodId`
    FOREIGN KEY (`methodId`)
    REFERENCES `LocalServiceMethod` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;

CREATE INDEX `fl_local_service_method_arg_methodId_idx` ON `LocalServiceMethodArg` (`methodId` ASC);

CREATE UNIQUE INDEX `ui_name_methodId` ON `LocalServiceMethodArg` (`name` ASC, `methodId` ASC);


-- -----------------------------------------------------
-- Table `GlobalRoleServiceVersionPermission`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `GlobalRoleServiceVersionPermission` ;

CREATE TABLE IF NOT EXISTS `GlobalRoleServiceVersionPermission` (
    `roleId` VARCHAR(36) NOT NULL,
    `serviceVersionId` VARCHAR(36) NOT NULL,
    `permissionType` INT NOT NULL DEFAULT 1,
    PRIMARY KEY (`roleId`, `serviceVersionId`),
    CONSTRAINT `fk_GlobalRoleServiceVersionPermission_role`
    FOREIGN KEY (`roleId`)
    REFERENCES `Role` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_GlobalRoleServiceVersionPermission_serviceVersion`
    FOREIGN KEY (`serviceVersionId`)
    REFERENCES `LocalService` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;

CREATE INDEX `fk_GlobalRoleServiceVersionPermission_role_idx` ON `GlobalRoleServiceVersionPermission` (`roleId` ASC);

CREATE INDEX `fk_GlobalRoleServiceVersionPermission_serviceVersion_idx` ON `GlobalRoleServiceVersionPermission` (`serviceVersionId` ASC);


-- -----------------------------------------------------
-- Table `DataConnectorConfig`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DataConnectorConfig` ;

CREATE TABLE IF NOT EXISTS `DataConnectorConfig` (
    `id` VARCHAR(36) NOT NULL,
    `configId` VARCHAR(255) NULL DEFAULT NULL,
    `value` VARCHAR(255) NULL DEFAULT NULL,
    `type` INT NULL DEFAULT NULL,
    `required` TINYINT(1) NULL DEFAULT NULL,
    `validator` VARCHAR(255) NULL DEFAULT NULL,
    `dataConnectorId` VARCHAR(36) NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_B9F490B1-05C1-4FCE-93F9-D97E62F3F965`
    FOREIGN KEY (`dataConnectorId`)
    REFERENCES `DataConnector` (`id`)
    ON DELETE CASCADE);

CREATE INDEX `dk_data_connector_config_dc_id_idx` ON `DataConnectorConfig` (`dataConnectorId` ASC);


-- -----------------------------------------------------
-- Table `DataConnectorProcedure`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DataConnectorProcedure` ;

CREATE TABLE IF NOT EXISTS `DataConnectorProcedure` (
    `id` VARCHAR(36) NOT NULL,
    `dataConnectorId` VARCHAR(36) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `originalName` VARCHAR(255) NOT NULL,
    `type` TINYINT NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`),
    CONSTRAINT `Fk_procedure_data_connector_id_idx`
    FOREIGN KEY (`dataConnectorId`)
    REFERENCES `DataConnector` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
    ENGINE = InnoDB;

CREATE INDEX `Fk_procedure_data_connector_id_idx_idx` ON `DataConnectorProcedure` (`dataConnectorId` ASC);


-- -----------------------------------------------------
-- Table `DataConnectorProcedureColumn`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DataConnectorProcedureColumn` ;

CREATE TABLE IF NOT EXISTS `DataConnectorProcedureColumn` (
    `id` VARCHAR(36) NOT NULL,
    `procedureId` VARCHAR(36) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `originalName` VARCHAR(255) NOT NULL,
    `type` TINYINT NOT NULL DEFAULT 0,
    `routineColumnType` VARCHAR(45) NOT NULL,
    `ordinal` INT NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_procedure_column_procedure_id_idx`
    FOREIGN KEY (`procedureId`)
    REFERENCES `DataConnectorProcedure` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
    ENGINE = InnoDB;

CREATE INDEX `fk_procedure_column_procedure_id_idx_idx` ON `DataConnectorProcedureColumn` (`procedureId` ASC);


-- -----------------------------------------------------
-- Table `InvocationChain`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `InvocationChain` ;

CREATE TABLE IF NOT EXISTS `InvocationChain` (
    `id` VARCHAR(36) NOT NULL,
    `context` VARCHAR(45) NOT NULL,
    `eventId` INT NOT NULL,
    `orderExecution` INT NOT NULL,
    `handlerId` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_InvocationChain_EventBinding1`
    FOREIGN KEY (`handlerId`)
    REFERENCES `EventHandler` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;

CREATE INDEX `fk_InvocationChain_EventBinding1_idx` ON `InvocationChain` (`handlerId` ASC);

CREATE UNIQUE INDEX `context_UNIQUE` ON `InvocationChain` (`context` ASC, `eventId` ASC, `handlerId` ASC);


-- -----------------------------------------------------
-- Table `CacheControl`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `CacheControl`;

CREATE TABLE CacheControl (
    service varchar(25) NOT NULL,
    target varchar(400) NOT NULL,
    `options` varchar(150) NOT NULL,
    maxAge INT NOT NULL,
    CONSTRAINT CacheControl_PK PRIMARY KEY (service,target),
    INDEX CacheControl_service_IDX USING BTREE (service)
)
ENGINE=InnoDB;

-- -----------------------------------------------------
-- Table `ExternalSqlConnection`
-- -----------------------------------------------------
DROP TABLE IF EXISTS ExternalSqlConnection;
CREATE TABLE ExternalSqlConnection
(
    `id`             VARCHAR(36) NOT NULL,
    `name`           VARCHAR(100) NULL,
    `connectionInfo` JSON NULL,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `name_UNIQUE` (`name` ASC)
)
ENGINE=InnoDB;

-- -----------------------------------------------------
-- Table `ExternalSqlQuery`
-- -----------------------------------------------------
DROP TABLE IF EXISTS ExternalSqlQuery;
CREATE TABLE ExternalSqlQuery
(
    `id`                      VARCHAR(36)  NOT NULL,
    `name`                    VARCHAR(100) NOT NULL,
    `externalSqlConnectionId` VARCHAR(36)  NOT NULL,
    `queryInfo`               JSON NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_ExternalSqlConnection_id`
        FOREIGN KEY (`externalSqlConnectionId`)
            REFERENCES `ExternalSqlConnection` (`id`)
            ON DELETE CASCADE
            ON UPDATE NO ACTION,
    UNIQUE INDEX `name_UNIQUE` (`externalSqlConnectionId`,`name` ASC)
)
ENGINE=InnoDB;


-- -----------------------------------------------------
-- Table `Flow`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Flow`;

CREATE TABLE `Flow`
(
    `id`              varchar(100) NOT NULL,
    `name`            varchar(100) NOT NULL,
    `description`     varchar(500) DEFAULT NULL,
    `firstElementId`  varchar(100) DEFAULT NULL,
    `created`         datetime     DEFAULT NULL,
    `statusId`        tinyint      NOT NULL,
    `flowGroupId`     VARCHAR(100) NOT NULL,
    `version`         VARCHAR(255) NOT NULL,
    `sourceVersion`   VARCHAR(255) NULL,
    `consoleMetaInfo` JSON         NULL,
    PRIMARY KEY (`id`),
    KEY `fk_Flow_FirstElement` (`firstElementId`),
    UNIQUE INDEX `Flow_flowGroupId_version_unique_index` (flowGroupId, version),
    CONSTRAINT `fk_Flow_FirstElement` FOREIGN KEY (`firstElementId`) REFERENCES `FlowElement` (`id`)
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `FlowElement`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `FlowElement`;

CREATE TABLE `FlowElement`
(
    `id`              varchar(100) NOT NULL,
    `typeId`          int          NOT NULL,
    `name`            varchar(100) NOT NULL,
    `description`     varchar(500) DEFAULT NULL,
    `flowId`          varchar(100) NOT NULL,
    `groupId`         varchar(100) NULL,
    `metaInfo`        JSON         NULL,
    `consoleMetaInfo` JSON         NULL,
    `created`         datetime     DEFAULT NULL,
    `updated`         datetime     DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_FlowElement_Flow` (`flowId`),
    KEY `fk_FlowElement_FlowGroup` (`groupId`),
    CONSTRAINT `fk_FlowElement_Flow` FOREIGN KEY (`flowId`) REFERENCES `Flow` (`id`) ON DELETE CASCADE,
    CONSTRAINT `fk_FlowElement_FlowGroup` FOREIGN KEY (`groupId`) REFERENCES `FlowElement` (`id`) ON DELETE CASCADE
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `FlowElementToFlowElement`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `FlowElementToFlowElement` ;

CREATE TABLE `FlowElementToFlowElement`
(
    `parentId` varchar(100) NOT NULL,
    `childId`  varchar(100) NOT NULL,
    PRIMARY KEY (`parentId`, `childId`),
    KEY `fk_FlowElement_has_FlowElement_parent_idx` (`parentId`),
    KEY `fk_FlowElement_has_FlowElement_child_idx` (`childId`),
    CONSTRAINT `fk_FlowElement_has_FlowElement_parent` FOREIGN KEY (`parentId`) REFERENCES `FlowElement` (`id`) ON DELETE CASCADE,
    CONSTRAINT `fk_FlowElement_has_FlowElement_child` FOREIGN KEY (`childId`) REFERENCES `FlowElement` (`id`) ON DELETE CASCADE
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- function dist
-- -----------------------------------------------------
DROP function IF EXISTS `dist`;

DELIMITER $$


CREATE FUNCTION `dist`(f1 Double,l1 Double,f2 Double,l2 Double) RETURNS double
    DETERMINISTIC
BEGIN
RETURN 6378000 * acos( sin(RADIANS(f1)) * sin(RADIANS(f2)) + cos(RADIANS(f1)) * cos(RADIANS(f2) ) * cos(RADIANS(l1 - l2)) );
END$$

DELIMITER ;

-- -----------------------------------------------------
-- function getTotalEventHandlers
-- -----------------------------------------------------
DROP function IF EXISTS `getTotalEventHandlers`;

DELIMITER $$
CREATE FUNCTION `getTotalEventHandlers` (runnerMode INT) RETURNS int(11)
                                                                    READS SQL DATA
BEGIN
      DECLARE total_count INT;
      DECLARE cur CURSOR FOR
SELECT COUNT(EventBinding.id) FROM EventBinding
                                       JOIN EventModel on EventModel.id = EventBinding.modelId
WHERE EventModel.mode = runnerMode;

OPEN cur;

FETCH cur INTO total_count;

RETURN total_count;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- function isPointInRectangular
-- -----------------------------------------------------
DROP function IF EXISTS `isPointInRectangular`;

DELIMITER $$
CREATE FUNCTION `isPointInRectangular`( nwlat Double, nwlon Double, selat Double, selon Double, lat Double, lon Double ) RETURNS boolean
    DETERMINISTIC
BEGIN
if( selat <= lat AND lat <= nwlat ) then
  if( nwlon - selon <= 0 AND nwlon < lon AND lon < selon ) then
    return true;
  elseif ( nwlon - selon > 0 AND (nwlon < lon OR lon < selon) ) then
    return true;
end if;
end if;

RETURN false;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- function isPointInCircle
-- -----------------------------------------------------
DROP function IF EXISTS `isPointInCircle`;

DELIMITER $$
CREATE FUNCTION `isPointInCircle`(clat Double,clon Double,r Double,lat Double,lon Double) RETURNS boolean
    DETERMINISTIC
BEGIN
return dist(clat, clon, lat, lon) <= r;
END$$

DELIMITER ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
