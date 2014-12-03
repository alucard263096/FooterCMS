ALTER TABLE `portalsite_lm`.`tb_user` 
ADD COLUMN `is_admin` VARCHAR(1) NULL DEFAULT 'N' AFTER `updated_date`;

ALTER TABLE `portalsite_lm`.`tb_general` 
CHANGE COLUMN `type` `type` VARCHAR(10) NULL ,
ADD COLUMN `created_user` INT NULL AFTER `updated_date`,
ADD COLUMN `created_date` DATETIME NULL AFTER `created_user`;

ALTER TABLE `portalsite_lm`.`tb_website_base` 
ADD COLUMN `id` INT NULL AFTER `seo_description`,
ADD COLUMN `created_date` DATETIME NULL AFTER `id`,
ADD COLUMN `created_user` INT NULL AFTER `created_date`,
ADD COLUMN `updated_date` DATETIME NULL AFTER `created_user`,
ADD COLUMN `updated_user` INT NULL AFTER `updated_date`;


update `portalsite_lm`.`tb_website_base` set id=1;
update `portalsite_lm`.`tb_user` set is_admin='Y';

ALTER TABLE `portalsite_lm`.`tb_website_banner` 
ADD COLUMN `created_user` INT NULL AFTER `status`,
ADD COLUMN `created_date` DATETIME NULL AFTER `created_user`,
ADD COLUMN `updated_user` INT NULL AFTER `created_date`,
ADD COLUMN `updated_date` DATETIME NULL AFTER `updated_user`;

ALTER TABLE `portalsite_lm`.`tb_user` 
CHANGE COLUMN `user_id` `id` INT(11) NOT NULL ;

ALTER TABLE `portalsite_lm`.`tb_download_file` 
CHANGE COLUMN `length` `length` INT(11) NULL ;

ALTER TABLE `portalsite_lm`.`tb_general` 
CHANGE COLUMN `type` `type` varchar(30) NULL ;







ALTER TABLE `lm_live`.`tb_city` 
ADD COLUMN `id` INT NULL AFTER `postCode`;
update `lm_live`.tb_city set id=serialId;