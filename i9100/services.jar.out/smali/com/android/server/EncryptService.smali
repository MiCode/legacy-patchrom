.class Lcom/android/server/EncryptService;
.super Landroid/os/storage/IEncryptService$Stub;
.source "EncryptService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/EncryptService$EncryptionWakeLock;,
        Lcom/android/server/EncryptService$CheckStorageState;,
        Lcom/android/server/EncryptService$InternalDB;,
        Lcom/android/server/EncryptService$EncryptionError;,
        Lcom/android/server/EncryptService$ESState;,
        Lcom/android/server/EncryptService$Policy;,
        Lcom/android/server/EncryptService$CommandMode;,
        Lcom/android/server/EncryptService$CryptoPolicy;,
        Lcom/android/server/EncryptService$CryptoNotification;,
        Lcom/android/server/EncryptService$MountServiceBinderListener;,
        Lcom/android/server/EncryptService$MountCallBackBinderListener;,
        Lcom/android/server/EncryptService$CallStateListener;,
        Lcom/android/server/EncryptService$EncryptServiceBinderListener;,
        Lcom/android/server/EncryptService$EncryptServiceHandler;,
        Lcom/android/server/EncryptService$DisplayHandler;,
        Lcom/android/server/EncryptService$MountHandler;,
        Lcom/android/server/EncryptService$EncryptResponseCode;
    }
.end annotation


# static fields
.field public static final ACTION_TYPE_APPLICATION:I = 0x5

.field public static final ACTION_TYPE_BOOTING:I = 0x3

.field public static final ACTION_TYPE_FORMAT:I = 0x4

.field public static final ACTION_TYPE_INSERTED:I = 0x2

.field public static final ACTION_TYPE_MOUNTING:I = 0x1

.field public static final ACTION_TYPE_UNKNOWN:I = 0x0

.field private static final ENCRYPT_TAG:Ljava/lang/String; = "EncryptConnector"

.field public static final FIRST_STORAGE_CID:Ljava/lang/String; = "sdcard"

.field private static final H_ENCRYPT_ASK_LOCK:I = 0x3

.field private static final H_ENCRYPT_GET_STATUS:I = 0x1

.field private static final H_ENCRYPT_MOUNT:I = 0x4

.field private static final H_ENCRYPT_UPDATE:I = 0x2

.field private static final LOCAL_LOGA:Z = true

.field private static final LOCAL_LOGB:Z = false

.field private static final LOCAL_LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "EncryptService"

.field public static toggle:Z


# instance fields
.field private final CryptBatch_ex_LOCK:Ljava/lang/Object;

.field private final CryptBatch_in_LOCK:Ljava/lang/Object;

.field private final CryptShare_ex_LOCK:Ljava/lang/Object;

.field private final CryptShare_in_LOCK:Ljava/lang/Object;

.field private final DISABLE_ADB_TAG:Ljava/lang/String;

.field private ex_mount_return_code:I

.field private ex_share_return_code:I

.field private in_mount_return_code:I

.field private in_share_return_code:I

.field protected inter_db:Lcom/android/server/EncryptService$InternalDB;

.field protected isFormatRunning:Z

.field private mBinderListener:Lcom/android/server/EncryptService$MountCallBackBinderListener;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallStateListener:Lcom/android/server/EncryptService$CallStateListener;

.field protected mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mCryptoError:I

.field private mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/EncryptService$EncryptServiceBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMountService:Landroid/os/storage/IMountService;

.field private mMountServiceBinderListener:Lcom/android/server/EncryptService$MountServiceBinderListener;

.field private mPms:Lcom/android/server/PackageManagerService;

.field private mReady:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field protected mWakeLock:Lcom/android/server/EncryptService$EncryptionWakeLock;

.field private m_MountService:Landroid/os/storage/IMountService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 813
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/EncryptService;->toggle:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v9, "EncryptConnector"

    const-string v8, "EncryptService"

    .line 1334
    invoke-direct {p0}, Landroid/os/storage/IEncryptService$Stub;-><init>()V

    .line 79
    iput-boolean v7, p0, Lcom/android/server/EncryptService;->mReady:Z

    .line 84
    iput-object v6, p0, Lcom/android/server/EncryptService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 86
    iput-object v6, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    .line 88
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/EncryptService;->CryptBatch_in_LOCK:Ljava/lang/Object;

    .line 89
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/EncryptService;->CryptBatch_ex_LOCK:Ljava/lang/Object;

    .line 90
    iput v7, p0, Lcom/android/server/EncryptService;->in_mount_return_code:I

    .line 91
    iput v7, p0, Lcom/android/server/EncryptService;->ex_mount_return_code:I

    .line 93
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/EncryptService;->CryptShare_in_LOCK:Ljava/lang/Object;

    .line 94
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/EncryptService;->CryptShare_ex_LOCK:Ljava/lang/Object;

    .line 95
    iput v7, p0, Lcom/android/server/EncryptService;->in_share_return_code:I

    .line 96
    iput v7, p0, Lcom/android/server/EncryptService;->ex_share_return_code:I

    .line 101
    iput-object v6, p0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    .line 102
    iput-object v6, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    .line 103
    iput-object v6, p0, Lcom/android/server/EncryptService;->mWakeLock:Lcom/android/server/EncryptService$EncryptionWakeLock;

    .line 104
    iput-object v6, p0, Lcom/android/server/EncryptService;->mPms:Lcom/android/server/PackageManagerService;

    .line 107
    const-string v2, "DisableADB"

    iput-object v2, p0, Lcom/android/server/EncryptService;->DISABLE_ADB_TAG:Ljava/lang/String;

    .line 109
    new-instance v2, Lcom/android/server/EncryptService$1;

    invoke-direct {v2, p0}, Lcom/android/server/EncryptService$1;-><init>(Lcom/android/server/EncryptService;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 249
    iput-object v6, p0, Lcom/android/server/EncryptService;->m_MountService:Landroid/os/storage/IMountService;

    .line 252
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mListeners:Ljava/util/ArrayList;

    .line 498
    new-instance v2, Lcom/android/server/EncryptService$4;

    invoke-direct {v2, p0}, Lcom/android/server/EncryptService$4;-><init>(Lcom/android/server/EncryptService;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 816
    iput-object v6, p0, Lcom/android/server/EncryptService;->mCallStateListener:Lcom/android/server/EncryptService$CallStateListener;

    .line 817
    iput-object v6, p0, Lcom/android/server/EncryptService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 1801
    iput v7, p0, Lcom/android/server/EncryptService;->mCryptoError:I

    .line 2527
    iput-boolean v7, p0, Lcom/android/server/EncryptService;->isFormatRunning:Z

    .line 1335
    const-string v2, "EncryptService"

    const-string v2, "EncryptService :: "

    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    iput-object p1, p0, Lcom/android/server/EncryptService;->mContext:Landroid/content/Context;

    .line 1340
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService;

    iput-object v2, p0, Lcom/android/server/EncryptService;->mPms:Lcom/android/server/PackageManagerService;

    .line 1342
    iget-object v2, p0, Lcom/android/server/EncryptService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/EncryptService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4, v6, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1345
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "EncryptService"

    invoke-direct {v2, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1346
    iget-object v2, p0, Lcom/android/server/EncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 1347
    new-instance v2, Lcom/android/server/EncryptService$EncryptServiceHandler;

    iget-object v3, p0, Lcom/android/server/EncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/EncryptService$EncryptServiceHandler;-><init>(Lcom/android/server/EncryptService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    .line 1349
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/EncryptService;->mMountService:Landroid/os/storage/IMountService;

    .line 1350
    iget-object v2, p0, Lcom/android/server/EncryptService;->mMountService:Landroid/os/storage/IMountService;

    if-nez v2, :cond_0

    .line 1351
    const-string v2, "EncryptService"

    const-string v2, " Unable to connect to mount service! - is it running yet?"

    invoke-static {v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :cond_0
    iget-object v2, p0, Lcom/android/server/EncryptService;->mContext:Landroid/content/Context;

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Lcom/android/server/EncryptService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 1355
    iget-object v2, p0, Lcom/android/server/EncryptService;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v2, :cond_1

    .line 1356
    const-string v2, "EncryptService"

    const-string v2, " Failed to get StorageManager"

    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :cond_1
    new-instance v2, Lcom/android/server/EncryptService$MountServiceBinderListener;

    invoke-direct {v2, p0, v6}, Lcom/android/server/EncryptService$MountServiceBinderListener;-><init>(Lcom/android/server/EncryptService;Lcom/android/server/EncryptService$1;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mMountServiceBinderListener:Lcom/android/server/EncryptService$MountServiceBinderListener;

    .line 1360
    iget-object v2, p0, Lcom/android/server/EncryptService;->mMountService:Landroid/os/storage/IMountService;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/EncryptService;->mMountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Lcom/android/server/EncryptService;->mMountServiceBinderListener:Lcom/android/server/EncryptService$MountServiceBinderListener;

    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1362
    :cond_2
    new-instance v2, Lcom/android/server/EncryptService$MountCallBackBinderListener;

    invoke-direct {v2, p0, v6}, Lcom/android/server/EncryptService$MountCallBackBinderListener;-><init>(Lcom/android/server/EncryptService;Lcom/android/server/EncryptService$1;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mBinderListener:Lcom/android/server/EncryptService$MountCallBackBinderListener;

    .line 1363
    iget-object v2, p0, Lcom/android/server/EncryptService;->mMountService:Landroid/os/storage/IMountService;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/EncryptService;->mMountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Lcom/android/server/EncryptService;->mBinderListener:Lcom/android/server/EncryptService$MountCallBackBinderListener;

    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->registerCallBackListener(Landroid/os/storage/IMountCallBackListener;)V

    .line 1369
    :cond_3
    new-instance v2, Lcom/android/server/EncryptService$InternalDB;

    invoke-direct {v2, p0}, Lcom/android/server/EncryptService$InternalDB;-><init>(Lcom/android/server/EncryptService;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    .line 1370
    new-instance v2, Lcom/android/server/EncryptService$CheckStorageState;

    invoke-direct {v2, p0}, Lcom/android/server/EncryptService$CheckStorageState;-><init>(Lcom/android/server/EncryptService;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    .line 1371
    new-instance v2, Lcom/android/server/EncryptService$EncryptionWakeLock;

    invoke-direct {v2, p0}, Lcom/android/server/EncryptService$EncryptionWakeLock;-><init>(Lcom/android/server/EncryptService;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mWakeLock:Lcom/android/server/EncryptService$EncryptionWakeLock;

    .line 1372
    iget-object v2, p0, Lcom/android/server/EncryptService;->mWakeLock:Lcom/android/server/EncryptService$EncryptionWakeLock;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$EncryptionWakeLock;->InitWakeLock()V

    .line 1375
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->updateEncryptionEnable()V

    .line 1385
    :try_start_0
    new-instance v2, Lcom/android/server/NativeDaemonConnector;

    const-string v3, "enc_report"

    const/16 v4, 0x1f4

    const-string v5, "EncryptConnector"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1391
    :goto_0
    iput-boolean v7, p0, Lcom/android/server/EncryptService;->mReady:Z

    .line 1392
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/EncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "EncryptConnector"

    invoke-direct {v1, v2, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1393
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1396
    return-void

    .line 1386
    .end local v1           #thread:Ljava/lang/Thread;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1388
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "EncryptService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " NativeDaemonConnector exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/EncryptService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/EncryptService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/EncryptService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/EncryptService;->waitForReady()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/EncryptService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/EncryptService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/EncryptService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/EncryptService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/server/EncryptService;->mReady:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/EncryptService;ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/EncryptService;->onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/EncryptService;)Lcom/android/server/EncryptService$CallStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/EncryptService;->mCallStateListener:Lcom/android/server/EncryptService$CallStateListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/EncryptService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/EncryptService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private authByUid(I)Z
    .locals 4
    .parameter "callerUid"

    .prologue
    .line 464
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 465
    .local v1, myUid:I
    iget-object v3, p0, Lcom/android/server/EncryptService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 466
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 467
    invoke-virtual {v2, v1, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    .line 469
    .local v0, match:I
    if-nez v0, :cond_0

    .line 471
    const/4 v3, 0x1

    .line 476
    .end local v0           #match:I
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 22
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 574
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    .local v6, builder:Ljava/lang/StringBuilder;
    const-string v17, " onEvent::"

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " raw= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    if-eqz p3, :cond_0

    .line 578
    const-string v17, " cooked = "

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    move-object/from16 v4, p3

    .local v4, arr$:[Ljava/lang/String;
    array-length v11, v4

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v11, :cond_0

    aget-object v16, v4, v10

    .line 580
    .local v16, str:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 584
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v16           #str:Ljava/lang/String;
    :cond_0
    const/16 v17, 0x2b8

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 587
    const-string v17, "EncryptService"

    const-string v18, " recevied EncryptResultFail from vold !! "

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v17

    if-nez v17, :cond_1

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/EncryptService;->setEncryptionEnabled2(Ljava/lang/String;Z)Z

    .line 593
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/EncryptService$CryptoNotification;->destroy()V

    .line 596
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    .line 599
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    move-object/from16 v17, v0

    const-string v18, "none"

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->mPms:Lcom/android/server/PackageManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 606
    const/16 v13, 0x10

    .line 607
    .local v13, pError:I
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 608
    or-int/lit8 v13, v13, 0x1

    .line 610
    :cond_3
    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/android/server/EncryptService;->startEncryptActivtiy(I)V

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->mWakeLock:Lcom/android/server/EncryptService$EncryptionWakeLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/EncryptService$EncryptionWakeLock;->release()V

    .line 808
    .end local v13           #pError:I
    .end local p1
    :cond_4
    :goto_1
    const/16 v17, 0x1

    :goto_2
    return v17

    .line 615
    .restart local p1
    :cond_5
    const/16 v17, 0x2b2

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 618
    const/4 v14, 0x0

    .line 619
    .local v14, progressCnt:I
    const-string v17, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 620
    .local v7, devTok:[Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v17, v7, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 622
    const-string v17, "ram"

    const-string v18, "encryption.bootmode"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 624
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x1

    sub-int v9, v18, v19

    .local v9, i:I
    :goto_3
    if-ltz v9, :cond_6

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/EncryptService$EncryptServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    .local v5, bl:Lcom/android/server/EncryptService$EncryptServiceBinderListener;
    :try_start_1
    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/EncryptService$EncryptServiceBinderListener;->mListener:Landroid/os/storage/IEncryptServiceListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/storage/IEncryptServiceListener;->onEncryptionStatusChanged(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 624
    :goto_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 628
    :catch_0
    move-exception v18

    move-object/from16 v15, v18

    .line 629
    .local v15, rex:Landroid/os/RemoteException;
    :try_start_2
    const-string v18, "EncryptService"

    const-string v19, "Listener dead"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 635
    .end local v5           #bl:Lcom/android/server/EncryptService$EncryptServiceBinderListener;
    .end local v9           #i:I
    .end local v15           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v18

    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v18

    .line 631
    .restart local v5       #bl:Lcom/android/server/EncryptService$EncryptServiceBinderListener;
    .restart local v9       #i:I
    :catch_1
    move-exception v18

    move-object/from16 v8, v18

    .line 632
    .local v8, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v18, "EncryptService"

    const-string v19, "Listener failed"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 635
    .end local v5           #bl:Lcom/android/server/EncryptService$EncryptServiceBinderListener;
    .end local v8           #ex:Ljava/lang/Exception;
    :cond_6
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 636
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 642
    .end local v9           #i:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    .line 645
    new-instance v17, Lcom/android/server/EncryptService$CryptoNotification;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/EncryptService$CryptoNotification;-><init>(Lcom/android/server/EncryptService;Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    .line 648
    :cond_8
    const/16 v17, 0x64

    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    const/16 v18, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/EncryptService;->isFirstStorage(Ljava/lang/String;)Z

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move v3, v14

    #calls: Lcom/android/server/EncryptService$CryptoNotification;->updateActiveNotification(ZZI)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/EncryptService$CryptoNotification;->access$500(Lcom/android/server/EncryptService$CryptoNotification;ZZI)V

    goto/16 :goto_1

    :cond_9
    const/16 v18, 0x0

    goto :goto_5

    .line 655
    :cond_a
    const/16 v17, 0x64

    move v0, v14

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    const/16 v18, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/EncryptService;->isFirstStorage(Ljava/lang/String;)Z

    move-result v19

    #calls: Lcom/android/server/EncryptService$CryptoNotification;->updateCompletedNotification(ZZ)V
    invoke-static/range {v17 .. v19}, Lcom/android/server/EncryptService$CryptoNotification;->access$600(Lcom/android/server/EncryptService$CryptoNotification;ZZ)V

    goto/16 :goto_1

    :cond_b
    const/16 v18, 0x0

    goto :goto_6

    .line 661
    :cond_c
    const/16 v17, 0x64

    move v0, v14

    move/from16 v1, v17

    if-le v0, v1, :cond_4

    .line 663
    const-string v17, "EncryptService"

    const-string v18, " Invalid progressCnt [%d]"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/EncryptService$CryptoNotification;->destroy()V

    .line 669
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    goto/16 :goto_1

    .line 706
    .end local v7           #devTok:[Ljava/lang/String;
    .end local v14           #progressCnt:I
    :cond_d
    const/16 v17, 0x2b5

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 708
    const-string v17, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 710
    .restart local v7       #devTok:[Ljava/lang/String;
    const-string v17, "EncryptService"

    const-string v18, " EncryptMountDone End!raw=[%s], CurrentPath[%s]"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object p2, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 713
    .end local v7           #devTok:[Ljava/lang/String;
    :cond_e
    const/16 v17, 0x2b6

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_12

    .line 715
    const-string v17, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 717
    .restart local v7       #devTok:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 719
    .local v12, nRet:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    const/16 v18, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/EncryptService;->isFirstStorage(Ljava/lang/String;)Z

    move-result v19

    #calls: Lcom/android/server/EncryptService$CryptoNotification;->updateCompletedNotification(ZZ)V
    invoke-static/range {v17 .. v19}, Lcom/android/server/EncryptService$CryptoNotification;->access$600(Lcom/android/server/EncryptService$CryptoNotification;ZZ)V

    .line 725
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    .line 728
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->mWakeLock:Lcom/android/server/EncryptService$EncryptionWakeLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/EncryptService$EncryptionWakeLock;->release()V

    .line 730
    const-string v17, "EncryptService"

    const-string v18, " EncryptBatchDone raw=[%s], CurrentPath[%s]"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object p2, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 734
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/EncryptService;->requestEncryptMount()I

    move-result v12

    goto/16 :goto_1

    .line 721
    :cond_10
    const/16 v18, 0x0

    goto :goto_7

    .line 738
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/EncryptService;->normalMount()V

    goto/16 :goto_1

    .line 743
    .end local v7           #devTok:[Ljava/lang/String;
    .end local v12           #nRet:I
    :cond_12
    const/16 v17, 0x2b7

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_13

    .line 745
    const-string v17, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 752
    .restart local v7       #devTok:[Ljava/lang/String;
    goto/16 :goto_1

    .line 754
    .end local v7           #devTok:[Ljava/lang/String;
    :cond_13
    const/16 v17, 0x2b9

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_15

    .line 756
    const-string v17, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 757
    .restart local v7       #devTok:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 763
    .restart local v12       #nRet:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "phone"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/EncryptService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v17

    if-nez v17, :cond_14

    .line 766
    const-string v17, "EncryptService"

    const-string v18, "Call state Idle, send remount msg to vold"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const-string v17, "remountboot"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/EncryptService;->doRemountBoot(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 777
    :cond_14
    const-string v17, "EncryptService"

    const-string v18, "Not idle, listen for state change"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    new-instance v17, Lcom/android/server/EncryptService$CallStateListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/EncryptService$CallStateListener;-><init>(Lcom/android/server/EncryptService;Lcom/android/server/EncryptService$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/EncryptService;->mCallStateListener:Lcom/android/server/EncryptService$CallStateListener;

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->mCallStateListener:Lcom/android/server/EncryptService$CallStateListener;

    move-object/from16 v18, v0

    const/16 v19, 0x20

    invoke-virtual/range {v17 .. v19}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_1

    .line 782
    .end local v7           #devTok:[Ljava/lang/String;
    .end local v12           #nRet:I
    .restart local p1
    :cond_15
    const/16 v17, 0x2ba

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 784
    const-string v17, "EncryptService"

    const-string v18, "EncryptService:EncryptDataFail!"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const-string v17, "ram"

    const-string v18, "encryption.bootmode"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 787
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x1

    sub-int v9, v18, v19

    .restart local v9       #i:I
    :goto_8
    if-ltz v9, :cond_16

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/EncryptService$EncryptServiceBinderListener;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 790
    .restart local v5       #bl:Lcom/android/server/EncryptService$EncryptServiceBinderListener;
    :try_start_5
    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/EncryptService$EncryptServiceBinderListener;->mListener:Landroid/os/storage/IEncryptServiceListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/storage/IEncryptServiceListener;->onEncryptionStatusChanged(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 787
    :goto_9
    add-int/lit8 v9, v9, -0x1

    goto :goto_8

    .line 791
    :catch_2
    move-exception v18

    move-object/from16 v15, v18

    .line 792
    .restart local v15       #rex:Landroid/os/RemoteException;
    :try_start_6
    const-string v18, "EncryptService"

    const-string v19, "Listener dead"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/EncryptService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_9

    .line 798
    .end local v5           #bl:Lcom/android/server/EncryptService$EncryptServiceBinderListener;
    .end local v9           #i:I
    .end local v15           #rex:Landroid/os/RemoteException;
    :catchall_1
    move-exception v18

    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v18

    .line 794
    .restart local v5       #bl:Lcom/android/server/EncryptService$EncryptServiceBinderListener;
    .restart local v9       #i:I
    :catch_3
    move-exception v18

    move-object/from16 v8, v18

    .line 795
    .restart local v8       #ex:Ljava/lang/Exception;
    :try_start_7
    const-string v18, "EncryptService"

    const-string v19, "Listener failed"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 798
    .end local v5           #bl:Lcom/android/server/EncryptService$EncryptServiceBinderListener;
    .end local v8           #ex:Ljava/lang/Exception;
    :cond_16
    monitor-exit v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 800
    .end local v9           #i:I
    :cond_17
    const/16 v17, 0x1

    goto/16 :goto_2
.end method

.method private startEncryptActivtiy(I)V
    .locals 4
    .parameter "popup_type"

    .prologue
    .line 1956
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.encrypt.action.SHOW_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1957
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.encrypt"

    const-string v2, "com.sec.android.app.encrypt.EncryptionPopupActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1958
    const/high16 v1, 0x1402

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1961
    const-string v1, "encyprt_activity_popuptype"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1963
    iget-object v1, p0, Lcom/android/server/EncryptService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1964
    const-string v1, "EncryptService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " startEncryptActivtiy : popup_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    return-void
.end method

.method private waitForReady()V
    .locals 3

    .prologue
    .line 487
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/EncryptService;->mReady:Z

    if-nez v1, :cond_0

    .line 488
    const/4 v0, 0x5

    .local v0, retries:I
    :goto_1
    if-lez v0, :cond_2

    .line 489
    iget-boolean v1, p0, Lcom/android/server/EncryptService;->mReady:Z

    if-eqz v1, :cond_1

    .line 496
    .end local v0           #retries:I
    :cond_0
    return-void

    .line 492
    .restart local v0       #retries:I
    :cond_1
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 488
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 494
    :cond_2
    const-string v1, "EncryptService"

    const-string v2, " waitForReady :: Waiting too long for mReady!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected checkMountedStorage(Ljava/lang/String;)Z
    .locals 3
    .parameter "sPath"

    .prologue
    .line 1994
    const/4 v0, 0x0

    .line 1995
    .local v0, bMounted:Z
    const-string v1, ""

    .line 1999
    .local v1, sStorageState:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->getStroageState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2000
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2002
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2003
    const/4 v0, 0x1

    .line 2008
    :cond_0
    return v0
.end method

.method protected checkNextWorkingJob(Ljava/lang/String;)Z
    .locals 1
    .parameter "sPath"

    .prologue
    .line 2220
    invoke-static {}, Landroid/os/Environment;->isExternalStorageSecondInsalled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->checkMountedStorage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->checkSharedStorage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2224
    :cond_0
    const/4 v0, 0x1

    .line 2227
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkPolicyInfo(Ljava/lang/String;)Z
    .locals 2
    .parameter "sPath"

    .prologue
    .line 2178
    const/4 v0, 0x0

    .line 2182
    .local v0, bRet:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "internal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2184
    :cond_0
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getInternalStorageStatus()Z

    move-result v0

    .line 2192
    :cond_1
    :goto_0
    return v0

    .line 2185
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "external"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2187
    :cond_3
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getExternalStorageStatus()Z

    move-result v0

    goto :goto_0
.end method

.method protected checkSharedStorage(Ljava/lang/String;)Z
    .locals 3
    .parameter "sPath"

    .prologue
    .line 2013
    const/4 v0, 0x0

    .line 2014
    .local v0, bShared:Z
    const-string v1, ""

    .line 2018
    .local v1, sStorageState:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->getStroageState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2019
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2021
    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2022
    const/4 v0, 0x1

    .line 2027
    :cond_0
    return v0
.end method

.method protected checkWorkingState()Z
    .locals 2

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v0}, Lcom/android/server/EncryptService$InternalDB;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "working"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1695
    const/4 v0, 0x1

    .line 1698
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected cryptoMain(Ljava/lang/String;Ljava/lang/String;ZZ)I
    .locals 8
    .parameter "sPath"
    .parameter "sStorageAction"
    .parameter "l_bPopup"
    .parameter "bAppReq"

    .prologue
    .line 2716
    const/4 v3, 0x0

    .line 2717
    .local v3, command:I
    move v1, p3

    .line 2718
    .local v1, bPopupBox:Z
    const/4 v4, 0x0

    .line 2720
    .local v4, nRet:I
    const-string v5, "EncryptService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " cryptoMain : Begin! Path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sStorageAction="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bPopupBox="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bAppReq="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    invoke-virtual {p0, p2}, Lcom/android/server/EncryptService;->getActionType(Ljava/lang/String;)I

    move-result v0

    .line 2724
    .local v0, actionType:I
    const-string v5, "EncryptService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " cryptoMain : getActionType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    if-nez v0, :cond_0

    .line 2728
    const/16 v5, -0x64

    .line 2865
    :goto_0
    return v5

    .line 2734
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->checkWorkingState()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2736
    const-string v5, "EncryptService"

    const-string v6, " cryptoMain : Current State is WORKING!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    const/4 v5, -0x4

    goto :goto_0

    .line 2739
    :cond_1
    const-string v5, "EncryptService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " cryptoMain : mState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v7}, Lcom/android/server/EncryptService$InternalDB;->getState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    const/4 v5, 0x4

    if-ne v0, v5, :cond_4

    .line 2746
    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->updateCryptoPolicy(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2747
    const/16 v5, -0x64

    goto :goto_0

    .line 2749
    :cond_2
    iget-object v5, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v5}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 2751
    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->requestEncryptFormat(Ljava/lang/String;)V

    .line 2752
    const/4 v5, 0x0

    goto :goto_0

    .line 2756
    :cond_3
    const/16 v5, -0x64

    goto :goto_0

    .line 2763
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->updateWorkingPath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2765
    const/16 v5, -0x64

    goto :goto_0

    .line 2767
    :cond_5
    const-string v5, "EncryptService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " cryptoMain : WorkingPath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v7}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getWorkingCommand()I

    move-result v3

    .line 2773
    const-string v5, "EncryptService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " cryptoMain : command = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", CryptoPolicy="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v7}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    if-nez v3, :cond_6

    .line 2777
    const/4 v5, 0x5

    if-eq v0, v5, :cond_8

    .line 2778
    const/16 v5, -0x64

    goto/16 :goto_0

    .line 2780
    :cond_6
    const/4 v5, -0x7

    if-ne v3, v5, :cond_7

    .line 2782
    iget-object v5, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v6, "none"

    invoke-virtual {v5, v6}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    .line 2783
    const/16 v5, -0x64

    goto/16 :goto_0

    .line 2784
    :cond_7
    const/4 v5, -0x6

    if-ne v3, v5, :cond_8

    .line 2786
    iget-object v5, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v6, "none"

    invoke-virtual {v5, v6}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    .line 2787
    const/4 v5, -0x4

    goto/16 :goto_0

    .line 2793
    :cond_8
    const/4 v5, 0x5

    if-ne v0, v5, :cond_b

    .line 2795
    const/4 v1, 0x0

    .line 2839
    :cond_9
    :goto_1
    const-string v5, "EncryptService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " cryptoMain : bPopupBox = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    const/4 v4, -0x4

    .line 2843
    if-eqz v1, :cond_14

    .line 2845
    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->doPopupBox(I)Z

    .line 2863
    :cond_a
    :goto_2
    const-string v5, "EncryptService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " cryptoMain : End! Path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v7}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", command="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", policy="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v7}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v7}, Lcom/android/server/EncryptService$InternalDB;->getState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", nRet="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 2865
    goto/16 :goto_0

    .line 2797
    :cond_b
    const/4 v5, 0x1

    if-ne v0, v5, :cond_10

    .line 2799
    iget-object v5, p0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    iget-object v6, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v6}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/EncryptService$CheckStorageState;->checkSharedStorageState(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2801
    const/16 v5, -0x64

    goto/16 :goto_0

    .line 2803
    :cond_c
    iget-object v5, p0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    iget-object v6, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v6}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/EncryptService$CheckStorageState;->checkFormatingStorageState(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2805
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2807
    :cond_d
    iget-object v5, p0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    iget-object v6, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v6}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/EncryptService$CheckStorageState;->checkBootingStorageState(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2809
    const-string v5, "EncryptService"

    const-string v6, " cryptoMain : while booting.....!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    const/4 v5, -0x4

    goto/16 :goto_0

    .line 2814
    :cond_e
    iget-object v5, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v5}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/EncryptService;->checkMountedStorage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v5}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/EncryptService;->checkSharedStorage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2817
    :cond_f
    const-string v5, "EncryptService"

    const-string v6, " cryptoMain : already mounted!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    const/16 v5, 0x104

    invoke-virtual {p0, v5}, Lcom/android/server/EncryptService;->setError(I)V

    .line 2819
    const/16 v5, -0x64

    goto/16 :goto_0

    .line 2823
    :cond_10
    const/4 v5, 0x3

    if-ne v0, v5, :cond_9

    .line 2825
    iget-object v5, p0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    iget-object v6, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v6}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/server/EncryptService$CheckStorageState;->setBootingStorageState(Ljava/lang/String;Z)V

    .line 2827
    const-string v5, "encryption.bootmode"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2828
    .local v2, bootMode:Ljava/lang/String;
    const-string v5, "remount"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isLockPasswordEnabled()Z

    move-result v5

    if-nez v5, :cond_12

    :cond_11
    const-string v5, "ram"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2830
    :cond_12
    const/4 v5, -0x4

    goto/16 :goto_0

    .line 2832
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2849
    .end local v2           #bootMode:Ljava/lang/String;
    :cond_14
    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->doWork(I)Z

    move-result v5

    if-nez v5, :cond_15

    .line 2851
    const/16 v4, -0x64

    goto/16 :goto_2

    .line 2855
    :cond_15
    iget-object v5, p0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    iget-object v6, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v6}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/EncryptService$CheckStorageState;->checkFormatingStorageState(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2857
    const/4 v4, 0x0

    goto/16 :goto_2
.end method

.method protected doPopupBox(I)Z
    .locals 4
    .parameter "command"

    .prologue
    .line 2280
    const/4 v0, 0x0

    .line 2281
    .local v0, isWorking:Z
    const/4 v1, 0x0

    .line 2285
    .local v1, popuptype:I
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v3}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2286
    const/4 v1, 0x1

    .line 2289
    :cond_0
    iget-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2290
    or-int/lit8 v1, v1, 0x2

    .line 2318
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/EncryptService;->startEncryptActivtiy(I)V

    .line 2319
    const/4 v0, 0x1

    .line 2322
    iget-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v3, "none"

    invoke-virtual {v2, v3}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    .line 2326
    return v0
.end method

.method public doProcessBatchData(Ljava/lang/String;I)I
    .locals 5
    .parameter "cmd"
    .parameter "encryptStatus"

    .prologue
    const/4 v4, 0x0

    .line 359
    const-string v0, "batchdata"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    const-string v0, "EncryptService"

    const-string v1, "batchdata command received"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/android/server/EncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "crypto batchdata %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 363
    :cond_0
    return v4
.end method

.method public doRemountBoot(Ljava/lang/String;)I
    .locals 4
    .parameter "cmd"

    .prologue
    const/4 v3, 0x0

    .line 367
    const-string v0, "remountboot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const-string v0, "EncryptService"

    const-string v1, "remount command received"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/android/server/EncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "crypto remountboot"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 371
    :cond_0
    return v3
.end method

.method public doUpdateCryptoPasswordInfo(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .parameter "cmd"
    .parameter "pass_data"
    .parameter "mode"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 345
    const-string v0, "setcryptpasswd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    const-string v0, "EncryptService"

    const-string v1, "setcryptpasswd invoked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    if-nez p2, :cond_1

    .line 348
    iget-object v0, p0, Lcom/android/server/EncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "crypto setcryptpasswd"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 355
    :cond_0
    :goto_0
    return v4

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/android/server/EncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "crypto setcryptpasswd %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v4

    const/4 v3, 0x0

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    goto :goto_0

    .line 352
    :cond_2
    const-string v0, "setcryptrecoverypwd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/server/EncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "crypto setcryptrecoverypwd %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected doWork(I)Z
    .locals 4
    .parameter "command"

    .prologue
    .line 2331
    const/4 v0, 0x0

    .line 2336
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v1}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->waitForUnmount(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2338
    const-string v1, "EncryptService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ***doWork : Ret = false! Storage is mounted! Prev mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v3}, Lcom/android/server/EncryptService$InternalDB;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    iget-object v1, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v2, "none"

    invoke-virtual {v1, v2}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    .line 2340
    const/4 v1, 0x0

    .line 2364
    :goto_0
    return v1

    .line 2343
    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    move v1, v0

    .line 2364
    goto :goto_0

    .line 2346
    :pswitch_0
    const/4 v0, 0x1

    .line 2347
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->requestBatch()V

    goto :goto_1

    .line 2351
    :pswitch_1
    const/4 v0, 0x1

    .line 2352
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->requestEncryptMount()I

    goto :goto_1

    .line 2355
    :pswitch_2
    const/4 v0, 0x1

    .line 2356
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->normalMount()V

    goto :goto_1

    .line 2343
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected doWorkNextJob(Ljava/lang/String;)Z
    .locals 7
    .parameter "sPath"

    .prologue
    const/4 v6, 0x0

    const-string v5, "EncryptService"

    .line 2239
    const/4 v1, 0x1

    .line 2240
    .local v1, isWorking:Z
    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " NextJob:  Running! sPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->checkNextWorkingJob(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v6

    .line 2275
    :goto_0
    return v3

    .line 2244
    :cond_0
    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " NextJob : checkNextWorkingJob is true! mState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    const/4 v1, 0x1

    .line 2247
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 2249
    .local v2, sWorkPath:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/EncryptService;->updateWorkingPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v6

    .line 2250
    goto :goto_0

    .line 2252
    :cond_1
    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " NextJob : WorkingPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getWorkingCommand()I

    move-result v0

    .line 2255
    .local v0, command:I
    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " NextJob : command = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", CryptoPolicy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    if-eqz v0, :cond_2

    const/4 v3, -0x7

    if-eq v0, v3, :cond_2

    .line 2259
    invoke-virtual {p0, v0}, Lcom/android/server/EncryptService;->doWork(I)Z

    move-result v1

    .line 2273
    :goto_1
    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " NextJob End! isWorking="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", WorkingPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 2275
    goto/16 :goto_0

    .line 2261
    :cond_2
    if-nez v0, :cond_3

    .line 2265
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->normalMount()V

    .line 2266
    iget-object v3, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v4, "none"

    invoke-virtual {v3, v4}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    goto :goto_1

    .line 2270
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public formatVolume(Ljava/lang/String;)I
    .locals 1
    .parameter "sPath"

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 332
    .local v0, nRet:I
    return v0
.end method

.method protected getActionType(Ljava/lang/String;)I
    .locals 1
    .parameter "sAsk"

    .prologue
    .line 1672
    const-string v0, "inserted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1673
    const/4 v0, 0x2

    .line 1687
    :goto_0
    return v0

    .line 1675
    :cond_0
    const-string v0, "mounting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1676
    const/4 v0, 0x1

    goto :goto_0

    .line 1678
    :cond_1
    const-string v0, "booting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1679
    const/4 v0, 0x3

    goto :goto_0

    .line 1681
    :cond_2
    const-string v0, "format"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1682
    const/4 v0, 0x4

    goto :goto_0

    .line 1683
    :cond_3
    const-string v0, "Application"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1684
    const/4 v0, 0x5

    goto :goto_0

    .line 1685
    :cond_4
    const/16 v0, 0x6e

    invoke-virtual {p0, v0}, Lcom/android/server/EncryptService;->setError(I)V

    .line 1687
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLatestError()I
    .locals 1

    .prologue
    .line 1805
    iget v0, p0, Lcom/android/server/EncryptService;->mCryptoError:I

    return v0
.end method

.method protected getMountServiceInstance()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 1869
    iget-object v1, p0, Lcom/android/server/EncryptService;->m_MountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 1874
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1876
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 1877
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/EncryptService;->m_MountService:Landroid/os/storage/IMountService;

    .line 1885
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/EncryptService;->m_MountService:Landroid/os/storage/IMountService;

    return-object v1

    .line 1880
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    const-string v1, "EncryptService"

    const-string v2, "getMountServiceInstance : Can\'t get mount service!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    goto :goto_0
.end method

.method protected getStorageCryptoState(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "sPath"

    .prologue
    const-string v4, " getStorageCryptoState : StorageCryptoState="

    const-string v7, "EncryptService"

    .line 2086
    const/4 v3, 0x0

    .line 2087
    .local v3, sRet:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2091
    .local v0, bRet:Z
    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->updateStorageCID(Ljava/lang/String;)Z

    move-result v0

    .line 2093
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getStorageCID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getStorageCID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 2096
    :cond_0
    const/4 v4, 0x0

    .line 2140
    :goto_0
    return-object v4

    .line 2101
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getStorageCID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sdcard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2103
    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getStorageCID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2104
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3

    .line 2106
    :cond_2
    const-string v3, "NULL"

    .line 2109
    :cond_3
    const-string v4, "EncryptService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getStorageCryptoState : StorageCryptoState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    move-object v4, v3

    .line 2140
    goto :goto_0

    .line 2113
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 2115
    .local v2, mountService:Landroid/os/storage/IMountService;
    if-eqz v2, :cond_4

    .line 2117
    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->getEncryptedStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2118
    const-string v4, "EncryptService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getStorageCryptoState : StorageCryptoState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_7

    .line 2122
    :cond_6
    const/16 v4, 0x8c

    invoke-virtual {p0, v4}, Lcom/android/server/EncryptService;->setError(I)V

    .line 2123
    const/4 v3, 0x0

    goto :goto_1

    .line 2124
    :cond_7
    const-string v4, "INVALID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2126
    const/16 v4, 0x8d

    invoke-virtual {p0, v4}, Lcom/android/server/EncryptService;->setError(I)V

    .line 2127
    const-string v3, "INVALID"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2132
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 2134
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "EncryptService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getStorageCryptoState exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    const/16 v4, 0x8e

    invoke-virtual {p0, v4}, Lcom/android/server/EncryptService;->setError(I)V

    goto :goto_1
.end method

.method protected getStorageDevPath(Ljava/lang/String;)V
    .locals 9
    .parameter "sPath"

    .prologue
    const-string v8, "EncryptService"

    .line 2877
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 2878
    .local v2, int_path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2880
    .local v1, ext_path:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2882
    .local v4, sDevPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v3

    .line 2884
    .local v3, mountService:Landroid/os/storage/IMountService;
    if-eqz v3, :cond_0

    .line 2886
    invoke-interface {v3, p1}, Landroid/os/storage/IMountService;->getDeviceDriverPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2887
    const-string v5, "EncryptService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " getDeviceDriverPath sDevPath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sPath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2900
    .end local v1           #ext_path:Ljava/lang/String;
    .end local v2           #int_path:Ljava/lang/String;
    .end local v3           #mountService:Landroid/os/storage/IMountService;
    .end local v4           #sDevPath:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2890
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 2892
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "EncryptService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getStorageDevPath : RemoteException exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2894
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 2895
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "EncryptService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getStorageDevPath : Exception exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getStroageState(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "sPath"

    .prologue
    const-string v5, "EncryptService"

    .line 1637
    const/4 v2, 0x0

    .line 1643
    .local v2, sStorageState:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1644
    .local v1, mountService:Landroid/os/storage/IMountService;
    if-eqz v1, :cond_0

    .line 1646
    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1664
    .end local v1           #mountService:Landroid/os/storage/IMountService;
    :goto_0
    return-object v2

    .line 1649
    .restart local v1       #mountService:Landroid/os/storage/IMountService;
    :cond_0
    const/16 v3, 0xf0

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1651
    .end local v1           #mountService:Landroid/os/storage/IMountService;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1653
    .local v0, e:Landroid/os/RemoteException;
    const/16 v3, 0xf1

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V

    .line 1654
    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getStroageState : RemoteException exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1656
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 1658
    .local v0, e:Ljava/lang/Exception;
    const/16 v3, 0xf2

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V

    .line 1659
    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getStroageState : Exception exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getWorkingCommand()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1816
    const/4 v0, -0x7

    .line 1817
    .local v0, nRet:I
    const/4 v1, 0x0

    .line 1822
    .local v1, sStorageState:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/EncryptService;->getStorageCryptoState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1824
    if-nez v1, :cond_0

    .line 1825
    const/4 v2, -0x7

    .line 1864
    :goto_0
    return v2

    .line 1829
    :cond_0
    iget-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/EncryptService;->updateCryptoPolicy(Ljava/lang/String;)Z

    .line 1832
    const-string v2, "NULL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1834
    iget-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1835
    const/4 v0, 0x1

    :goto_1
    move v2, v0

    .line 1864
    goto :goto_0

    .line 1837
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1839
    :cond_2
    const-string v2, "COMPLETE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1841
    iget-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 1842
    const/4 v0, 0x2

    goto :goto_1

    .line 1844
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 1846
    :cond_4
    const-string v2, "DecryptBATCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "EncryptBATCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1848
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 1851
    :cond_6
    iget-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v2

    if-ne v2, v3, :cond_7

    .line 1853
    const/4 v0, -0x6

    goto :goto_1

    .line 1857
    :cond_7
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Lcom/android/server/EncryptService;->setError(I)V

    .line 1858
    const/4 v0, -0x7

    goto :goto_1
.end method

.method public initDisabeADB()V
    .locals 3

    .prologue
    .line 222
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 223
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/android/server/EncryptService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/EncryptService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    return-void
.end method

.method public isFirstStorage(Ljava/lang/String;)Z
    .locals 1
    .parameter "sPath"

    .prologue
    .line 898
    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    const/4 v0, 0x1

    .line 901
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSharedStorage()Z
    .locals 11

    .prologue
    const-string v7, "shared"

    const-string v10, "EncryptService"

    .line 2904
    const/4 v0, 0x0

    .line 2911
    .local v0, bRet:Z
    :try_start_0
    sget-boolean v7, Lcom/android/server/StorageFeature;->INSTALLED_FIRST_DISK:Z

    if-eqz v7, :cond_0

    .line 2912
    const-string v7, "EncryptService"

    const-string v8, " isSharedStorage : INSTALLED_INTERNAL_DISK!"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    :cond_0
    sget-boolean v7, Lcom/android/server/StorageFeature;->INSTALLED_SECOND_DISK:Z

    if-eqz v7, :cond_1

    .line 2915
    const-string v7, "EncryptService"

    const-string v8, " isSharedStorage : INSTALLED_EXTERNAL_DISK!"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    :cond_1
    sget-boolean v7, Lcom/android/server/StorageFeature;->INSTALLED_USBHOST_DISK:Z

    if-eqz v7, :cond_2

    .line 2918
    const-string v7, "EncryptService"

    const-string v8, " isSharedStorage : INSTALLED_USBHOST_DISK!"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 2922
    .local v3, int_path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 2924
    .local v2, ext_path:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, sStorageState:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2926
    .local v6, sStorageState2:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v4

    .line 2927
    .local v4, mountService:Landroid/os/storage/IMountService;
    if-eqz v4, :cond_4

    .line 2929
    invoke-interface {v4, v3}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2930
    const-string v7, "shared"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2931
    const/4 v0, 0x1

    .line 2939
    :cond_3
    :goto_0
    invoke-interface {v4, v3}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2940
    const-string v7, "EncryptService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " isSharedStorage interSD="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", exterSD="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    .end local v2           #ext_path:Ljava/lang/String;
    .end local v3           #int_path:Ljava/lang/String;
    .end local v4           #mountService:Landroid/os/storage/IMountService;
    .end local v5           #sStorageState:Ljava/lang/String;
    .end local v6           #sStorageState2:Ljava/lang/String;
    :cond_4
    :goto_1
    return v0

    .line 2934
    .restart local v2       #ext_path:Ljava/lang/String;
    .restart local v3       #int_path:Ljava/lang/String;
    .restart local v4       #mountService:Landroid/os/storage/IMountService;
    .restart local v5       #sStorageState:Ljava/lang/String;
    .restart local v6       #sStorageState2:Ljava/lang/String;
    :cond_5
    invoke-interface {v4, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2935
    const-string v7, "shared"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-eqz v7, :cond_3

    .line 2936
    const/4 v0, 0x1

    goto :goto_0

    .line 2943
    .end local v2           #ext_path:Ljava/lang/String;
    .end local v3           #int_path:Ljava/lang/String;
    .end local v4           #mountService:Landroid/os/storage/IMountService;
    .end local v5           #sStorageState:Ljava/lang/String;
    .end local v6           #sStorageState2:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 2945
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "EncryptService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " isSharedStorage : RemoteException exception="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2947
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 2948
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "EncryptService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " isSharedStorage : Exception exception="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public mountVolume(Ljava/lang/String;)I
    .locals 4
    .parameter "sPolicyORsPath2"

    .prologue
    const-string v3, "EncryptService"

    .line 308
    move-object v0, p1

    .line 309
    .local v0, sPolicyORsPath:Ljava/lang/String;
    const-string v1, "EncryptService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mountVolume Begin! path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v1, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/EncryptService$2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/EncryptService$2;-><init>(Lcom/android/server/EncryptService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 322
    const-string v1, "EncryptService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mountVolume End! m_State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", LatestError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getLatestError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Policy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v1, 0x0

    return v1
.end method

.method protected normalMount()V
    .locals 2

    .prologue
    .line 2646
    iget-object v0, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/EncryptService$10;

    invoke-direct {v1, p0}, Lcom/android/server/EncryptService$10;-><init>(Lcom/android/server/EncryptService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2711
    return-void
.end method

.method protected normalUnmount(Ljava/lang/String;)V
    .locals 6
    .parameter "sPath"

    .prologue
    const-string v5, "EncryptService"

    .line 2614
    const/4 v2, 0x0

    .line 2620
    .local v2, nRet:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 2622
    .local v1, mountService:Landroid/os/storage/IMountService;
    if-eqz v1, :cond_0

    .line 2624
    const/4 v3, 0x1

    invoke-interface {v1, p1, v3}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;Z)V

    .line 2625
    const-string v3, "EncryptService"

    const-string v4, " normalUnmount : IMountService.unmountVolume!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2640
    .end local v1           #mountService:Landroid/os/storage/IMountService;
    :cond_0
    :goto_0
    return-void

    .line 2628
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2630
    .local v0, e:Landroid/os/RemoteException;
    const/16 v3, 0x10f

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V

    .line 2631
    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " normalUnmount : RemoteException exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2633
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 2634
    .local v0, e:Ljava/lang/Exception;
    const/16 v3, 0x110

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V

    .line 2635
    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " normalUnmount : Exception exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDaemonConnected()V
    .locals 1

    .prologue
    .line 545
    new-instance v0, Lcom/android/server/EncryptService$5;

    invoke-direct {v0, p0}, Lcom/android/server/EncryptService$5;-><init>(Lcom/android/server/EncryptService;)V

    invoke-virtual {v0}, Lcom/android/server/EncryptService$5;->start()V

    .line 561
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/EncryptService$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/EncryptService$6;-><init>(Lcom/android/server/EncryptService;ILjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 570
    const/4 v0, 0x1

    return v0
.end method

.method public processBatchData()V
    .locals 3

    .prologue
    .line 444
    const-string v1, "EncryptService"

    const-string v2, "EncryptService: processBatchData:"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, mode:I
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getInternalStorageStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    const/4 v0, 0x1

    .line 451
    :cond_0
    const-string v1, "batchdata"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/EncryptService;->doProcessBatchData(Ljava/lang/String;I)I

    .line 455
    return-void
.end method

.method public registerListener(Landroid/os/storage/IEncryptServiceListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 377
    iget-object v2, p0, Lcom/android/server/EncryptService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 378
    :try_start_0
    new-instance v0, Lcom/android/server/EncryptService$EncryptServiceBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/EncryptService$EncryptServiceBinderListener;-><init>(Lcom/android/server/EncryptService;Landroid/os/storage/IEncryptServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    .local v0, bl:Lcom/android/server/EncryptService$EncryptServiceBinderListener;
    :try_start_1
    invoke-interface {p1}, Landroid/os/storage/IEncryptServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 381
    iget-object v3, p0, Lcom/android/server/EncryptService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 385
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 386
    return-void

    .line 382
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 383
    .local v1, rex:Landroid/os/RemoteException;
    const-string v3, "EncryptService"

    const-string v4, "Failed to link to listener death"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 385
    .end local v0           #bl:Lcom/android/server/EncryptService$EncryptServiceBinderListener;
    .end local v1           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method protected requestBatch()V
    .locals 2

    .prologue
    .line 2376
    iget-object v0, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/EncryptService$7;

    invoke-direct {v1, p0}, Lcom/android/server/EncryptService$7;-><init>(Lcom/android/server/EncryptService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2449
    return-void
.end method

.method protected requestEncryptFormat(Ljava/lang/String;)V
    .locals 7
    .parameter "sPath"

    .prologue
    const-string v6, "EncryptService"

    .line 2536
    const/4 v2, 0x0

    .line 2542
    .local v2, nRet:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 2544
    .local v1, mountService:Landroid/os/storage/IMountService;
    if-eqz v1, :cond_0

    .line 2546
    iget-object v3, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v4, "working"

    invoke-virtual {v3, v4}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    .line 2548
    iget-object v3, p0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/server/EncryptService$CheckStorageState;->setFormatingStorageState(Ljava/lang/String;Z)V

    .line 2550
    iget-object v3, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v3}, Lcom/android/server/EncryptService$InternalDB;->getPwdHashCode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getStorageCID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, p1, v3, v4}, Landroid/os/storage/IMountService;->encryptFormatVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2551
    const-string v3, "EncryptService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " requestEncryptFormat : IMountService.encryptFormatVolume ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2566
    .end local v1           #mountService:Landroid/os/storage/IMountService;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v4, "none"

    invoke-virtual {v3, v4}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    .line 2574
    return-void

    .line 2554
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2556
    .local v0, e:Landroid/os/RemoteException;
    const/16 v3, 0xbe

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V

    .line 2557
    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " requestEncryptFormat : RemoteException exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    const/4 v2, -0x2

    .line 2564
    goto :goto_0

    .line 2560
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 2561
    .local v0, e:Ljava/lang/Exception;
    const/16 v3, 0xbf

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V

    .line 2562
    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " requestEncryptFormat : Exception exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    const/4 v2, -0x3

    goto :goto_0
.end method

.method protected requestEncryptMount()I
    .locals 2

    .prologue
    .line 2460
    iget-object v0, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/EncryptService$8;

    invoke-direct {v1, p0}, Lcom/android/server/EncryptService$8;-><init>(Lcom/android/server/EncryptService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2523
    const/4 v0, 0x0

    return v0
.end method

.method public setEncryptionEnabled(Ljava/lang/String;Z)V
    .locals 0
    .parameter "sPath"
    .parameter "bSet"

    .prologue
    .line 460
    invoke-virtual {p0, p1, p2}, Lcom/android/server/EncryptService;->setEncryptionEnabled2(Ljava/lang/String;Z)Z

    .line 461
    return-void
.end method

.method protected setEncryptionEnabled2(Ljava/lang/String;Z)Z
    .locals 7
    .parameter "sPath"
    .parameter "bSet"

    .prologue
    const-string v6, "EncryptService"

    .line 1405
    const/4 v0, 0x0

    .line 1410
    .local v0, bRet:Z
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/EncryptService;->authByUid(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1411
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 1413
    .local v2, mntSvc:Landroid/os/storage/IMountService;
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1415
    invoke-interface {v2, p1, p2}, Landroid/os/storage/IMountService;->setEncryptionEnabled(Ljava/lang/String;Z)I

    .line 1416
    const-string v3, "EncryptService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " setEncryptionEnabled2 : **setEncryptionEnabled sPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bSet="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1418
    const/4 v0, 0x1

    .line 1436
    .end local v2           #mntSvc:Landroid/os/storage/IMountService;
    :cond_0
    :goto_0
    return v0

    .line 1423
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1425
    .local v1, e:Landroid/os/RemoteException;
    const/16 v3, 0xe7

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V

    .line 1426
    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setEncryptionEnabled2 : RemoteException exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1428
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 1429
    .local v1, e:Ljava/lang/Exception;
    const/16 v3, 0xe8

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V

    .line 1430
    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setEncryptionEnabled2 : Exception exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setEncryptionStorageState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "sCID"
    .parameter "sState"

    .prologue
    .line 2578
    iget-object v0, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/EncryptService$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/EncryptService$9;-><init>(Lcom/android/server/EncryptService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2610
    return-void
.end method

.method protected setError(I)V
    .locals 0
    .parameter "error"

    .prologue
    .line 1810
    iput p1, p0, Lcom/android/server/EncryptService;->mCryptoError:I

    .line 1811
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 3
    .parameter "password2"

    .prologue
    .line 402
    move-object v0, p1

    .line 404
    .local v0, password:Ljava/lang/String;
    const-string v1, "EncryptService"

    const-string v2, " Setting password!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/EncryptService;->authByUid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    const-string v1, "setcryptpasswd"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/EncryptService;->doUpdateCryptoPasswordInfo(Ljava/lang/String;Ljava/lang/String;I)I

    .line 412
    iget-object v1, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/EncryptService$3;

    invoke-direct {v2, p0, v0}, Lcom/android/server/EncryptService$3;-><init>(Lcom/android/server/EncryptService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    :cond_0
    return-void
.end method

.method public setRecoveryPassword(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 435
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/EncryptService;->authByUid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    const-string v0, "setcryptrecoverypwd"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/EncryptService;->doUpdateCryptoPasswordInfo(Ljava/lang/String;Ljava/lang/String;I)I

    .line 439
    :cond_0
    return-void
.end method

.method public unmountVolume(Ljava/lang/String;Z)V
    .locals 0
    .parameter "sPath"
    .parameter "force"

    .prologue
    .line 341
    return-void
.end method

.method public unregisterListener(Landroid/os/storage/IEncryptServiceListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 389
    iget-object v2, p0, Lcom/android/server/EncryptService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 390
    :try_start_0
    iget-object v3, p0, Lcom/android/server/EncryptService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/EncryptService$EncryptServiceBinderListener;

    .line 391
    .local v0, bl:Lcom/android/server/EncryptService$EncryptServiceBinderListener;
    iget-object v3, v0, Lcom/android/server/EncryptService$EncryptServiceBinderListener;->mListener:Landroid/os/storage/IEncryptServiceListener;

    if-ne v3, p1, :cond_0

    .line 392
    iget-object v3, p0, Lcom/android/server/EncryptService;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/EncryptService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 393
    monitor-exit v2

    .line 397
    .end local v0           #bl:Lcom/android/server/EncryptService$EncryptServiceBinderListener;
    :goto_0
    return-void

    .line 396
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected updateCryptoPolicy(Ljava/lang/String;)Z
    .locals 5
    .parameter "sPath"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2147
    const/4 v0, 0x0

    .line 2151
    .local v0, isEnable:Z
    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "internal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2153
    :cond_0
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getInternalStorageStatus()Z

    move-result v0

    .line 2164
    :goto_0
    if-eqz v0, :cond_4

    .line 2165
    iget-object v1, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v1, v2}, Lcom/android/server/EncryptService$InternalDB;->setCryptoPolicy(I)V

    :goto_1
    move v1, v2

    .line 2171
    :goto_2
    return v1

    .line 2154
    :cond_1
    if-eqz p1, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "external"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2156
    :cond_2
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getExternalStorageStatus()Z

    move-result v0

    goto :goto_0

    .line 2159
    :cond_3
    const-string v1, "EncryptService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " updateCryptoPolicy : invalid sPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    const/16 v1, 0x118

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    move v1, v4

    .line 2161
    goto :goto_2

    .line 2167
    :cond_4
    iget-object v1, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v1, v4}, Lcom/android/server/EncryptService$InternalDB;->setCryptoPolicy(I)V

    goto :goto_1
.end method

.method protected updateEncryptionDisable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1466
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1467
    .local v1, inter:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1469
    .local v0, exter:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->checkPolicyInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1471
    invoke-virtual {p0, v1, v3}, Lcom/android/server/EncryptService;->setEncryptionEnabled2(Ljava/lang/String;Z)Z

    .line 1474
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/EncryptService;->checkPolicyInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1476
    invoke-virtual {p0, v0, v3}, Lcom/android/server/EncryptService;->setEncryptionEnabled2(Ljava/lang/String;Z)Z

    .line 1480
    :cond_1
    return-void
.end method

.method protected updateEncryptionEnable()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1445
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1446
    .local v1, inter:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1448
    .local v0, exter:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->checkPolicyInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1450
    invoke-virtual {p0, v1, v3}, Lcom/android/server/EncryptService;->setEncryptionEnabled2(Ljava/lang/String;Z)Z

    .line 1453
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/EncryptService;->checkPolicyInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1455
    invoke-virtual {p0, v0, v3}, Lcom/android/server/EncryptService;->setEncryptionEnabled2(Ljava/lang/String;Z)Z

    .line 1459
    :cond_1
    return-void
.end method

.method protected updateStorageCID(Ljava/lang/String;)Z
    .locals 7
    .parameter "sPath"

    .prologue
    const-string v6, "EncryptService"

    .line 2034
    const/4 v0, 0x0

    .line 2035
    .local v0, bRet:Z
    const/4 v3, 0x0

    .line 2040
    .local v3, sStorageCID:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2042
    const-string v3, "sdcard"

    .line 2043
    const/4 v0, 0x1

    .line 2076
    :goto_0
    if-eqz v0, :cond_0

    .line 2077
    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4, v3}, Lcom/android/server/EncryptService$InternalDB;->setStorageCID(Ljava/lang/String;)V

    :cond_0
    move v4, v0

    .line 2081
    :goto_1
    return v4

    .line 2047
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 2049
    .local v2, mountService:Landroid/os/storage/IMountService;
    if-nez v2, :cond_2

    .line 2050
    const/4 v4, 0x0

    goto :goto_1

    .line 2054
    :cond_2
    :try_start_0
    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->getStorageCidNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2056
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 2057
    const/4 v0, 0x1

    goto :goto_0

    .line 2060
    :cond_3
    const-string v4, "EncryptService"

    const-string v5, " updateStorageCID : When calling IMountService.getStorageCidNumber, error was occured!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    const/16 v4, 0x96

    invoke-virtual {p0, v4}, Lcom/android/server/EncryptService;->setError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2064
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 2066
    .local v1, ex:Landroid/os/RemoteException;
    const-string v4, "EncryptService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updateStorageCID : RemoteException exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    const/16 v4, 0x97

    invoke-virtual {p0, v4}, Lcom/android/server/EncryptService;->setError(I)V

    goto :goto_0

    .line 2069
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 2071
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "EncryptService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updateStorageCID exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    const/16 v4, 0x98

    invoke-virtual {p0, v4}, Lcom/android/server/EncryptService;->setError(I)V

    goto :goto_0
.end method

.method protected updateWorkingPath(Ljava/lang/String;)Z
    .locals 3
    .parameter "lsPath"

    .prologue
    const/4 v2, 0x0

    .line 1706
    const/4 v0, 0x0

    .line 1709
    .local v0, sWorkingPath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageFirstInsalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1712
    const/16 v1, 0x78

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    move v1, v2

    .line 1798
    :goto_0
    return v1

    .line 1718
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "internal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1720
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->checkMountedStorage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->checkSharedStorage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1723
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1744
    :goto_1
    if-nez v0, :cond_8

    move v1, v2

    .line 1747
    goto :goto_0

    .line 1727
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->checkMountedStorage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->checkSharedStorage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1730
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->waitForUnmount(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1731
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1733
    :cond_4
    const/16 v1, 0x79

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    goto :goto_1

    .line 1737
    :cond_5
    invoke-static {}, Landroid/os/Environment;->isExternalStorageSecondInsalled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1738
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1740
    :cond_6
    const/16 v1, 0x7a

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    goto :goto_1

    .line 1750
    :cond_7
    const-string v1, "external"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1751
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1760
    :cond_8
    :goto_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1762
    invoke-static {}, Landroid/os/Environment;->isExternalStorageSecondInsalled()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1765
    const/16 v1, 0x7b

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    move v1, v2

    .line 1766
    goto/16 :goto_0

    .line 1753
    :cond_9
    move-object v0, p1

    goto :goto_2

    .line 1770
    :cond_a
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->checkSharedStorage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->checkMountedStorage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1774
    const/16 v1, 0x7c

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    move v1, v2

    .line 1775
    goto/16 :goto_0

    .line 1780
    :cond_b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1783
    const/16 v1, 0x7d

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    move v1, v2

    .line 1784
    goto/16 :goto_0

    .line 1793
    :cond_c
    iget-object v1, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v1, v0}, Lcom/android/server/EncryptService$InternalDB;->setWorkingPath(Ljava/lang/String;)V

    .line 1798
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method protected waitForUnmount(Ljava/lang/String;)Z
    .locals 3
    .parameter "sPath"

    .prologue
    .line 1971
    const/4 v0, 0x6

    .local v0, retries:I
    :goto_0
    if-lez v0, :cond_1

    .line 1973
    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->checkMountedStorage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1976
    const/4 v1, 0x1

    .line 1988
    :goto_1
    return v1

    .line 1981
    :cond_0
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 1971
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1984
    :cond_1
    const/16 v1, 0xd2

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    .line 1986
    const-string v1, "EncryptService"

    const-string v2, " waitForUnmount End! Storage unmount fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    const/4 v1, 0x0

    goto :goto_1
.end method
