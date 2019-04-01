-- DDL for Table [facetswrk].[dbo].[SMS_MSG_VCC_EXT]
-- Source Control $Revision: 1.1.2.1 $
USE [facetswrk];
GO

/******************************************************************************************
 * Description:
 * Creates Table for SMS_MSG_VCC_EXT
 *----------------------------------------------------------------------------------------
 * Revision  : $Revision: 1.1.2.1 $
 * Source    : $Source: /odsapps/sms_vcc_ext/dba/tbl/Attic/SMS_MSG_VCC_EXT.sql,v $
 *----------------------------------------------------------------------------------------
 * CHANGE HISTORY
 *-------------------------------------------------------------------------------------------
 * DATE         NAME                 Change Description
 *--------------------------------------------------------------------------------------------
 * 11/26/2018  Shakti Offshore     WID 1000391 - Initial Creation
 ********************************************************************************************/

IF NOT EXISTS
(
    SELECT *
    FROM sys.objects
    WHERE object_id = OBJECT_ID(N'[dbo].[SMS_MSG_VCC_EXT]')
          AND type IN(N'U')
)
    BEGIN
        PRINT 'Table [facetswrk].[dbo].[SMS_MSG_VCC_EXT] does not yet exist, creating';
        SET ANSI_NULLS ON;
        SET QUOTED_IDENTIFIER ON;
        CREATE TABLE [dbo].[SMS_MSG_VCC_EXT]
        (
         UNIQUE_ID          INT           IDENTITY
        ,FIRST_NAME         VARCHAR(15)   DEFAULT ' '             NOT NULL
        ,LAST_NAME          VARCHAR(35)   DEFAULT ' '             NOT NULL
        ,DATE_OF_BIRTH      VARCHAR(10)   DEFAULT ' '             NOT NULL
        ,SUBSCRIBER_ID      VARCHAR(09)   DEFAULT ' '             NOT NULL
        ,CCO                VARCHAR(08)   DEFAULT ' '             NOT NULL
        ,PHONE_NUMBER       VARCHAR(20)   DEFAULT ' '             NOT NULL
        ,BODY_OF_TEXT       VARCHAR(159)  DEFAULT ' '             NOT NULL
        ,MEME_CK            INT           DEFAULT 0               NOT NULL
        ,SBSB_CK            INT           DEFAULT 0               NOT NULL
        ,GRGR_CK            INT           DEFAULT 0               NOT NULL
        ,REC_TYPE           VARCHAR(1)    DEFAULT ' '             NOT NULL        
        )    
        ON [PRIMARY];
IF EXISTS
(
    SELECT *
    FROM sys.objects
    WHERE object_id = OBJECT_ID(N'[dbo].[SMS_MSG_VCC_EXT]')
          AND type IN(N'U')
)
    BEGIN
        PRINT 'Successfully created Table [facetswrk].[dbo].[SMS_MSG_VCC_EXT]';
        EXEC sp_addextendedproperty
             @name = 'SourceCodeVersion',
             @value = '$Revision: 1.1.2.1 $',
             @level0type = 'Schema',
             @level0name = 'dbo',
             @level1type = 'Table',
             @level1name = 'SMS_MSG_VCC_EXT';
        PRINT 'Added extended property SourceCodeVersion for Table [facetswrk].[dbo].[SMS_MSG_VCC_EXT]';
END;
    ELSE
    BEGIN
        PRINT 'FAILED to create Table [facetswrk].[dbo].[SMS_MSG_VCC_EXT]';
END;
END;
    ELSE
    BEGIN
        PRINT 'Table [facetswrk].[dbo].[SMS_MSG_VCC_EXT] already exists';
        IF EXISTS
        (
            SELECT *
            FROM sys.fn_listextendedproperty(NULL, 'SCHEMA', 'dbo', 'TABLE', 'SMS_MSG_VCC_EXT', DEFAULT, DEFAULT)
        )
            BEGIN
                EXEC sp_updateextendedproperty
                     @name = 'SourceCodeVersion',
                     @value = '$Revision: 1.1.2.1 $',
                     @level0type = 'Schema',
                     @level0name = 'dbo',
                     @level1type = 'Table',
                     @level1name = 'SMS_MSG_VCC_EXT';
                PRINT 'Updated extended property SourceCodeVersion for Table [facetswrk].[dbo].[SMS_MSG_VCC_EXT]';
        END;
            ELSE
            BEGIN
                EXEC sp_addextendedproperty
                     @name = 'SourceCodeVersion',
                     @value = '$Revision: 1.1.2.1 $',
                     @level0type = 'Schema',
                     @level0name = 'dbo',
                     @level1type = 'Table',
                     @level1name = 'SMS_MSG_VCC_EXT';
                PRINT 'Added extended property SourceCodeVersion for Table [facetswrk].[dbo].[SMS_MSG_VCC_EXT]';
        END;
END;
GO

