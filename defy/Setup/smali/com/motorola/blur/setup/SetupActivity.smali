.class public Lcom/motorola/blur/setup/SetupActivity;
.super Landroid/app/ActivityGroup;
.source "SetupActivity.java"


# static fields
.field public static final ACTION_CARRIER_LBS_CONSENT:Ljava/lang/String; = "com.motorola.setupwizard.locationconsent.ACTION_SHOW_LOC_CONSENT"

.field protected static final ADD_ACCOUNT_DONE:I = 0x16

.field protected static final BLUR_CONFIRMATION:I = 0x14

.field protected static final BLUR_EMAIL_ACTIVITY:I = 0x12

.field protected static final BLUR_PASSWORD_ACTIVITY:I = 0x13

.field public static final BLUR_SERVICE_AGREENMENT_ACCEPTED:Ljava/lang/String; = "BlurServiceAgreement"

.field public static final BLUR_SETUP_DISABLE_LOCATION_SERVICE:Ljava/lang/String; = "BlurSetupDisableLocationService"

.field public static final CAPTCHA_INPUT_NOTIFICATION_ID:I = 0x64

.field protected static final CAPTCHA_REQUEST:I = 0x10

.field public static final CLOUD_PREFERENCE:Ljava/lang/String; = "CloudPreference"

.field protected static final FIRST_APP_MENU_ITEM:I = 0x15

.field private static final FIRST_MENU_ITEM:I = 0xa

.field protected static final GOOGLE_AUTH:I = 0x11

.field public static final GOOGLE_AUTH_TYPE:Ljava/lang/String; = "com.google"

.field protected static final MAKE_EMERGENCY_CALL:I = 0xa

.field public static final NETWORK_TIME_SET_PREFERENCE:Ljava/lang/String; = "NetworkTimeSet"

.field public static final NEW_INTENT:Ljava/lang/String; = "Intent"

.field public static final PREFERENCES:Ljava/lang/String; = "DeviceSetup"

.field protected static final SET_UP_APN:I = 0xb

.field private static final SET_UP_CANCEL:I = 0xf

.field protected static final SET_UP_CLOUD:I = 0xc

.field protected static final SET_UP_WIFI:I = 0xd

.field public static final SHOW_CONNECTION_CHOOSER:Ljava/lang/String; = "ShowConnectionChooser"

.field public static final SHOW_DATA_SAVER:Ljava/lang/String; = "ShowDataSaverInSetup"

.field protected static final SHOW_MEID:I = 0xe

.field public static final SHOW_SKIP_SETUP_MENU:Ljava/lang/String; = "ShowSkipSetupMenu"

.field public static final SILENT_REGISTRATION_CAPTCHA_USER_INPUT:Ljava/lang/String; = "com.motorola.blur.setup.captcha.input"

.field public static final SILENT_REG_ACTION_ACCOMPLISHED:Ljava/lang/String; = "SilentRegActionAccomplished"

.field public static final SILENT_REG_ACTION_FORCE_SYNC_ONLY:Ljava/lang/String; = "SilentRegActionForceSyncOnly"

.field public static final SILENT_REG_ACTION_TEMP_FAILED:Ljava/lang/String; = "SilentRegActionTemplyFailed"

.field public static final SILENT_REG_CAPTCHA_RESULT:Ljava/lang/String; = "captcha.result"

.field public static final SILENT_REG_REGISTRATION_START:Ljava/lang/String; = "com.motorola.blur.setup.starttimer"

.field public static final SILENT_REG_REQUEST_FROM:Ljava/lang/String; = "SilentRegRequestFrom"

.field public static final SILENT_REG_REQUEST_FROM_ACTIVITY:I = 0x2

.field public static final SILENT_REG_REQUEST_FROM_RECEIVER:I = 0x1

.field public static final SILENT_REG_REQUEST_FROM_TIMER:I = 0x3

.field public static final SILENT_REG_REQUEST_FROM_UNKNOW:I = 0x0

.field public static final SILENT_REG_SYSTEM_UPDATE_REQUEST:Ljava/lang/String; = "BlurServiceSlientRegistrationSystemUpdateRequest"

.field private static final TAG:Ljava/lang/String; = "SetupActivityTAG"

.field public static final WIFI_PREFERENCE:Ljava/lang/String; = "WifiPreference"

.field protected static mCarrierSetupEnabled:Z

.field protected static mFlexConfigurationLatch:Z

.field protected static mIsCDMA:Z

.field protected static mShowConnectionChooser:Z

.field protected static mShowDataSaver:Z

.field protected static mShowSkipSetupMenu:Z

.field protected static mSilentRegistrationRequired:Z

.field protected static sBlurDeferredSetup:Z

.field protected static sHomeScreenPolicy:I


# instance fields
.field private mCloudPreference:Z

.field private mGotPreferences:Z

.field private mShowConfigMenuItems:Z

.field private mWifiPreference:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 89
    sput-boolean v0, Lcom/motorola/blur/setup/SetupActivity;->mShowSkipSetupMenu:Z

    .line 90
    sput-boolean v1, Lcom/motorola/blur/setup/SetupActivity;->mShowConnectionChooser:Z

    .line 91
    sput-boolean v0, Lcom/motorola/blur/setup/SetupActivity;->mShowDataSaver:Z

    .line 92
    sput-boolean v0, Lcom/motorola/blur/setup/SetupActivity;->mFlexConfigurationLatch:Z

    .line 93
    sput-boolean v0, Lcom/motorola/blur/setup/SetupActivity;->mSilentRegistrationRequired:Z

    .line 94
    sput-boolean v1, Lcom/motorola/blur/setup/SetupActivity;->mIsCDMA:Z

    .line 95
    sput-boolean v0, Lcom/motorola/blur/setup/SetupActivity;->mCarrierSetupEnabled:Z

    .line 96
    sput v1, Lcom/motorola/blur/setup/SetupActivity;->sHomeScreenPolicy:I

    .line 97
    sput-boolean v0, Lcom/motorola/blur/setup/SetupActivity;->sBlurDeferredSetup:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 84
    iput-boolean v1, p0, Lcom/motorola/blur/setup/SetupActivity;->mShowConfigMenuItems:Z

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/SetupActivity;->mGotPreferences:Z

    .line 86
    iput-boolean v1, p0, Lcom/motorola/blur/setup/SetupActivity;->mCloudPreference:Z

    .line 87
    iput-boolean v1, p0, Lcom/motorola/blur/setup/SetupActivity;->mWifiPreference:Z

    .line 27
    return-void
.end method

.method private static final addMenuItem(Landroid/content/res/Resources;Landroid/view/Menu;II)V
    .locals 3
    .parameter "resources"
    .parameter "menu"
    .parameter "menuId"
    .parameter "titleId"

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, p2, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 180
    .local v0, item:Landroid/view/MenuItem;
    packed-switch p2, :pswitch_data_0

    .line 197
    :goto_0
    :pswitch_0
    return-void

    .line 182
    :pswitch_1
    const v1, 0x30201e2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 185
    :pswitch_2
    const v1, 0x3020205

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 188
    :pswitch_3
    const v1, 0x30201f6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 191
    :pswitch_4
    const v1, 0x3020224

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 194
    :pswitch_5
    const v1, 0x3020215

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method static final haveEmailAccounts(Landroid/content/Context;)Z
    .locals 9
    .parameter "ctx"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 310
    .local v0, content:Landroid/content/ContentResolver;
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->EMAIL_ACCOUNTS_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 311
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v1, v8

    .line 316
    :goto_0
    return v1

    .line 314
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    move v7, v1

    .line 315
    .local v7, ret:Z
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v1, v7

    .line 316
    goto :goto_0

    .end local v7           #ret:Z
    :cond_1
    move v7, v8

    .line 314
    goto :goto_1
.end method

.method private final setUpApn()V
    .locals 2

    .prologue
    .line 250
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APN_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/motorola/blur/setup/SetupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 252
    return-void
.end method

.method private final setUpCloud()V
    .locals 2

    .prologue
    .line 242
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.MotherCloudPicker"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/motorola/blur/setup/SetupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 244
    return-void
.end method

.method private final setUpWifi()V
    .locals 2

    .prologue
    .line 233
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, Lcom/motorola/blur/setup/SetupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 235
    return-void
.end method

.method private showMEID()V
    .locals 8

    .prologue
    .line 258
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 260
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c00d5

    .line 261
    .local v1, msgStringId:I
    const v3, 0x7f0c00d4

    .line 263
    .local v3, titleStringId:I
    sget-boolean v5, Lcom/motorola/blur/setup/SetupActivity;->mIsCDMA:Z

    if-nez v5, :cond_0

    .line 264
    const v1, 0x7f0c00d3

    .line 265
    const v3, 0x7f0c00d2

    .line 267
    :cond_0
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 268
    const v5, 0x7f0c007f

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 269
    const/4 v2, 0x0

    .line 270
    .local v2, strMEID:Ljava/lang/String;
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/SetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 271
    .local v4, tm:Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_1

    .line 272
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v5, v1, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 278
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 279
    return-void
.end method


# virtual methods
.method protected goBack()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 122
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 123
    const-string v1, "call_from_main"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/SetupActivity;->setResult(I)V

    .line 128
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->finish()V

    goto :goto_0
.end method

.method protected final hasWiFiSupport()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method public hideConfigMenuItems()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/SetupActivity;->mShowConfigMenuItems:Z

    .line 169
    return-void
.end method

.method protected final makeEmergencyCall()V
    .locals 2

    .prologue
    .line 291
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/SetupActivity;->startActivity(Landroid/content/Intent;)V

    .line 293
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->goBack()V

    .line 284
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 103
    sget-boolean v1, Lcom/motorola/blur/setup/SetupActivity;->mFlexConfigurationLatch:Z

    if-nez v1, :cond_0

    .line 104
    sput-boolean v4, Lcom/motorola/blur/setup/SetupActivity;->mFlexConfigurationLatch:Z

    .line 105
    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/SetupActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    .local v0, pref:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 107
    const-string v1, "ShowSkipSetupMenu"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/blur/setup/SetupActivity;->mShowSkipSetupMenu:Z

    .line 108
    const-string v1, "ShowConnectionChooser"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/blur/setup/SetupActivity;->mShowConnectionChooser:Z

    .line 109
    const-string v1, "ShowDataSaverInSetup"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/blur/setup/SetupActivity;->mShowDataSaver:Z

    .line 112
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/blur/setup/SetupActivity;->mCarrierSetupEnabled:Z

    .line 113
    invoke-static {p0}, Lcom/motorola/blur/setup/SilentBlurUtility;->isSilentRegistrationRequired(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/blur/setup/SetupActivity;->mSilentRegistrationRequired:Z

    .line 114
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    move v1, v4

    :goto_0
    sput-boolean v1, Lcom/motorola/blur/setup/SetupActivity;->mIsCDMA:Z

    .line 115
    return-void

    :cond_1
    move v1, v3

    .line 114
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/16 v6, 0xe

    const/4 v5, 0x1

    .line 133
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 135
    iget-boolean v3, p0, Lcom/motorola/blur/setup/SetupActivity;->mShowConfigMenuItems:Z

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/motorola/blur/setup/SetupActivity;->mSilentRegistrationRequired:Z

    if-nez v3, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 137
    .local v1, resources:Landroid/content/res/Resources;
    const/16 v3, 0xa

    const v4, 0x7f0c006b

    invoke-static {v1, p1, v3, v4}, Lcom/motorola/blur/setup/SetupActivity;->addMenuItem(Landroid/content/res/Resources;Landroid/view/Menu;II)V

    .line 138
    const/16 v3, 0xb

    const v4, 0x7f0c00cf

    invoke-static {v1, p1, v3, v4}, Lcom/motorola/blur/setup/SetupActivity;->addMenuItem(Landroid/content/res/Resources;Landroid/view/Menu;II)V

    .line 139
    iget-boolean v3, p0, Lcom/motorola/blur/setup/SetupActivity;->mGotPreferences:Z

    if-nez v3, :cond_2

    .line 140
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/SetupActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 141
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    if-eqz v2, :cond_1

    .line 142
    const-string v3, "CloudPreference"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/blur/setup/SetupActivity;->mCloudPreference:Z

    .line 143
    const-string v3, "ro.build.type"

    const-string v4, "eng"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, buildtype:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/motorola/blur/setup/SetupActivity;->mCloudPreference:Z

    if-eqz v3, :cond_0

    const-string v3, "user"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    const/16 v3, 0xc

    const v4, 0x7f0c00d0

    invoke-static {v1, p1, v3, v4}, Lcom/motorola/blur/setup/SetupActivity;->addMenuItem(Landroid/content/res/Resources;Landroid/view/Menu;II)V

    .line 148
    :cond_0
    const-string v3, "WifiPreference"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/blur/setup/SetupActivity;->mWifiPreference:Z

    .line 149
    iget-boolean v3, p0, Lcom/motorola/blur/setup/SetupActivity;->mWifiPreference:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->hasWiFiSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    const/16 v3, 0xd

    const v4, 0x7f0c00d1

    invoke-static {v1, p1, v3, v4}, Lcom/motorola/blur/setup/SetupActivity;->addMenuItem(Landroid/content/res/Resources;Landroid/view/Menu;II)V

    .line 154
    .end local v0           #buildtype:Ljava/lang/String;
    :cond_1
    iput-boolean v5, p0, Lcom/motorola/blur/setup/SetupActivity;->mGotPreferences:Z

    .line 156
    .end local v2           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_2
    sget-boolean v3, Lcom/motorola/blur/setup/SetupActivity;->mIsCDMA:Z

    if-eqz v3, :cond_4

    .line 157
    const v3, 0x7f0c00d4

    invoke-static {v1, p1, v6, v3}, Lcom/motorola/blur/setup/SetupActivity;->addMenuItem(Landroid/content/res/Resources;Landroid/view/Menu;II)V

    .line 161
    :goto_0
    sget-boolean v3, Lcom/motorola/blur/setup/SetupActivity;->mShowSkipSetupMenu:Z

    if-eqz v3, :cond_3

    .line 162
    const/16 v3, 0xf

    const v4, 0x7f0c0114

    invoke-static {v1, p1, v3, v4}, Lcom/motorola/blur/setup/SetupActivity;->addMenuItem(Landroid/content/res/Resources;Landroid/view/Menu;II)V

    .line 164
    .end local v1           #resources:Landroid/content/res/Resources;
    :cond_3
    return v5

    .line 159
    .restart local v1       #resources:Landroid/content/res/Resources;
    :cond_4
    const v3, 0x7f0c00d2

    invoke-static {v1, p1, v6, v3}, Lcom/motorola/blur/setup/SetupActivity;->addMenuItem(Landroid/content/res/Resources;Landroid/view/Menu;II)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 221
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 203
    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->makeEmergencyCall()V

    move v0, v1

    .line 204
    goto :goto_0

    .line 206
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;->setUpApn()V

    move v0, v1

    .line 207
    goto :goto_0

    .line 209
    :pswitch_2
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;->setUpCloud()V

    move v0, v1

    .line 210
    goto :goto_0

    .line 212
    :pswitch_3
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;->setUpWifi()V

    move v0, v1

    .line 213
    goto :goto_0

    .line 215
    :pswitch_4
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;->showMEID()V

    move v0, v1

    .line 216
    goto :goto_0

    .line 218
    :pswitch_5
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->setUpCancel()V

    move v0, v1

    .line 219
    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected final setUpCancel()V
    .locals 2

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/blur/setup/SkipSetupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/SetupActivity;->startActivity(Landroid/content/Intent;)V

    .line 230
    return-void
.end method
