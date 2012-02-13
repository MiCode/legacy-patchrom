.class public final Lcom/motorola/blur/setup/AccountRemover;
.super Ljava/lang/Object;
.source "AccountRemover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/AccountRemover$5;,
        Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;
    }
.end annotation


# static fields
.field private static final ACCOUNT_REMOVER:Ljava/lang/String; = "ACCOUNT_REMOVER"

.field private static final DIALOG_SHOWING:I = 0x1

.field private static final ERROR_SHOWING:I = 0x2

.field private static final PROGRESS_POINTS:[I = null

.field protected static final RESPONSE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BlurAccountRemover"


# instance fields
.field private mBypassUI:Ljava/lang/Boolean;

.field private mContext:Landroid/content/Context;

.field private mDeleteInProgress:Ljava/lang/Boolean;

.field private mDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field private mId:J

.field private mListener:Lcom/motorola/blur/setup/AccountRemovalListener;

.field private mProviderName:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequestInFlight:Ljava/lang/Boolean;

.field private final mRequestInFlightLock:Ljava/lang/Object;

.field protected mSelectedSource:I

.field private mTask:Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;

.field private mWhatsShowing:Ljava/lang/Integer;

.field private final mWhatsShowingLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/blur/setup/AccountRemover;->PROGRESS_POINTS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xe8t 0x3t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
        0x28t 0x23t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v2, p0, Lcom/motorola/blur/setup/AccountRemover;->mSelectedSource:I

    .line 51
    iput-object v3, p0, Lcom/motorola/blur/setup/AccountRemover;->mProviderName:Ljava/lang/String;

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mWhatsShowing:Ljava/lang/Integer;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mWhatsShowingLock:Ljava/lang/Object;

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mId:J

    .line 60
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mRequestInFlight:Ljava/lang/Boolean;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mRequestInFlightLock:Ljava/lang/Object;

    .line 62
    iput-object v3, p0, Lcom/motorola/blur/setup/AccountRemover;->mListener:Lcom/motorola/blur/setup/AccountRemovalListener;

    .line 63
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mBypassUI:Ljava/lang/Boolean;

    .line 64
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mDeleteInProgress:Ljava/lang/Boolean;

    .line 222
    new-instance v0, Lcom/motorola/blur/setup/AccountRemover$3;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/AccountRemover$3;-><init>(Lcom/motorola/blur/setup/AccountRemover;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 232
    new-instance v0, Lcom/motorola/blur/setup/AccountRemover$4;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/AccountRemover$4;-><init>(Lcom/motorola/blur/setup/AccountRemover;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mHandler:Landroid/os/Handler;

    .line 71
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/AccountRemover;->init(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/blur/setup/AccountRemovalListener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v2, p0, Lcom/motorola/blur/setup/AccountRemover;->mSelectedSource:I

    .line 51
    iput-object v3, p0, Lcom/motorola/blur/setup/AccountRemover;->mProviderName:Ljava/lang/String;

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mWhatsShowing:Ljava/lang/Integer;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mWhatsShowingLock:Ljava/lang/Object;

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mId:J

    .line 60
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mRequestInFlight:Ljava/lang/Boolean;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mRequestInFlightLock:Ljava/lang/Object;

    .line 62
    iput-object v3, p0, Lcom/motorola/blur/setup/AccountRemover;->mListener:Lcom/motorola/blur/setup/AccountRemovalListener;

    .line 63
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mBypassUI:Ljava/lang/Boolean;

    .line 64
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mDeleteInProgress:Ljava/lang/Boolean;

    .line 222
    new-instance v0, Lcom/motorola/blur/setup/AccountRemover$3;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/AccountRemover$3;-><init>(Lcom/motorola/blur/setup/AccountRemover;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 232
    new-instance v0, Lcom/motorola/blur/setup/AccountRemover$4;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/AccountRemover$4;-><init>(Lcom/motorola/blur/setup/AccountRemover;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mHandler:Landroid/os/Handler;

    .line 67
    iput-object p2, p0, Lcom/motorola/blur/setup/AccountRemover;->mListener:Lcom/motorola/blur/setup/AccountRemovalListener;

    .line 68
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/AccountRemover;->init(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/blur/setup/AccountRemovalListener;Z)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "byPassUI"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v2, p0, Lcom/motorola/blur/setup/AccountRemover;->mSelectedSource:I

    .line 51
    iput-object v3, p0, Lcom/motorola/blur/setup/AccountRemover;->mProviderName:Ljava/lang/String;

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mWhatsShowing:Ljava/lang/Integer;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mWhatsShowingLock:Ljava/lang/Object;

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mId:J

    .line 60
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mRequestInFlight:Ljava/lang/Boolean;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mRequestInFlightLock:Ljava/lang/Object;

    .line 62
    iput-object v3, p0, Lcom/motorola/blur/setup/AccountRemover;->mListener:Lcom/motorola/blur/setup/AccountRemovalListener;

    .line 63
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mBypassUI:Ljava/lang/Boolean;

    .line 64
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mDeleteInProgress:Ljava/lang/Boolean;

    .line 222
    new-instance v0, Lcom/motorola/blur/setup/AccountRemover$3;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/AccountRemover$3;-><init>(Lcom/motorola/blur/setup/AccountRemover;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 232
    new-instance v0, Lcom/motorola/blur/setup/AccountRemover$4;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/AccountRemover$4;-><init>(Lcom/motorola/blur/setup/AccountRemover;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mHandler:Landroid/os/Handler;

    .line 75
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mBypassUI:Ljava/lang/Boolean;

    .line 76
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/AccountRemover;->init(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/blur/setup/AccountRemover;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/motorola/blur/setup/AccountRemover;->deleteAccount()V

    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/blur/setup/AccountRemover;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mRequestInFlight:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/motorola/blur/setup/AccountRemover;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/motorola/blur/setup/AccountRemover;->mRequestInFlight:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/motorola/blur/setup/AccountRemover;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/motorola/blur/setup/AccountRemover;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/AccountRemover;->finish(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/motorola/blur/setup/AccountRemover;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/motorola/blur/setup/AccountRemover;->mDeleteInProgress:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/motorola/blur/setup/AccountRemover;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/setup/AccountRemover;->evaluateResponse(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;)V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/blur/setup/AccountRemover;)Lcom/motorola/blur/setup/SetupProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/blur/setup/AccountRemover;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/motorola/blur/setup/AccountRemover;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/motorola/blur/setup/AccountRemover;->mId:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/motorola/blur/setup/AccountRemover;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/motorola/blur/setup/AccountRemover;->mProviderName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/motorola/blur/setup/AccountRemover;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/blur/setup/AccountRemover;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mRequestInFlightLock:Ljava/lang/Object;

    return-object v0
.end method

.method private addShowing(I)V
    .locals 2
    .parameter "valueToAdd"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mWhatsShowingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/motorola/blur/setup/AccountRemover;->mWhatsShowing:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/AccountRemover;->mWhatsShowing:Ljava/lang/Integer;

    .line 362
    monitor-exit v0

    .line 363
    return-void

    .line 362
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private deleteAccount()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 130
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mDeleteInProgress:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mBypassUI:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    iget-object v1, p0, Lcom/motorola/blur/setup/AccountRemover;->mDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgressText(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->show()V

    .line 137
    invoke-direct {p0, v3}, Lcom/motorola/blur/setup/AccountRemover;->addShowing(I)V

    .line 138
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0, v4}, Lcom/motorola/blur/setup/SetupProgressDialog;->goToProgressPoint(I)V

    .line 140
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mDeleteInProgress:Ljava/lang/Boolean;

    .line 141
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mTask:Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;

    new-array v1, v3, [Ljava/lang/Long;

    iget-wide v2, p0, Lcom/motorola/blur/setup/AccountRemover;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private deleteAccountFromDb(J)Z
    .locals 3
    .parameter "reqId"

    .prologue
    const/4 v2, 0x0

    .line 352
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private evaluateResponse(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;)V
    .locals 6
    .parameter "error"
    .parameter "resp"

    .prologue
    .line 286
    sget-object v2, Lcom/motorola/blur/setup/AccountRemover$5;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 307
    iget-object v2, p0, Lcom/motorola/blur/setup/AccountRemover;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/motorola/blur/setup/AccountRemover;->finish(I)V

    .line 311
    :goto_0
    return-void

    .line 289
    :pswitch_0
    invoke-direct {p0}, Lcom/motorola/blur/setup/AccountRemover;->handleLocalDelete()V

    goto :goto_0

    .line 292
    :pswitch_1
    if-eqz p2, :cond_1

    .line 293
    invoke-virtual {p2}, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;->getSNPResponse()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    move-result-object v1

    .line 294
    .local v1, snpResp:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->getSnpExtendedError()I

    move-result v2

    invoke-static {v2}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->valueOf(I)Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    move-result-object v0

    .line 295
    .local v0, snpError:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ACCOUNT_NOT_FOUND:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    if-ne v0, v2, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/motorola/blur/setup/AccountRemover;->handleLocalDelete()V

    goto :goto_0

    .line 298
    :cond_0
    invoke-static {v0}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translateSNPError(Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/motorola/blur/setup/AccountRemover;->finish(I)V

    goto :goto_0

    .line 302
    .end local v0           #snpError:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    .end local v1           #snpResp:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    :cond_1
    const-string v2, "BlurAccountRemover"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "SNP error but no resp!"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    iget-object v2, p0, Lcom/motorola/blur/setup/AccountRemover;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/motorola/blur/setup/AccountRemover;->finish(I)V

    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private finish(I)V
    .locals 2
    .parameter "errorRes"

    .prologue
    const/4 v1, 0x1

    .line 380
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->hide()V

    .line 382
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->dismiss()V

    .line 383
    invoke-direct {p0, v1}, Lcom/motorola/blur/setup/AccountRemover;->removeShowing(I)V

    .line 386
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/motorola/blur/setup/AccountRemover;->sendFinishIfAvailable(ZI)V

    .line 387
    return-void

    .line 386
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleLocalDelete()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-wide v9, p0, Lcom/motorola/blur/setup/AccountRemover;->mId:J

    .line 323
    .local v9, reqId:J
    iget-object v8, p0, Lcom/motorola/blur/setup/AccountRemover;->mProviderName:Ljava/lang/String;

    .line 324
    .local v8, providerName:Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/blur/setup/AccountRemover;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 325
    .local v0, cr:Landroid/content/ContentResolver;
    if-nez v8, :cond_1

    .line 326
    sget-object v1, Lcom/motorola/blur/provider/activesync/ASProvider$Accounts;->CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri;

    invoke-static {v1, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 331
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    const/4 v1, 0x6

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 335
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 339
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    invoke-direct {p0, v9, v10}, Lcom/motorola/blur/setup/AccountRemover;->deleteAccountFromDb(J)Z

    move-result v7

    .line 340
    .local v7, deleted:Z
    if-eqz v7, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/motorola/blur/setup/AccountRemover;->finish(I)V

    .line 341
    return-void

    .line 340
    :cond_2
    const v1, 0x7f0c0060

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 80
    iput-object p1, p0, Lcom/motorola/blur/setup/AccountRemover;->mContext:Landroid/content/Context;

    .line 81
    new-instance v0, Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;

    invoke-direct {v0, p0, v1}, Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;-><init>(Lcom/motorola/blur/setup/AccountRemover;Lcom/motorola/blur/setup/AccountRemover$1;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mTask:Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;

    .line 82
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mBypassUI:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iput-object v1, p0, Lcom/motorola/blur/setup/AccountRemover;->mDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v0, Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-direct {v0, p1}, Lcom/motorola/blur/setup/SetupProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 86
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    sget-object v1, Lcom/motorola/blur/setup/AccountRemover;->PROGRESS_POINTS:[I

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgressPoints([I)V

    goto :goto_0
.end method

.method private removeShowing(I)V
    .locals 3
    .parameter "valueToRemove"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mWhatsShowingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/motorola/blur/setup/AccountRemover;->mWhatsShowing:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/AccountRemover;->mWhatsShowing:Ljava/lang/Integer;

    .line 368
    monitor-exit v0

    .line 369
    return-void

    .line 368
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendFinishIfAvailable(ZI)V
    .locals 2
    .parameter "deleted"
    .parameter "error"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mWhatsShowingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/motorola/blur/setup/AccountRemover;->mWhatsShowing:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/blur/setup/AccountRemover;->mListener:Lcom/motorola/blur/setup/AccountRemovalListener;

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/motorola/blur/setup/AccountRemover;->mListener:Lcom/motorola/blur/setup/AccountRemovalListener;

    invoke-interface {v1, p1, p2}, Lcom/motorola/blur/setup/AccountRemovalListener;->onDeleteFinished(ZI)V

    .line 376
    :cond_0
    monitor-exit v0

    .line 377
    return-void

    .line 376
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 390
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover;->mTask:Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;

    invoke-virtual {v0, v3}, Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;->cancel(Z)Z

    .line 391
    const-string v0, "BlurAccountRemover"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "User cancelled!"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    invoke-direct {p0, v3}, Lcom/motorola/blur/setup/AccountRemover;->finish(I)V

    .line 393
    return-void
.end method

.method protected handleResponse(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 268
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.motorola.blur.service.blur.devicesetup.removeprovidercredentials.resp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    const-string v3, "com.motorola.blur.service.ws.key.responsedata"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;

    .line 272
    .local v2, resp:Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;
    invoke-virtual {v2}, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v1

    .line 273
    .local v1, error:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    invoke-direct {p0, v1, v2}, Lcom/motorola/blur/setup/AccountRemover;->evaluateResponse(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;)V

    .line 277
    .end local v1           #error:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .end local v2           #resp:Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v3, p0, Lcom/motorola/blur/setup/AccountRemover;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-static {v3, v4}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/motorola/blur/setup/AccountRemover;->finish(I)V

    goto :goto_0
.end method

.method public remove(J)V
    .locals 11
    .parameter "id"

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 91
    iput-wide p1, p0, Lcom/motorola/blur/setup/AccountRemover;->mId:J

    .line 92
    iget-object v7, p0, Lcom/motorola/blur/setup/AccountRemover;->mContext:Landroid/content/Context;

    .line 93
    .local v7, context:Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 94
    .local v9, res:Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 95
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->NAMED_ACCOUNTS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 96
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/motorola/blur/provider/DeviceSetup$Projections$NamedAccounts;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 101
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 102
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/motorola/blur/setup/AccountRemover;->mBypassUI:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 104
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 105
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c005c

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 106
    const v2, 0x7f0c0066

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 109
    const v2, 0x7f0c0067

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/motorola/blur/setup/AccountRemover$1;

    invoke-direct {v3, p0}, Lcom/motorola/blur/setup/AccountRemover$1;-><init>(Lcom/motorola/blur/setup/AccountRemover;)V

    invoke-virtual {v6, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    const v2, 0x7f0c0068

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/motorola/blur/setup/AccountRemover$2;

    invoke-direct {v3, p0}, Lcom/motorola/blur/setup/AccountRemover$2;-><init>(Lcom/motorola/blur/setup/AccountRemover;)V

    invoke-virtual {v6, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 124
    .end local v6           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_1
    return-void

    .line 121
    :cond_2
    invoke-direct {p0}, Lcom/motorola/blur/setup/AccountRemover;->deleteAccount()V

    goto :goto_0
.end method
