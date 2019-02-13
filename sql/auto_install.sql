-- +--------------------------------------------------------------------+
-- | CiviCRM version 5                                                  |
-- +--------------------------------------------------------------------+
-- | Copyright CiviCRM LLC (c) 2004-2019                                |
-- +--------------------------------------------------------------------+
-- | This file is a part of CiviCRM.                                    |
-- |                                                                    |
-- | CiviCRM is free software; you can copy, modify, and distribute it  |
-- | under the terms of the GNU Affero General Public License           |
-- | Version 3, 19 November 2007 and the CiviCRM Licensing Exception.   |
-- |                                                                    |
-- | CiviCRM is distributed in the hope that it will be useful, but     |
-- | WITHOUT ANY WARRANTY; without even the implied warranty of         |
-- | MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.               |
-- | See the GNU Affero General Public License for more details.        |
-- |                                                                    |
-- | You should have received a copy of the GNU Affero General Public   |
-- | License and the CiviCRM Licensing Exception along                  |
-- | with this program; if not, contact CiviCRM LLC                     |
-- | at info[AT]civicrm[DOT]org. If you have questions about the        |
-- | GNU Affero General Public License or the licensing of CiviCRM,     |
-- | see the CiviCRM license FAQ at http://civicrm.org/licensing        |
-- +--------------------------------------------------------------------+
--
-- Generated from schema.tpl
-- DO NOT EDIT.  Generated by CRM_Core_CodeGen
--


-- +--------------------------------------------------------------------+
-- | CiviCRM version 5                                                  |
-- +--------------------------------------------------------------------+
-- | Copyright CiviCRM LLC (c) 2004-2019                                |
-- +--------------------------------------------------------------------+
-- | This file is a part of CiviCRM.                                    |
-- |                                                                    |
-- | CiviCRM is free software; you can copy, modify, and distribute it  |
-- | under the terms of the GNU Affero General Public License           |
-- | Version 3, 19 November 2007 and the CiviCRM Licensing Exception.   |
-- |                                                                    |
-- | CiviCRM is distributed in the hope that it will be useful, but     |
-- | WITHOUT ANY WARRANTY; without even the implied warranty of         |
-- | MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.               |
-- | See the GNU Affero General Public License for more details.        |
-- |                                                                    |
-- | You should have received a copy of the GNU Affero General Public   |
-- | License and the CiviCRM Licensing Exception along                  |
-- | with this program; if not, contact CiviCRM LLC                     |
-- | at info[AT]civicrm[DOT]org. If you have questions about the        |
-- | GNU Affero General Public License or the licensing of CiviCRM,     |
-- | see the CiviCRM license FAQ at http://civicrm.org/licensing        |
-- +--------------------------------------------------------------------+
--
-- Generated from drop.tpl
-- DO NOT EDIT.  Generated by CRM_Core_CodeGen
--
-- /*******************************************************
-- *
-- * Clean up the exisiting tables
-- *
-- *******************************************************/

SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `civicrm_mailboxmailing_mail_settings`;

SET FOREIGN_KEY_CHECKS=1;
-- /*******************************************************
-- *
-- * Create new tables
-- *
-- *******************************************************/

-- /*******************************************************
-- *
-- * civicrm_mailboxmailing_mail_settings
-- *
-- * Various email accounts for use by Mailboxmailing extension (and its processor)
-- *
-- *******************************************************/
CREATE TABLE `civicrm_mailboxmailing_mail_settings` (


     `id` int unsigned NOT NULL AUTO_INCREMENT  COMMENT 'primary key',
     `domain_id` int unsigned NOT NULL   COMMENT 'Which Domain is this match entry for',
     `name` varchar(255)    COMMENT 'name of this group of settings',
     `domain` varchar(255)    COMMENT 'email address domain (the part after @)',
     `localpart` varchar(255)    COMMENT 'optional local part (like civimail+ for addresses like civimail+s.1.2@example.com)',
     `return_path` varchar(255)    COMMENT 'contents of the Return-Path header',
     `protocol` varchar(255)    COMMENT 'name of the protocol to use for polling (like IMAP, POP3 or Maildir)',
     `server` varchar(255)    COMMENT 'server to use when polling',
     `port` int unsigned    COMMENT 'port to use when polling',
     `username` varchar(255)    COMMENT 'username to use when polling',
     `password` varchar(255)    COMMENT 'password to use when polling',
     `is_ssl` tinyint    COMMENT 'whether to use SSL or not',
     `source` varchar(255)    COMMENT 'folder to poll from when using IMAP, path to poll from when using Maildir, etc.' 
,
        PRIMARY KEY (`id`)
 
 
,          CONSTRAINT FK_civicrm_mailboxmailing_mail_settings_domain_id FOREIGN KEY (`domain_id`) REFERENCES `civicrm_domain`(`id`) ON DELETE CASCADE  
)    ;

 
