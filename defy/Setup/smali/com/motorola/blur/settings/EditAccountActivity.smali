.class public Lcom/motorola/blur/settings/EditAccountActivity;
.super Landroid/app/Activity;
.source "EditAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/motorola/blur/setup/AccountRemovalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/settings/EditAccountActivity$EditWebViewClient;
    }
.end annotation


# static fields
.field private static final ACCESS_ACCOUNTS_PERMISSION:Ljava/lang/String; = "com.motorola.blur.setupprovider.Permissions.ACCESS_ACCOUNTS"

.field private static final ACCOUNT_CAPABILITY_SELECTION:Ljava/lang/String; = "capability!=4 AND account=?"

.field private static final ADDED_ACCOUNT:I = 0x5

.field private static final AS_RETENTION_POLICY_NAMES:[I = null

.field private static final CAPABILITY_SELECTION:Ljava/lang/String; = "capability!=4"

.field private static final CHANGED_BLUR_PASSWORD:I = 0x1

.field private static final DOWNLOADED_SNP_CAPTCHA:I = 0x6

.field private static final NO_ACCOUNT:J = -0x1L

.field private static final NO_AUTHENTICATION:Ljava/lang/String; = "0"

.field private static final NO_INDEX:I = -0x1

.field private static final OAUTH_AUTHENTICATION_RESPONSE:I = 0x8

.field private static final PROGRESS_POINTS:[I = null

.field private static final PROVIDER_PROJECTION:[Ljava/lang/String; = null

.field private static final SAVE_FAILED:I = 0x3

.field private static final SAVE_SUCCESSFUL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EAA"

.field private static final UPDATED_PASSWORD:I = 0x0

.field private static final UPDATE_PROGRESS:I = 0x4

.field private static final URL_RECIEVED:I = 0x7

.field private static final VALIDATE_SNP_CAPTCHA:I


# instance fields
.field private mAuth:Lcom/motorola/blur/util/authentication/Authentication;

.field private final mAuthObserver:Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;

.field protected mCallbackUrl:Ljava/lang/String;

.field private mCaptchaImageDecoded:[B

.field private mCaptchaToken:Ljava/lang/String;

.field private mCaptchaUserText:Ljava/lang/String;

.field private mErrorCode:I

.field private final mHandler:Landroid/os/Handler;

.field mModel:Lcom/motorola/blur/settings/AccountSettings;

.field private mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisteredAdd:Z

.field private mShouldAddUserAgain:Z

.field private mType:I

.field private mWebViewMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 125
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/blur/settings/EditAccountActivity;->PROGRESS_POINTS:[I

    .line 129
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/motorola/blur/settings/EditAccountActivity;->AS_RETENTION_POLICY_NAMES:[I

    .line 131
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "provider_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pwd_storage_policy"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "capability"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/settings/EditAccountActivity;->PROVIDER_PROJECTION:[Ljava/lang/String;

    return-void

    .line 125
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x88t 0x13t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t
    .end array-data

    .line 129
    :array_1
    .array-data 0x4
        0xc4t 0x0t 0xct 0x7ft
        0xc5t 0x0t 0xct 0x7ft
        0xbct 0x0t 0xct 0x7ft
        0xbdt 0x0t 0xct 0x7ft
        0xbet 0x0t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 137
    iput-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 138
    iput-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;

    .line 139
    iput-boolean v2, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mRegisteredAdd:Z

    .line 140
    iput-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mType:I

    .line 142
    iput-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mCaptchaToken:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mCaptchaUserText:Ljava/lang/String;

    .line 144
    iput-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mCaptchaImageDecoded:[B

    .line 145
    iput-boolean v2, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mShouldAddUserAgain:Z

    .line 146
    iput-boolean v2, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mWebViewMode:Z

    .line 147
    iput-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mCallbackUrl:Ljava/lang/String;

    .line 148
    iput v2, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mErrorCode:I

    .line 184
    new-instance v0, Lcom/motorola/blur/settings/EditAccountActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/settings/EditAccountActivity$1;-><init>(Lcom/motorola/blur/settings/EditAccountActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mAuthObserver:Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;

    .line 286
    new-instance v0, Lcom/motorola/blur/settings/EditAccountActivity$2;

    invoke-direct {v0, p0}, Lcom/motorola/blur/settings/EditAccountActivity$2;-><init>(Lcom/motorola/blur/settings/EditAccountActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;

    .line 565
    new-instance v0, Lcom/motorola/blur/settings/EditAccountActivity$3;

    invoke-direct {v0, p0}, Lcom/motorola/blur/settings/EditAccountActivity$3;-><init>(Lcom/motorola/blur/settings/EditAccountActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/settings/EditAccountActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/motorola/blur/settings/EditAccountActivity;->interceptUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/blur/settings/EditAccountActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->setupProgressDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/blur/settings/EditAccountActivity;Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/motorola/blur/settings/EditAccountActivity;->processCaptchaForSN(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/motorola/blur/settings/EditAccountActivity;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/motorola/blur/settings/EditAccountActivity;->save(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/motorola/blur/settings/EditAccountActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->isOneActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1302(Lcom/motorola/blur/settings/EditAccountActivity;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mCaptchaImageDecoded:[B

    return-object p1
.end method

.method static synthetic access$1400(Lcom/motorola/blur/settings/EditAccountActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->showCaptchaActivity()V

    return-void
.end method

.method static synthetic access$1500(Lcom/motorola/blur/settings/EditAccountActivity;Landroid/widget/CompoundButton;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/motorola/blur/settings/EditAccountActivity;->showWarning(Landroid/widget/CompoundButton;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/motorola/blur/settings/EditAccountActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/motorola/blur/settings/EditAccountActivity;->getEditText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/motorola/blur/settings/EditAccountActivity;)Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mAuthObserver:Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/motorola/blur/settings/EditAccountActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mCaptchaToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/motorola/blur/settings/EditAccountActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mCaptchaUserText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/blur/settings/EditAccountActivity;)Lcom/motorola/blur/util/authentication/Authentication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;

    return-object v0
.end method

.method static synthetic access$202(Lcom/motorola/blur/settings/EditAccountActivity;Lcom/motorola/blur/util/authentication/Authentication;)Lcom/motorola/blur/util/authentication/Authentication;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;

    return-object p1
.end method

.method static synthetic access$300(Lcom/motorola/blur/settings/EditAccountActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/blur/settings/EditAccountActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mType:I

    return v0
.end method

.method static synthetic access$500(Lcom/motorola/blur/settings/EditAccountActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->sendAccountBroadcast()V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/blur/settings/EditAccountActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/motorola/blur/settings/EditAccountActivity;->verificationFinishedUI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/motorola/blur/settings/EditAccountActivity;)Lcom/motorola/blur/setup/SetupProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/motorola/blur/settings/EditAccountActivity;Lcom/motorola/blur/setup/SetupProgressDialog;)Lcom/motorola/blur/setup/SetupProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/motorola/blur/settings/EditAccountActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/motorola/blur/settings/EditAccountActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mShouldAddUserAgain:Z

    return v0
.end method

.method static synthetic access$902(Lcom/motorola/blur/settings/EditAccountActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mShouldAddUserAgain:Z

    return p1
.end method

.method private confirmDelete()V
    .locals 3

    .prologue
    .line 1271
    new-instance v0, Lcom/motorola/blur/setup/AccountRemover;

    invoke-direct {v0, p0, p0}, Lcom/motorola/blur/setup/AccountRemover;-><init>(Landroid/content/Context;Lcom/motorola/blur/setup/AccountRemovalListener;)V

    .line 1272
    .local v0, r:Lcom/motorola/blur/setup/AccountRemover;
    iget-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v1}, Lcom/motorola/blur/settings/AccountSettings;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/blur/setup/AccountRemover;->remove(J)V

    .line 1273
    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 1577
    new-instance v0, Lcom/motorola/blur/settings/EditAccountActivity$16;

    invoke-direct {v0, p0}, Lcom/motorola/blur/settings/EditAccountActivity$16;-><init>(Lcom/motorola/blur/settings/EditAccountActivity;)V

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1586
    return-void
.end method

.method private finishHappily()V
    .locals 1

    .prologue
    .line 1300
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditAccountActivity;->setResult(I)V

    .line 1301
    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->finish()V

    .line 1302
    return-void
.end method

.method private getAccountType(Landroid/net/Uri;)I
    .locals 12
    .parameter "uri"

    .prologue
    .line 1464
    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1465
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1466
    .local v6, accountId:Ljava/lang/Long;
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->BY_ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/blur/settings/EditAccountActivity;->PROVIDER_PROJECTION:[Ljava/lang/String;

    const-string v3, "capability!=4 AND account=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .end local v6           #accountId:Ljava/lang/Long;
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1468
    .local v8, cursor:Landroid/database/Cursor;
    const-wide/16 v9, -0x1

    .line 1469
    .local v9, providerId:J
    const/4 v11, -0x1

    .line 1470
    .local v11, pwdPolicy:I
    const/4 v7, -0x1

    .line 1471
    .local v7, capability:I
    if-eqz v8, :cond_1

    .line 1472
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1473
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1474
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1475
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1477
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1480
    :cond_1
    const-string v1, "yahoo"

    invoke-static {v0, v1}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v1, v9, v1

    if-nez v1, :cond_2

    .line 1482
    const/4 v1, 0x4

    .line 1492
    :goto_0
    return v1

    .line 1483
    :cond_2
    const-string v1, "activesync"

    invoke-static {v0, v1}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v1, v9, v1

    if-nez v1, :cond_3

    .line 1485
    const/4 v1, 0x2

    goto :goto_0

    .line 1486
    :cond_3
    const/4 v1, 0x5

    if-ne v11, v1, :cond_4

    .line 1487
    const/4 v1, 0x6

    goto :goto_0

    .line 1488
    :cond_4
    const/4 v1, 0x3

    if-eq v7, v1, :cond_5

    const/4 v1, 0x2

    if-ne v7, v1, :cond_6

    .line 1490
    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    .line 1492
    :cond_6
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private final getEditText(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 964
    const/4 v1, 0x0

    .line 965
    .local v1, editText:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 966
    .local v0, edit:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 967
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 968
    .local v2, text:Landroid/text/Editable;
    if-eqz v2, :cond_0

    .line 969
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 971
    .end local v2           #text:Landroid/text/Editable;
    :cond_0
    return-object v1
.end method

.method private getSpinnerPosition(I)I
    .locals 3
    .parameter "spinnerId"

    .prologue
    .line 1210
    const/4 v1, 0x0

    .line 1211
    .local v1, value:I
    invoke-virtual {p0, p1}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 1212
    .local v0, spinner:Landroid/widget/Spinner;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1213
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 1215
    :cond_0
    return v1
.end method

.method private handleNoActiveServices()V
    .locals 4

    .prologue
    .line 1185
    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1186
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1188
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const/high16 v2, 0x108

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1189
    const v2, 0x7f0c010b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1190
    const v2, 0x7f0c0059

    new-instance v3, Lcom/motorola/blur/settings/EditAccountActivity$12;

    invoke-direct {v3, p0, v1}, Lcom/motorola/blur/settings/EditAccountActivity$12;-><init>(Lcom/motorola/blur/settings/EditAccountActivity;Landroid/net/Uri;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1195
    const v2, 0x7f0c0057

    new-instance v3, Lcom/motorola/blur/settings/EditAccountActivity$13;

    invoke-direct {v3, p0}, Lcom/motorola/blur/settings/EditAccountActivity$13;-><init>(Lcom/motorola/blur/settings/EditAccountActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1200
    new-instance v2, Lcom/motorola/blur/settings/EditAccountActivity$14;

    invoke-direct {v2, p0, v0}, Lcom/motorola/blur/settings/EditAccountActivity$14;-><init>(Lcom/motorola/blur/settings/EditAccountActivity;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p0, v2}, Lcom/motorola/blur/settings/EditAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1206
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->dismissProgressDialog()V

    .line 1207
    return-void
.end method

.method private interceptUrl(Ljava/lang/String;)Z
    .locals 5
    .parameter "url"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1602
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mCallbackUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1603
    iput-object p1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mCallbackUrl:Ljava/lang/String;

    .line 1604
    const-string v0, "EAA"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Loading Url matched the callback url"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v4

    .line 1618
    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method private isAccountDuplicate()Ljava/lang/Boolean;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const-string v9, "\' AND "

    const-string v5, "=\'"

    .line 1401
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 1403
    .local v7, hasError:Ljava/lang/Boolean;
    iget v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mType:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 1405
    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1406
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1407
    .local v8, selection:Ljava/lang/StringBuilder;
    const-string v1, "providers_id"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "activesync"

    invoke-static {v0, v3}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' AND "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "account"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "!= \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v3}, Lcom/motorola/blur/settings/AccountSettings;->getAccountId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' AND (("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "server_address"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0b006a

    invoke-direct {p0, v3}, Lcom/motorola/blur/settings/EditAccountActivity;->getEditText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' AND "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "username"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0b0061

    invoke-direct {p0, v3}, Lcom/motorola/blur/settings/EditAccountActivity;->getEditText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\') OR "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "email_address"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0b0068

    invoke-direct {p0, v3}, Lcom/motorola/blur/settings/EditAccountActivity;->getEditText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\') "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->BY_ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1430
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1431
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1432
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 1434
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1438
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #selection:Ljava/lang/StringBuilder;
    :cond_1
    return-object v7
.end method

.method private isOneActive()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1136
    iget-object v3, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    .line 1138
    .local v3, model:Lcom/motorola/blur/settings/AccountSettings;
    const/4 v2, 0x0

    .line 1140
    .local v2, isOneActive:Z
    iget v4, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 1141
    :cond_0
    invoke-virtual {v3}, Lcom/motorola/blur/settings/AccountSettings;->getServiceCount()I

    move-result v4

    sub-int v1, v4, v6

    .local v1, curService:I
    :goto_0
    if-ltz v1, :cond_3

    .line 1142
    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1143
    .local v0, check:Landroid/widget/CheckBox;
    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v2, v6

    .line 1144
    :goto_1
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/motorola/blur/settings/AccountSettings;->setActivated(IZ)V

    .line 1141
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    move v2, v7

    .line 1143
    goto :goto_1

    .line 1147
    .end local v0           #check:Landroid/widget/CheckBox;
    :cond_3
    if-nez v2, :cond_4

    .line 1148
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->handleNoActiveServices()V

    move v4, v7

    .line 1152
    .end local v1           #curService:I
    :goto_2
    return v4

    :cond_4
    move v4, v6

    goto :goto_2
.end method

.method private populateASFields()V
    .locals 28

    .prologue
    .line 842
    const/16 v22, 0x0

    .line 843
    .local v22, spinnerText:Landroid/widget/TextView;
    const/16 v20, 0x0

    .line 844
    .local v20, spinner:Landroid/widget/Spinner;
    const v25, 0x7f0b0065

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    .line 846
    const v25, 0x7f0b0068

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 847
    .local v11, edit:Landroid/widget/EditText;
    new-instance v25, Lcom/motorola/blur/setup/TextLimiter;

    const/16 v26, 0x50

    invoke-direct/range {v25 .. v26}, Lcom/motorola/blur/setup/TextLimiter;-><init>(I)V

    move-object v0, v11

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/motorola/blur/settings/AccountSettings;->getEmailAddress()Ljava/lang/String;

    move-result-object v25

    move-object v0, v11

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 850
    const v25, 0x7f0b006a

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11           #edit:Landroid/widget/EditText;
    check-cast v11, Landroid/widget/EditText;

    .line 851
    .restart local v11       #edit:Landroid/widget/EditText;
    new-instance v25, Lcom/motorola/blur/setup/TextLimiter;

    const/16 v26, 0x50

    invoke-direct/range {v25 .. v26}, Lcom/motorola/blur/setup/TextLimiter;-><init>(I)V

    move-object v0, v11

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/motorola/blur/settings/AccountSettings;->getServerAddress()Ljava/lang/String;

    move-result-object v25

    move-object v0, v11

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 854
    const v25, 0x7f0b006c

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11           #edit:Landroid/widget/EditText;
    check-cast v11, Landroid/widget/EditText;

    .line 855
    .restart local v11       #edit:Landroid/widget/EditText;
    new-instance v25, Lcom/motorola/blur/setup/TextLimiter;

    const/16 v26, 0x50

    invoke-direct/range {v25 .. v26}, Lcom/motorola/blur/setup/TextLimiter;-><init>(I)V

    move-object v0, v11

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/motorola/blur/settings/AccountSettings;->getAccountPrettyName()Ljava/lang/String;

    move-result-object v25

    move-object v0, v11

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 858
    const v25, 0x7f0b006d

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 859
    .local v6, check:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/motorola/blur/settings/AccountSettings;->getSecure()Z

    move-result v25

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 860
    new-instance v25, Lcom/motorola/blur/settings/EditAccountActivity$6;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/motorola/blur/settings/EditAccountActivity$6;-><init>(Lcom/motorola/blur/settings/EditAccountActivity;)V

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 867
    const v25, 0x7f0b006e

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #check:Landroid/widget/CheckBox;
    check-cast v6, Landroid/widget/CheckBox;

    .line 868
    .restart local v6       #check:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/motorola/blur/settings/AccountSettings;->getVerifyCA()Z

    move-result v25

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 869
    new-instance v25, Lcom/motorola/blur/settings/EditAccountActivity$7;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/motorola/blur/settings/EditAccountActivity$7;-><init>(Lcom/motorola/blur/settings/EditAccountActivity;)V

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/motorola/blur/settings/AccountSettings;->getSecure()Z

    move-result v25

    if-nez v25, :cond_0

    .line 879
    const/16 v25, 0x0

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 882
    :cond_0
    const v25, 0x7f0b006f

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22           #spinnerText:Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .line 883
    .restart local v22       #spinnerText:Landroid/widget/TextView;
    const v25, 0x7f0b0070

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .end local v20           #spinner:Landroid/widget/Spinner;
    check-cast v20, Landroid/widget/Spinner;

    .line 887
    .restart local v20       #spinner:Landroid/widget/Spinner;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/motorola/blur/settings/AccountSettings;->getAccountId()J

    move-result-wide v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/email/api/EmailAccountHelpers;->getMaxRetentionPolicy(Landroid/content/Context;J)I

    move-result v18

    .line 889
    .local v18, policy:I
    const/16 v25, 0x5

    move/from16 v0, v18

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    const/16 v25, 0x4

    move/from16 v0, v18

    move/from16 v1, v25

    if-le v0, v1, :cond_2

    .line 890
    :cond_1
    const/16 v18, 0x4

    .line 892
    :cond_2
    invoke-static/range {v18 .. v18}, Lcom/motorola/blur/provider/DeviceSetup$RetentionPolicies$ActiveSync;->retentionPolicyToSyncAmount(I)I

    move-result v17

    .line 894
    .local v17, numChoices:I
    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object v8, v0

    .line 895
    .local v8, choices:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/settings/EditAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 896
    .local v19, resources:Landroid/content/res/Resources;
    const/4 v15, 0x0

    .line 897
    .local v15, maxNumChars:I
    const/4 v9, 0x0

    .line 898
    .local v9, curLength:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move v0, v13

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 899
    sget-object v25, Lcom/motorola/blur/settings/EditAccountActivity;->AS_RETENTION_POLICY_NAMES:[I

    aget v25, v25, v13

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 900
    .local v16, name:Ljava/lang/String;
    aput-object v16, v8, v13

    .line 901
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 902
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v9

    .line 903
    if-le v9, v15, :cond_3

    move v15, v9

    .line 898
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 907
    .end local v16           #name:Ljava/lang/String;
    :cond_4
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v25, 0x1090008

    const v26, 0x1020014

    move-object v0, v5

    move-object/from16 v1, p0

    move/from16 v2, v25

    move/from16 v3, v26

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 910
    .local v5, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v25, 0x109000a

    move-object v0, v5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 911
    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/motorola/blur/settings/AccountSettings;->getEmailRetentionPolicy()I

    move-result v23

    .line 913
    .local v23, storedPolicy:I
    const/16 v25, 0x1

    sub-int v25, v17, v25

    move/from16 v0, v23

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    .line 914
    const/16 v25, 0x1

    sub-int v23, v17, v25

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountSettings;->setEmailRetentionPolicy(I)V

    .line 917
    :cond_5
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 919
    const v25, 0x7f0b0066

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 920
    .local v14, layout:Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    .line 922
    .local v7, checked:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/motorola/blur/settings/AccountSettings;->getServiceCount()I

    move-result v25

    const/16 v26, 0x1

    sub-int v10, v25, v26

    .local v10, curService:I
    :goto_1
    if-ltz v10, :cond_8

    .line 923
    new-instance v6, Landroid/widget/CheckBox;

    .end local v6           #check:Landroid/widget/CheckBox;
    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 924
    .restart local v6       #check:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountSettings;->getServicePrettyName(I)Ljava/lang/String;

    move-result-object v25

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountSettings;->getActivated(I)Z

    move-result v7

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountSettings;->getCapability(I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    if-eqz v20, :cond_6

    .line 928
    move-object/from16 v21, v22

    .line 929
    .local v21, spinnerCaptionText:Landroid/widget/TextView;
    move-object/from16 v12, v20

    .line 930
    .local v12, emailRetentionSpinner:Landroid/widget/Spinner;
    if-eqz v7, :cond_7

    const/16 v25, 0x0

    move/from16 v24, v25

    .line 931
    .local v24, vis:I
    :goto_2
    move-object v0, v12

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 932
    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 933
    new-instance v25, Lcom/motorola/blur/settings/EditAccountActivity$8;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/settings/EditAccountActivity$8;-><init>(Lcom/motorola/blur/settings/EditAccountActivity;Landroid/widget/Spinner;Landroid/widget/TextView;)V

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 943
    .end local v12           #emailRetentionSpinner:Landroid/widget/Spinner;
    .end local v21           #spinnerCaptionText:Landroid/widget/TextView;
    .end local v24           #vis:I
    :cond_6
    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 944
    invoke-virtual {v6, v10}, Landroid/widget/CheckBox;->setId(I)V

    .line 945
    new-instance v25, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v26, -0x2

    const/16 v27, -0x2

    invoke-direct/range {v25 .. v27}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v14

    move-object v1, v6

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 922
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_1

    .line 930
    .restart local v12       #emailRetentionSpinner:Landroid/widget/Spinner;
    .restart local v21       #spinnerCaptionText:Landroid/widget/TextView;
    :cond_7
    const/16 v25, 0x4

    move/from16 v24, v25

    goto :goto_2

    .line 949
    .end local v12           #emailRetentionSpinner:Landroid/widget/Spinner;
    .end local v21           #spinnerCaptionText:Landroid/widget/TextView;
    :cond_8
    return-void
.end method

.method private populateFields()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 741
    const v3, 0x7f0b005f

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 742
    .local v2, text:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v3}, Lcom/motorola/blur/settings/AccountSettings;->getProviderPrettyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 744
    const v3, 0x7f0b0061

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 745
    .local v0, edit:Landroid/widget/EditText;
    new-instance v3, Lcom/motorola/blur/setup/TextLimiter;

    const/16 v4, 0x50

    invoke-direct {v3, v4}, Lcom/motorola/blur/setup/TextLimiter;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 748
    iget v3, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mType:I

    packed-switch v3, :pswitch_data_0

    .line 756
    iget-object v3, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v3}, Lcom/motorola/blur/settings/AccountSettings;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 757
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 758
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 762
    :goto_0
    const v3, 0x7f0b0064

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 763
    .local v1, passwordEdit:Landroid/widget/EditText;
    new-instance v3, Lcom/motorola/blur/setup/PasswordEmptyWatcher;

    invoke-direct {v3, v0}, Lcom/motorola/blur/setup/PasswordEmptyWatcher;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 764
    const-string v3, "********"

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 765
    new-instance v3, Lcom/motorola/blur/settings/EditAccountActivity$4;

    invoke-direct {v3, p0, v1}, Lcom/motorola/blur/settings/EditAccountActivity$4;-><init>(Lcom/motorola/blur/settings/EditAccountActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 772
    iget v3, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mType:I

    packed-switch v3, :pswitch_data_1

    .line 785
    :goto_1
    :pswitch_0
    new-instance v3, Lcom/motorola/blur/setup/TextLimiter;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Lcom/motorola/blur/setup/TextLimiter;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 789
    :goto_2
    :pswitch_1
    return-void

    .line 750
    .end local v1           #passwordEdit:Landroid/widget/EditText;
    :pswitch_2
    iget-object v3, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v3}, Lcom/motorola/blur/settings/AccountSettings;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 774
    .restart local v1       #passwordEdit:Landroid/widget/EditText;
    :pswitch_3
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->populateASFields()V

    goto :goto_2

    .line 779
    :pswitch_4
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->populateYahooFields()V

    .line 782
    :pswitch_5
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->populateFixedEmailFields()V

    goto :goto_1

    .line 748
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
    .end packed-switch

    .line 772
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private populateFixedEmailFields()V
    .locals 3

    .prologue
    .line 796
    const v1, 0x7f0b0071

    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 798
    const v1, 0x7f0b0072

    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 799
    .local v0, edit:Landroid/widget/EditText;
    new-instance v1, Lcom/motorola/blur/setup/TextLimiter;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Lcom/motorola/blur/setup/TextLimiter;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 800
    iget-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v1}, Lcom/motorola/blur/settings/AccountSettings;->getAccountPrettyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 802
    const v1, 0x7f0b0074

    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #edit:Landroid/widget/EditText;
    check-cast v0, Landroid/widget/EditText;

    .line 803
    .restart local v0       #edit:Landroid/widget/EditText;
    iget-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v1}, Lcom/motorola/blur/settings/AccountSettings;->getUserPrettyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 804
    return-void
.end method

.method private populateYahooFields()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 808
    const v3, 0x7f0b0071

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 810
    .local v2, layout:Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v3}, Lcom/motorola/blur/settings/AccountSettings;->getServiceCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, curService:I
    :goto_0
    if-ltz v1, :cond_0

    .line 811
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 812
    .local v0, check:Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v3, v1}, Lcom/motorola/blur/settings/AccountSettings;->getServicePrettyName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 813
    iget-object v3, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v3, v1}, Lcom/motorola/blur/settings/AccountSettings;->getActivated(I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 814
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setId(I)V

    .line 815
    new-instance v3, Lcom/motorola/blur/settings/EditAccountActivity$5;

    invoke-direct {v3, p0}, Lcom/motorola/blur/settings/EditAccountActivity$5;-><init>(Lcom/motorola/blur/settings/EditAccountActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 829
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 810
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 833
    .end local v0           #check:Landroid/widget/CheckBox;
    :cond_0
    return-void
.end method

.method private final processCaptchaForSN(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;)I
    .locals 2
    .parameter "snpResp"

    .prologue
    const/4 v0, 0x0

    .line 1506
    iput-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mCaptchaToken:Ljava/lang/String;

    .line 1507
    iput-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mCaptchaUserText:Ljava/lang/String;

    .line 1508
    invoke-virtual {p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->getCaptchaToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mCaptchaToken:Ljava/lang/String;

    .line 1510
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {v0, p1, v1}, Lcom/motorola/blur/setup/CaptchaUtility;->processSNResponseForCaptcha(Landroid/os/Handler;Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;I)I

    move-result v0

    return v0
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 1276
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1277
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.motorola.blur.service.blur.devicesetup.updatepasswordprovidercredentials.resp"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1278
    const-string v1, "com.motorola.blur.service.blur.devicesetup.newpassword.resp"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1279
    const-string v1, "com.motorola.blur.service.blur.oauth.getoauthurl.resp"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1280
    const-string v1, "com.motorola.blur.service.blur.oauth.invokecallbackurl.resp"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1281
    iget-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/blur/settings/EditAccountActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1282
    return-void
.end method

.method private save(Z)Z
    .locals 5
    .parameter "force"

    .prologue
    const v4, 0x7f0b0061

    .line 1156
    iget-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    .line 1158
    .local v1, model:Lcom/motorola/blur/settings/AccountSettings;
    iget v2, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 1159
    const v2, 0x7f0b0064

    invoke-direct {p0, v2}, Lcom/motorola/blur/settings/EditAccountActivity;->getEditText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/motorola/blur/settings/AccountSettings;->setPassword(Ljava/lang/String;I)V

    .line 1161
    :cond_0
    iget v2, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1162
    const v2, 0x7f0b0068

    invoke-direct {p0, v2}, Lcom/motorola/blur/settings/EditAccountActivity;->getEditText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/blur/settings/AccountSettings;->setEmailAddress(Ljava/lang/String;)V

    .line 1165
    invoke-direct {p0, v4}, Lcom/motorola/blur/settings/EditAccountActivity;->getEditText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/blur/settings/AccountSettings;->setUsername(Ljava/lang/String;)V

    .line 1166
    const v2, 0x7f0b006c

    invoke-direct {p0, v2}, Lcom/motorola/blur/settings/EditAccountActivity;->getEditText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/blur/settings/AccountSettings;->setAccountPrettyName(Ljava/lang/String;)V

    .line 1167
    const v2, 0x7f0b006a

    invoke-direct {p0, v2}, Lcom/motorola/blur/settings/EditAccountActivity;->getEditText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/blur/settings/AccountSettings;->setServerAddress(Ljava/lang/String;)V

    .line 1168
    const v2, 0x7f0b0070

    invoke-direct {p0, v2}, Lcom/motorola/blur/settings/EditAccountActivity;->getSpinnerPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/blur/settings/AccountSettings;->setEmailRetentionPolicy(I)V

    .line 1170
    const v2, 0x7f0b006d

    invoke-virtual {p0, v2}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1171
    .local v0, check:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/blur/settings/AccountSettings;->setSecure(Z)V

    .line 1172
    const v2, 0x7f0b006e

    invoke-virtual {p0, v2}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #check:Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 1173
    .restart local v0       #check:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/blur/settings/AccountSettings;->setVerifyCA(Z)V

    .line 1178
    .end local v0           #check:Landroid/widget/CheckBox;
    :goto_0
    invoke-virtual {v1, p1}, Lcom/motorola/blur/settings/AccountSettings;->writeDataToDB(Z)Z

    move-result v2

    return v2

    .line 1175
    :cond_1
    invoke-direct {p0, v4}, Lcom/motorola/blur/settings/EditAccountActivity;->getEditText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/blur/settings/AccountSettings;->setEmailAddress(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveToService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "oldPass"
    .parameter "newPass"

    .prologue
    const/4 v3, 0x6

    .line 977
    iget v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mType:I

    if-eq v1, v3, :cond_0

    .line 978
    if-eqz p2, :cond_2

    move-object v0, p2

    .line 979
    .local v0, pwd:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/motorola/blur/settings/AccountSettings;->setPassword(Ljava/lang/String;I)V

    .line 981
    .end local v0           #pwd:Ljava/lang/String;
    :cond_0
    iget v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mType:I

    if-ne v1, v3, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v1}, Lcom/motorola/blur/settings/AccountSettings;->isAuthRequired()Z

    move-result v1

    if-nez v1, :cond_3

    .line 982
    iget-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 1092
    :goto_1
    return-void

    .line 978
    :cond_2
    const v1, 0x7f0b0064

    invoke-direct {p0, v1}, Lcom/motorola/blur/settings/EditAccountActivity;->getEditText(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 984
    :cond_3
    new-instance v1, Lcom/motorola/blur/settings/EditAccountActivity$10;

    invoke-direct {v1, p0}, Lcom/motorola/blur/settings/EditAccountActivity$10;-><init>(Lcom/motorola/blur/settings/EditAccountActivity;)V

    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/EditAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 990
    sget-object v1, Lcom/motorola/blur/util/concurrent/UIThreads;->executors:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/motorola/blur/settings/EditAccountActivity$11;

    invoke-direct {v2, p0, p1}, Lcom/motorola/blur/settings/EditAccountActivity$11;-><init>(Lcom/motorola/blur/settings/EditAccountActivity;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private sendAccountBroadcast()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 1095
    move-object v8, p0

    .line 1096
    .local v8, context:Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->BY_ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v3}, Lcom/motorola/blur/settings/AccountSettings;->getAccountId()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "capability!=4"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1101
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 1102
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1112
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v0}, Lcom/motorola/blur/settings/AccountSettings;->isResetRequired()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1113
    const-string v6, "com.motorola.blur.setup.changes.ACTION_RESET"

    .line 1118
    .local v6, action:Ljava/lang/String;
    :cond_0
    :goto_0
    const/16 v0, 0x8

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1120
    .local v7, capability:I
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1121
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "com.motorola.blur.setup.changes.capability.%d"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1122
    const-string v0, "_id"

    const/4 v1, 0x5

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1124
    const-string v0, "account_id"

    iget-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v1}, Lcom/motorola/blur/settings/AccountSettings;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1125
    const-string v0, "provider_id"

    iget-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v1}, Lcom/motorola/blur/settings/AccountSettings;->getProviderId()J

    move-result-wide v1

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1126
    const-string v0, "capability"

    invoke-virtual {v10, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1127
    const-string v0, "com.motorola.blur.setupprovider.Permissions.ACCESS_ACCOUNTS"

    invoke-virtual {v8, v10, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1128
    const-string v0, "EAA"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Sending intent: "

    aput-object v2, v1, v11

    invoke-virtual {v10}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1129
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1131
    .end local v6           #action:Ljava/lang/String;
    .end local v7           #capability:I
    .end local v10           #intent:Landroid/content/Intent;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1133
    :cond_2
    return-void

    .line 1115
    :cond_3
    const-string v6, "com.motorola.blur.setup.changes.ACTION_VALIDATED"

    .restart local v6       #action:Ljava/lang/String;
    goto :goto_0
.end method

.method private setOAuthWebViewVisibility()V
    .locals 5

    .prologue
    const v4, 0x7f0b005e

    const v3, 0x7f0b0039

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1590
    iget-boolean v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mWebViewMode:Z

    if-nez v0, :cond_0

    .line 1591
    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1592
    invoke-virtual {p0, v4}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mWebViewMode:Z

    .line 1599
    :goto_0
    return-void

    .line 1595
    :cond_0
    invoke-virtual {p0, v4}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1596
    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1597
    iput-boolean v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mWebViewMode:Z

    goto :goto_0
.end method

.method private setupProgressDialog()V
    .locals 5

    .prologue
    .line 1285
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->dismissProgressDialog()V

    .line 1286
    new-instance v0, Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/SetupProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 1287
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    sget-object v1, Lcom/motorola/blur/settings/EditAccountActivity;->PROGRESS_POINTS:[I

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgressPoints([I)V

    .line 1288
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v4}, Lcom/motorola/blur/settings/AccountSettings;->getAccountPrettyName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgressText(Ljava/lang/String;)V

    .line 1290
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->show()V

    .line 1292
    return-void
.end method

.method private showCaptchaActivity()V
    .locals 3

    .prologue
    .line 1515
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1516
    .local v0, captchaIntent:Landroid/content/Intent;
    const-class v1, Lcom/motorola/blur/setup/CaptchaActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1517
    const-string v1, "android.intent.extra.shortcut.ICON"

    iget-object v2, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mCaptchaImageDecoded:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1518
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/blur/settings/EditAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1519
    return-void
.end method

.method private showWarning(Landroid/widget/CompoundButton;)V
    .locals 3
    .parameter "button"

    .prologue
    .line 952
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0101

    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/EditAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0067

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0068

    new-instance v2, Lcom/motorola/blur/settings/EditAccountActivity$9;

    invoke-direct {v2, p0, p1}, Lcom/motorola/blur/settings/EditAccountActivity$9;-><init>(Lcom/motorola/blur/settings/EditAccountActivity;Landroid/widget/CompoundButton;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 961
    return-void
.end method

.method private validateCredentials()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x0

    const v12, 0x7f0c0087

    const/4 v10, 0x1

    const/16 v11, 0xa

    .line 1331
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1332
    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1333
    .local v4, resources:Landroid/content/res/Resources;
    const v9, 0x7f0b0061

    invoke-direct {p0, v9}, Lcom/motorola/blur/settings/EditAccountActivity;->getEditText(I)Ljava/lang/String;

    move-result-object v7

    .line 1335
    .local v7, username:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v10, :cond_1

    .line 1336
    :cond_0
    const v9, 0x7f0c0085

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    :cond_1
    iget v9, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mType:I

    packed-switch v9, :pswitch_data_0

    .line 1389
    :cond_2
    :goto_0
    :pswitch_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-nez v9, :cond_3

    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->isAccountDuplicate()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1390
    const v9, 0x7f0c0092

    invoke-virtual {p0, v9}, Lcom/motorola/blur/settings/EditAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_d

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_1
    return-object v9

    .line 1341
    :pswitch_1
    const v9, 0x7f0b0068

    invoke-direct {p0, v9}, Lcom/motorola/blur/settings/EditAccountActivity;->getEditText(I)Ljava/lang/String;

    move-result-object v1

    .line 1342
    .local v1, email:Ljava/lang/String;
    const v9, 0x7f0b006a

    invoke-direct {p0, v9}, Lcom/motorola/blur/settings/EditAccountActivity;->getEditText(I)Ljava/lang/String;

    move-result-object v6

    .line 1343
    .local v6, server:Ljava/lang/String;
    const v9, 0x7f0b006c

    invoke-direct {p0, v9}, Lcom/motorola/blur/settings/EditAccountActivity;->getEditText(I)Ljava/lang/String;

    move-result-object v0

    .line 1344
    .local v0, accountName:Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v10, :cond_6

    .line 1345
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 1346
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1348
    :cond_5
    const v9, 0x7f0c0086

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1353
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_7

    .line 1354
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1356
    :cond_7
    invoke-virtual {p0, v12}, Lcom/motorola/blur/settings/EditAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    :cond_8
    new-instance v2, Lcom/motorola/blur/setup/ValidatedPatternValue;

    sget-object v9, Lcom/motorola/blur/setup/ValidatedPatternValue;->AS_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    const v10, 0x7f0c0089

    invoke-direct {v2, v9, v10, v13}, Lcom/motorola/blur/setup/ValidatedPatternValue;-><init>(Ljava/util/regex/Pattern;ILjava/lang/String;)V

    .line 1362
    .local v2, emailPattern:Lcom/motorola/blur/setup/ValidatedPatternValue;
    invoke-virtual {v2, v1}, Lcom/motorola/blur/setup/ValidatedPatternValue;->isValidValue(Ljava/lang/String;)Z

    move-result v8

    .line 1363
    .local v8, validated:Z
    if-nez v8, :cond_2

    .line 1364
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_9

    .line 1365
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1367
    :cond_9
    invoke-virtual {v2, v4}, Lcom/motorola/blur/setup/ValidatedPatternValue;->getError(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1372
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #email:Ljava/lang/String;
    .end local v2           #emailPattern:Lcom/motorola/blur/setup/ValidatedPatternValue;
    .end local v6           #server:Ljava/lang/String;
    .end local v8           #validated:Z
    :pswitch_2
    const v9, 0x7f0b0072

    invoke-direct {p0, v9}, Lcom/motorola/blur/settings/EditAccountActivity;->getEditText(I)Ljava/lang/String;

    move-result-object v3

    .line 1373
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1374
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_a

    .line 1375
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1377
    :cond_a
    invoke-virtual {p0, v12}, Lcom/motorola/blur/settings/EditAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    :cond_b
    const v9, 0x7f0b0074

    invoke-direct {p0, v9}, Lcom/motorola/blur/settings/EditAccountActivity;->getEditText(I)Ljava/lang/String;

    move-result-object v3

    .line 1380
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1381
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_c

    .line 1382
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1384
    :cond_c
    const v9, 0x7f0c0088

    invoke-virtual {p0, v9}, Lcom/motorola/blur/settings/EditAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .end local v3           #name:Ljava/lang/String;
    :cond_d
    move-object v9, v13

    .line 1392
    goto/16 :goto_1

    .line 1339
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private verificationFinishedUI(Ljava/lang/String;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 1305
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->dismissProgressDialog()V

    .line 1306
    if-nez p1, :cond_1

    .line 1308
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->finishHappily()V

    .line 1318
    :cond_0
    :goto_0
    return-void

    .line 1309
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1310
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c008e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1314
    iget-boolean v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mWebViewMode:Z

    if-eqz v0, :cond_0

    .line 1315
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->setOAuthWebViewVisibility()V

    goto :goto_0
.end method


# virtual methods
.method protected addAccountAgain()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 686
    iget v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 687
    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v2}, Lcom/motorola/blur/settings/AccountSettings;->getProviderId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v7

    .line 688
    .local v7, providerName:Ljava/lang/String;
    new-instance v8, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient;

    invoke-direct {v8, p0}, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient;-><init>(Landroid/content/Context;)V

    .line 689
    .local v8, wsClient:Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient;
    iget-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mCallbackUrl:Ljava/lang/String;

    invoke-virtual {v8, v7, v1, v9}, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient;->invokeCallbackUrl(Ljava/lang/String;Ljava/lang/String;Z)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 727
    .end local v7           #providerName:Ljava/lang/String;
    .end local v8           #wsClient:Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient;
    :goto_0
    return-void

    .line 692
    :cond_0
    const-string v1, "EAA"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Doesn\'t exist - must add"

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 693
    iget-boolean v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mRegisteredAdd:Z

    if-nez v1, :cond_1

    .line 694
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 695
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v1, "com.motorola.blur.service.blur.devicesetup.providercredentials.resp"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 696
    iget-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v6}, Lcom/motorola/blur/settings/EditAccountActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 697
    iput-boolean v4, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mRegisteredAdd:Z

    .line 699
    .end local v6           #filter:Landroid/content/IntentFilter;
    :cond_1
    invoke-static {p0}, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClientFactory;->getClient(Landroid/content/Context;)Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    move-result-object v8

    .line 703
    .local v8, wsClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;
    iget-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mCaptchaToken:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mCaptchaUserText:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 710
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;

    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v2}, Lcom/motorola/blur/settings/AccountSettings;->getProviderId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v2}, Lcom/motorola/blur/settings/AccountSettings;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v3}, Lcom/motorola/blur/settings/AccountSettings;->getPassword()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mCaptchaToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mCaptchaUserText:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    .local v0, pc:Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;
    :goto_1
    iget-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v1}, Lcom/motorola/blur/settings/AccountSettings;->getAccountId()J

    move-result-wide v1

    invoke-interface {v8, v0, v1, v2}, Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;->addProviderCredentials(Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;J)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 725
    iput-boolean v9, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mShouldAddUserAgain:Z

    goto :goto_0

    .line 717
    .end local v0           #pc:Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;
    :cond_2
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;

    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v2}, Lcom/motorola/blur/settings/AccountSettings;->getProviderId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v2}, Lcom/motorola/blur/settings/AccountSettings;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v3}, Lcom/motorola/blur/settings/AccountSettings;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #pc:Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;
    goto :goto_1
.end method

.method protected buildAndShowError(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;)V
    .locals 1
    .parameter "code"
    .parameter "snpError"

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v0}, Lcom/motorola/blur/settings/AccountSettings;->getProviderPrettyName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->constructServiceError(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/settings/EditAccountActivity;->verificationFinishedUI(Ljava/lang/String;)V

    .line 1531
    return-void
.end method

.method deleteAndClose(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 1295
    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1296
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->finishHappily()V

    .line 1297
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1538
    packed-switch p1, :pswitch_data_0

    .line 1574
    :cond_0
    :goto_0
    return-void

    .line 1540
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 1541
    if-nez p3, :cond_2

    .line 1542
    const v1, 0x7f0b0027

    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1543
    .local v0, button:Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 1544
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1545
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1546
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 1548
    :cond_1
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->dismissProgressDialog()V

    goto :goto_0

    .line 1550
    .end local v0           #button:Landroid/widget/Button;
    :cond_2
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mCaptchaUserText:Ljava/lang/String;

    .line 1551
    iget-boolean v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mShouldAddUserAgain:Z

    if-eqz v1, :cond_4

    .line 1555
    iget-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1556
    new-instance v1, Lcom/motorola/blur/settings/EditAccountActivity$15;

    invoke-direct {v1, p0}, Lcom/motorola/blur/settings/EditAccountActivity$15;-><init>(Lcom/motorola/blur/settings/EditAccountActivity;)V

    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/EditAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1563
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->addAccountAgain()V

    .line 1564
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mShouldAddUserAgain:Z

    goto :goto_0

    .line 1568
    :cond_4
    invoke-direct {p0, v3, v3}, Lcom/motorola/blur/settings/EditAccountActivity;->saveToService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1538
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 1224
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1251
    :goto_0
    return-void

    .line 1226
    :sswitch_0
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->setOAuthWebViewVisibility()V

    .line 1227
    invoke-direct {p0, v2, v2}, Lcom/motorola/blur/settings/EditAccountActivity;->saveToService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1231
    :sswitch_1
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->confirmDelete()V

    goto :goto_0

    .line 1235
    :sswitch_2
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->validateCredentials()Ljava/lang/String;

    move-result-object v0

    .line 1236
    .local v0, error:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1237
    invoke-direct {p0, v0}, Lcom/motorola/blur/settings/EditAccountActivity;->verificationFinishedUI(Ljava/lang/String;)V

    goto :goto_0

    .line 1239
    :cond_0
    invoke-direct {p0, v2, v2}, Lcom/motorola/blur/settings/EditAccountActivity;->saveToService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1244
    .end local v0           #error:Ljava/lang/String;
    :sswitch_3
    iget-boolean v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mWebViewMode:Z

    if-eqz v1, :cond_1

    .line 1245
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->setOAuthWebViewVisibility()V

    goto :goto_0

    .line 1247
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->finish()V

    goto :goto_0

    .line 1224
    :sswitch_data_0
    .sparse-switch
        0x7f0b0003 -> :sswitch_2
        0x7f0b0004 -> :sswitch_3
        0x7f0b0076 -> :sswitch_0
        0x7f0b0077 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/16 v11, 0x8

    const v10, 0x7f0c005c

    .line 597
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 598
    const v7, 0x7f03001e

    invoke-virtual {p0, v7}, Lcom/motorola/blur/settings/EditAccountActivity;->setContentView(I)V

    .line 600
    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 601
    .local v3, intent:Landroid/content/Intent;
    if-nez v3, :cond_0

    .line 602
    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->finish()V

    .line 680
    :goto_0
    return-void

    .line 605
    :cond_0
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 606
    .local v6, uri:Landroid/net/Uri;
    if-nez v6, :cond_1

    .line 607
    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->finish()V

    goto :goto_0

    .line 610
    :cond_1
    invoke-direct {p0, v6}, Lcom/motorola/blur/settings/EditAccountActivity;->getAccountType(Landroid/net/Uri;)I

    move-result v7

    iput v7, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mType:I

    .line 612
    const v7, 0x7f0b0011

    invoke-virtual {p0, v7}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 614
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v7, 0x7f0c007f

    const v8, 0x7f0b0003

    invoke-static {p0, v7, v8}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v5

    .line 615
    .local v5, okButton:Landroid/widget/Button;
    const v7, 0x7f0c0057

    const v8, 0x7f0b0004

    invoke-static {p0, v7, v8}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v2

    .line 616
    .local v2, cancelButton:Landroid/widget/Button;
    invoke-virtual {v0, v5}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 617
    invoke-virtual {v0, v2}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 619
    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    const v7, 0x7f0b0077

    invoke-virtual {p0, v7}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 624
    .local v1, button:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    iget v7, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mType:I

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 651
    :pswitch_1
    new-instance v7, Lcom/motorola/blur/settings/FixedEmailAccountSettings;

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-direct {v7, p0, v8, v9}, Lcom/motorola/blur/settings/FixedEmailAccountSettings;-><init>(Landroid/content/Context;J)V

    iput-object v7, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    .line 652
    invoke-virtual {p0, v10}, Lcom/motorola/blur/settings/EditAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 661
    :goto_1
    iget v7, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mType:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    iget-object v7, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v7}, Lcom/motorola/blur/settings/AccountSettings;->getError()I

    move-result v7

    if-lez v7, :cond_2

    .line 663
    const/4 v4, 0x0

    .line 664
    .local v4, message:Ljava/lang/String;
    iget-object v7, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v7}, Lcom/motorola/blur/settings/AccountSettings;->getError()I

    .line 668
    const v7, 0x7f0c010e

    invoke-virtual {p0, v7}, Lcom/motorola/blur/settings/EditAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "{0}"

    iget-object v9, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v9}, Lcom/motorola/blur/settings/AccountSettings;->getProviderPrettyName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 672
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0c008f

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 677
    .end local v4           #message:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->populateFields()V

    .line 678
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->registerReceiver()V

    goto/16 :goto_0

    .line 629
    :pswitch_2
    new-instance v7, Lcom/motorola/blur/settings/OAuthAccountSettings;

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-direct {v7, p0, v8, v9}, Lcom/motorola/blur/settings/OAuthAccountSettings;-><init>(Landroid/content/Context;J)V

    iput-object v7, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    .line 630
    invoke-virtual {p0, v10}, Lcom/motorola/blur/settings/EditAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 631
    const v7, 0x7f0b0062

    invoke-virtual {p0, v7}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 632
    const v7, 0x7f0b0075

    invoke-virtual {p0, v7}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 633
    const v7, 0x7f0b0076

    invoke-virtual {p0, v7}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #button:Landroid/widget/Button;
    check-cast v1, Landroid/widget/Button;

    .line 634
    .restart local v1       #button:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    invoke-virtual {v5, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 636
    const v7, 0x7f0c0080

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    .line 639
    :pswitch_3
    new-instance v7, Lcom/motorola/blur/settings/ASAccountSettings;

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-direct {v7, p0, v8, v9}, Lcom/motorola/blur/settings/ASAccountSettings;-><init>(Landroid/content/Context;J)V

    iput-object v7, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    .line 640
    invoke-virtual {p0, v10}, Lcom/motorola/blur/settings/EditAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 643
    :pswitch_4
    new-instance v7, Lcom/motorola/blur/settings/SNAccountSettings;

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-direct {v7, p0, v8, v9}, Lcom/motorola/blur/settings/SNAccountSettings;-><init>(Landroid/content/Context;J)V

    iput-object v7, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    .line 644
    invoke-virtual {p0, v10}, Lcom/motorola/blur/settings/EditAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 647
    :pswitch_5
    new-instance v7, Lcom/motorola/blur/settings/YahooAccountSettings;

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-direct {v7, p0, v8, v9}, Lcom/motorola/blur/settings/YahooAccountSettings;-><init>(Landroid/content/Context;J)V

    iput-object v7, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    .line 648
    invoke-virtual {p0, v10}, Lcom/motorola/blur/settings/EditAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 627
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onDeleteFinished(ZI)V
    .locals 1
    .parameter "deleted"
    .parameter "error"

    .prologue
    .line 1457
    if-eqz p1, :cond_0

    .line 1458
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->finishHappily()V

    .line 1460
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mErrorCode:I

    .line 1461
    return-void

    :cond_1
    move v0, p2

    .line 1460
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1255
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1257
    :try_start_0
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditAccountActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;

    invoke-interface {v0}, Lcom/motorola/blur/util/authentication/Authentication;->close()V

    .line 1264
    :cond_0
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->dismissProgressDialog()V

    .line 1265
    return-void

    .line 1258
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onProgress()V
    .locals 1

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    if-eqz v0, :cond_0

    .line 1624
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->nextProgressPoint()V

    .line 1626
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 1443
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 1444
    iget v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mErrorCode:I

    if-eqz v0, :cond_0

    .line 1445
    iget v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mErrorCode:I

    invoke-static {p0, v0}, Lcom/motorola/blur/setup/SilentBlurUtility;->showErrorDialog(Landroid/content/Context;I)V

    .line 1446
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mErrorCode:I

    .line 1448
    :cond_0
    return-void
.end method

.method public processFrob()V
    .locals 2

    .prologue
    .line 1629
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditAccountActivity;->setupProgressDialog()V

    .line 1630
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    check-cast v0, Lcom/motorola/blur/settings/OAuthAccountSettings;

    iget-object v1, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mCallbackUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/OAuthAccountSettings;->setResponseUrl(Ljava/lang/String;)V

    .line 1631
    iget-object v0, p0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountSettings;->authenticateFromService(Ljava/lang/String;)Z

    .line 1632
    return-void
.end method
