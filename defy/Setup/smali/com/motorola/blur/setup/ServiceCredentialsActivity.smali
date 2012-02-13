.class public Lcom/motorola/blur/setup/ServiceCredentialsActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "ServiceCredentialsActivity.java"

# interfaces
.implements Lcom/motorola/blur/authenticators/BlurAuthenticationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/ServiceCredentialsActivity$AdapterFilterQueryTask;,
        Lcom/motorola/blur/setup/ServiceCredentialsActivity$NewAcntWebViewClient;,
        Lcom/motorola/blur/setup/ServiceCredentialsActivity$LoginTypes;,
        Lcom/motorola/blur/setup/ServiceCredentialsActivity$ProviderProjection;
    }
.end annotation


# static fields
.field private static final ACTIVE_SYNC_FIELDS:[I = null

.field private static final AUTO_COMPLETE_EMAIL_INDEX:I = 0x0

.field private static final AUTO_COMPLETE_PROJECTION:[Ljava/lang/String; = null

.field protected static final DELETE_AND_READD_CREDENTIALS:Ljava/lang/String; = null

.field protected static final LOADED_FLEX_SETTINGS:I = 0x7

.field private static final MANUAL_ACTIVESYNC_MENU_ITEM:I = 0x15

.field private static final PROGRESS_POINTS:[I = null

.field private static final PROVIDER_PRETTY_NAME_PROJECTION:[Ljava/lang/String; = null

.field protected static final RECEIVED_AUTH_RESPONSE:I = 0x5

.field protected static final RECEIVED_MAIL_SETTINGS:I = 0x2

.field protected static final RECEIVED_REMOVE_CREDENTIALS_RESPONSE:I = 0x6

.field protected static final RECEIVED_SAVE_NAME_VALUE_SETTINGS:I = 0x4

.field protected static final SERVICE_RESTARTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SCA"

.field private static final VALIDATE_SNP_CAPTCHA:I = 0x3


# instance fields
.field private mActiveSyncUsername:Ljava/lang/String;

.field private mAddSingleAccount:Z

.field private mAlertDlg:Landroid/app/AlertDialog;

.field private mAuth:Lcom/motorola/blur/util/authentication/Authentication;

.field private mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

.field private mBackground:I

.field private mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

.field private mCallbackUrl:Ljava/lang/String;

.field private mCaptchaUserText:Ljava/lang/String;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mEmailAddress:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mHasFocus:Z

.field private mIntroText:Landroid/widget/TextView;

.field private mIsDeviceProvisioned:Z

.field private mIsFlexProviderAvailable:Z

.field private mLoginType:I

.field private mMeName:Ljava/lang/String;

.field private mNextButton:Landroid/widget/Button;

.field private mPassword:Ljava/lang/String;

.field private mPrettyName:Ljava/lang/String;

.field private mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

.field protected mProviderCredentials:Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;

.field private mProviderId:Ljava/lang/Long;

.field private mProviderType:Ljava/lang/String;

.field private mPwdPolicy:I

.field private mServer:Ljava/lang/String;

.field private mUsernameString:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private mYahooMailProviderId:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->PROGRESS_POINTS:[I

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "email_address"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->AUTO_COMPLETE_PROJECTION:[Ljava/lang/String;

    .line 107
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->ACTIVE_SYNC_FIELDS:[I

    .line 113
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "pretty_name"

    aput-object v1, v0, v2

    sput-object v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->PROVIDER_PRETTY_NAME_PROJECTION:[Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->DELETE_AND_READD_CREDENTIALS:Ljava/lang/String;

    return-void

    .line 88
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
        0x70t 0x17t 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t
    .end array-data

    .line 107
    :array_1
    .array-data 0x4
        0xf8t 0x0t 0xbt 0x7ft
        0xf9t 0x0t 0xbt 0x7ft
        0xfat 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    .line 132
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderId:Ljava/lang/Long;

    .line 133
    iput v2, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPwdPolicy:I

    .line 134
    iput-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 135
    iput v2, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mLoginType:I

    .line 136
    iput-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mMeName:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mNextButton:Landroid/widget/Button;

    .line 139
    iput-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPrettyName:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mUsernameString:Ljava/lang/String;

    .line 141
    iput-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderType:Ljava/lang/String;

    .line 142
    iput-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mEmailAddress:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPassword:Ljava/lang/String;

    .line 144
    iput-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mServer:Ljava/lang/String;

    .line 145
    iput-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mActiveSyncUsername:Ljava/lang/String;

    .line 146
    iput-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;

    .line 147
    iput v2, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mBackground:I

    .line 148
    iput-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderCredentials:Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;

    .line 151
    iput-boolean v2, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAddSingleAccount:Z

    .line 152
    iput-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    .line 153
    iput-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mCaptchaUserText:Ljava/lang/String;

    .line 154
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mYahooMailProviderId:Ljava/lang/Long;

    .line 156
    iput-boolean v2, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mIsDeviceProvisioned:Z

    .line 158
    iput-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mWebView:Landroid/webkit/WebView;

    .line 159
    iput-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mCallbackUrl:Ljava/lang/String;

    .line 160
    iput-boolean v2, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mHasFocus:Z

    .line 161
    iput-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAlertDlg:Landroid/app/AlertDialog;

    .line 185
    new-instance v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity$1;-><init>(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mHandler:Landroid/os/Handler;

    .line 797
    new-instance v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$6;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity$6;-><init>(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/setup/ServiceCredentialsActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->interceptUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)Ljava/lang/Long;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mYahooMailProviderId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)Ljava/lang/Long;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)Lcom/motorola/blur/util/cache/ProviderIconCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mIntroText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->AUTO_COMPLETE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->setUpAuthentication()V

    return-void
.end method

.method private checkForTypes(Z)Z
    .locals 6
    .parameter "defaultToBlur"

    .prologue
    const/4 v5, 0x1

    .line 642
    const/4 v0, 0x1

    .line 643
    .local v0, found:Z
    iget v2, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mLoginType:I

    if-nez v2, :cond_0

    .line 645
    iget-object v2, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderType:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 646
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, providerType:Ljava/lang/String;
    iput-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderType:Ljava/lang/String;

    .line 652
    :goto_0
    const-string v2, "email"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 653
    invoke-direct {p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->getIntroStrings()Ljava/lang/String;

    .line 654
    const v2, 0x7f0c007b

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPrettyName:Ljava/lang/String;

    .line 655
    iput v5, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mLoginType:I

    .line 674
    .end local v1           #providerType:Ljava/lang/String;
    :cond_0
    :goto_1
    return v0

    .line 649
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderType:Ljava/lang/String;

    .restart local v1       #providerType:Ljava/lang/String;
    goto :goto_0

    .line 656
    :cond_2
    const-string v2, "activesync"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 657
    const/4 v2, 0x4

    iput v2, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mLoginType:I

    .line 658
    invoke-direct {p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->getIntroStrings()Ljava/lang/String;

    goto :goto_1

    .line 659
    :cond_3
    const-string v2, "yahoo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 660
    const/16 v2, 0xa

    iput v2, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mLoginType:I

    goto :goto_1

    .line 661
    :cond_4
    iget v2, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPwdPolicy:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 662
    const/16 v2, 0x9

    iput v2, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mLoginType:I

    goto :goto_1

    .line 663
    :cond_5
    if-ne p1, v5, :cond_6

    .line 664
    const/16 v2, 0x8

    iput v2, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mLoginType:I

    .line 665
    iget-object v2, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPrettyName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 666
    invoke-direct {p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->getIntroStrings()Ljava/lang/String;

    goto :goto_1

    .line 671
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private closeActivity(I)V
    .locals 1
    .parameter "result"

    .prologue
    .line 771
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    invoke-virtual {v0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->cleanUp()V

    .line 774
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    if-eqz v0, :cond_1

    .line 777
    invoke-direct {p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->startSuccessActivity()V

    .line 780
    :cond_1
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->setResult(I)V

    .line 781
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->finish()V

    .line 782
    return-void
.end method

.method private getAuthenticator()Lcom/motorola/blur/authenticators/BlurAuthenticator;
    .locals 25

    .prologue
    .line 833
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mLoginType:I

    move v2, v0

    packed-switch v2, :pswitch_data_0

    .line 895
    :pswitch_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown type - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mLoginType:I

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 835
    :pswitch_1
    const v2, 0x7f0b00fa

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/CheckBox;

    .line 836
    .local v24, check:Landroid/widget/CheckBox;
    const/4 v12, 0x1

    .line 837
    .local v12, usessl:Z
    if-eqz v24, :cond_0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 839
    const/4 v12, 0x0

    .line 841
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    move-object v2, v0

    if-nez v2, :cond_1

    .line 842
    new-instance v2, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mEmailAddress:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPassword:Ljava/lang/String;

    move-object v5, v0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderId:Ljava/lang/Long;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mServer:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mActiveSyncUsername:Ljava/lang/String;

    move-object v11, v0

    sget-object v14, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->ACTIVE_SYNC_FIELDS:[I

    move-object/from16 v3, p0

    move-object/from16 v13, p0

    invoke-direct/range {v2 .. v14}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZLcom/motorola/blur/authenticators/BlurAuthenticationListener;[I)V

    .line 891
    .end local v12           #usessl:Z
    .end local v24           #check:Landroid/widget/CheckBox;
    :goto_0
    return-object v2

    .line 847
    .restart local v12       #usessl:Z
    .restart local v24       #check:Landroid/widget/CheckBox;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    move-object v7, v0

    check-cast v7, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mEmailAddress:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPassword:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mServer:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mActiveSyncUsername:Ljava/lang/String;

    move-object v11, v0

    invoke-virtual/range {v7 .. v12}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->updateAuthenticator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    move-object v2, v0

    goto :goto_0

    .line 851
    .end local v12           #usessl:Z
    .end local v24           #check:Landroid/widget/CheckBox;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    move-object v2, v0

    if-nez v2, :cond_3

    .line 852
    new-instance v2, Landroid/os/SystemProperties;

    invoke-direct {v2}, Landroid/os/SystemProperties;-><init>()V

    const-string v2, "ro.mot.fid.34412.deblur"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 853
    new-instance v2, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mEmailAddress:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPassword:Ljava/lang/String;

    move-object v5, v0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderId:Ljava/lang/Long;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v3, p0

    move-object/from16 v10, p0

    invoke-direct/range {v2 .. v10}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLcom/motorola/blur/authenticators/BlurAuthenticationListener;)V

    goto :goto_0

    .line 855
    :cond_2
    new-instance v2, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mEmailAddress:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPassword:Ljava/lang/String;

    move-object v5, v0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderId:Ljava/lang/Long;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v3, p0

    move-object/from16 v10, p0

    invoke-direct/range {v2 .. v10}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLcom/motorola/blur/authenticators/BlurAuthenticationListener;)V

    goto :goto_0

    .line 857
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mEmailAddress:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPassword:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->updateAuthenticator(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    move-object v2, v0

    goto/16 :goto_0

    .line 861
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    move-object v2, v0

    if-nez v2, :cond_4

    .line 862
    new-instance v13, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mEmailAddress:Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPassword:Ljava/lang/String;

    move-object/from16 v16, v0

    const-wide/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderId:Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPrettyName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderType:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v14, p0

    move-object/from16 v21, p0

    invoke-direct/range {v13 .. v23}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLcom/motorola/blur/authenticators/BlurAuthenticationListener;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v13

    goto/16 :goto_0

    .line 865
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    move-object v2, v0

    check-cast v2, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mEmailAddress:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPassword:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mCaptchaUserText:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->updateSNAuthenticator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mCaptchaUserText:Ljava/lang/String;

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    move-object v2, v0

    goto/16 :goto_0

    .line 871
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    move-object v2, v0

    if-nez v2, :cond_5

    .line 872
    new-instance v2, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mEmailAddress:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPassword:Ljava/lang/String;

    move-object v5, v0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderId:Ljava/lang/Long;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v3, p0

    move-object/from16 v10, p0

    invoke-direct/range {v2 .. v10}, Lcom/motorola/blur/authenticators/BlurFixedEmailAuthenticator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLcom/motorola/blur/authenticators/BlurAuthenticationListener;)V

    goto/16 :goto_0

    .line 875
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mEmailAddress:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPassword:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->updateAuthenticator(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    move-object v2, v0

    goto/16 :goto_0

    .line 879
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    move-object v2, v0

    if-nez v2, :cond_6

    .line 880
    new-instance v2, Lcom/motorola/blur/authenticators/BlurYahooAuthenticator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mEmailAddress:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPassword:Ljava/lang/String;

    move-object v5, v0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderId:Ljava/lang/Long;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v3, p0

    move-object/from16 v10, p0

    invoke-direct/range {v2 .. v10}, Lcom/motorola/blur/authenticators/BlurYahooAuthenticator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLcom/motorola/blur/authenticators/BlurAuthenticationListener;)V

    goto/16 :goto_0

    .line 883
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mEmailAddress:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPassword:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->updateAuthenticator(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    move-object v2, v0

    goto/16 :goto_0

    .line 887
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    move-object v2, v0

    if-nez v2, :cond_7

    .line 888
    new-instance v2, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderId:Ljava/lang/Long;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderType:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPrettyName:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v3, p0

    move-object/from16 v8, p0

    invoke-direct/range {v2 .. v10}, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;-><init>(Landroid/content/Context;JJLcom/motorola/blur/authenticators/BlurAuthenticationListener;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 890
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    move-object v2, v0

    check-cast v2, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mCallbackUrl:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->updateOAuthAuthenticator(Ljava/lang/String;)V

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    move-object v2, v0

    goto/16 :goto_0

    .line 833
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private getIntroStrings()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 682
    const/4 v7, 0x0

    .line 683
    .local v7, intro:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "login_label"

    aput-object v0, v2, v8

    const-string v0, "pretty_name"

    aput-object v0, v2, v9

    .line 684
    .local v2, proj:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Providers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 687
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 688
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mUsernameString:Ljava/lang/String;

    .line 690
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPrettyName:Ljava/lang/String;

    .line 692
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 694
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

    .line 597
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup$Services;->PROVIDER_SERVICES_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 598
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/motorola/blur/setup/ServiceCredentialsActivity$ProviderProjection;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 603
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 604
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 605
    .local v6, count:I
    if-lez v6, :cond_1

    .line 606
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 607
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 608
    .local v9, providerType:Ljava/lang/String;
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPrettyName:Ljava/lang/String;

    .line 609
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPwdPolicy:I

    .line 610
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mUsernameString:Ljava/lang/String;

    .line 611
    iput-object v9, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderType:Ljava/lang/String;

    .line 613
    invoke-direct {p0, v10}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->checkForTypes(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 614
    const/4 v8, 0x0

    .line 616
    .local v8, found:Z
    :cond_0
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 626
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v8, :cond_0

    .line 629
    .end local v8           #found:Z
    .end local v9           #providerType:Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 632
    invoke-direct {p0, v11}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->checkForTypes(Z)Z

    .line 634
    .end local v6           #count:I
    :cond_2
    return-void

    .line 618
    .restart local v6       #count:I
    .restart local v8       #found:Z
    .restart local v9       #providerType:Ljava/lang/String;
    :pswitch_0
    const/4 v0, 0x6

    iput v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mLoginType:I

    .line 619
    const/4 v8, 0x1

    .line 620
    goto :goto_0

    .line 622
    :pswitch_1
    const/4 v0, 0x7

    iput v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mLoginType:I

    .line 623
    const/4 v8, 0x1

    goto :goto_0

    .line 616
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private interceptUrl(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    const-string v1, "SCA"

    .line 1039
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mCallbackUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mCallbackUrl:Ljava/lang/String;

    .line 1041
    const-string v0, "SCA"

    const-string v0, "Loading Url matched the callback url"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    const/4 v0, 0x1

    .line 1053
    :goto_0
    return v0

    .line 1052
    :cond_0
    const-string v0, "SCA"

    const-string v0, " didnt match the string"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEmailAccount()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 911
    iget v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mLoginType:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mLoginType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mLoginType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetUI()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 756
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 758
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 759
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 761
    :cond_0
    return-void
.end method

.method private setUpAuthentication()V
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    invoke-virtual {v0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->cleanUp()V

    .line 828
    :cond_0
    invoke-direct {p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->getAuthenticator()Lcom/motorola/blur/authenticators/BlurAuthenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    .line 829
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    invoke-virtual {v0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->startAuthentication()V

    .line 830
    return-void
.end method

.method private showAlertDialog(Landroid/app/AlertDialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 940
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 941
    invoke-direct {p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->resetUI()V

    .line 942
    return-void
.end method

.method private startSuccessActivity()V
    .locals 4

    .prologue
    .line 786
    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/motorola/blur/setup/AccountSuccessActivity;->loadCapabilities(Landroid/content/Context;J)[Z

    move-result-object v0

    .line 787
    .local v0, caps:[Z
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/motorola/blur/setup/AccountSuccessActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "providers_id"

    iget-object v3, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderId:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    iget v3, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mBackground:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "capability"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->startActivity(Landroid/content/Intent;)V

    .line 791
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->setResult(I)V

    .line 792
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->finish()V

    .line 793
    return-void
.end method


# virtual methods
.method public dismissProgress()V
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->hide()V

    .line 1008
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->dismiss()V

    .line 1010
    :cond_0
    return-void
.end method

.method protected getSNPError(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;)Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    .locals 2
    .parameter "response"

    .prologue
    .line 550
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->UNKNOWN_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 551
    .local v0, snpError:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    if-eqz p1, :cond_0

    .line 552
    invoke-virtual {p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->getSnpExtendedError()I

    move-result v1

    invoke-static {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->valueOf(I)Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    move-result-object v0

    .line 554
    :cond_0
    return-object v0
.end method

.method protected goBack()V
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    invoke-virtual {v0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->cleanUp()V

    .line 907
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->closeActivity(I)V

    .line 908
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 1017
    packed-switch p1, :pswitch_data_0

    .line 1036
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1019
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 1020
    invoke-direct {p0, v0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->closeActivity(I)V

    goto :goto_0

    .line 1024
    :pswitch_2
    if-ne p2, v0, :cond_1

    .line 1025
    if-eqz p3, :cond_1

    .line 1026
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mCaptchaUserText:Ljava/lang/String;

    .line 1027
    invoke-direct {p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->setUpAuthentication()V

    goto :goto_0

    .line 1031
    :cond_1
    invoke-direct {p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->resetUI()V

    .line 1032
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->dismissProgress()V

    goto :goto_0

    .line 1017
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCaptchaRecieved(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 957
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->dismissProgress()V

    .line 958
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 959
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 33
    .parameter "icicle"

    .prologue
    .line 225
    invoke-super/range {p0 .. p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->hideConfigMenuItems()V

    .line 228
    invoke-static/range {p0 .. p0}, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->hasBlurAccount(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    :goto_0
    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mIsDeviceProvisioned:Z

    .line 229
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mIsDeviceProvisioned:Z

    move v6, v0

    if-nez v6, :cond_0

    .line 230
    const-string v6, "SCA"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "load set up from ap flex"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/motorola/blur/util/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    invoke-static/range {p0 .. p0}, Lcom/motorola/blur/setup/FlexEmailProviders;->initialize(Landroid/content/Context;)V

    .line 235
    invoke-static {}, Lcom/motorola/blur/setup/FlexEmailProviders;->getInstance()Lcom/motorola/blur/setup/FlexEmailProviders;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/blur/setup/FlexEmailProviders;->getProvidersCount()I

    move-result v6

    if-lez v6, :cond_4

    const/4 v6, 0x1

    :goto_1
    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mIsFlexProviderAvailable:Z

    .line 238
    :cond_0
    const v6, 0x7f03003f

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->setContentView(I)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v22

    .line 240
    .local v22, intent:Landroid/content/Intent;
    if-eqz v22, :cond_1

    .line 241
    const-string v6, "addSingleAccount"

    const/4 v7, 0x0

    move-object/from16 v0, v22

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAddSingleAccount:Z

    .line 244
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAddSingleAccount:Z

    move v6, v0

    if-nez v6, :cond_2

    sget-boolean v6, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mSilentRegistrationRequired:Z

    if-nez v6, :cond_2

    .line 245
    const v6, 0x7f0b0029

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/motorola/blur/setup/ProgressBadge;

    .line 246
    .local v14, badge:Lcom/motorola/blur/setup/ProgressBadge;
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Lcom/motorola/blur/setup/ProgressBadge;->setVisibility(I)V

    .line 248
    .end local v14           #badge:Lcom/motorola/blur/setup/ProgressBadge;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    .line 249
    .local v20, extras:Landroid/os/Bundle;
    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .line 250
    .local v21, id:Ljava/lang/Long;
    if-nez v20, :cond_5

    .line 251
    const-string v6, "SCA"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "Tried to launch SCA without extras!"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->finish()V

    .line 490
    .end local p1
    :goto_2
    return-void

    .line 228
    .end local v20           #extras:Landroid/os/Bundle;
    .end local v21           #id:Ljava/lang/Long;
    .end local v22           #intent:Landroid/content/Intent;
    .restart local p1
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 235
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 255
    .restart local v20       #extras:Landroid/os/Bundle;
    .restart local v21       #id:Ljava/lang/Long;
    .restart local v22       #intent:Landroid/content/Intent;
    :cond_5
    const-string v6, "provider"

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .line 256
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderId:Ljava/lang/Long;

    .line 259
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->getProviderInfo(J)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "yahoo"

    invoke-static {v6, v7}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mYahooMailProviderId:Ljava/lang/Long;

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderId:Ljava/lang/Long;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mYahooMailProviderId:Ljava/lang/Long;

    move-object v7, v0

    if-eq v6, v7, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPwdPolicy:I

    move v6, v0

    const/4 v7, 0x5

    if-eq v6, v7, :cond_7

    .line 263
    invoke-static {}, Lcom/motorola/blur/util/os/MyLooper;->singleton()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/motorola/blur/util/cache/ProviderIconCache;->singleton(Landroid/content/Context;Landroid/os/Looper;)Lcom/motorola/blur/util/cache/ProviderIconCache;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/motorola/blur/util/cache/ProviderIconCache;->setMaxPhotoLengthPixels(I)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    invoke-virtual {v6, v7}, Lcom/motorola/blur/util/cache/ProviderIconCache;->addOnCacheChangedListener(Landroid/os/Handler;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderId:Ljava/lang/Long;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-string v9, "_thumb.png"

    invoke-virtual {v6, v7, v8, v9}, Lcom/motorola/blur/util/cache/ProviderIconCache;->getIcon(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 271
    .local v16, bm:Landroid/graphics/Bitmap;
    :goto_3
    const-string v6, "android.intent.extra.shortcut.ICON_RESOURCE"

    const/4 v7, 0x0

    move-object/from16 v0, v20

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 272
    .local v13, background:I
    if-lez v13, :cond_6

    .line 273
    const v6, 0x7f0b00eb

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    .line 274
    .local v32, view:Landroid/view/View;
    move-object/from16 v0, v32

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 275
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mBackground:I

    .line 279
    .end local v32           #view:Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mLoginType:I

    move v6, v0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_8

    .line 281
    const v6, 0x7f0b00fc

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/motorola/android/widget/ActionBar;

    .line 287
    .local v11, ab:Lcom/motorola/android/widget/ActionBar;
    :goto_4
    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Lcom/motorola/android/widget/ActionBar;->setVisibility(I)V

    .line 288
    const v6, 0x7f0c0004

    const/high16 v7, 0x7f0b

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v12

    .line 289
    .local v12, backButton:Landroid/widget/Button;
    const v6, 0x7f0c0003

    const v7, 0x7f0b0001

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v24

    .line 290
    .local v24, nextButton:Landroid/widget/Button;
    invoke-virtual {v11, v12}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 291
    move-object v0, v11

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mClickListener:Landroid/view/View$OnClickListener;

    move-object v6, v0

    invoke-virtual {v12, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mClickListener:Landroid/view/View$OnClickListener;

    move-object v6, v0

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mNextButton:Landroid/widget/Button;

    .line 297
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mLoginType:I

    move v6, v0

    const/16 v7, 0x9

    if-ne v6, v7, :cond_9

    .line 298
    const v6, 0x7f0b00ec

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 299
    const v6, 0x7f0b00ee

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mNextButton:Landroid/widget/Button;

    move-object v6, v0

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 302
    const v6, 0x7f0b00ed

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/webkit/WebView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mWebView:Landroid/webkit/WebView;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    new-instance v7, Lcom/motorola/blur/setup/ServiceCredentialsActivity$NewAcntWebViewClient;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity$NewAcntWebViewClient;-><init>(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/webkit/WebView;->requestFocus()Z

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 309
    invoke-static/range {p0 .. p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 310
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v18

    .line 311
    .local v18, cokiemanager:Landroid/webkit/CookieManager;
    invoke-virtual/range {v18 .. v18}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    new-instance v7, Lcom/motorola/blur/setup/ServiceCredentialsActivity$2;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity$2;-><init>(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->setUpAuthentication()V

    .line 489
    .end local v11           #ab:Lcom/motorola/android/widget/ActionBar;
    .end local v18           #cokiemanager:Landroid/webkit/CookieManager;
    :goto_5
    const/4 v6, 0x0

    move-object/from16 v0, v24

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 268
    .end local v12           #backButton:Landroid/widget/Button;
    .end local v13           #background:I
    .end local v16           #bm:Landroid/graphics/Bitmap;
    .end local v24           #nextButton:Landroid/widget/Button;
    .restart local p1
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020065

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v16

    .restart local v16       #bm:Landroid/graphics/Bitmap;
    goto/16 :goto_3

    .line 284
    .restart local v13       #background:I
    :cond_8
    const v6, 0x7f0b00fd

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/motorola/android/widget/ActionBar;

    .restart local v11       #ab:Lcom/motorola/android/widget/ActionBar;
    goto/16 :goto_4

    .line 334
    .restart local v12       #backButton:Landroid/widget/Button;
    .restart local v24       #nextButton:Landroid/widget/Button;
    :cond_9
    const-string v6, "username"

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 337
    .local v27, tempString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mUsernameString:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 338
    .local v30, usernameString:Ljava/lang/String;
    const/16 v29, 0x0

    .line 339
    .local v29, usernameHint:Ljava/lang/String;
    if-eqz v30, :cond_e

    const/16 v6, 0x7c

    move-object/from16 v0, v30

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    move v15, v6

    .line 340
    .local v15, barPos:I
    :goto_6
    if-lez v15, :cond_b

    .line 341
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, v15, 0x2

    if-le v6, v7, :cond_a

    .line 342
    add-int/lit8 v6, v15, 0x1

    move-object/from16 v0, v30

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    .line 344
    :cond_a
    const/4 v6, 0x0

    move-object/from16 v0, v30

    move v1, v6

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 347
    :cond_b
    const v6, 0x7f0b00f0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/AutoCompleteTextView;

    .line 349
    .local v31, usrEdit:Landroid/widget/AutoCompleteTextView;
    const v6, 0x7f0b00ef

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 352
    .local v28, text:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mLoginType:I

    move v6, v0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_f

    .line 353
    const v6, 0x7f0c006d

    move-object/from16 v0, v28

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 354
    const v6, 0x7f0c000d

    move-object/from16 v0, v31

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    .line 362
    :goto_7
    new-instance v6, Lcom/motorola/blur/setup/TextLimiter;

    const/16 v7, 0x50

    invoke-direct {v6, v7}, Lcom/motorola/blur/setup/TextLimiter;-><init>(I)V

    move-object/from16 v0, v31

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 363
    if-eqz v27, :cond_c

    .line 364
    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    :cond_c
    new-instance v6, Lcom/motorola/blur/setup/ServiceCredentialsActivity$3;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/setup/ServiceCredentialsActivity$3;-><init>(Lcom/motorola/blur/setup/ServiceCredentialsActivity;Landroid/widget/AutoCompleteTextView;)V

    move-object/from16 v0, v31

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 377
    new-instance v5, Landroid/widget/SimpleCursorAdapter;

    const v7, 0x7f030027

    const/4 v8, 0x0

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v10, "email_address"

    aput-object v10, v9, v6

    const/4 v6, 0x1

    new-array v10, v6, [I

    const/4 v6, 0x0

    const v11, 0x1020014

    aput v11, v10, v6

    .end local v11           #ab:Lcom/motorola/android/widget/ActionBar;
    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 382
    .local v5, accountAdapter:Landroid/widget/SimpleCursorAdapter;
    new-instance v6, Lcom/motorola/blur/setup/ServiceCredentialsActivity$AdapterFilterQueryTask;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/setup/ServiceCredentialsActivity$AdapterFilterQueryTask;-><init>(Lcom/motorola/blur/setup/ServiceCredentialsActivity;Landroid/widget/SimpleCursorAdapter;)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lcom/motorola/blur/setup/ServiceCredentialsActivity$AdapterFilterQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 384
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/SimpleCursorAdapter;->setStringConversionColumn(I)V

    .line 386
    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 388
    const-string v6, "password"

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 389
    const v6, 0x7f0b00f2

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/EditText;

    .line 390
    .local v26, pwdEdit:Landroid/widget/EditText;
    new-instance v6, Lcom/motorola/blur/setup/TextLimiter;

    const/16 v7, 0x32

    invoke-direct {v6, v7}, Lcom/motorola/blur/setup/TextLimiter;-><init>(I)V

    move-object/from16 v0, v26

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 391
    new-instance v6, Lcom/motorola/blur/setup/ServiceCredentialsActivity$4;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/setup/ServiceCredentialsActivity$4;-><init>(Lcom/motorola/blur/setup/ServiceCredentialsActivity;Landroid/widget/TextView;Landroid/widget/AutoCompleteTextView;)V

    move-object/from16 v0, v26

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 406
    new-instance v6, Lcom/motorola/blur/setup/ServiceCredentialsActivity$5;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/setup/ServiceCredentialsActivity$5;-><init>(Lcom/motorola/blur/setup/ServiceCredentialsActivity;Landroid/widget/EditText;)V

    move-object/from16 v0, v31

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 425
    if-eqz v27, :cond_d

    .line 426
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPwdPolicy:I

    move v6, v0

    const/4 v7, 0x0

    move v0, v6

    move-object/from16 v1, v27

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/util/SimpleEncryptUtil;->decryptBasedOnPolicy(ILjava/lang/String;[B)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 429
    :cond_d
    const v6, 0x7f0c0032

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 433
    .local v23, introString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPrettyName:Ljava/lang/String;

    move-object v6, v0

    if-eqz v6, :cond_11

    .line 434
    const-string v6, "{0}"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPrettyName:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, v23

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    .line 438
    :goto_8
    const v6, 0x7f0b00ec

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .end local v28           #text:Landroid/widget/TextView;
    check-cast v28, Landroid/widget/TextView;

    .line 439
    .restart local v28       #text:Landroid/widget/TextView;
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mIntroText:Landroid/widget/TextView;

    .line 440
    if-eqz v16, :cond_12

    .line 441
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v28

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 454
    :goto_9
    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mLoginType:I

    move v6, v0

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 457
    :pswitch_1
    const v6, 0x7f0b00fa

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    .line 458
    .local v17, check:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mIsDeviceProvisioned:Z

    move v6, v0

    if-nez v6, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mIsFlexProviderAvailable:Z

    move v6, v0

    if-nez v6, :cond_13

    .line 461
    const/4 v6, 0x4

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_5

    .line 339
    .end local v5           #accountAdapter:Landroid/widget/SimpleCursorAdapter;
    .end local v15           #barPos:I
    .end local v17           #check:Landroid/widget/CheckBox;
    .end local v23           #introString:Ljava/lang/String;
    .end local v26           #pwdEdit:Landroid/widget/EditText;
    .end local v28           #text:Landroid/widget/TextView;
    .end local v31           #usrEdit:Landroid/widget/AutoCompleteTextView;
    .restart local v11       #ab:Lcom/motorola/android/widget/ActionBar;
    :cond_e
    const/4 v6, -0x1

    move v15, v6

    goto/16 :goto_6

    .line 356
    .restart local v15       #barPos:I
    .restart local v28       #text:Landroid/widget/TextView;
    .restart local v31       #usrEdit:Landroid/widget/AutoCompleteTextView;
    :cond_f
    if-eqz v29, :cond_10

    .line 357
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 359
    :cond_10
    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 436
    .end local v11           #ab:Lcom/motorola/android/widget/ActionBar;
    .restart local v5       #accountAdapter:Landroid/widget/SimpleCursorAdapter;
    .restart local v23       #introString:Ljava/lang/String;
    .restart local v26       #pwdEdit:Landroid/widget/EditText;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->finish()V

    goto :goto_8

    .line 447
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderType:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getDefaultProviderIcon(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v28

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_9

    .line 463
    .restart local v17       #check:Landroid/widget/CheckBox;
    :cond_13
    const/4 v6, 0x0

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 464
    const/4 v6, 0x1

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_5

    .line 468
    .end local v17           #check:Landroid/widget/CheckBox;
    :pswitch_2
    const v6, 0x7f0b00f3

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .end local v28           #text:Landroid/widget/TextView;
    check-cast v28, Landroid/widget/TextView;

    .line 469
    .restart local v28       #text:Landroid/widget/TextView;
    const/4 v6, 0x0

    move-object/from16 v0, v28

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    const v6, 0x7f0b00f5

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .end local v28           #text:Landroid/widget/TextView;
    check-cast v28, Landroid/widget/TextView;

    .line 471
    .restart local v28       #text:Landroid/widget/TextView;
    const/4 v6, 0x0

    move-object/from16 v0, v28

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    const v6, 0x7f0b00f6

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    .line 473
    .local v19, edit:Landroid/widget/EditText;
    new-instance v6, Lcom/motorola/blur/setup/TextLimiter;

    const/16 v7, 0x50

    invoke-direct {v6, v7}, Lcom/motorola/blur/setup/TextLimiter;-><init>(I)V

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 474
    const v6, 0x7f0c0157

    move-object/from16 v0, v19

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 475
    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 476
    const v6, 0x7f0b00f4

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19           #edit:Landroid/widget/EditText;
    check-cast v19, Landroid/widget/EditText;

    .line 477
    .restart local v19       #edit:Landroid/widget/EditText;
    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 478
    new-instance v6, Lcom/motorola/blur/setup/TextLimiter;

    const/16 v7, 0x50

    invoke-direct {v6, v7}, Lcom/motorola/blur/setup/TextLimiter;-><init>(I)V

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 480
    const v6, 0x7f0b00f2

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19           #edit:Landroid/widget/EditText;
    check-cast v19, Landroid/widget/EditText;

    .line 481
    .restart local v19       #edit:Landroid/widget/EditText;
    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getImeOptions()I

    move-result v25

    .line 483
    .local v25, opts:I
    xor-int/lit8 v25, v25, 0x6

    .line 484
    or-int/lit8 v6, v25, 0x5

    move-object/from16 v0, v19

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_5

    .line 455
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 572
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    invoke-virtual {v0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->cleanUp()V

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/motorola/blur/util/cache/ProviderIconCache;->removeOnCacheChangedDataListener(Landroid/os/Handler;)V

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;

    if-eqz v0, :cond_2

    .line 580
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;

    invoke-interface {v0}, Lcom/motorola/blur/util/authentication/Authentication;->close()V

    .line 581
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->dismissProgress()V

    .line 583
    invoke-static {}, Lcom/motorola/blur/setup/FlexEmailProviders;->finish()V

    .line 584
    const-string v0, "SCA"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "FlexEmailProviders.finish() called."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->onDestroy()V

    .line 587
    return-void
.end method

.method public onFinished(Landroid/app/AlertDialog;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 917
    if-eqz p1, :cond_2

    .line 918
    iget v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mLoginType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mCallbackUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 919
    new-instance v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$7;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity$7;-><init>(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 926
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mHasFocus:Z

    if-eqz v0, :cond_1

    .line 927
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->dismissProgress()V

    .line 928
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->showAlertDialog(Landroid/app/AlertDialog;)V

    .line 936
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->dismissProgress()V

    .line 937
    return-void

    .line 931
    :cond_1
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAlertDlg:Landroid/app/AlertDialog;

    goto :goto_0

    .line 934
    :cond_2
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->closeActivity(I)V

    goto :goto_0
.end method

.method public onMakeFieldsVisible([I)V
    .locals 10
    .parameter "fieldIds"

    .prologue
    const/4 v9, 0x0

    .line 967
    move-object v0, p1

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget v4, v0, v3

    .line 968
    .local v4, id:I
    packed-switch v4, :pswitch_data_0

    .line 967
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 970
    :pswitch_0
    const v7, 0x7f0b00f8

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 971
    .local v6, text:Landroid/widget/TextView;
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 974
    .end local v6           #text:Landroid/widget/TextView;
    :pswitch_1
    const v7, 0x7f0b00f9

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 975
    .local v2, edit:Landroid/widget/EditText;
    new-instance v7, Lcom/motorola/blur/setup/TextLimiter;

    const/16 v8, 0x50

    invoke-direct {v7, v8}, Lcom/motorola/blur/setup/TextLimiter;-><init>(I)V

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 976
    const v7, 0x7f0c010c

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setHint(I)V

    .line 977
    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setVisibility(I)V

    .line 978
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 980
    const v7, 0x7f0b00f6

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #edit:Landroid/widget/EditText;
    check-cast v2, Landroid/widget/EditText;

    .line 981
    .restart local v2       #edit:Landroid/widget/EditText;
    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_1

    .line 984
    .end local v2           #edit:Landroid/widget/EditText;
    :pswitch_2
    const v7, 0x7f0b00fa

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 985
    .local v1, c:Landroid/widget/CheckBox;
    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 986
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 987
    const v7, 0x7f0c00a0

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_1

    .line 991
    .end local v1           #c:Landroid/widget/CheckBox;
    .end local v4           #id:I
    :cond_0
    return-void

    .line 968
    :pswitch_data_0
    .packed-switch 0x7f0b00f8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1075
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1087
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1078
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    if-nez v0, :cond_0

    .line 1079
    invoke-direct {p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->getAuthenticator()Lcom/motorola/blur/authenticators/BlurAuthenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    check-cast v0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->setAutodiscover(Z)V

    .line 1083
    sget-object v0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->ACTIVE_SYNC_FIELDS:[I

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->onMakeFieldsVisible([I)V

    .line 1084
    const/4 v0, 0x1

    goto :goto_0

    .line 1075
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    .line 1059
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 1060
    .local v1, result:Z
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1061
    iget v2, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mLoginType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1062
    iget-object v2, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v2}, Lcom/motorola/blur/setup/SetupProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1070
    :cond_0
    :goto_0
    return v1

    .line 1065
    :cond_1
    const v2, 0x7f0b00f9

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1066
    .local v0, edit:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1067
    const/16 v2, 0x15

    const v3, 0x7f0c0112

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onProgress()V
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->nextProgressPoint()V

    .line 997
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 559
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->onResume()V

    .line 560
    const v2, 0x7f0b00f0

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    .line 561
    .local v1, usrEdit:Landroid/widget/AutoCompleteTextView;
    const v2, 0x7f0b00f2

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 562
    .local v0, pwdEdit:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/blur/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/blur/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 563
    iget-object v2, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mNextButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 568
    :goto_0
    return-void

    .line 566
    :cond_0
    iget-object v2, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mNextButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 500
    :cond_0
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->onStop()V

    .line 501
    return-void
.end method

.method public onUrlRecieved(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "callbackUrl"

    .prologue
    .line 962
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 963
    iput-object p2, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mCallbackUrl:Ljava/lang/String;

    .line 964
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 946
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onWindowFocusChanged(Z)V

    .line 947
    iput-boolean p1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mHasFocus:Z

    .line 948
    iget-boolean v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mHasFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAlertDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->showAlertDialog(Landroid/app/AlertDialog;)V

    .line 950
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAlertDlg:Landroid/app/AlertDialog;

    .line 952
    :cond_0
    return-void
.end method

.method protected processCredentials()Z
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 702
    const v7, 0x7f0b00f0

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 703
    .local v1, edit:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mEmailAddress:Ljava/lang/String;

    .line 704
    const v7, 0x7f0b00f2

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #edit:Landroid/widget/EditText;
    check-cast v1, Landroid/widget/EditText;

    .line 705
    .restart local v1       #edit:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPassword:Ljava/lang/String;

    .line 706
    const v7, 0x7f0b00f4

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #edit:Landroid/widget/EditText;
    check-cast v1, Landroid/widget/EditText;

    .line 707
    .restart local v1       #edit:Landroid/widget/EditText;
    if-eqz v1, :cond_2

    .line 709
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 710
    .local v6, usernameBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 711
    .local v2, editContents:Landroid/text/Editable;
    if-eqz v2, :cond_0

    .line 712
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 713
    .local v3, editText:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 714
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 719
    .end local v3           #editText:Ljava/lang/String;
    :cond_0
    const v7, 0x7f0b00f6

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #edit:Landroid/widget/EditText;
    check-cast v1, Landroid/widget/EditText;

    .line 720
    .restart local v1       #edit:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 721
    if-eqz v2, :cond_1

    .line 722
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    iput-object v7, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mActiveSyncUsername:Ljava/lang/String;

    .line 726
    const v7, 0x7f0b00f9

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #edit:Landroid/widget/EditText;
    check-cast v1, Landroid/widget/EditText;

    .line 727
    .restart local v1       #edit:Landroid/widget/EditText;
    if-eqz v1, :cond_2

    .line 728
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 729
    .local v5, server:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    move-object v7, v5

    :goto_1
    iput-object v7, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mServer:Ljava/lang/String;

    .line 732
    .end local v2           #editContents:Landroid/text/Editable;
    .end local v5           #server:Ljava/lang/String;
    .end local v6           #usernameBuilder:Ljava/lang/StringBuilder;
    :cond_2
    const v7, 0x7f0b00fa

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 733
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-direct {p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->isEmailAccount()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    move v4, v7

    .line 736
    .local v4, manualSetup:Z
    :goto_2
    if-eqz v4, :cond_3

    .line 737
    iget-object v7, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mEmailAddress:Ljava/lang/String;

    iget-object v8, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPassword:Ljava/lang/String;

    iget-object v9, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderId:Ljava/lang/Long;

    invoke-static {}, Lcom/motorola/blur/provider/contacts/IdentityModelProvider;->singleton()Lcom/motorola/blur/provider/contacts/IdentityModelProvider;

    move-result-object v10

    iget-object v10, v10, Lcom/motorola/blur/provider/contacts/IdentityModelProvider;->providerQueries:Lcom/motorola/blur/provider/contacts/IdentityModelProvider$ProviderQueries;

    invoke-static {p0}, Lcom/motorola/blur/provider/contacts/IdentityModelProvider$ProviderQueries;->getBlurOwnerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v7, v8, v9, v10}, Lcom/motorola/blur/authenticators/AuthenticatorUtility;->setupManualConfiguration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 741
    :cond_3
    return v4

    .end local v0           #check:Landroid/widget/CheckBox;
    .end local v4           #manualSetup:Z
    .restart local v2       #editContents:Landroid/text/Editable;
    .restart local v6       #usernameBuilder:Ljava/lang/StringBuilder;
    :cond_4
    move-object v7, v9

    .line 724
    goto :goto_0

    .restart local v5       #server:Ljava/lang/String;
    :cond_5
    move-object v7, v9

    .line 729
    goto :goto_1

    .line 733
    .end local v2           #editContents:Landroid/text/Editable;
    .end local v5           #server:Ljava/lang/String;
    .end local v6           #usernameBuilder:Ljava/lang/StringBuilder;
    .restart local v0       #check:Landroid/widget/CheckBox;
    :cond_6
    const/4 v7, 0x0

    move v4, v7

    goto :goto_2
.end method

.method public processFrob()V
    .locals 0

    .prologue
    .line 1092
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->setupProgressDialog()V

    .line 1093
    invoke-direct {p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->setUpAuthentication()V

    .line 1094
    return-void
.end method

.method public resetProgress()V
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->resetProgress()V

    .line 1003
    :cond_0
    return-void
.end method

.method public setupProgressDialog()V
    .locals 4

    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->dismissProgress()V

    .line 746
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 747
    new-instance v0, Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/SetupProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 748
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    sget-object v1, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->PROGRESS_POINTS:[I

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgressPoints([I)V

    .line 749
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mAuthenticator:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    invoke-virtual {v1}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->getProgressString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{0}"

    iget-object v3, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mPrettyName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgressText(Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->show()V

    .line 752
    return-void
.end method
