.class public Lcom/motorola/blur/setup/EDMServiceCredentialsService;
.super Landroid/app/Service;
.source "EDMServiceCredentialsService.java"

# interfaces
.implements Lcom/motorola/blur/authenticators/BlurAuthenticationListener;
.implements Lcom/motorola/blur/setup/AccountRemovalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;,
        Lcom/motorola/blur/setup/EDMServiceCredentialsService$LoginTypes;,
        Lcom/motorola/blur/setup/EDMServiceCredentialsService$ProviderProjection;
    }
.end annotation


# static fields
.field private static final ACTIVE_SYNC_FIELDS:[I = null

.field private static final AUTO_COMPLETE_PROJECTION:[Ljava/lang/String; = null

.field public static final EMAIL_ADDR_EXTRA:Ljava/lang/String; = "addrType"

.field public static final HOST_EXTRA:Ljava/lang/String; = "hostType"

.field public static final MESSAGE_DPM_ACCOUNT_ADD_DEL:I = 0x1

.field public static final MESSAGE_DPM_ACCOUNT_MONITOR:I = 0x2

.field public static final PASSWORD_EXTRA:Ljava/lang/String; = "passwordType"

.field protected static final RECEIVED_AUTH_RESPONSE:I = 0x5

.field protected static final RECEIVED_MAIL_SETTINGS:I = 0x2

.field protected static final RECEIVED_REMOVE_CREDENTIALS_RESPONSE:I = 0x6

.field protected static final RECEIVED_SAVE_NAME_VALUE_SETTINGS:I = 0x4

.field protected static final SERVICE_RESTARTED:I = 0x1

.field public static final SSL_EXTRA:Ljava/lang/String; = "sslType"

.field private static final TAG:Ljava/lang/String; = "EDMService"

.field private static final VALIDATE_SNP_CAPTCHA:I = 0x3


# instance fields
.field private final ACTION_DPM_ACCOUNT_ADDITION:Ljava/lang/String;

.field private final ACTION_DPM_ACCOUNT_DELETE:Ljava/lang/String;

.field private idList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mActiveSyncUsername:Ljava/lang/String;

.field private mAddSingleAccount:Z

.field private mAuth:Lcom/motorola/blur/util/authentication/Authentication;

.field private mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

.field private mContext:Landroid/content/Context;

.field private mDeleteFailure:Z

.field private mEdmErrorCode:Lmotorola/app/admin/EdmErrorCode;

.field private mEmailAddress:Ljava/lang/String;

.field private mLoginType:I

.field private final mName:Ljava/lang/String;

.field private mNumDeleteAccounts:I

.field private mPassword:Ljava/lang/String;

.field private mPrettyName:Ljava/lang/String;

.field protected mProviderCredentials:Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;

.field private mProviderId:Ljava/lang/Long;

.field private mProviderType:Ljava/lang/String;

.field private mPwdPolicy:I

.field private mRedelivery:Z

.field private mServer:Ljava/lang/String;

.field private volatile mServiceHandler:Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mSsl:Z

.field private mUsernameString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "email_address"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->AUTO_COMPLETE_PROJECTION:[Ljava/lang/String;

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->ACTIVE_SYNC_FIELDS:[I

    return-void

    :array_0
    .array-data 0x4
        0xf8t 0x0t 0xbt 0x7ft
        0xf9t 0x0t 0xbt 0x7ft
        0xfat 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    const-string v0, "com.motorola.email.activity.setup.DPM_ACCOUNT_ADDITION"

    iput-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->ACTION_DPM_ACCOUNT_ADDITION:Ljava/lang/String;

    .line 48
    const-string v0, "com.motorola.email.activity.setup.DPM_REMOVE_ACCOUNT"

    iput-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->ACTION_DPM_ACCOUNT_DELETE:Ljava/lang/String;

    .line 51
    const-string v0, ".EDMServiceCredentialsService"

    iput-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mName:Ljava/lang/String;

    .line 101
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mProviderId:Ljava/lang/Long;

    .line 102
    iput v3, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mPwdPolicy:I

    .line 103
    iput v3, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mLoginType:I

    .line 105
    iput-object v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mPrettyName:Ljava/lang/String;

    .line 106
    iput-object v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mUsernameString:Ljava/lang/String;

    .line 107
    iput-object v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mProviderType:Ljava/lang/String;

    .line 108
    iput-object v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mEmailAddress:Ljava/lang/String;

    .line 109
    iput-object v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mPassword:Ljava/lang/String;

    .line 110
    iput-object v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mServer:Ljava/lang/String;

    .line 111
    iput-boolean v3, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mSsl:Z

    .line 112
    iput-object v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mActiveSyncUsername:Ljava/lang/String;

    .line 113
    iput-object v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;

    .line 114
    iput-object v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mProviderCredentials:Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;

    .line 115
    iput-boolean v3, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mAddSingleAccount:Z

    .line 116
    iput-object v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    .line 117
    iput-object v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mContext:Landroid/content/Context;

    .line 118
    iput-object v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mAccountManager:Landroid/accounts/AccountManager;

    .line 124
    iput-object v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mEdmErrorCode:Lmotorola/app/admin/EdmErrorCode;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/setup/EDMServiceCredentialsService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->messageHandlingComplete()V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/blur/setup/EDMServiceCredentialsService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/motorola/blur/setup/EDMServiceCredentialsService;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->getProviderInfo(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/motorola/blur/setup/EDMServiceCredentialsService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->getIntroStrings()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/motorola/blur/setup/EDMServiceCredentialsService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->setUpAuthentication()V

    return-void
.end method

.method static synthetic access$1302(Lcom/motorola/blur/setup/EDMServiceCredentialsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mNumDeleteAccounts:I

    return p1
.end method

.method static synthetic access$1402(Lcom/motorola/blur/setup/EDMServiceCredentialsService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mDeleteFailure:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/motorola/blur/setup/EDMServiceCredentialsService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->deleteEmailAccount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/motorola/blur/setup/EDMServiceCredentialsService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->idList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/motorola/blur/setup/EDMServiceCredentialsService;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mProviderId:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$302(Lcom/motorola/blur/setup/EDMServiceCredentialsService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mEmailAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/motorola/blur/setup/EDMServiceCredentialsService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/motorola/blur/setup/EDMServiceCredentialsService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mActiveSyncUsername:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/motorola/blur/setup/EDMServiceCredentialsService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mServer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/motorola/blur/setup/EDMServiceCredentialsService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mSsl:Z

    return p1
.end method

.method static synthetic access$802(Lcom/motorola/blur/setup/EDMServiceCredentialsService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mAddSingleAccount:Z

    return p1
.end method

.method static synthetic access$902(Lcom/motorola/blur/setup/EDMServiceCredentialsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mLoginType:I

    return p1
.end method

.method private checkForTypes(Z)Z
    .locals 6
    .parameter "defaultToBlur"

    .prologue
    const/4 v5, 0x1

    .line 384
    const/4 v0, 0x1

    .line 385
    .local v0, found:Z
    iget v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mLoginType:I

    if-nez v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mProviderType:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 388
    iget-object v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mProviderId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, providerType:Ljava/lang/String;
    iput-object v1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mProviderType:Ljava/lang/String;

    .line 395
    :goto_0
    const-string v2, "email"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 396
    invoke-direct {p0}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->getIntroStrings()Ljava/lang/String;

    .line 397
    iget-object v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mContext:Landroid/content/Context;

    const v3, 0x7f0c007b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mPrettyName:Ljava/lang/String;

    .line 398
    iput v5, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mLoginType:I

    .line 415
    .end local v1           #providerType:Ljava/lang/String;
    :cond_0
    :goto_1
    return v0

    .line 392
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mProviderType:Ljava/lang/String;

    .restart local v1       #providerType:Ljava/lang/String;
    goto :goto_0

    .line 399
    :cond_2
    const-string v2, "activesync"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 400
    const/4 v2, 0x4

    iput v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mLoginType:I

    .line 401
    invoke-direct {p0}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->getIntroStrings()Ljava/lang/String;

    goto :goto_1

    .line 402
    :cond_3
    iget v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mPwdPolicy:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 403
    const/16 v2, 0x9

    iput v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mLoginType:I

    goto :goto_1

    .line 404
    :cond_4
    if-ne p1, v5, :cond_5

    .line 405
    const/16 v2, 0x8

    iput v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mLoginType:I

    .line 406
    iget-object v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mPrettyName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 407
    invoke-direct {p0}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->getIntroStrings()Ljava/lang/String;

    goto :goto_1

    .line 412
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private deleteEmailAccount(Ljava/lang/String;)V
    .locals 13
    .parameter "emailID"

    .prologue
    .line 279
    const/4 v7, 0x0

    .line 280
    .local v7, accountFound:Z
    const-wide/16 v8, 0x0

    .line 281
    .local v8, accountId:J
    const-string v6, "provider_id=? AND email_address=? "

    .line 283
    .local v6, ACCOUNT_SELECTION_VIA_EMAIL:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    .line 284
    .local v2, ID_PROJECTION:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 285
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "activesync"

    invoke-static {v0, v1}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v10

    .line 286
    .local v10, activeSyncProviderId:J
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "provider_id=? AND email_address=? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .end local v6           #ACCOUNT_SELECTION_VIA_EMAIL:Ljava/lang/String;
    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 288
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_1

    .line 293
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    const/4 v7, 0x1

    .line 295
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 299
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    .end local v2           #ID_PROJECTION:[Ljava/lang/String;
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 307
    :cond_1
    if-nez v7, :cond_2

    .line 312
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v7, v1}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->onDeleteFinished(ZI)V

    .line 313
    return-void

    .line 303
    :catchall_0
    move-exception v1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getAuthenticator()Lcom/motorola/blur/authenticators/BlurAuthenticator;
    .locals 13

    .prologue
    .line 448
    iget v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mLoginType:I

    packed-switch v0, :pswitch_data_0

    .line 462
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mLoginType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    if-nez v0, :cond_0

    .line 451
    new-instance v0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;

    iget-object v1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mEmailAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mPassword:Ljava/lang/String;

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mProviderId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mServer:Ljava/lang/String;

    iget-object v9, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mActiveSyncUsername:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mSsl:Z

    sget-object v12, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->ACTIVE_SYNC_FIELDS:[I

    move-object v11, p0

    invoke-direct/range {v0 .. v12}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZLcom/motorola/blur/authenticators/BlurAuthenticationListener;[I)V

    .line 458
    :goto_0
    return-object v0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    check-cast v0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;

    iget-object v1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mEmailAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mPassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mServer:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mActiveSyncUsername:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mSsl:Z

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->updateAuthenticator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 458
    iget-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    goto :goto_0

    .line 448
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private getIntroStrings()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 423
    const/4 v7, 0x0

    .line 424
    .local v7, intro:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "login_label"

    aput-object v0, v2, v8

    const-string v0, "pretty_name"

    aput-object v0, v2, v9

    .line 425
    .local v2, proj:[Ljava/lang/String;
    iget-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Providers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mProviderId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 428
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 429
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mUsernameString:Ljava/lang/String;

    .line 431
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mPrettyName:Ljava/lang/String;

    .line 433
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 435
    :cond_1
    return-object v7
.end method

.method private getProviderInfo(J)V
    .locals 12
    .parameter "providerId"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 338
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup$Services;->PROVIDER_SERVICES_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 339
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ProviderProjection;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 344
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 345
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 346
    .local v6, count:I
    if-lez v6, :cond_1

    .line 347
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 348
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 349
    .local v9, providerType:Ljava/lang/String;
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mPrettyName:Ljava/lang/String;

    .line 350
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mPwdPolicy:I

    .line 351
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mUsernameString:Ljava/lang/String;

    .line 352
    iput-object v9, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mProviderType:Ljava/lang/String;

    .line 354
    invoke-direct {p0, v10}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->checkForTypes(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    const/4 v8, 0x0

    .line 357
    .local v8, found:Z
    :cond_0
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 367
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v8, :cond_0

    .line 370
    .end local v8           #found:Z
    .end local v9           #providerType:Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 373
    invoke-direct {p0, v11}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->checkForTypes(Z)Z

    .line 375
    .end local v6           #count:I
    :cond_2
    return-void

    .line 359
    .restart local v6       #count:I
    .restart local v8       #found:Z
    .restart local v9       #providerType:Ljava/lang/String;
    :pswitch_0
    const/4 v0, 0x6

    iput v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mLoginType:I

    .line 360
    const/4 v8, 0x1

    .line 361
    goto :goto_0

    .line 363
    :pswitch_1
    const/4 v0, 0x7

    iput v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mLoginType:I

    .line 364
    const/4 v8, 0x1

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private messageHandlingComplete()V
    .locals 2

    .prologue
    .line 273
    iget-object v1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mServiceHandler:Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;

    invoke-virtual {v1}, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 274
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 275
    iget-object v1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mServiceHandler:Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 276
    return-void
.end method

.method private setUpAuthentication()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    invoke-virtual {v0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->cleanUp()V

    .line 442
    :cond_0
    invoke-direct {p0}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->getAuthenticator()Lcom/motorola/blur/authenticators/BlurAuthenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    .line 443
    iget-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    check-cast v0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->setAutodiscover(Z)V

    .line 444
    iget-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    invoke-virtual {v0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->startAuthentication()V

    .line 445
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 269
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCaptchaRecieved(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 486
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 231
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 232
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IntentService[.EDMServiceCredentialsService]"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 235
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mServiceLooper:Landroid/os/Looper;

    .line 236
    new-instance v1, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;

    iget-object v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;-><init>(Lcom/motorola/blur/setup/EDMServiceCredentialsService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mServiceHandler:Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;

    .line 237
    invoke-virtual {p0}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mContext:Landroid/content/Context;

    .line 238
    new-instance v1, Lmotorola/app/admin/EdmErrorCode;

    iget-object v2, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmotorola/app/admin/EdmErrorCode;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mEdmErrorCode:Lmotorola/app/admin/EdmErrorCode;

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->idList:Ljava/util/List;

    .line 240
    return-void
.end method

.method public onDeleteFinished(ZI)V
    .locals 3
    .parameter "deleted"
    .parameter "error"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 316
    iget v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mNumDeleteAccounts:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mNumDeleteAccounts:I

    .line 317
    if-nez p1, :cond_0

    .line 318
    iput-boolean v1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mDeleteFailure:Z

    .line 320
    :cond_0
    iget v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mNumDeleteAccounts:I

    if-nez v0, :cond_1

    .line 321
    iget-boolean v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mDeleteFailure:Z

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mEdmErrorCode:Lmotorola/app/admin/EdmErrorCode;

    const/16 v1, -0xfa3

    invoke-virtual {v0, v1, v2}, Lmotorola/app/admin/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 326
    :goto_0
    invoke-direct {p0}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->messageHandlingComplete()V

    .line 328
    :cond_1
    return-void

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mEdmErrorCode:Lmotorola/app/admin/EdmErrorCode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lmotorola/app/admin/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 259
    iget-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    invoke-virtual {v0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->cleanUp()V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;

    invoke-interface {v0}, Lcom/motorola/blur/util/authentication/Authentication;->close()V

    .line 265
    :cond_1
    return-void
.end method

.method public onFinished(Landroid/app/AlertDialog;)V
    .locals 4
    .parameter "dialog"

    .prologue
    const/4 v3, 0x0

    .line 469
    new-instance v0, Lmotorola/app/admin/EdmErrorCode;

    iget-object v1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmotorola/app/admin/EdmErrorCode;-><init>(Landroid/content/Context;)V

    .line 470
    .local v0, edmErrorCode:Lmotorola/app/admin/EdmErrorCode;
    if-eqz p1, :cond_1

    .line 471
    iget-object v1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mEdmErrorCode:Lmotorola/app/admin/EdmErrorCode;

    const/16 v2, -0xfa1

    invoke-virtual {v1, v2, v3}, Lmotorola/app/admin/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    .line 475
    :goto_0
    iget-object v1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    invoke-virtual {v1}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->cleanUp()V

    .line 478
    :cond_0
    invoke-direct {p0}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->messageHandlingComplete()V

    .line 479
    return-void

    .line 473
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mEdmErrorCode:Lmotorola/app/admin/EdmErrorCode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lmotorola/app/admin/EdmErrorCode;->returnEdmStatus(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onMakeFieldsVisible([I)V
    .locals 0
    .parameter "fieldIds"

    .prologue
    .line 488
    return-void
.end method

.method public onProgress()V
    .locals 0

    .prologue
    .line 484
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 244
    iget-object v1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mServiceHandler:Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;

    invoke-virtual {v1}, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 245
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 246
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 247
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 248
    iget-object v1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->idList:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mServiceHandler:Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 253
    const/4 v1, 0x3

    return v1
.end method

.method public onUrlRecieved(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "url"
    .parameter "callbackUrl"

    .prologue
    .line 490
    return-void
.end method

.method public resetProgress()V
    .locals 0

    .prologue
    .line 482
    return-void
.end method

.method public setIntentRedelivery(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mRedelivery:Z

    .line 227
    return-void
.end method

.method public setupProgressDialog()V
    .locals 0

    .prologue
    .line 492
    return-void
.end method
