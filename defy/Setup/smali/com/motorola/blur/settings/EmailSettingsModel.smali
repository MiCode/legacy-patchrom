.class public Lcom/motorola/blur/settings/EmailSettingsModel;
.super Ljava/lang/Object;
.source "EmailSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/settings/EmailSettingsModel$1;,
        Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;
    }
.end annotation


# static fields
.field private static final ACCESS_ACCOUNTS_PERMISSION:Ljava/lang/String; = "com.motorola.blur.setupprovider.Permissions.ACCESS_ACCOUNTS"

.field private static final ACCOUNT_PRETTY_NAME_IDX:I = 0xa

.field private static final ACTIVE_SERVICE_ID_IDX:I = 0x6

.field private static final AUTHENTICATION_TYPE:I = 0xc

.field private static final AUTHENTICATION_TYPE_FALSE:I = 0x0

.field private static final AUTHENTICATION_TYPE_TRUE:I = 0x1

.field private static final AUTHENTICATION_TYPE_YAHOO:I = 0x28

.field private static final CAPABILITY_IDX:I = 0x4

.field public static final DEFAULT_IMAP_PORT:I = 0x8f

.field public static final DEFAULT_POP3_PORT:I = 0x6e

.field public static final DEFAULT_SECURE_IMAP_PORT:I = 0x3e1

.field public static final DEFAULT_SECURE_POP3_PORT:I = 0x3e3

.field public static final DEFAULT_SECURE_SMTP_PORT:I = 0x1d1

.field public static final DEFAULT_SMTP_PORT:I = 0x19

.field private static final EMAIL_ADDRESS_IDX:I = 0x8

.field private static final FIELDS:[Ljava/lang/String; = null

.field public static final INCOMING:I = 0x0

.field public static final NEW_ACCOUNT:I = 0x0

.field public static final OUTGOING:I = 0x1

.field private static final PASSWORD_IDX:I = 0x1

.field private static final PATTERN_SETTINGS:Ljava/util/regex/Pattern; = null

.field private static final RETENTION_POLICY:I = 0xb

.field private static final SECURE_IDX:I = 0x5

.field private static final SECURITY_POLICY:I = 0xe

.field private static final SERVER_ADDRESS_IDX:I = 0x2

.field private static final SERVER_PORT_IDX:I = 0x3

.field private static final SERVICE_ID_IDX:I = 0x7

.field private static final SETTINGS:I = 0xf

.field public static final TAG:Ljava/lang/String; = "ESM"

.field private static final USERNAME_IDX:I = 0x0

.field private static final USER_PRETTY_NAME_IDX:I = 0x9

.field private static final VERIFY_CA:I = 0xd


# instance fields
.field private mAccountChanged:Z

.field private mAccountId:J

.field private mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

.field private mAccountPrettyName:Ljava/lang/String;

.field private mActiveServiceChanged:[Z

.field mContext:Landroid/content/Context;

.field private mDelPolicy:I

.field private mEmailAddress:Ljava/lang/String;

.field private mError:Ljava/lang/StringBuilder;

.field private mOriginalCapability:I

.field private mOriginalServer:Ljava/lang/String;

.field private mOriginalUsername:Ljava/lang/String;

.field private mPasswordUpdated:Z

.field private mServiceChanged:[Z

.field private mUserPrettyName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "server_address"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "server_port"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "capability"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "secure"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "active_services._id AS _id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "service_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "email_address"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "user_pretty_name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "account_pretty_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "retention_policy"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "auth_type"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "verify_ca"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "security_policy"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "settings"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/settings/EmailSettingsModel;->FIELDS:[Ljava/lang/String;

    .line 93
    const-string v0, "del_on_server\\s*=\\s*(\\d{1})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/settings/EmailSettingsModel;->PATTERN_SETTINGS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 9
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountPrettyName:Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountChanged:Z

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mOriginalServer:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mOriginalCapability:I

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mOriginalUsername:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mDelPolicy:I

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mServiceChanged:[Z

    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mActiveServiceChanged:[Z

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mPasswordUpdated:Z

    .line 139
    iput-object p1, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mContext:Landroid/content/Context;

    .line 140
    iput-wide p2, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountId:J

    .line 141
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->BY_ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 143
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/motorola/blur/settings/EmailSettingsModel;->FIELDS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 145
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x2

    new-array v8, v0, [Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    const/4 v0, 0x0

    new-instance v1, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    .end local v1           #uri:Landroid/net/Uri;
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;-><init>(Lcom/motorola/blur/settings/EmailSettingsModel$1;)V

    aput-object v1, v8, v0

    const/4 v0, 0x1

    new-instance v1, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;-><init>(Lcom/motorola/blur/settings/EmailSettingsModel$1;)V

    aput-object v1, v8, v0

    .line 146
    .local v8, infos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;
    iput-object v8, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    .line 147
    if-eqz v6, :cond_1

    .line 149
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    :cond_0
    const/16 v0, 0x8

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mEmailAddress:Ljava/lang/String;

    .line 152
    const/16 v0, 0x9

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mUserPrettyName:Ljava/lang/String;

    .line 153
    const/16 v0, 0xa

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountPrettyName:Ljava/lang/String;

    .line 155
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 156
    const/4 v0, 0x1

    invoke-direct {p0, v6, v0}, Lcom/motorola/blur/settings/EmailSettingsModel;->setAccountInfo(Landroid/database/Cursor;I)V

    .line 160
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 177
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_1
    :goto_2
    return-void

    .line 158
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v6, v0}, Lcom/motorola/blur/settings/EmailSettingsModel;->setAccountInfo(Landroid/database/Cursor;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 175
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v0, "ESM"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "IllegalStateException in emailsettingsmodel: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 162
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :cond_3
    const-wide/16 v2, 0x0

    :try_start_3
    iput-wide v2, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountId:J

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountChanged:Z

    .line 164
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x6e

    iput v1, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->port:I

    .line 165
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0x19

    iput v1, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->port:I

    .line 166
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    iput v1, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->capability:I

    .line 167
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    iput v1, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->security_policy:I

    .line 168
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    iput v1, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->security_policy:I

    .line 169
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mServiceChanged:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 170
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mServiceChanged:[Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 171
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mActiveServiceChanged:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 172
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mActiveServiceChanged:[Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 177
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 112
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 113
    nop

    :array_1
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method private getformattedSetting()Ljava/lang/String;
    .locals 2

    .prologue
    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "del_on_server = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mDelPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseFormattedSetting(Ljava/lang/String;)V
    .locals 4
    .parameter "settings"

    .prologue
    const/4 v3, 0x1

    .line 217
    sget-object v2, Lcom/motorola/blur/settings/EmailSettingsModel;->PATTERN_SETTINGS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 218
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 220
    .local v0, delPolicy:I
    if-ne v0, v3, :cond_1

    move v2, v0

    :goto_0
    iput v2, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mDelPolicy:I

    .line 223
    .end local v0           #delPolicy:I
    :cond_0
    return-void

    .line 220
    .restart local v0       #delPolicy:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendIntents(JJZ)V
    .locals 9
    .parameter "accountId"
    .parameter "providerId"
    .parameter "reset"

    .prologue
    .line 635
    iget-object v5, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    array-length v4, v5

    .line 636
    .local v4, numInfos:I
    const/4 v1, 0x0

    .line 637
    .local v1, finished:Z
    const/4 v0, 0x0

    .line 639
    .local v0, capability:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    if-nez v1, :cond_0

    .line 640
    iget-object v5, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v5, v5, v2

    iget v0, v5, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->capability:I

    .line 641
    packed-switch v0, :pswitch_data_0

    .line 639
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 645
    :pswitch_0
    new-instance v3, Landroid/content/Intent;

    if-eqz p5, :cond_1

    const-string v5, "com.motorola.blur.setup.changes.ACTION_RESET"

    :goto_1
    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 646
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "com.motorola.blur.setup.changes.capability.%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    const-string v5, "capability"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 648
    const-string v5, "_id"

    iget-object v6, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v6, v6, v2

    iget-wide v6, v6, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->activeServiceId:J

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 649
    const-string v5, "account_id"

    invoke-virtual {v3, v5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 650
    const-string v5, "provider_id"

    invoke-virtual {v3, v5, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 651
    iget-object v5, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mContext:Landroid/content/Context;

    const-string v6, "com.motorola.blur.setupprovider.Permissions.ACCESS_ACCOUNTS"

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 659
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 645
    :cond_1
    const-string v5, "com.motorola.blur.setup.changes.ACTION_VALIDATED"

    goto :goto_1

    .line 641
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setAccountInfo(Landroid/database/Cursor;I)V
    .locals 8
    .parameter "cursor"
    .parameter "num"

    .prologue
    const/4 v7, 0x1

    .line 183
    iget-object v3, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v1, v3, p2

    .line 184
    .local v1, info:Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mContext:Landroid/content/Context;

    .line 185
    .local v0, context:Landroid/content/Context;
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->activeServiceId:J

    .line 186
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->capability:I

    .line 187
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "email"

    invoke-static {v3, v4}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v3

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v0, v3, v4, v5, v6}, Lcom/motorola/blur/util/SimpleEncryptUtil;->decryptBasedOnPolicy(Landroid/content/Context;JLjava/lang/String;[B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->password:Ljava/lang/String;

    .line 191
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->port:I

    .line 192
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->secure:I

    .line 193
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->server:Ljava/lang/String;

    .line 194
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->username:Ljava/lang/String;

    .line 196
    if-nez p2, :cond_0

    .line 197
    iget-object v3, v1, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->server:Ljava/lang/String;

    iput-object v3, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mOriginalServer:Ljava/lang/String;

    .line 198
    iget v3, v1, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->capability:I

    iput v3, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mOriginalCapability:I

    .line 199
    iget-object v3, v1, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->username:Ljava/lang/String;

    iput-object v3, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mOriginalUsername:Ljava/lang/String;

    .line 200
    const/16 v3, 0xf

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, setting:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 202
    invoke-direct {p0, v2}, Lcom/motorola/blur/settings/EmailSettingsModel;->parseFormattedSetting(Ljava/lang/String;)V

    .line 205
    .end local v2           #setting:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->serviceId:J

    .line 206
    const/16 v3, 0xb

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->retention_policy:I

    .line 207
    const/16 v3, 0xc

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->authentication_type:I

    .line 208
    const/16 v3, 0xd

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->verify_ca:I

    .line 209
    const/16 v3, 0xe

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->security_policy:I

    .line 210
    iget v3, v1, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->security_policy:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 211
    iput v7, v1, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->security_policy:I

    .line 212
    iget-object v3, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mActiveServiceChanged:[Z

    aput-boolean v7, v3, p2

    .line 214
    :cond_1
    return-void
.end method

.method private validateMinLength(Landroid/text/Editable;IZ)Ljava/lang/String;
    .locals 1
    .parameter "text"
    .parameter "length"
    .parameter "trim"

    .prologue
    .line 707
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, p2, :cond_1

    .line 708
    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 710
    :goto_0
    return-object v0

    .line 708
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 710
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public appendError(Ljava/lang/String;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mError:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mError:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mError:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    return-void
.end method

.method public clearError()V
    .locals 1

    .prologue
    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mError:Ljava/lang/StringBuilder;

    .line 667
    return-void
.end method

.method public final getAccountId()J
    .locals 2

    .prologue
    .line 833
    iget-wide v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountId:J

    return-wide v0
.end method

.method public getAccountPrettyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountPrettyName:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthenticationType(I)I
    .locals 1
    .parameter "svc"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->authentication_type:I

    return v0
.end method

.method public getCapability(I)I
    .locals 1
    .parameter "svc"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->capability:I

    return v0
.end method

.method public getDelPolicy()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mDelPolicy:I

    return v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mError:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword(I)Ljava/lang/String;
    .locals 1
    .parameter "svc"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPort(I)I
    .locals 1
    .parameter "svc"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->port:I

    return v0
.end method

.method public getRetentionPolicy()I
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->retention_policy:I

    return v0
.end method

.method public getSecure(I)I
    .locals 1
    .parameter "svc"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->secure:I

    return v0
.end method

.method public getSecurityPolicy(I)I
    .locals 1
    .parameter "svc"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->security_policy:I

    return v0
.end method

.method public getServer(I)Ljava/lang/String;
    .locals 1
    .parameter "svc"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->server:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPrettyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mUserPrettyName:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername(I)Ljava/lang/String;
    .locals 1
    .parameter "svc"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyCA(I)I
    .locals 1
    .parameter "svc"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->verify_ca:I

    return v0
.end method

.method public isPasswordUpdated()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mPasswordUpdated:Z

    return v0
.end method

.method public isYahooAccount()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 386
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->authentication_type:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public save()Z
    .locals 29

    .prologue
    .line 507
    const/16 v19, 0x1

    .line 509
    .local v19, saved:Z
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountId:J

    move-wide v6, v0

    .line 510
    .local v6, accountId:J
    const/16 v16, 0x0

    .line 512
    .local v16, needsReset:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 513
    .local v18, resolver:Landroid/content/ContentResolver;
    const-string v5, "email"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v8

    .line 514
    .local v8, providerId:J
    const/16 v23, 0x0

    .line 515
    .local v23, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountChanged:Z

    move v5, v0

    const/4 v10, 0x1

    if-ne v5, v10, :cond_0

    .line 516
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 517
    .local v24, values:Landroid/content/ContentValues;
    const-string v5, "email_address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel;->mEmailAddress:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v5, "user_pretty_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel;->mUserPrettyName:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v5, "provider_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 520
    const-string v5, "account_pretty_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountPrettyName:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-wide/16 v25, 0x0

    cmp-long v5, v6, v25

    if-lez v5, :cond_6

    .line 523
    sget-object v5, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v18

    move-object v1, v5

    move-object/from16 v2, v24

    move-object v3, v10

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 526
    .local v22, updated:I
    const/4 v5, 0x1

    move/from16 v0, v22

    move v1, v5

    if-ge v0, v1, :cond_0

    .line 527
    const/16 v19, 0x0

    .line 553
    .end local v22           #updated:I
    .end local v24           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    move-object v5, v0

    array-length v5, v5

    const/4 v10, 0x1

    sub-int v14, v5, v10

    .local v14, i:I
    :goto_1
    if-ltz v14, :cond_e

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    move-object v5, v0

    aget-object v15, v5, v14

    .line 555
    .local v15, info:Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel;->mServiceChanged:[Z

    move-object v5, v0

    aget-boolean v5, v5, v14

    const/4 v10, 0x1

    if-ne v5, v10, :cond_4

    .line 556
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 557
    .local v20, svcValues:Landroid/content/ContentValues;
    if-nez v14, :cond_3

    .line 558
    iget-object v5, v15, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->server:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v15, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->server:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel;->mOriginalServer:Ljava/lang/String;

    move-object v10, v0

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget v5, v15, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->capability:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel;->mOriginalCapability:I

    move v10, v0

    if-ne v5, v10, :cond_2

    iget-object v5, v15, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->username:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel;->mOriginalUsername:Ljava/lang/String;

    move-object v10, v0

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 560
    :cond_2
    const/16 v16, 0x1

    .line 563
    :cond_3
    const-string v5, "capability"

    iget v10, v15, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->capability:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 564
    const-string v5, "secure"

    iget v10, v15, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->secure:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 565
    const-string v5, "server_address"

    iget-object v10, v15, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->server:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v5, "server_port"

    iget v10, v15, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->port:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 567
    const-string v5, "auth_type"

    iget v10, v15, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->authentication_type:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 568
    iget v5, v15, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->capability:I

    const/4 v10, 0x2

    if-ne v5, v10, :cond_9

    .line 569
    const-string v5, "settings"

    invoke-direct/range {p0 .. p0}, Lcom/motorola/blur/settings/EmailSettingsModel;->getformattedSetting()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :goto_2
    move-object v0, v15

    iget-wide v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->serviceId:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmp-long v5, v25, v27

    if-lez v5, :cond_a

    .line 574
    sget-object v5, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v15

    iget-wide v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->serviceId:J

    move-wide/from16 v25, v0

    move-object v0, v5

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v18

    move-object v1, v5

    move-object/from16 v2, v20

    move-object v3, v10

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 577
    .restart local v22       #updated:I
    const/4 v5, 0x1

    move/from16 v0, v22

    move v1, v5

    if-ge v0, v1, :cond_4

    .line 578
    const/16 v19, 0x0

    .line 590
    .end local v20           #svcValues:Landroid/content/ContentValues;
    .end local v22           #updated:I
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel;->mActiveServiceChanged:[Z

    move-object v5, v0

    aget-boolean v5, v5, v14

    const/4 v10, 0x1

    if-ne v5, v10, :cond_5

    .line 591
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 592
    .local v11, asValues:Landroid/content/ContentValues;
    const-string v5, "username"

    iget-object v10, v15, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v11, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v5, "password"

    iget-object v10, v15, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->password:Ljava/lang/String;

    invoke-virtual {v11, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v5, "retention_policy"

    iget v10, v15, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->retention_policy:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 595
    const-string v5, "verify_ca"

    iget v10, v15, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->verify_ca:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 596
    const-string v5, "security_policy"

    iget v10, v15, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->security_policy:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 597
    move-object v0, v15

    iget-wide v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->activeServiceId:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmp-long v5, v25, v27

    if-lez v5, :cond_c

    .line 598
    sget-object v5, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v15

    iget-wide v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->activeServiceId:J

    move-wide/from16 v25, v0

    move-object v0, v5

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v11

    move-object v3, v10

    move-object v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 601
    .restart local v22       #updated:I
    const/4 v5, 0x1

    move/from16 v0, v22

    move v1, v5

    if-ge v0, v1, :cond_5

    .line 602
    const/16 v19, 0x0

    .line 553
    .end local v11           #asValues:Landroid/content/ContentValues;
    .end local v22           #updated:I
    :cond_5
    :goto_4
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_1

    .line 531
    .end local v14           #i:I
    .end local v15           #info:Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;
    .restart local v24       #values:Landroid/content/ContentValues;
    :cond_6
    const/4 v13, 0x0

    .line 532
    .local v13, ftr_setting:Ljava/lang/String;
    const-string v5, "ftr_34568_enable"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 533
    if-eqz v13, :cond_7

    const-string v5, "true"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 535
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-string v10, "com.motorola.blur.datamanager.app"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v12

    .line 537
    .local v12, dmAppCtx:Landroid/content/Context;
    const-string v5, "34568_data_disable"

    const/4 v10, 0x0

    invoke-virtual {v12, v5, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 540
    .local v17, preferences:Landroid/content/SharedPreferences;
    const-string v5, "sync_connection"

    const/16 v10, 0xff

    move-object/from16 v0, v17

    move-object v1, v5

    move v2, v10

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 542
    .local v21, sync_connect:I
    const-string v5, "sync_connection"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    .end local v12           #dmAppCtx:Landroid/content/Context;
    .end local v17           #preferences:Landroid/content/SharedPreferences;
    .end local v21           #sync_connect:I
    :cond_7
    :goto_5
    sget-object v5, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object v1, v5

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v23

    .line 548
    if-nez v23, :cond_8

    .line 549
    const/4 v5, 0x0

    .line 624
    .end local v13           #ftr_setting:Ljava/lang/String;
    .end local v24           #values:Landroid/content/ContentValues;
    :goto_6
    return v5

    .line 550
    .restart local v13       #ftr_setting:Ljava/lang/String;
    .restart local v24       #values:Landroid/content/ContentValues;
    :cond_8
    invoke-static/range {v23 .. v23}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    goto/16 :goto_0

    .line 571
    .end local v13           #ftr_setting:Ljava/lang/String;
    .end local v24           #values:Landroid/content/ContentValues;
    .restart local v14       #i:I
    .restart local v15       #info:Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;
    .restart local v20       #svcValues:Landroid/content/ContentValues;
    :cond_9
    const-string v5, "settings"

    const-string v10, ""

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 581
    :cond_a
    const-string v5, "providers_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 582
    sget-object v5, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object v1, v5

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v23

    .line 584
    if-nez v23, :cond_b

    .line 585
    const/4 v5, 0x0

    goto :goto_6

    .line 586
    :cond_b
    invoke-static/range {v23 .. v23}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object v2, v15

    iput-wide v0, v2, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->serviceId:J

    goto/16 :goto_3

    .line 605
    .end local v20           #svcValues:Landroid/content/ContentValues;
    .restart local v11       #asValues:Landroid/content/ContentValues;
    :cond_c
    const-string v5, "account"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v11, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 606
    const-string v5, "service_id"

    move-object v0, v15

    iget-wide v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->serviceId:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v11, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 607
    sget-object v5, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v23

    .line 608
    if-nez v23, :cond_d

    .line 609
    const/4 v5, 0x0

    goto :goto_6

    .line 611
    :cond_d
    invoke-static/range {v23 .. v23}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object v2, v15

    iput-wide v0, v2, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->activeServiceId:J

    goto/16 :goto_4

    .line 619
    .end local v11           #asValues:Landroid/content/ContentValues;
    .end local v15           #info:Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;
    :cond_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountId:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmp-long v5, v25, v27

    if-nez v5, :cond_10

    .line 620
    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/motorola/blur/settings/EmailSettingsModel;->sendIntents(JJZ)V

    :cond_f
    :goto_7
    move/from16 v5, v19

    .line 624
    goto :goto_6

    .line 621
    :cond_10
    if-eqz v16, :cond_f

    .line 622
    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/motorola/blur/settings/EmailSettingsModel;->sendIntents(JJZ)V

    goto :goto_7

    .line 543
    .end local v14           #i:I
    .restart local v13       #ftr_setting:Ljava/lang/String;
    .restart local v24       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    goto/16 :goto_5
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 285
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountPrettyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iput-object p1, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountPrettyName:Ljava/lang/String;

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountChanged:Z

    .line 289
    :cond_0
    return-void
.end method

.method public setAuthenticationType(II)V
    .locals 2
    .parameter "svc"
    .parameter "auth_type"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->authentication_type:I

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 380
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iput p2, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->authentication_type:I

    .line 381
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mServiceChanged:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 383
    :cond_0
    return-void
.end method

.method public setCapability(II)V
    .locals 2
    .parameter "svc"
    .parameter "capability"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->capability:I

    if-eq v0, p2, :cond_0

    .line 501
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iput p2, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->capability:I

    .line 502
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mServiceChanged:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 504
    :cond_0
    return-void
.end method

.method public setDelPolicy(I)V
    .locals 3
    .parameter "delPolicy"

    .prologue
    .line 487
    iget v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mDelPolicy:I

    if-eq p1, v0, :cond_0

    .line 488
    iput p1, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mDelPolicy:I

    .line 489
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mServiceChanged:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 491
    :cond_0
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 241
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iput-object p1, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mEmailAddress:Ljava/lang/String;

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountChanged:Z

    .line 245
    :cond_0
    return-void
.end method

.method public setPassword(ILjava/lang/String;)V
    .locals 2
    .parameter "svc"
    .parameter "password"

    .prologue
    const/4 v1, 0x1

    .line 360
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->password:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iput-object p2, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->password:Ljava/lang/String;

    .line 362
    invoke-virtual {p0}, Lcom/motorola/blur/settings/EmailSettingsModel;->isYahooAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    xor-int/lit8 v0, p1, -0x1

    and-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/motorola/blur/settings/EmailSettingsModel;->setPassword(ILjava/lang/String;)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mActiveServiceChanged:[Z

    aput-boolean v1, v0, p1

    .line 366
    iput-boolean v1, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mPasswordUpdated:Z

    .line 368
    :cond_1
    return-void
.end method

.method public setPort(II)V
    .locals 2
    .parameter "svc"
    .parameter "port"

    .prologue
    .line 401
    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->port:I

    if-eq p2, v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iput p2, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->port:I

    .line 403
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mServiceChanged:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 405
    :cond_0
    return-void
.end method

.method public setRetentionPolicy(I)V
    .locals 3
    .parameter "policy"

    .prologue
    const/4 v2, 0x0

    .line 297
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->retention_policy:I

    if-eq v0, p1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, v2

    iput p1, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->retention_policy:I

    .line 299
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mActiveServiceChanged:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 301
    :cond_0
    return-void
.end method

.method public setSecure(II)V
    .locals 2
    .parameter "svc"
    .parameter "secure"

    .prologue
    .line 419
    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->secure:I

    if-eq p2, v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iput p2, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->secure:I

    .line 421
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mServiceChanged:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 423
    :cond_0
    return-void
.end method

.method public setSecurityPolicy(II)V
    .locals 2
    .parameter "svc"
    .parameter "securityPolicy"

    .prologue
    .line 441
    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->security_policy:I

    if-eq p2, v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iput p2, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->security_policy:I

    .line 443
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mActiveServiceChanged:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 445
    :cond_0
    return-void
.end method

.method public setServer(ILjava/lang/String;)V
    .locals 2
    .parameter "svc"
    .parameter "server"

    .prologue
    .line 324
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->server:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iput-object p2, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->server:Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mServiceChanged:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 328
    :cond_0
    return-void
.end method

.method public setUserPrettyName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 263
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mUserPrettyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iput-object p1, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mUserPrettyName:Ljava/lang/String;

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountChanged:Z

    .line 267
    :cond_0
    return-void
.end method

.method public setUsername(ILjava/lang/String;)V
    .locals 2
    .parameter "svc"
    .parameter "username"

    .prologue
    .line 342
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iput-object p2, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->username:Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mActiveServiceChanged:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 346
    :cond_0
    return-void
.end method

.method public setVerifyCA(II)V
    .locals 2
    .parameter "svc"
    .parameter "verifyCA"

    .prologue
    .line 462
    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->verify_ca:I

    if-eq p2, v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountInfos:[Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;

    aget-object v0, v0, p1

    iput p2, v0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->verify_ca:I

    .line 464
    iget-object v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mActiveServiceChanged:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 466
    :cond_0
    return-void
.end method

.method public validateAccountName(Landroid/text/Editable;)V
    .locals 4
    .parameter "text"

    .prologue
    const/4 v2, 0x1

    .line 816
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/motorola/blur/settings/EmailSettingsModel;->validateMinLength(Landroid/text/Editable;IZ)Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountId:J

    invoke-static {v1, v0, v2, v3}, Lcom/motorola/blur/provider/DeviceSetup;->findDuplicatePrettyNames(Landroid/content/Context;Ljava/lang/String;J)I

    move-result v1

    if-lez v1, :cond_1

    .line 818
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->appendError(Ljava/lang/String;)V

    .line 823
    :goto_0
    return-void

    .line 821
    :cond_1
    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EmailSettingsModel;->setAccountName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public validateEmail(Landroid/text/Editable;)V
    .locals 14
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    const-string v11, "=\'"

    const-string v13, " AND "

    const-string v5, "\'"

    .line 772
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 773
    .local v7, email:Ljava/lang/String;
    new-instance v8, Lcom/motorola/blur/setup/ValidatedPatternValue;

    sget-object v1, Lcom/motorola/blur/setup/ValidatedPatternValue;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    const v3, 0x7f0c0089

    invoke-direct {v8, v1, v3, v2}, Lcom/motorola/blur/setup/ValidatedPatternValue;-><init>(Ljava/util/regex/Pattern;ILjava/lang/String;)V

    .line 776
    .local v8, emailPattern:Lcom/motorola/blur/setup/ValidatedPatternValue;
    invoke-virtual {v8, v7}, Lcom/motorola/blur/setup/ValidatedPatternValue;->isValidValue(Ljava/lang/String;)Z

    move-result v10

    .line 777
    .local v10, validated:Z
    if-nez v10, :cond_0

    .line 778
    iget-object v1, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/motorola/blur/setup/ValidatedPatternValue;->getError(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->appendError(Ljava/lang/String;)V

    .line 810
    :goto_0
    return-void

    .line 782
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 783
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 784
    .local v9, selection:Ljava/lang/StringBuilder;
    const-string v1, "provider_id"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=\'"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "email"

    invoke-static {v0, v3}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "email_address"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=\'"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    iget-wide v3, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountId:J

    const-wide/16 v11, 0x0

    cmp-long v1, v3, v11

    if-lez v1, :cond_1

    .line 794
    const-string v1, " AND "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "!= \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mAccountId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    :cond_1
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 802
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 803
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 804
    iget-object v1, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0092

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->appendError(Ljava/lang/String;)V

    .line 806
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 809
    :cond_3
    if-nez v7, :cond_4

    const-string v1, ""

    :goto_1
    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->setEmailAddress(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move-object v1, v7

    goto :goto_1
.end method

.method public validatePassword(ILandroid/text/Editable;)V
    .locals 3
    .parameter "svc"
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 719
    invoke-direct {p0, p2, v1, v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->validateMinLength(Landroid/text/Editable;IZ)Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, password:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 721
    :cond_0
    if-nez v0, :cond_1

    const-string v1, ""

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->setPassword(ILjava/lang/String;)V

    .line 727
    :goto_1
    return-void

    :cond_1
    move-object v1, v0

    .line 721
    goto :goto_0

    .line 723
    :cond_2
    iget-object v1, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->appendError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public validatePort(ILandroid/text/Editable;)V
    .locals 3
    .parameter "svc"
    .parameter "text"

    .prologue
    .line 754
    if-eqz p2, :cond_0

    .line 755
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 756
    .local v0, potentialPort:I
    if-ltz v0, :cond_0

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    .line 757
    invoke-virtual {p0, p1, v0}, Lcom/motorola/blur/settings/EmailSettingsModel;->setPort(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    .end local v0           #potentialPort:I
    :goto_0
    return-void

    .line 761
    :catch_0
    move-exception v1

    .line 763
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const v2, 0x7f0c00b3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->appendError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f0c00b4

    goto :goto_1
.end method

.method public validateServer(ILandroid/text/Editable;)V
    .locals 3
    .parameter "svc"
    .parameter "text"

    .prologue
    const/4 v2, 0x1

    .line 734
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v2}, Lcom/motorola/blur/settings/EmailSettingsModel;->validateMinLength(Landroid/text/Editable;IZ)Ljava/lang/String;

    move-result-object v0

    .line 735
    .local v0, server:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {p0, p1, v0}, Lcom/motorola/blur/settings/EmailSettingsModel;->setServer(ILjava/lang/String;)V

    .line 742
    :goto_0
    return-void

    .line 738
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-ne p1, v2, :cond_1

    const v2, 0x7f0c00b2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->appendError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f0c00b1

    goto :goto_1
.end method

.method public validateUserPrettyName(Landroid/text/Editable;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 829
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/motorola/blur/settings/EmailSettingsModel;->validateMinLength(Landroid/text/Editable;IZ)Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->setUserPrettyName(Ljava/lang/String;)V

    .line 831
    return-void

    :cond_0
    move-object v1, v0

    .line 830
    goto :goto_0
.end method

.method public validateUsername(ILandroid/text/Editable;)V
    .locals 3
    .parameter "svc"
    .parameter "text"

    .prologue
    const/4 v2, 0x1

    .line 693
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v2}, Lcom/motorola/blur/settings/EmailSettingsModel;->validateMinLength(Landroid/text/Editable;IZ)Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, username:Ljava/lang/String;
    if-nez v0, :cond_0

    if-ne p1, v2, :cond_2

    .line 695
    :cond_0
    if-nez v0, :cond_1

    const-string v1, ""

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->setUsername(ILjava/lang/String;)V

    .line 700
    :goto_1
    return-void

    :cond_1
    move-object v1, v0

    .line 695
    goto :goto_0

    .line 697
    :cond_2
    iget-object v1, p0, Lcom/motorola/blur/settings/EmailSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->appendError(Ljava/lang/String;)V

    goto :goto_1
.end method
