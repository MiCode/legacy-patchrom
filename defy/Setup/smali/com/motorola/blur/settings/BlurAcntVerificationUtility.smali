.class public Lcom/motorola/blur/settings/BlurAcntVerificationUtility;
.super Ljava/lang/Object;
.source "BlurAcntVerificationUtility.java"


# static fields
.field private static final CARRIER_CONTACT_INFO:Ljava/lang/String; = "carrier_contact_info"

.field private static final EMAIL_ADDRESS_PROJECTION:[Ljava/lang/String; = null

.field public static final MOTOBLURID:Ljava/lang/String; = "motoblurId"

.field public static final MOTOBLURID_VERIFIED:Ljava/lang/String; = "motoblurIdVerified"

.field private static final PROVIDER_SELECTION:Ljava/lang/String; = "provider_id!= ?"

.field private static final TAG:Ljava/lang/String; = "SettingsVBPA"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "email_address"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/settings/BlurAcntVerificationUtility;->EMAIL_ADDRESS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getForgotPasswordDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 6
    .parameter "context"

    .prologue
    const v5, 0x7f0c003d

    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, carrierContactInfo:Ljava/lang/String;
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 190
    .local v2, pref:Landroid/content/SharedPreferences;
    if-eqz v2, :cond_0

    .line 191
    const-string v3, "carrier_contact_info"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 198
    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c000c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c007f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    return-object v3
.end method

.method public static getMotoBlurError(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 143
    const/4 v2, 0x0

    .line 145
    .local v2, error:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 146
    .local v1, acntManager:Landroid/accounts/AccountManager;
    const-string v4, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 148
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v3, v0

    .line 149
    .local v3, length:I
    if-lez v3, :cond_0

    .line 150
    const/4 v4, 0x1

    sub-int v4, v3, v4

    aget-object v4, v0, v4

    const-string v5, "com.motorola.blur.service.bsutils.MOTHER_USER_ACCOUNT_STATE"

    invoke-virtual {v1, v4, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 160
    .end local v0           #accounts:[Landroid/accounts/Account;
    .end local v1           #acntManager:Landroid/accounts/AccountManager;
    .end local v3           #length:I
    :cond_0
    :goto_0
    return-object v2

    .line 154
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getMotoBlurId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 131
    const/4 v3, 0x0

    .line 132
    .local v3, motoblurId:Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 133
    .local v1, acntManager:Landroid/accounts/AccountManager;
    const-string v4, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 135
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v2, v0

    .line 136
    .local v2, length:I
    if-lez v2, :cond_0

    .line 137
    const/4 v4, 0x1

    sub-int v4, v2, v4

    aget-object v4, v0, v4

    const-string v5, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_EMAIL"

    invoke-virtual {v1, v4, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    :cond_0
    return-object v3
.end method

.method private static sendVerifiedMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "email"

    .prologue
    .line 170
    invoke-static {p0}, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClientFactory;->getClient(Landroid/content/Context;)Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    move-result-object v0

    .line 172
    .local v0, wsClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;
    invoke-interface {v0, p1}, Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;->verifyAccount(Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 176
    return-void
.end method

.method public static verifyBlurEmailWithNewAccount(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "accountEmail"

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "blur_account_verified"

    invoke-static {v1, v2}, Lcom/motorola/blur/provider/DeviceSetup$AppSettings;->getAppSettings(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-static {p0}, Lcom/motorola/blur/settings/BlurAcntVerificationUtility;->getMotoBlurId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, blurEmail:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-static {p0, v0}, Lcom/motorola/blur/settings/BlurAcntVerificationUtility;->sendVerifiedMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    const/4 v1, 0x1

    .line 121
    .end local v0           #blurEmail:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static verifyBlurPasswordFromGAM(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "password"

    .prologue
    .line 219
    const/4 v2, 0x0

    .line 220
    .local v2, error:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 221
    const v4, 0x7f0c0108

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "{1}"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "{0}"

    const v6, 0x7f0c007c

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 242
    :cond_0
    :goto_0
    return-object v2

    .line 225
    :cond_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 226
    .local v0, accountMgr:Landroid/accounts/AccountManager;
    const-string v4, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

    invoke-virtual {v0, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 228
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v3, v1

    .line 229
    .local v3, length:I
    if-lez v3, :cond_2

    .line 230
    const/4 v4, 0x1

    sub-int v4, v3, v4

    aget-object v4, v1, v4

    invoke-virtual {v0, v4}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 232
    const v4, 0x7f0c00ec

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 239
    :cond_2
    const v4, 0x7f0c00eb

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static verifyNewBlurEmail(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .parameter "context"
    .parameter "blurEmail"

    .prologue
    const/4 v10, 0x0

    .line 63
    const/4 v7, 0x0

    .line 64
    .local v7, verified:Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 66
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/blur/settings/BlurAcntVerificationUtility;->EMAIL_ADDRESS_PROJECTION:[Ljava/lang/String;

    const-string v3, "provider_id!= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "email"

    invoke-static {v0, v5}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 70
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 71
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v7, :cond_1

    .line 72
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-static {p0, p1}, Lcom/motorola/blur/settings/BlurAcntVerificationUtility;->sendVerifiedMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    const/4 v7, 0x1

    goto :goto_0

    .line 80
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_2
    if-nez v7, :cond_3

    .line 83
    const-string v1, "blur_account_verified"

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/provider/DeviceSetup$AppSettings;->setAppSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 91
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_3
    return v7
.end method
