.class public Lcom/motorola/blur/setup/BlurAccountCreator;
.super Ljava/lang/Object;
.source "BlurAccountCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/BlurAccountCreator$UpgradeProjection;
    }
.end annotation


# static fields
.field private static final AUTH_TYPE_YAHOO:I = 0x28

.field protected static final CONTACTS_HANDLER_NAME:Ljava/lang/String; = "BlurContactsSyncHandler"

.field public static final EXISTING_ACCOUNT_KEY:Ljava/lang/String; = "existing"

.field protected static final FAILED:I = -0x1

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field protected static final IMAGES_DOWNLOADED:I = 0xa

.field protected static final NO_ERROR:I = -0x1

.field private static final PROGRESS_POINTS:[I = null

.field private static final PROVIDER_SELECTION:Ljava/lang/String; = "provider_id=?"

.field protected static final RECEIVED_ACCOUNTS:I = 0x3

.field protected static final RECEIVED_CAPTCHA:I = 0x8

.field protected static final RECEIVED_EXISTING_SESSION_ID:I = 0x5

.field protected static final RECEIVED_NEW_ACCOUNT_SESSION_ID:I = 0x1

.field protected static final RECEIVED_PROVIDERS:I = 0x2

.field protected static final RECEIVED_RESET_PASSWORD:I = 0x7

.field protected static final RECEIVED_SETUP_DB:I = 0x6

.field protected static final RECEIVED_SUBSCRIPTIONS:I = 0x4

.field private static final SERVICE_RESTARTED:I = 0x9

.field private static final SERVICE_SELECTION:Ljava/lang/String; = "path != \'\'"

.field protected static final SETUP_COMPLETED_DATA_STRING:Ljava/lang/String; = "clientsettings/blur"

.field private static final SETUP_HANDLER_NAME:Ljava/lang/String; = "BlurSetupSyncHandler"

.field private static final SETUP_SYNC_APP_ID:I = 0x5

.field protected static final SNFRIENDS_HANDLER_NAME:Ljava/lang/String; = "BlurSNFriendsSyncHandler"

.field protected static final SYNC_FAILED:I = -0x2

.field protected static final SYNC_SUSPENDED:I = 0xc

.field private static final TAG:Ljava/lang/String; = "BAC"

.field private static final UPGRADE_SELECTION:Ljava/lang/String; = "password NOT LIKE \'{%\'"

.field private static final YAHOO_SERVICE_SELECTION:Ljava/lang/String; = "capability=5 AND providers_id=?"

.field private static final sNumberOfTriesAllowed:I = 0x3


# instance fields
.field private mBound:Z

.field private mCaptchaRequest:Z

.field private mClientCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

.field private mContext:Landroid/content/Context;

.field private mEmail:Ljava/lang/String;

.field private mExistingAccount:Z

.field private mForgotPassword:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIMSI:Ljava/lang/String;

.field private mIsUiNeeded:Z

.field private mListener:Lcom/motorola/blur/setup/BlurAccountCreationListener;

.field private mName:Ljava/lang/String;

.field private mNumberOfTriesToGetImages:I

.field private mPassword:Ljava/lang/String;

.field private mPhone:Ljava/lang/String;

.field private mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

.field private mReceivedDB:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegisterd:Z

.field private mRequestInFlight:Ljava/lang/Boolean;

.field private mSerialNumber:Ljava/lang/String;

.field private mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field protected mSubscribed:Z

.field private mSuspendServiceConnection:Landroid/content/ServiceConnection;

.field private mSuspendSyncBound:Z

.field private mSuspended:Z

.field private mWSClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/blur/setup/BlurAccountCreator;->PROGRESS_POINTS:[I

    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/setup/BlurAccountCreator;->ID_PROJECTION:[Ljava/lang/String;

    return-void

    .line 80
    nop

    :array_0
    .array-data 0x4
        0xe8t 0x3t 0x0t 0x0t
        0x28t 0x23t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/blur/setup/BlurAccountCreationListener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-boolean v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mReceiverRegisterd:Z

    .line 127
    iput v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mNumberOfTriesToGetImages:I

    .line 129
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mListener:Lcom/motorola/blur/setup/BlurAccountCreationListener;

    .line 130
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mWSClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    .line 131
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 132
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mClientCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .line 133
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 134
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mRequestInFlight:Ljava/lang/Boolean;

    .line 135
    iput-boolean v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mExistingAccount:Z

    .line 136
    iput-boolean v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mForgotPassword:Z

    .line 137
    iput-boolean v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mCaptchaRequest:Z

    .line 138
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mName:Ljava/lang/String;

    .line 139
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mEmail:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mPassword:Ljava/lang/String;

    .line 141
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mPhone:Ljava/lang/String;

    .line 142
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mIMSI:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mSerialNumber:Ljava/lang/String;

    .line 144
    iput-boolean v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mReceivedDB:Z

    .line 145
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    .line 146
    iput-boolean v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mBound:Z

    .line 147
    iput-boolean v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mSuspendSyncBound:Z

    .line 149
    iput-boolean v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mSuspended:Z

    .line 150
    iput-boolean v3, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mIsUiNeeded:Z

    .line 361
    new-instance v0, Lcom/motorola/blur/setup/BlurAccountCreator$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/BlurAccountCreator$1;-><init>(Lcom/motorola/blur/setup/BlurAccountCreator;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 382
    new-instance v0, Lcom/motorola/blur/setup/BlurAccountCreator$2;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/BlurAccountCreator$2;-><init>(Lcom/motorola/blur/setup/BlurAccountCreator;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mSuspendServiceConnection:Landroid/content/ServiceConnection;

    .line 404
    new-instance v0, Lcom/motorola/blur/setup/BlurAccountCreator$3;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/BlurAccountCreator$3;-><init>(Lcom/motorola/blur/setup/BlurAccountCreator;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 453
    new-instance v0, Lcom/motorola/blur/setup/BlurAccountCreator$4;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/BlurAccountCreator$4;-><init>(Lcom/motorola/blur/setup/BlurAccountCreator;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mHandler:Landroid/os/Handler;

    .line 153
    iput-object p2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mListener:Lcom/motorola/blur/setup/BlurAccountCreationListener;

    .line 154
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/BlurAccountCreator;->init(Landroid/content/Context;)V

    .line 155
    iput-boolean v3, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mIsUiNeeded:Z

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/blur/setup/BlurAccountCreationListener;Z)V
    .locals 3
    .parameter "context"
    .parameter "listener"
    .parameter "isUiNeeded"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-boolean v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mReceiverRegisterd:Z

    .line 127
    iput v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mNumberOfTriesToGetImages:I

    .line 129
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mListener:Lcom/motorola/blur/setup/BlurAccountCreationListener;

    .line 130
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mWSClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    .line 131
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 132
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mClientCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .line 133
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 134
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mRequestInFlight:Ljava/lang/Boolean;

    .line 135
    iput-boolean v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mExistingAccount:Z

    .line 136
    iput-boolean v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mForgotPassword:Z

    .line 137
    iput-boolean v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mCaptchaRequest:Z

    .line 138
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mName:Ljava/lang/String;

    .line 139
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mEmail:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mPassword:Ljava/lang/String;

    .line 141
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mPhone:Ljava/lang/String;

    .line 142
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mIMSI:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mSerialNumber:Ljava/lang/String;

    .line 144
    iput-boolean v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mReceivedDB:Z

    .line 145
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    .line 146
    iput-boolean v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mBound:Z

    .line 147
    iput-boolean v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mSuspendSyncBound:Z

    .line 149
    iput-boolean v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mSuspended:Z

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mIsUiNeeded:Z

    .line 361
    new-instance v0, Lcom/motorola/blur/setup/BlurAccountCreator$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/BlurAccountCreator$1;-><init>(Lcom/motorola/blur/setup/BlurAccountCreator;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 382
    new-instance v0, Lcom/motorola/blur/setup/BlurAccountCreator$2;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/BlurAccountCreator$2;-><init>(Lcom/motorola/blur/setup/BlurAccountCreator;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mSuspendServiceConnection:Landroid/content/ServiceConnection;

    .line 404
    new-instance v0, Lcom/motorola/blur/setup/BlurAccountCreator$3;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/BlurAccountCreator$3;-><init>(Lcom/motorola/blur/setup/BlurAccountCreator;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 453
    new-instance v0, Lcom/motorola/blur/setup/BlurAccountCreator$4;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/BlurAccountCreator$4;-><init>(Lcom/motorola/blur/setup/BlurAccountCreator;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mHandler:Landroid/os/Handler;

    .line 159
    iput-object p2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mListener:Lcom/motorola/blur/setup/BlurAccountCreationListener;

    .line 160
    iput-boolean p3, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mIsUiNeeded:Z

    .line 161
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/BlurAccountCreator;->init(Landroid/content/Context;)V

    .line 162
    return-void
.end method

.method static synthetic access$002(Lcom/motorola/blur/setup/BlurAccountCreator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mSuspended:Z

    return p1
.end method

.method static synthetic access$100(Lcom/motorola/blur/setup/BlurAccountCreator;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/motorola/blur/setup/BlurAccountCreator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mCaptchaRequest:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/motorola/blur/setup/BlurAccountCreator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/motorola/blur/setup/BlurAccountCreator;->showRetryDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/motorola/blur/setup/BlurAccountCreator;)Lcom/motorola/blur/setup/SetupProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/blur/setup/BlurAccountCreator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mReceivedDB:Z

    return v0
.end method

.method static synthetic access$202(Lcom/motorola/blur/setup/BlurAccountCreator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mReceivedDB:Z

    return p1
.end method

.method static synthetic access$300(Lcom/motorola/blur/setup/BlurAccountCreator;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/blur/setup/BlurAccountCreator;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/blur/setup/BlurAccountCreator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/motorola/blur/setup/BlurAccountCreator;->requestSettings()V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/blur/setup/BlurAccountCreator;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    return-object v0
.end method

.method static synthetic access$602(Lcom/motorola/blur/setup/BlurAccountCreator;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    return-object p1
.end method

.method static synthetic access$700(Lcom/motorola/blur/setup/BlurAccountCreator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/BlurAccountCreator;->endProgressUI(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/motorola/blur/setup/BlurAccountCreator;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mRequestInFlight:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$802(Lcom/motorola/blur/setup/BlurAccountCreator;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mRequestInFlight:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$900(Lcom/motorola/blur/setup/BlurAccountCreator;)Lcom/motorola/blur/setup/BlurAccountCreationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mListener:Lcom/motorola/blur/setup/BlurAccountCreationListener;

    return-object v0
.end method

.method private buildClientCaptcha(Landroid/os/Bundle;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    .locals 2
    .parameter "extra"

    .prologue
    .line 590
    const-string v1, "CaptchaRequired"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;

    move-result-object v0

    .line 592
    .local v0, b:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->setText(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;

    .line 593
    const-string v1, "CaptchaToken"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->setToken(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;

    .line 600
    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v1

    .line 606
    .end local v0           #b:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createMeContact()V
    .locals 18

    .prologue
    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 719
    .local v10, resolver:Landroid/content/ContentResolver;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 723
    .local v13, values:Landroid/content/ContentValues;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    move-object v14, v0

    const-string v15, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

    invoke-static {v14, v15}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    .line 724
    .local v2, account:Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/BlurAccountCreator;->mIsUiNeeded:Z

    move v14, v0

    if-eqz v14, :cond_0

    if-eqz v2, :cond_1

    .line 725
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/BlurAccountCreator;->mIsUiNeeded:Z

    move v14, v0

    if-eqz v14, :cond_3

    .line 726
    const-string v14, "account_name"

    iget-object v15, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v14, "account_type"

    iget-object v15, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v14, "sync3"

    const-string v15, "blur"

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    :goto_0
    const-wide/16 v5, 0x0

    .line 745
    .local v5, blurAccountId:J
    const-string v14, "sync1"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 747
    .end local v5           #blurAccountId:J
    :cond_1
    sget-object v14, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v14, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 748
    .local v11, resultUri:Landroid/net/Uri;
    if-nez v11, :cond_5

    .line 749
    const-string v14, "BAC"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "Couldn\'t add the ME contact!"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 838
    .end local v2           #account:Landroid/accounts/Account;
    .end local v11           #resultUri:Landroid/net/Uri;
    :cond_2
    :goto_1
    return-void

    .line 730
    .restart local v2       #account:Landroid/accounts/Account;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "BUA_ACCOUNT_NAME"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 732
    .local v3, accountName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "BUA_ACCOUNT_TYPE"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 734
    .local v4, accountType:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 736
    const-string v14, "account_name"

    invoke-virtual {v13, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v14, "account_type"

    invoke-virtual {v13, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    move-object v14, v0

    const v15, 0x7f0c0184

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 741
    .local v1, Me:Ljava/lang/String;
    const-string v14, "display_name"

    invoke-virtual {v13, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 832
    .end local v1           #Me:Ljava/lang/String;
    .end local v2           #account:Landroid/accounts/Account;
    .end local v3           #accountName:Ljava/lang/String;
    .end local v4           #accountType:Ljava/lang/String;
    :catch_0
    move-exception v14

    move-object v12, v14

    .line 833
    .local v12, sqle:Landroid/database/sqlite/SQLiteException;
    const-string v14, "BAC"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v12, v15}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 753
    .end local v12           #sqle:Landroid/database/sqlite/SQLiteException;
    .restart local v2       #account:Landroid/accounts/Account;
    .restart local v11       #resultUri:Landroid/net/Uri;
    :cond_5
    :try_start_1
    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 757
    .local v8, rawContactId:J
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 758
    const-string v14, "mimetype"

    const-string v15, "vnd.android.cursor.item/blur_owner"

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v14, "raw_contact_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 760
    const-string v14, "data2"

    const-string v15, "blur"

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v14, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    if-nez v14, :cond_6

    .line 764
    const-string v14, "BAC"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "Couldn\'t add the ME contact attribute"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 774
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/BlurAccountCreator;->mIsUiNeeded:Z

    move v14, v0

    if-eqz v14, :cond_7

    .line 775
    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v14, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    if-nez v14, :cond_7

    .line 776
    const-string v14, "BAC"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "Couldn\'t add the ME contact attribute"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 781
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/BlurAccountCreator;->mIsUiNeeded:Z

    move v14, v0

    if-nez v14, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/BlurAccountCreator;->mName:Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_9

    .line 784
    :cond_8
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 785
    const-string v14, "mimetype"

    const-string v15, "vnd.android.cursor.item/name"

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string v14, "raw_contact_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 787
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/BlurAccountCreator;->mIsUiNeeded:Z

    move v14, v0

    if-eqz v14, :cond_b

    .line 788
    const-string v14, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/BlurAccountCreator;->mName:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :goto_2
    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v14, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    if-nez v14, :cond_9

    .line 797
    const-string v14, "BAC"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "Couldn\'t set the name to ME contact"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 802
    :cond_9
    const-string v14, "NO_PHONE_NUMBER"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/BlurAccountCreator;->mPhone:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/BlurAccountCreator;->mPhone:Ljava/lang/String;

    move-object v14, v0

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 805
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 806
    const-string v14, "mimetype"

    const-string v15, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const-string v14, "raw_contact_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 808
    const-string v14, "data2"

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 811
    const-string v14, "is_primary"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 813
    const-string v14, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/BlurAccountCreator;->mPhone:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v14, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    if-nez v14, :cond_a

    .line 815
    const-string v14, "BAC"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "Couldn\'t add phone to Me contact"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 821
    :cond_a
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 822
    const-string v14, "mimetype"

    const-string v15, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v14, "raw_contact_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 824
    const-string v14, "data2"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 825
    const-string v14, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/BlurAccountCreator;->mEmail:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/BlurAccountCreator;->mIsUiNeeded:Z

    move v14, v0

    if-eqz v14, :cond_2

    .line 827
    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v14, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    if-nez v14, :cond_2

    .line 828
    const-string v14, "BAC"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "Couldn\'t add email to Me contact"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 835
    .end local v2           #account:Landroid/accounts/Account;
    .end local v8           #rawContactId:J
    .end local v11           #resultUri:Landroid/net/Uri;
    :catch_1
    move-exception v14

    move-object v7, v14

    .line 836
    .local v7, e:Ljava/lang/IllegalStateException;
    const-string v14, "BAC"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v7, v15}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 791
    .end local v7           #e:Ljava/lang/IllegalStateException;
    .restart local v2       #account:Landroid/accounts/Account;
    .restart local v8       #rawContactId:J
    .restart local v11       #resultUri:Landroid/net/Uri;
    :cond_b
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    move-object v14, v0

    const v15, 0x7f0c0184

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 792
    .restart local v1       #Me:Ljava/lang/String;
    const-string v14, "data1"

    invoke-virtual {v13, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const-string v14, "data2"

    invoke-virtual {v13, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2
.end method

.method private createSyncFilter(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "receiver"
    .parameter "dataType"

    .prologue
    const/4 v4, 0x1

    .line 612
    :try_start_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 613
    .local v2, successFilter:Landroid/content/IntentFilter;
    const-string v3, "com.motorola.blur.service.blur.Actions.SYNC_HANDLER_COMPLETED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v2, p3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 617
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 618
    .local v1, failureFilter:Landroid/content/IntentFilter;
    const-string v3, "com.motorola.blur.service.blur.Actions.SYNC_HANDLER_FAILED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v1, p3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 621
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mReceiverRegisterd:Z
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    .end local v1           #failureFilter:Landroid/content/IntentFilter;
    .end local v2           #successFilter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 622
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 623
    .local v0, exception:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v3, "BAC"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Bad mime type - up a creek without a paddle!"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static deleteAllEmailAccounts(Landroid/content/Context;)V
    .locals 9
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 967
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 968
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->EMAIL_ACCOUNTS_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 970
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 982
    :goto_0
    return-void

    .line 973
    :cond_0
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 974
    const/16 v1, 0xb

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 978
    .local v7, id:J
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 981
    .end local v7           #id:J
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private final dialogShowing()Z
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private endProgressUI(I)V
    .locals 5
    .parameter "error"

    .prologue
    const/4 v4, 0x0

    .line 884
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mRequestInFlight:Ljava/lang/Boolean;

    .line 885
    invoke-direct {p0}, Lcom/motorola/blur/setup/BlurAccountCreator;->dialogShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 886
    iget-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->hide()V

    .line 887
    iget-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->dismiss()V

    .line 891
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mForgotPassword:Z

    if-eqz v1, :cond_2

    .line 892
    const v0, 0x7f0c000b

    .line 901
    .local v0, title:I
    :goto_0
    iget-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 902
    iget-boolean v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mIsUiNeeded:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 903
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c007f

    new-instance v3, Lcom/motorola/blur/setup/BlurAccountCreator$6;

    invoke-direct {v3, p0}, Lcom/motorola/blur/setup/BlurAccountCreator$6;-><init>(Lcom/motorola/blur/setup/BlurAccountCreator;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 916
    :cond_1
    :goto_1
    return-void

    .line 894
    .end local v0           #title:I
    :cond_2
    iget-boolean v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mExistingAccount:Z

    if-nez v1, :cond_3

    .line 895
    const v0, 0x7f0c008d

    .restart local v0       #title:I
    goto :goto_0

    .line 897
    .end local v0           #title:I
    :cond_3
    const v0, 0x7f0c0091

    .restart local v0       #title:I
    goto :goto_0

    .line 911
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v4, v1}, Lcom/motorola/blur/setup/BlurAccountCreator;->finishProgressUI(ZLjava/lang/String;)V

    goto :goto_1
.end method

.method private getContactsServiceId(J)J
    .locals 10
    .parameter "providerId"

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 696
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "capability=5 AND providers_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 701
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v7, -0x1

    .line 702
    .local v7, serviceId:J
    if-eqz v6, :cond_1

    .line 703
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 706
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 708
    :cond_1
    return-wide v7
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 165
    iput-object p1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    .line 166
    iget-boolean v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mIsUiNeeded:Z

    if-ne v2, v4, :cond_0

    .line 167
    new-instance v2, Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-direct {v2, p1}, Lcom/motorola/blur/setup/SetupProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 168
    iget-object v3, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {v3, v2}, Lcom/motorola/blur/setup/SetupProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 169
    iget-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    sget-object v3, Lcom/motorola/blur/setup/BlurAccountCreator;->PROGRESS_POINTS:[I

    invoke-virtual {v2, v3}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgressPoints([I)V

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 172
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 173
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mPhone:Ljava/lang/String;

    .line 174
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mIMSI:Ljava/lang/String;

    .line 175
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mSerialNumber:Ljava/lang/String;

    .line 180
    :goto_0
    sget-object v2, Lcom/motorola/blur/setup/ValidationParams;->IMEI_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams;

    iget-object v3, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mSerialNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/motorola/blur/setup/BlurAccountCreator;->validateOrMakeValid(Lcom/motorola/blur/setup/ValidationParams;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mSerialNumber:Ljava/lang/String;

    .line 181
    sget-object v2, Lcom/motorola/blur/setup/ValidationParams;->PHONE_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams;

    iget-object v3, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mPhone:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/motorola/blur/setup/BlurAccountCreator;->validateOrMakeValid(Lcom/motorola/blur/setup/ValidationParams;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mPhone:Ljava/lang/String;

    .line 182
    sget-object v2, Lcom/motorola/blur/setup/ValidationParams;->IMSI_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams;

    iget-object v3, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mIMSI:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/motorola/blur/setup/BlurAccountCreator;->validateOrMakeValid(Lcom/motorola/blur/setup/ValidationParams;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mIMSI:Ljava/lang/String;

    .line 184
    invoke-static {p1}, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClientFactory;->getClient(Landroid/content/Context;)Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mWSClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    .line 185
    return-void

    .line 177
    :cond_1
    const-string v2, "BAC"

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "YOU\'RE PROBABLY IN BIG TROUBLE BECAUSE YOU DON\'T HAVE A TELEPHONY MANAGER!"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private requestSettings()V
    .locals 4

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/motorola/blur/setup/BlurAccountCreator;->unbindSyncService()V

    .line 335
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 336
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.motorola.blur.service.blur.Actions.BIND_SYNC_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    iget-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mBound:Z

    .line 338
    return-void
.end method

.method private requestSuspensionOfSync()V
    .locals 4

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/motorola/blur/setup/BlurAccountCreator;->unbindSuspendSyncService()V

    .line 342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.BIND_SYNC_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mSuspendServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mSuspendSyncBound:Z

    .line 344
    return-void
.end method

.method private final setUpProgressDialog()V
    .locals 2

    .prologue
    .line 842
    iget-boolean v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mForgotPassword:Z

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    const v1, 0x7f0c008c

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgressText(I)V

    .line 850
    :goto_0
    return-void

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    iget-boolean v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mExistingAccount:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0c008b

    :goto_1
    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgressText(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0c002b

    goto :goto_1
.end method

.method private showRetryDialog()V
    .locals 3

    .prologue
    .line 862
    iget-boolean v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mIsUiNeeded:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 863
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 864
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c00fb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 865
    const v1, 0x7f0c00fc

    new-instance v2, Lcom/motorola/blur/setup/BlurAccountCreator$5;

    invoke-direct {v2, p0}, Lcom/motorola/blur/setup/BlurAccountCreator$5;-><init>(Lcom/motorola/blur/setup/BlurAccountCreator;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 873
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 875
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method private unbindSuspendSyncService()V
    .locals 2

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mSuspendSyncBound:Z

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mSuspendServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mSuspendSyncBound:Z

    .line 358
    :cond_0
    return-void
.end method

.method private unbindSyncService()V
    .locals 2

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mBound:Z

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mBound:Z

    .line 351
    :cond_0
    return-void
.end method

.method private static updatePassword(Landroid/content/ContentResolver;JLjava/lang/String;I)V
    .locals 4
    .parameter "cr"
    .parameter "id"
    .parameter "oldPwd"
    .parameter "policy"

    .prologue
    const/4 v3, 0x0

    .line 646
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 647
    .local v1, values:Landroid/content/ContentValues;
    invoke-static {p4, p3, v3}, Lcom/motorola/blur/util/SimpleEncryptUtil;->decryptBasedOnPolicy(ILjava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, pwd:Ljava/lang/String;
    const-string v2, "password"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    sget-object v2, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 654
    return-void
.end method

.method private static validateOrMakeValid(Lcom/motorola/blur/setup/ValidationParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "val"
    .parameter "input"

    .prologue
    .line 188
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/motorola/blur/setup/ValidationParams;->blankValue:Ljava/lang/String;

    .line 193
    :cond_1
    :goto_0
    return-object p1

    .line 190
    :cond_2
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/ValidationParams;->validate(Ljava/lang/String;)Lcom/motorola/blur/setup/ValidationError;

    move-result-object v0

    sget-object v1, Lcom/motorola/blur/setup/ValidationError;->VALID_VALUE:Lcom/motorola/blur/setup/ValidationError;

    if-eq v0, v1, :cond_1

    .line 191
    iget-object p1, p0, Lcom/motorola/blur/setup/ValidationParams;->invalidValue:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public createOrLogin(Landroid/os/Bundle;)V
    .locals 11
    .parameter "extra"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 221
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/BlurAccountCreator;->buildClientCaptcha(Landroid/os/Bundle;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mClientCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .line 236
    const-string v0, "existing"

    invoke-virtual {p1, v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mExistingAccount:Z

    .line 238
    const-string v0, "username"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mEmail:Ljava/lang/String;

    .line 239
    const-string v0, "password"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mPassword:Ljava/lang/String;

    .line 241
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 242
    .local v8, filter:Landroid/content/IntentFilter;
    const-string v0, "com.motorola.blur.service.blur.devicesetup.newaccount.resp"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v0, "com.motorola.blur.service.blur.devicesetup.newsession.resp"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string v0, "com.motorola.blur.service.blur.devicesetup.subscriptions.resp"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0}, Lcom/motorola/blur/setup/BlurAccountCreator;->registerRestartReceiver()V

    .line 247
    iput-boolean v9, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mReceiverRegisterd:Z

    .line 248
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "clientsettings/blur"

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/blur/setup/BlurAccountCreator;->createSyncFilter(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 250
    iget-boolean v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mExistingAccount:Z

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mWSClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    iget-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mEmail:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mPhone:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mIMSI:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mSerialNumber:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mPassword:Ljava/lang/String;

    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mClientCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    invoke-interface/range {v0 .. v6}, Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;->signInByEmailAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 260
    :goto_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mRequestInFlight:Ljava/lang/Boolean;

    .line 261
    iget-boolean v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mIsUiNeeded:Z

    if-ne v0, v9, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/motorola/blur/setup/BlurAccountCreator;->setUpProgressDialog()V

    .line 263
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->show()V

    .line 266
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mExistingAccount:Z

    if-ne v0, v9, :cond_1

    const-string v0, "existing_email_accounts"

    invoke-virtual {p1, v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v9, :cond_1

    .line 268
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/blur/setup/BlurAccountCreator;->deleteAllEmailAccounts(Landroid/content/Context;)V

    .line 271
    :cond_1
    return-void

    .line 255
    :cond_2
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mName:Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mWSClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    iget-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mEmail:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mPhone:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mIMSI:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mSerialNumber:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mPassword:Ljava/lang/String;

    iget-object v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mName:Ljava/lang/String;

    iget-object v7, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mClientCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    invoke-interface/range {v0 .. v7}, Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;->newAcct(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0
.end method

.method protected finishIfAvailable()V
    .locals 2

    .prologue
    .line 944
    invoke-direct {p0}, Lcom/motorola/blur/setup/BlurAccountCreator;->dialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->hide()V

    .line 946
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->dismiss()V

    .line 948
    :cond_0
    monitor-enter p0

    .line 949
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mReceiverRegisterd:Z

    if-eqz v0, :cond_1

    .line 950
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 951
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mReceiverRegisterd:Z

    .line 953
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    invoke-direct {p0}, Lcom/motorola/blur/setup/BlurAccountCreator;->unbindSyncService()V

    .line 955
    invoke-direct {p0}, Lcom/motorola/blur/setup/BlurAccountCreator;->unbindSuspendSyncService()V

    .line 956
    return-void

    .line 953
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public finishProgressUI(ZLjava/lang/String;)V
    .locals 4
    .parameter "success"
    .parameter "googleUsername"

    .prologue
    .line 923
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mRequestInFlight:Ljava/lang/Boolean;

    .line 924
    invoke-virtual {p0}, Lcom/motorola/blur/setup/BlurAccountCreator;->finishIfAvailable()V

    .line 926
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 929
    :try_start_0
    iget-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 930
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    const-class v3, Lcom/motorola/blur/setup/SetupInfoActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 931
    .local v0, name:Landroid/content/ComponentName;
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 936
    .end local v0           #name:Landroid/content/ComponentName;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mExistingAccount:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mForgotPassword:Z

    if-eqz v2, :cond_2

    .line 937
    :cond_1
    iget-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mListener:Lcom/motorola/blur/setup/BlurAccountCreationListener;

    iget-object v3, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    invoke-interface {v2, p1, p2, v3}, Lcom/motorola/blur/setup/BlurAccountCreationListener;->onLoginFinished(ZLjava/lang/String;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V

    .line 941
    :goto_1
    return-void

    .line 939
    :cond_2
    iget-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mListener:Lcom/motorola/blur/setup/BlurAccountCreationListener;

    iget-object v3, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    invoke-interface {v2, p1, v3}, Lcom/motorola/blur/setup/BlurAccountCreationListener;->onCreationFinished(ZLcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V

    goto :goto_1

    .line 932
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected finishSetup()V
    .locals 10

    .prologue
    .line 661
    iget-object v7, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "yahoo"

    invoke-static {v7, v8}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v5

    .line 662
    .local v5, yahooMailProviderId:J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 663
    .local v4, values:Landroid/content/ContentValues;
    invoke-direct {p0, v5, v6}, Lcom/motorola/blur/setup/BlurAccountCreator;->getContactsServiceId(J)J

    move-result-wide v0

    .line 664
    .local v0, contactsServiceId:J
    const-wide/16 v7, -0x1

    cmp-long v7, v0, v7

    if-nez v7, :cond_0

    .line 665
    const-string v7, "providers_id"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 666
    const-string v7, "capability"

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 667
    const-string v7, "pretty_name"

    iget-object v8, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    const v9, 0x7f0c00a4

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v7, "auth_type"

    const/16 v8, 0x28

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 669
    iget-object v7, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 670
    .local v3, serviceUri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 673
    .end local v3           #serviceUri:Landroid/net/Uri;
    :cond_0
    iget-boolean v7, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mSubscribed:Z

    if-nez v7, :cond_1

    .line 674
    invoke-virtual {p0}, Lcom/motorola/blur/setup/BlurAccountCreator;->requestSubscriptions()V

    .line 675
    iget-boolean v7, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mExistingAccount:Z

    if-eqz v7, :cond_2

    .line 676
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/motorola/blur/setup/BlurAccountCreator;->finishProgressUI(ZLjava/lang/String;)V

    .line 685
    :cond_1
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.motorola.blur.setupprovider.action.ACCOUNT_SETUP_COMPLETE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 686
    .local v2, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    const-string v8, "com.motorola.blur.setupprovider.Permissions.ACCESS_ACCOUNTS"

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 688
    return-void

    .line 677
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    iget-boolean v7, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mSuspended:Z

    if-nez v7, :cond_1

    .line 678
    invoke-direct {p0}, Lcom/motorola/blur/setup/BlurAccountCreator;->createMeContact()V

    .line 679
    invoke-direct {p0}, Lcom/motorola/blur/setup/BlurAccountCreator;->requestSuspensionOfSync()V

    goto :goto_0
.end method

.method public forgotPasswordRequest(Landroid/os/Bundle;)V
    .locals 7
    .parameter "extra"

    .prologue
    const/4 v6, 0x1

    .line 303
    iput-boolean v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mForgotPassword:Z

    .line 304
    const-string v1, "username"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mEmail:Ljava/lang/String;

    .line 305
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.motorola.blur.service.blur.devicesetup.resetpassword.resp"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0}, Lcom/motorola/blur/setup/BlurAccountCreator;->registerRestartReceiver()V

    .line 308
    iput-boolean v6, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mReceiverRegisterd:Z

    .line 309
    iget-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mWSClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    iget-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mEmail:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mPhone:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mIMSI:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mSerialNumber:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;->resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 310
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mRequestInFlight:Ljava/lang/Boolean;

    .line 311
    iget-boolean v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mIsUiNeeded:Z

    if-ne v1, v6, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/motorola/blur/setup/BlurAccountCreator;->setUpProgressDialog()V

    .line 313
    iget-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->show()V

    .line 315
    :cond_0
    return-void
.end method

.method public getCaptcha()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 211
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.motorola.blur.service.blur.devicesetup.getcaptcha.resp"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, filter:Landroid/content/IntentFilter;
    iput-boolean v5, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mCaptchaRequest:Z

    .line 213
    iget-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0}, Lcom/motorola/blur/setup/BlurAccountCreator;->registerRestartReceiver()V

    .line 215
    iput-boolean v5, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mReceiverRegisterd:Z

    .line 216
    iget-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mWSClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    iget-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mPhone:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mIMSI:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mSerialNumber:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;->getCaptcha(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 217
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mRequestInFlight:Ljava/lang/Boolean;

    .line 218
    return-void
.end method

.method nextProgressPoint()V
    .locals 1

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mIsUiNeeded:Z

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->nextProgressPoint()V

    .line 447
    :cond_0
    return-void
.end method

.method public registerRestartReceiver()V
    .locals 3

    .prologue
    .line 204
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.motorola.blur.service.blur.Actions.SERVICES_STARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, restartFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mReceiverRegisterd:Z

    .line 207
    return-void
.end method

.method requestSubscriptions()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 321
    iget-boolean v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mExistingAccount:Z

    if-ne v0, v1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mWSClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;->getSubscriptions()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 326
    :goto_0
    iput-boolean v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mSubscribed:Z

    .line 327
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mWSClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;->setupDefaultNewsSubs()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0
.end method

.method protected updatePasswords()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 628
    iget-object v1, p0, Lcom/motorola/blur/setup/BlurAccountCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 629
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->BY_ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/blur/setup/BlurAccountCreator$UpgradeProjection;->PROJECTION:[Ljava/lang/String;

    const-string v3, "password NOT LIKE \'{%\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 634
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 635
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/motorola/blur/setup/BlurAccountCreator;->updatePassword(Landroid/content/ContentResolver;JLjava/lang/String;I)V

    goto :goto_0

    .line 641
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 643
    :cond_1
    return-void
.end method
