.class Lcom/android/server/MountService;
.super Landroid/os/storage/IMountService$Stub;
.source "MountService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountService$MountCallBackBinderListener;,
        Lcom/android/server/MountService$UnmountObbAction;,
        Lcom/android/server/MountService$MountObbAction;,
        Lcom/android/server/MountService$ObbAction;,
        Lcom/android/server/MountService$ObbActionHandler;,
        Lcom/android/server/MountService$MountServiceBinderListener;,
        Lcom/android/server/MountService$MountServiceHandler;,
        Lcom/android/server/MountService$ShutdownCallBack;,
        Lcom/android/server/MountService$UmsEnableCallBack;,
        Lcom/android/server/MountService$UnmountCallBack;,
        Lcom/android/server/MountService$DefaultContainerConnection;,
        Lcom/android/server/MountService$ObbState;,
        Lcom/android/server/MountService$PackageInstalledMap;,
        Lcom/android/server/MountService$VolumeList;,
        Lcom/android/server/MountService$VoldResponseCode;,
        Lcom/android/server/MountService$VolumeState;
    }
.end annotation


# static fields
.field private static final CRYPTO_ALGORITHM_KEY_SIZE:I = 0x80

.field private static final DEBUG_EVENTS:Z = true

.field private static final DEBUG_OBB:Z = false

.field private static final DEBUG_UNMOUNT:Z = true

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName; = null

.field private static final H_UNMOUNT_MS:I = 0x3

.field private static final H_UNMOUNT_PM_ADDOBJ:I = 0x4

.field private static final H_UNMOUNT_PM_DONE:I = 0x2

.field private static final H_UNMOUNT_PM_UPDATE:I = 0x1

.field private static final LOCAL_LOGD:Z = true

.field private static final MAX_UNMOUNT_RETRIES:I = 0x4

.field private static final OBB_FLUSH_MOUNT_STATE:I = 0x5

.field private static final OBB_MCS_BOUND:I = 0x2

.field private static final OBB_MCS_RECONNECT:I = 0x4

.field private static final OBB_MCS_UNBIND:I = 0x3

.field private static final OBB_RUN_ACTION:I = 0x1

.field private static final PBKDF2_HASH_ROUNDS:I = 0x400

.field private static final RETRY_UNMOUNT_DELAY:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "MountService"

.field private static final VOLD_TAG:Ljava/lang/String; = "VoldConnector"

.field public static mShowSafeUnmountNotificationWhenUnmounted:Z

.field public static mShowSafeUnmountNotificationWhenUnmountedSd:Z


# instance fields
.field private doSendSorry:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private final mAsecMountSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/MountService$PackageInstalledMap;",
            ">;"
        }
    .end annotation
.end field

.field private mBooted:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$MountCallBackBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContext:Landroid/content/Context;

.field private final mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$MountServiceBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPlaySound:Z

.field private final mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

.field private final mObbMounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MountService$ObbState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mObbPathToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/MountService$ObbState;",
            ">;"
        }
    .end annotation
.end field

.field private mPms:Lcom/android/server/PackageManagerService;

.field private mPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mReady:Z

.field private mSendUmsConnectedOnBoot:Z

.field private mShared:Z

.field private mUmsDisabling:Z

.field private mUmsEnabling:Z

.field private mUss:Lcom/android/server/UsbStorageService;

.field private final mVolumeList:Lcom/android/server/MountService$VolumeList;

.field private final mWorkQueueHandler:Landroid/os/Handler;

.field private final mWorkQueueHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 441
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MountService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v9, "VoldConnector"

    const-string v8, "MountService"

    .line 1691
    invoke-direct {p0}, Landroid/os/storage/IMountService$Stub;-><init>()V

    .line 309
    iput-boolean v5, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    .line 310
    iput-boolean v5, p0, Lcom/android/server/MountService;->mUmsDisabling:Z

    .line 312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    .line 314
    iput-boolean v5, p0, Lcom/android/server/MountService;->mBooted:Z

    .line 315
    iput-boolean v5, p0, Lcom/android/server/MountService;->mReady:Z

    .line 316
    iput-boolean v5, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    .line 317
    iput-boolean v5, p0, Lcom/android/server/MountService;->mShared:Z

    .line 319
    iput-object v6, p0, Lcom/android/server/MountService;->mUss:Lcom/android/server/UsbStorageService;

    .line 320
    new-instance v1, Lcom/android/server/MountService$VolumeList;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$VolumeList;-><init>(Lcom/android/server/MountService;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    .line 353
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    .line 372
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    .line 373
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    .line 444
    new-instance v1, Lcom/android/server/MountService$DefaultContainerConnection;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$DefaultContainerConnection;-><init>(Lcom/android/server/MountService;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    .line 461
    iput-object v6, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 701
    new-instance v1, Lcom/android/server/MountService$1;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$1;-><init>(Lcom/android/server/MountService;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3437
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/MountService;->handler:Landroid/os/Handler;

    .line 3484
    new-instance v1, Lcom/android/server/MountService$7;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$7;-><init>(Lcom/android/server/MountService;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 3493
    new-instance v1, Lcom/android/server/MountService$8;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$8;-><init>(Lcom/android/server/MountService;)V

    iput-object v1, p0, Lcom/android/server/MountService;->doSendSorry:Ljava/lang/Runnable;

    .line 3506
    iput-boolean v5, p0, Lcom/android/server/MountService;->mNotificationPlaySound:Z

    .line 3529
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    .line 1692
    const-string v1, "MountService"

    const-string v1, "MountService :: "

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    iput-object p1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    .line 1696
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService;

    iput-object v1, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/PackageManagerService;

    .line 1698
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/MountService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1702
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/MountService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1706
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MountServiceEvent"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mWorkQueueHandlerThread:Landroid/os/HandlerThread;

    .line 1707
    iget-object v1, p0, Lcom/android/server/MountService;->mWorkQueueHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1708
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/MountService;->mWorkQueueHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mWorkQueueHandler:Landroid/os/Handler;

    .line 1710
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MountService"

    invoke-direct {v1, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1711
    iget-object v1, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1712
    new-instance v1, Lcom/android/server/MountService$MountServiceHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/MountService$MountServiceHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    .line 1715
    new-instance v1, Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/MountService$ObbActionHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    .line 1721
    const-string v1, "simulator"

    const-string v2, "ro.product.device"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1722
    iput-boolean v7, p0, Lcom/android/server/MountService;->mReady:Z

    .line 1723
    iput-boolean v7, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    .line 1742
    :goto_0
    return-void

    .line 1732
    :cond_0
    new-instance v1, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "vold"

    const/16 v3, 0x1f4

    const-string v4, "VoldConnector"

    invoke-direct {v1, p0, v2, v3, v9}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1734
    iput-boolean v5, p0, Lcom/android/server/MountService;->mReady:Z

    .line 1735
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "VoldConnector"

    invoke-direct {v0, v1, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1736
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1739
    sput-boolean v5, Lcom/android/server/MountService;->mShowSafeUnmountNotificationWhenUnmounted:Z

    .line 1740
    sput-boolean v5, Lcom/android/server/MountService;->mShowSafeUnmountNotificationWhenUnmountedSd:Z

    goto :goto_0
.end method

.method private ApplyCurrentSdCardPolicy(Z)V
    .locals 11
    .parameter "available"

    .prologue
    const/4 v9, 0x1

    const-string v10, "checking"

    const-string v8, "MountService"

    .line 3447
    invoke-direct {p0}, Lcom/android/server/MountService;->GetCurrentPolicy()Z

    move-result v0

    .line 3448
    .local v0, check:Z
    const-string v6, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ApplyCurrentSdCardPolicy :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", getAllowStorageCard "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3450
    if-nez v0, :cond_0

    .line 3451
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 3452
    .local v2, path:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3454
    .local v5, vs:Ljava/lang/String;
    const-string v6, "shared"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3455
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    .line 3482
    .end local v2           #path:Ljava/lang/String;
    .end local v5           #vs:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3458
    .restart local v2       #path:Ljava/lang/String;
    .restart local v5       #vs:Ljava/lang/String;
    :cond_1
    sget-boolean v6, Lcom/android/server/StorageFeature;->INSTALLED_SECOND_DISK:Z

    if-eqz v6, :cond_2

    .line 3459
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 3460
    invoke-virtual {p0, v2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3463
    :cond_2
    const-string v6, "checking"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3464
    const/16 v3, 0x1e

    .line 3465
    .local v3, retries:I
    :goto_1
    const-string v6, "checking"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v4, v3, -0x1

    .end local v3           #retries:I
    .local v4, retries:I
    if-ltz v3, :cond_5

    .line 3467
    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3472
    invoke-virtual {p0, v2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move v3, v4

    .end local v4           #retries:I
    .restart local v3       #retries:I
    goto :goto_1

    .line 3468
    .end local v3           #retries:I
    .restart local v4       #retries:I
    :catch_0
    move-exception v1

    .line 3469
    .local v1, iex:Ljava/lang/InterruptedException;
    const-string v6, "MountService"

    const-string v6, "Interrupted while waiting for media"

    invoke-static {v8, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 3474
    .end local v1           #iex:Ljava/lang/InterruptedException;
    .end local v4           #retries:I
    .restart local v3       #retries:I
    :cond_3
    :goto_2
    if-nez v3, :cond_4

    .line 3475
    const-string v6, "MountService"

    const-string v6, "Timed out waiting for media to check"

    invoke-static {v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    .end local v3           #retries:I
    :cond_4
    invoke-direct {p0, v2, v9}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;Z)I

    .line 3479
    iget-object v6, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const v7, 0x10403ef

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .restart local v4       #retries:I
    :cond_5
    move v3, v4

    .end local v4           #retries:I
    .restart local v3       #retries:I
    goto :goto_2
.end method

.method private declared-synchronized GetCurrentPolicy()Z
    .locals 3

    .prologue
    .line 3441
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 3442
    .local v0, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowStorageCard(Landroid/content/ComponentName;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 3441
    .end local v0           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/MountService;Ljava/lang/String;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/MountService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/MountService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doGetShareMethodAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/MountService;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/server/MountService;->mReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/MountService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/MountService;ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->actionStorageAskPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->askPermissionFakedState(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/server/MountService;->isVolumeStateShared()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/MountService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isUsbMassStorageEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsDisabling()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/MountService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->setUmsDisabling(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/server/MountService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/MountService;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/MountService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/MountService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/MountService;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->addObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/server/MountService;->GetCurrentPolicy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/MountService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->ApplyCurrentSdCardPolicy(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/MountService;)Lcom/android/server/MountService$VolumeList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/MountService;)Lcom/android/server/PackageManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/MountService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/server/MountService;->mBooted:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private actionBeforeMassStorage(Ljava/lang/String;)V
    .locals 7
    .parameter "path"

    .prologue
    const-string v4, "MountService"

    .line 3568
    iget-object v4, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 3569
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v2, v5, v6

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 3570
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountCallBackBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3573
    .local v0, bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    :try_start_1
    iget-object v5, v0, Lcom/android/server/MountService$MountCallBackBinderListener;->mCallback:Landroid/os/storage/IMountCallBackListener;

    invoke-interface {v5, p1}, Landroid/os/storage/IMountCallBackListener;->onBeforeActionMassStorage(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3569
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3574
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 3575
    .local v3, rex:Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "MountService"

    const-string v6, "actionBeforeConnectedMassStorage : Listener dead"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3581
    .end local v0           #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    .end local v2           #i:I
    .end local v3           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 3577
    .restart local v0       #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    .restart local v2       #i:I
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 3578
    .local v1, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v5, "MountService"

    const-string v6, "actionBeforeConnectedMassStorage : Listener failed"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3581
    .end local v0           #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3582
    return-void
.end method

.method private actionReleasedMassStorage(Ljava/lang/String;)V
    .locals 7
    .parameter "path"

    .prologue
    const-string v4, "MountService"

    .line 3585
    iget-object v4, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 3586
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v2, v5, v6

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 3587
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountCallBackBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3590
    .local v0, bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    :try_start_1
    iget-object v5, v0, Lcom/android/server/MountService$MountCallBackBinderListener;->mCallback:Landroid/os/storage/IMountCallBackListener;

    invoke-interface {v5, p1}, Landroid/os/storage/IMountCallBackListener;->onReleasedMassStorage(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3586
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3591
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 3592
    .local v3, rex:Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "MountService"

    const-string v6, "actionBeforeConnectedMassStorage : Listener dead"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3593
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3598
    .end local v0           #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    .end local v2           #i:I
    .end local v3           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 3594
    .restart local v0       #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    .restart local v2       #i:I
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 3595
    .local v1, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v5, "MountService"

    const-string v6, "actionBeforeConnectedMassStorage : Listener failed"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3598
    .end local v0           #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3599
    return-void
.end method

.method private actionStorageAskPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "path"
    .parameter "state"

    .prologue
    const-string v4, "MountService"

    .line 3550
    iget-object v4, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 3551
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v2, v5, v6

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 3552
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountCallBackBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3554
    .local v0, bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    :try_start_1
    iget-object v5, v0, Lcom/android/server/MountService$MountCallBackBinderListener;->mCallback:Landroid/os/storage/IMountCallBackListener;

    invoke-interface {v5, p1, p2}, Landroid/os/storage/IMountCallBackListener;->onStorageAskPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    :try_start_2
    monitor-exit v4

    move v4, v5

    .line 3564
    .end local v0           #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    :goto_1
    return v4

    .line 3555
    .restart local v0       #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 3556
    .local v3, rex:Landroid/os/RemoteException;
    const-string v5, "MountService"

    const-string v6, "actionStorageAskPermission : Listener dead"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3557
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3551
    .end local v3           #rex:Landroid/os/RemoteException;
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3558
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 3559
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "MountService"

    const-string v6, "actionStorageAskPermission : Listener failed"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 3562
    .end local v0           #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #i:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v2       #i:I
    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3564
    const/16 v4, -0x64

    goto :goto_1
.end method

.method private addObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .locals 7
    .parameter "obbState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2619
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2620
    .local v0, binder:Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2622
    .local v4, obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-nez v4, :cond_1

    .line 2623
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2624
    .restart local v4       #obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2634
    :cond_0
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2636
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->link()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2651
    iget-object v5, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2652
    return-void

    .line 2626
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;

    .line 2627
    .local v3, o:Lcom/android/server/MountService$ObbState;
    iget-object v5, v3, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2628
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Attempt to add ObbState twice. This indicates an error in the MountService logic."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2637
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #o:Lcom/android/server/MountService$ObbState;
    :catch_0
    move-exception v1

    .line 2642
    .local v1, e:Landroid/os/RemoteException;
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2643
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2644
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2648
    :cond_3
    throw v1
.end method

.method private askPermissionFakedState(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .parameter "path"
    .parameter "with"
    .parameter "Ret"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    const-string v3, "crypto"

    .line 3533
    const-string v0, "inserted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3534
    const-string v0, "crypto"

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    .line 3535
    const-string v0, "crypto"

    invoke-direct {p0, v3, p1, v2, v1}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    .line 3536
    const-string v0, "nofs"

    invoke-direct {p0, p1, v0}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 3546
    :cond_0
    :goto_0
    return p3

    .line 3540
    :cond_1
    const-string v0, "batch"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3541
    const-string v0, "crypto"

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    .line 3542
    const-string v0, "crypto"

    invoke-direct {p0, v3, p1, v2, v1}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private createSubDir(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    const-string v4, "doMountVolume :: make directory the \'"

    const-string v3, "MountService"

    const-string v2, "\'"

    .line 1325
    sget-boolean v0, Lcom/android/server/StorageFeature;->INSTALLED_SECOND_DISK:Z

    if-eqz v0, :cond_0

    .line 1326
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1327
    const-string v0, "MountService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doMountVolume :: make directory the \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1332
    :cond_0
    sget-boolean v0, Lcom/android/server/StorageFeature;->INSTALLED_USBHOST_DISK:Z

    if-eqz v0, :cond_1

    .line 1333
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1334
    const-string v0, "MountService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doMountVolume :: make directory the \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryUsbHost()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryUsbHost()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1338
    :cond_1
    return-void
.end method

.method private doEncryptMountVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .parameter "path"
    .parameter "password"
    .parameter "cid"

    .prologue
    const-string v9, "file://"

    const-string v8, "MountService"

    .line 3324
    const/4 v3, 0x0

    .line 3327
    .local v3, rc:I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "crypto mount %s %s %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p3, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3367
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 3368
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->createSubDir(Ljava/lang/String;)V

    .line 3371
    :cond_1
    return v3

    .line 3328
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 3332
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v2, 0x0

    .line 3333
    .local v2, in:Landroid/content/Intent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 3334
    .local v0, code:I
    const/16 v4, 0x191

    if-ne v0, v4, :cond_2

    .line 3335
    const-string v4, "MountService"

    const-string v4, "doEncryptMountVolume :: result = OperationFailedNoMedia"

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3336
    const/4 v3, -0x2

    .line 3362
    :goto_1
    if-eqz v2, :cond_0

    .line 3363
    iget-object v4, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 3337
    :cond_2
    const/16 v4, 0x192

    if-ne v0, v4, :cond_3

    .line 3338
    const-string v4, "MountService"

    const-string v4, "updating volume state :: media nofs"

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    const-string v4, "nofs"

    invoke-direct {p0, p1, v4}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 3340
    const-string v4, "MountService"

    const-string v4, "Sending intent :: ACTION_MEDIA_NOFS "

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    new-instance v2, Landroid/content/Intent;

    .end local v2           #in:Landroid/content/Intent;
    const-string v4, "android.intent.action.MEDIA_NOFS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3342
    .restart local v2       #in:Landroid/content/Intent;
    const-string v4, "MountService"

    const-string v4, "doEncryptMountVolume :: result = OperationFailedMediaBlank"

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    const/4 v3, -0x3

    goto :goto_1

    .line 3344
    :cond_3
    const/16 v4, 0x193

    if-ne v0, v4, :cond_4

    .line 3345
    const-string v4, "MountService"

    const-string v4, "updating volume state media corrupt"

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    const-string v4, "unmountable"

    invoke-direct {p0, p1, v4}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 3350
    const-string v4, "MountService"

    const-string v4, "Sending intent :: ACTION_MEDIA_UNMOUNTABLE "

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    new-instance v2, Landroid/content/Intent;

    .end local v2           #in:Landroid/content/Intent;
    const-string v4, "android.intent.action.MEDIA_UNMOUNTABLE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3352
    .restart local v2       #in:Landroid/content/Intent;
    const-string v4, "MountService"

    const-string v4, "doEncryptMountVolume :: result = OperationFailedMediaCorrupt"

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3353
    const/4 v3, -0x4

    goto/16 :goto_1

    .line 3355
    :cond_4
    const-string v4, "MountService"

    const-string v4, "doEncryptMountVolume :: result = OperationFailedInternalError"

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    const/4 v3, -0x1

    goto/16 :goto_1
.end method

.method private doFormatVolume(Ljava/lang/String;)I
    .locals 8
    .parameter "path"

    .prologue
    const/4 v7, 0x0

    const-string v6, "MountService"

    .line 1523
    const-string v3, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doFormatVolume :: path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    :try_start_0
    const-string v3, "volume format %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1527
    .local v0, cmd:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1528
    const-string v3, "MountService"

    const-string v4, "doFormatVolume :: result = OperationSucceeded"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v7

    .line 1540
    .end local v0           #cmd:Ljava/lang/String;
    :goto_0
    return v3

    .line 1530
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1531
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 1532
    .local v1, code:I
    const/16 v3, 0x191

    if-ne v1, v3, :cond_0

    .line 1533
    const-string v3, "MountService"

    const-string v3, "doFormatVolume :: result = OperationFailedNoMedia"

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    const/4 v3, -0x2

    goto :goto_0

    .line 1535
    :cond_0
    const/16 v3, 0x193

    if-ne v1, v3, :cond_1

    .line 1536
    const-string v3, "MountService"

    const-string v3, "doFormatVolume :: result = OperationFailedMediaCorrupt"

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    const/4 v3, -0x4

    goto :goto_0

    .line 1539
    :cond_1
    const-string v3, "MountService"

    const-string v3, "doFormatVolume :: result = OperationFailedInternalError"

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private doGetShareMethodAvailable(Ljava/lang/String;)Z
    .locals 14
    .parameter "method"

    .prologue
    const/4 v12, 0x1

    const/4 v10, 0x0

    const-string v13, "doGetShareMethodAvailable :: method = "

    const-string v11, "MountService"

    .line 1288
    :try_start_0
    iget-object v7, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "share status "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1294
    .local v5, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1295
    .local v3, line:Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1296
    .local v6, tok:[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x3

    if-ge v7, v8, :cond_0

    .line 1297
    const-string v7, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Malformed response to share status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 1321
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #line:Ljava/lang/String;
    .end local v5           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #tok:[Ljava/lang/String;
    :goto_0
    return v7

    .line 1289
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 1290
    .local v1, ex:Lcom/android/server/NativeDaemonConnectorException;
    const-string v7, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to determine whether share method "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is available."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 1291
    goto :goto_0

    .line 1303
    .end local v1           #ex:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v5       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #tok:[Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    :try_start_1
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1308
    .local v0, code:I
    const/16 v7, 0xd2

    if-ne v0, v7, :cond_2

    .line 1309
    const/4 v7, 0x2

    aget-object v7, v6, v7

    const-string v8, "available"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1310
    const-string v7, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doGetShareMethodAvailable :: method = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", result = true"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v12

    .line 1311
    goto :goto_0

    .line 1304
    .end local v0           #code:I
    :catch_1
    move-exception v7

    move-object v4, v7

    .line 1305
    .local v4, nfe:Ljava/lang/NumberFormatException;
    const-string v7, "MountService"

    const-string v7, "doGetShareMethodAvailable :: Error parsing code %s"

    new-array v8, v12, [Ljava/lang/Object;

    aget-object v9, v6, v10

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 1306
    goto :goto_0

    .line 1313
    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    .restart local v0       #code:I
    :cond_1
    const-string v7, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doGetShareMethodAvailable :: method = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", result = false"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 1314
    goto/16 :goto_0

    .line 1316
    :cond_2
    const-string v7, "MountService"

    const-string v7, "doGetShareMethodAvailable :: Unexpected response code %d"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 1317
    goto/16 :goto_0

    .line 1320
    .end local v0           #code:I
    .end local v3           #line:Ljava/lang/String;
    .end local v6           #tok:[Ljava/lang/String;
    :cond_3
    const-string v7, "MountService"

    const-string v7, "doGetShareMethodAvailable :: Got an empty response"

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 1321
    goto/16 :goto_0
.end method

.method private doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "path"
    .parameter "method"

    .prologue
    .line 1546
    const-string v8, "volume shared %s %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1550
    .local v0, cmd:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v8, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1556
    .local v6, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1557
    .local v4, line:Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1558
    .local v7, tok:[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x3

    if-ge v8, v9, :cond_0

    .line 1559
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Malformed response to volume shared "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " command"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    const/4 v8, 0x0

    .line 1583
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #tok:[Ljava/lang/String;
    :goto_0
    return v8

    .line 1551
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 1552
    .local v2, ex:Lcom/android/server/NativeDaemonConnectorException;
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to read response to volume shared "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    const/4 v8, 0x0

    goto :goto_0

    .line 1565
    .end local v2           #ex:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #tok:[Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    :try_start_1
    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 1570
    .local v1, code:I
    const/16 v8, 0xd4

    if-ne v1, v8, :cond_2

    .line 1571
    const-string v8, "enabled"

    const/4 v9, 0x2

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1572
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doGetVolumeShared :: path = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", method = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", result = true"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    const/4 v8, 0x1

    goto :goto_0

    .line 1566
    .end local v1           #code:I
    :catch_1
    move-exception v8

    move-object v5, v8

    .line 1567
    .local v5, nfe:Ljava/lang/NumberFormatException;
    const-string v8, "MountService"

    const-string v9, "doGetVolumeShared :: Error parsing code %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    aget-object v12, v7, v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    const/4 v8, 0x0

    goto :goto_0

    .line 1575
    .end local v5           #nfe:Ljava/lang/NumberFormatException;
    .restart local v1       #code:I
    :cond_1
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doGetVolumeShared :: path = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", method = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", result = false"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1578
    :cond_2
    const-string v8, "MountService"

    const-string v9, "doGetVolumeShared :: Unexpected response code %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1582
    .end local v1           #code:I
    .end local v4           #line:Ljava/lang/String;
    .end local v7           #tok:[Ljava/lang/String;
    :cond_3
    const-string v8, "MountService"

    const-string v9, "doGetVolumeShared :: Got an empty response"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private doMountVolume(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 1341
    const-string v0, "mounting"

    invoke-direct {p0, p1, v0}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private doMountVolume(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .parameter "path"
    .parameter "with"

    .prologue
    const/4 v9, 0x0

    const/16 v8, -0x64

    const-string v12, "doMountVolume :: actionStorageAskPermission with = "

    const-string v11, ", result = "

    const-string v10, "MountService"

    .line 1345
    const-string v6, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doMountVolume :: Mouting path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    const/4 v1, 0x0

    .line 1350
    .local v1, bAllow:Z
    sget-boolean v6, Lcom/android/server/StorageFeature;->INSTALLED_SECOND_DISK:Z

    if-eqz v6, :cond_0

    .line 1351
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1356
    :goto_0
    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/MountService;->GetCurrentPolicy()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1357
    const-string v6, "MountService"

    const-string v6, "doMountVolume :: restricts in order to policy"

    invoke-static {v10, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    iget-object v6, p0, Lcom/android/server/MountService;->handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/MountService;->doSendSorry:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1359
    const/4 v6, -0x2

    .line 1434
    :goto_1
    return v6

    .line 1353
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 1363
    :cond_1
    const/4 v5, 0x0

    .line 1365
    .local v5, rc:I
    const-string v6, "booting"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1366
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->actionStorageAskPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1367
    .local v0, Ret:I
    if-eq v0, v8, :cond_3

    .line 1368
    const-string v6, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doMountVolume :: actionStorageAskPermission with = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", result = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v0

    .line 1369
    goto :goto_1

    .line 1372
    .end local v0           #Ret:I
    :cond_2
    invoke-virtual {p0, p1, v9}, Lcom/android/server/MountService;->isEncryptionEnabled(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1373
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->actionStorageAskPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1374
    .restart local v0       #Ret:I
    if-eq v0, v8, :cond_3

    .line 1375
    const-string v6, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doMountVolume :: actionStorageAskPermission with = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", result = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v0

    .line 1376
    goto :goto_1

    .line 1384
    .end local v0           #Ret:I
    :cond_3
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "volume mount %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1430
    :cond_4
    :goto_2
    if-nez v5, :cond_5

    .line 1431
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->createSubDir(Ljava/lang/String;)V

    :cond_5
    move v6, v5

    .line 1434
    goto :goto_1

    .line 1385
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 1389
    .local v3, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v4, 0x0

    .line 1390
    .local v4, in:Landroid/content/Intent;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    .line 1391
    .local v2, code:I
    const/16 v6, 0x191

    if-ne v2, v6, :cond_6

    .line 1395
    const-string v6, "MountService"

    const-string v6, "doMountVolume :: result = OperationFailedNoMedia"

    invoke-static {v10, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    const/4 v5, -0x2

    .line 1425
    :goto_3
    if-eqz v4, :cond_4

    .line 1426
    iget-object v6, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 1397
    :cond_6
    const/16 v6, 0x192

    if-ne v2, v6, :cond_7

    .line 1398
    const-string v6, "MountService"

    const-string v6, " updating volume state :: media nofs"

    invoke-static {v10, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    const-string v6, "nofs"

    invoke-direct {p0, p1, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    const-string v6, "MountService"

    const-string v6, "Sending intent :: ACTION_MEDIA_NOFS "

    invoke-static {v10, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    new-instance v4, Landroid/content/Intent;

    .end local v4           #in:Landroid/content/Intent;
    const-string v6, "android.intent.action.MEDIA_NOFS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1405
    .restart local v4       #in:Landroid/content/Intent;
    const-string v6, "MountService"

    const-string v6, "doMountVolume :: result = OperationFailedMediaBlank"

    invoke-static {v10, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    const/4 v5, -0x3

    goto :goto_3

    .line 1407
    :cond_7
    const/16 v6, 0x193

    if-ne v2, v6, :cond_8

    .line 1408
    const-string v6, "MountService"

    const-string v6, "updating volume state media corrupt"

    invoke-static {v10, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    const-string v6, "unmountable"

    invoke-direct {p0, p1, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    const-string v6, "MountService"

    const-string v6, "Sending intent :: ACTION_MEDIA_UNMOUNTABLE "

    invoke-static {v10, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    new-instance v4, Landroid/content/Intent;

    .end local v4           #in:Landroid/content/Intent;
    const-string v6, "android.intent.action.MEDIA_UNMOUNTABLE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1415
    .restart local v4       #in:Landroid/content/Intent;
    const-string v6, "MountService"

    const-string v6, "doMountVolume :: result = OperationFailedMediaCorrupt"

    invoke-static {v10, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    const/4 v5, -0x4

    goto/16 :goto_3

    .line 1418
    :cond_8
    const-string v6, "MountService"

    const-string v6, "doMountVolume :: result = OperationFailedInternalError"

    invoke-static {v10, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    const/4 v5, -0x1

    goto/16 :goto_3
.end method

.method private doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .parameter "path"
    .parameter "method"
    .parameter "enable"

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const-string v9, "doShareUnshareVolume :: UmsEnabling is changed -> false"

    const-string v8, "MountService"

    .line 802
    const-string v2, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doShareUnshareVolume :: path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", method = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const-string v2, "ums"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 814
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Method %s not supported"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 817
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 820
    .local v1, firstPath:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "volume %sshare %s %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p3, :cond_2

    const-string v6, ""

    :goto_0
    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :goto_1
    if-eqz p3, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 831
    invoke-direct {p0, v7}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 832
    const-string v2, "MountService"

    const-string v2, "doShareUnshareVolume :: UmsEnabling is changed -> false"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_1
    return-void

    .line 820
    :cond_2
    :try_start_1
    const-string v6, "un"
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 822
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 823
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    if-eqz p3, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 824
    invoke-direct {p0, v7}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 825
    const-string v2, "MountService"

    const-string v2, "doShareUnshareVolume :: UmsEnabling is changed -> false"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_3
    const-string v2, "MountService"

    const-string v2, "doShareUnshareVolume :: Failed to share/unshare"

    invoke-static {v8, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private doUnmountVolume(Ljava/lang/String;Z)I
    .locals 12
    .parameter "path"
    .parameter "force"

    .prologue
    const/16 v11, 0x194

    const/4 v10, -0x1

    const/4 v5, 0x1

    const/4 v9, 0x0

    const-string v8, "MountService"

    .line 1447
    const-string v3, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doUnmountVolume :: path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", force = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v11

    .line 1517
    :goto_0
    return v3

    .line 1459
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 1463
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1464
    sput-boolean v5, Lcom/android/server/MountService;->mShowSafeUnmountNotificationWhenUnmountedSd:Z

    .line 1470
    :goto_1
    sget-boolean v3, Lcom/android/server/StorageFeature;->INSTALLED_USBHOST_DISK:Z

    if-eqz v3, :cond_2

    .line 1472
    invoke-static {}, Landroid/os/Environment;->isUsbStorageConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1473
    const-string v3, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doUnmountVolume :: Connected the UsbStorage mUss = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/MountService;->mUss:Lcom/android/server/UsbStorageService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1477
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mUss:Lcom/android/server/UsbStorageService;

    if-nez v3, :cond_1

    .line 1478
    const-string v3, "usbstorage"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/android/server/UsbStorageService;

    iput-object v3, p0, Lcom/android/server/MountService;->mUss:Lcom/android/server/UsbStorageService;

    .line 1480
    :cond_1
    iget-object v3, p0, Lcom/android/server/MountService;->mUss:Lcom/android/server/UsbStorageService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/UsbStorageService;->unmountVolume(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1492
    :cond_2
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    iget-object v3, v3, Lcom/android/server/MountService$VolumeList;->targeting_prefer_asec_path:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1493
    iget-object v3, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/PackageManagerService;

    invoke-virtual {v3, v9, v9}, Lcom/android/server/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 1497
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "volume unmount %s%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    if-eqz p2, :cond_5

    const-string v7, " force"

    :goto_2
    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1500
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1501
    :try_start_2
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 1502
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1503
    :try_start_3
    const-string v3, "MountService"

    const-string v4, "doUnmountVolume :: result = OperationSucceeded"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_1

    move v3, v9

    .line 1504
    goto/16 :goto_0

    .line 1466
    :cond_4
    sput-boolean v5, Lcom/android/server/MountService;->mShowSafeUnmountNotificationWhenUnmounted:Z

    goto/16 :goto_1

    .line 1481
    :catch_0
    move-exception v3

    move-object v2, v3

    .local v2, rex:Ljava/lang/Exception;
    move v3, v10

    .line 1482
    goto/16 :goto_0

    .line 1497
    .end local v2           #rex:Ljava/lang/Exception;
    :cond_5
    :try_start_4
    const-string v7, ""
    :try_end_4
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 1502
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1505
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 1508
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 1509
    .local v0, code:I
    if-ne v0, v11, :cond_6

    .line 1510
    const-string v3, "MountService"

    const-string v3, "doUnmountVolume :: result = OperationFailedStorageNotMounted"

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    const/4 v3, -0x5

    goto/16 :goto_0

    .line 1512
    :cond_6
    const/16 v3, 0x195

    if-ne v0, v3, :cond_7

    .line 1513
    const-string v3, "MountService"

    const-string v3, "doUnmountVolume :: result = OperationFailedStorageBusy"

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    const/4 v3, -0x7

    goto/16 :goto_0

    .line 1516
    :cond_7
    const-string v3, "MountService"

    const-string v3, "doUnmountVolume :: result = OperationFailedInternalError"

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v10

    .line 1517
    goto/16 :goto_0
.end method

.method private getDeviceDriverPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "path"
    .parameter "with"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v12, "getDeviceDriverPath :: Unexpected response code %d"

    const-string v11, ""

    .line 3650
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "volume devpath %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3651
    .local v2, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3652
    .local v3, tok:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3653
    .local v0, code:I
    const/16 v4, 0xd7

    if-eq v0, v4, :cond_0

    .line 3654
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "getDeviceDriverPath :: Unexpected response code %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3664
    .end local v0           #code:I
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 3665
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 3666
    .restart local v0       #code:I
    const/16 v4, 0x196

    if-ne v0, v4, :cond_2

    .line 3667
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "getDeviceDriverPath :: can\'t get path \'%s\'"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object p1, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3657
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #tok:[Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v4, "null"

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3658
    const-string v4, "MountService"

    const-string v5, "getDeviceDriverPath :: vold can not get path or before mount"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    new-instance v4, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3672
    .end local v0           #code:I
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    :goto_0
    return-object v4

    .line 3662
    .restart local v0       #code:I
    .restart local v2       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #tok:[Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sys"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/device"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3671
    .end local v0           #code:I
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 3672
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v4, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3669
    .restart local v0       #code:I
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "getDeviceDriverPath :: Unexpected response code %d"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v12, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private final getStroageInformation(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "path"

    .prologue
    const/16 v6, 0xff

    const/4 v7, 0x0

    const-string v5, "MountService"

    const-string v5, ""

    .line 3125
    new-array v0, v6, [C

    .line 3126
    .local v0, buffer:[C
    const/4 v4, 0x0

    .line 3127
    .local v4, len:I
    const/4 v2, 0x0

    .line 3130
    .local v2, file:Ljava/io/FileReader;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3131
    .end local v2           #file:Ljava/io/FileReader;
    .local v3, file:Ljava/io/FileReader;
    const/4 v5, 0x0

    const/16 v6, 0xff

    :try_start_1
    invoke-virtual {v3, v0, v5, v6}, Ljava/io/FileReader;->read([CII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result v4

    .line 3141
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 3146
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0, v7, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v2, v3

    .end local v3           #file:Ljava/io/FileReader;
    .restart local v2       #file:Ljava/io/FileReader;
    :cond_1
    :goto_1
    return-object v5

    .line 3133
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 3134
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStroageInformation -> Cann\'t load the files \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3135
    new-instance v5, Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3141
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 3142
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    goto :goto_1

    .line 3136
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 3137
    .local v1, e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v5, "MountService"

    const-string v6, ""

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3138
    new-instance v5, Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3141
    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 3140
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 3141
    :goto_4
    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 3140
    :cond_2
    :goto_5
    throw v5

    .line 3142
    :catch_3
    move-exception v6

    goto :goto_5

    .end local v2           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    :catch_4
    move-exception v5

    goto :goto_0

    .line 3140
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #file:Ljava/io/FileReader;
    .restart local v2       #file:Ljava/io/FileReader;
    goto :goto_4

    .line 3136
    .end local v2           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    :catch_5
    move-exception v5

    move-object v1, v5

    move-object v2, v3

    .end local v3           #file:Ljava/io/FileReader;
    .restart local v2       #file:Ljava/io/FileReader;
    goto :goto_3

    .line 3133
    .end local v2           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    :catch_6
    move-exception v5

    move-object v1, v5

    move-object v2, v3

    .end local v3           #file:Ljava/io/FileReader;
    .restart local v2       #file:Ljava/io/FileReader;
    goto :goto_2
.end method

.method private getUmsDisabling()Z
    .locals 2

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1845
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/MountService;->mUmsDisabling:Z

    monitor-exit v0

    return v1

    .line 1846
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getUmsEnabling()Z
    .locals 2

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1855
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    monitor-exit v0

    return v1

    .line 1856
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isEncryptionEnabled(Ljava/lang/String;)Z
    .locals 13
    .parameter "path"

    .prologue
    .line 3201
    const-string v8, "crypto encrypted %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3205
    .local v0, cmd:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v8, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 3211
    .local v6, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3212
    .local v4, line:Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3213
    .local v7, tok:[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x2

    if-ge v8, v9, :cond_0

    .line 3214
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Malformed response to volume encrypted "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    const/4 v8, 0x0

    .line 3238
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #tok:[Ljava/lang/String;
    :goto_0
    return v8

    .line 3206
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 3207
    .local v2, ex:Lcom/android/server/NativeDaemonConnectorException;
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to read response to volume encrypted "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3208
    const/4 v8, 0x0

    goto :goto_0

    .line 3220
    .end local v2           #ex:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #tok:[Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    :try_start_1
    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 3225
    .local v1, code:I
    const/16 v8, 0x12c

    if-ne v1, v8, :cond_2

    .line 3226
    const-string v8, "enabled"

    const/4 v9, 0x2

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3227
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isEncryptionEnabled :: path = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", result = true"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    const/4 v8, 0x1

    goto :goto_0

    .line 3221
    .end local v1           #code:I
    :catch_1
    move-exception v8

    move-object v5, v8

    .line 3222
    .local v5, nfe:Ljava/lang/NumberFormatException;
    const-string v8, "MountService"

    const-string v9, "isEncryptionEnabled :: Error parsing code %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    aget-object v12, v7, v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3223
    const/4 v8, 0x0

    goto :goto_0

    .line 3230
    .end local v5           #nfe:Ljava/lang/NumberFormatException;
    .restart local v1       #code:I
    :cond_1
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isEncryptionEnabled :: path = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", result = false"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 3233
    :cond_2
    const-string v8, "MountService"

    const-string v9, "isEncryptionEnabled :: Unexpected response code %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 3237
    .end local v1           #code:I
    .end local v4           #line:Ljava/lang/String;
    .end local v7           #tok:[Ljava/lang/String;
    :cond_3
    const-string v8, "MountService"

    const-string v9, "isEncryptionEnabled :: Got an empty response"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3238
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .locals 4
    .parameter "packageName"
    .parameter "callerUid"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2530
    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_0

    move v1, v3

    .line 2545
    :goto_0
    return v1

    .line 2534
    :cond_0
    if-nez p1, :cond_1

    move v1, v2

    .line 2535
    goto :goto_0

    .line 2538
    :cond_1
    iget-object v1, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/PackageManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/PackageManagerService;->getPackageUid(Ljava/lang/String;)I

    move-result v0

    .line 2545
    .local v0, packageUid:I
    if-ne p2, v0, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private isUsbMassStorageEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "call"

    .prologue
    const/4 v3, 0x1

    const-string v4, "ums"

    .line 1987
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1988
    const/4 v0, 0x0

    .line 1989
    .local v0, bRet:Z
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 1999
    :goto_0
    return v1

    .line 1992
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ums"

    invoke-direct {p0, v1, v4}, Lcom/android/server/MountService;->doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1993
    if-eqz v0, :cond_1

    move v1, v3

    goto :goto_0

    .line 1995
    :cond_1
    sget-boolean v1, Lcom/android/server/StorageFeature;->INSTALLED_SECOND_DISK:Z

    if-eqz v1, :cond_2

    .line 1996
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ums"

    invoke-direct {p0, v1, v4}, Lcom/android/server/MountService;->doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1997
    if-eqz v0, :cond_2

    move v1, v3

    goto :goto_0

    .line 1999
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVolumeStateShared()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const-string v5, "shared"

    .line 1138
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    .line 1150
    :goto_0
    return v2

    .line 1142
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1143
    .local v0, firstPath:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "shared"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    .line 1145
    :cond_1
    sget-boolean v2, Lcom/android/server/StorageFeature;->INSTALLED_SECOND_DISK:Z

    if-eqz v2, :cond_2

    .line 1146
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1147
    .local v1, secondPath:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "shared"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_0

    .line 1150
    .end local v1           #secondPath:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private notifyShareAvailabilityChange(Ljava/lang/String;Z)V
    .locals 8
    .parameter "method"
    .parameter "avail"

    .prologue
    const/4 v7, 0x1

    const-string v6, "MountService"

    .line 1587
    const-string v4, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyShareAvailabilityChange :: method = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", avail = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    const-string v4, "ums"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1589
    const-string v4, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring unsupported share method {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    :cond_0
    :goto_0
    return-void

    .line 1593
    :cond_1
    iget-object v4, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1594
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v2, v5, v7

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 1595
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1597
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_1
    iget-object v5, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v5, p2}, Landroid/os/storage/IMountServiceListener;->onUsbMassStorageConnectionChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1594
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1598
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 1599
    .local v3, rex:Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "MountService"

    const-string v6, "Listener dead"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1605
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    .end local v3           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1601
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 1602
    .local v1, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v5, "MountService"

    const-string v6, "Listener failed"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1605
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1607
    iget-boolean v4, p0, Lcom/android/server/MountService;->mBooted:Z

    if-ne v4, v7, :cond_3

    .line 1608
    invoke-direct {p0, p2}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    .line 1614
    :goto_3
    if-nez p2, :cond_0

    .line 1618
    new-instance v4, Lcom/android/server/MountService$6;

    invoke-direct {v4, p0}, Lcom/android/server/MountService$6;-><init>(Lcom/android/server/MountService;)V

    invoke-virtual {v4}, Lcom/android/server/MountService$6;->start()V

    goto :goto_0

    .line 1610
    :cond_3
    iput-boolean p2, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    goto :goto_3
.end method

.method private notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 10
    .parameter "label"
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 1183
    invoke-virtual {p0, p2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1185
    .local v4, vs:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1186
    .local v0, firstPath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1188
    .local v2, secondPath:Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/StorageFeature;->INSTALLED_SECOND_DISK:Z

    if-eqz v5, :cond_0

    .line 1189
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1193
    :cond_0
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyVolumeStateChange :: label = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", oldState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p3}, Lcom/android/server/MountService;->printDebug(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p4}, Lcom/android/server/MountService;->printDebug(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const-string v3, "notifyVolumeStateChange :: Before -> "

    .line 1196
    .local v3, szLog:Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/StorageFeature;->INSTALLED_SECOND_DISK:Z

    if-eqz v5, :cond_4

    .line 1197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "First SD :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Second SD ::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1202
    :goto_0
    const-string v5, "MountService"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    const/4 v5, 0x2

    if-ne p4, v5, :cond_5

    .line 1206
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    const/4 v6, 0x1

    invoke-virtual {v5, p2, v6}, Lcom/android/server/MountService$VolumeList;->updatePending(Ljava/lang/String;Z)V

    .line 1211
    :goto_1
    const/4 v1, 0x0

    .line 1213
    .local v1, in:Landroid/content/Intent;
    const/4 v5, 0x7

    if-ne p3, v5, :cond_1

    if-eq p4, p3, :cond_1

    .line 1214
    const-string v5, "MountService"

    const-string v6, "Sending intent :: ACTION_MEDIA_UNSHARED "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iget-object v5, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_UNSHARED"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1218
    :cond_1
    const/4 v5, -0x1

    if-ne p4, v5, :cond_6

    .line 1271
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 1272
    iget-object v5, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1275
    :cond_3
    const-string v3, "notifyVolumeStateChange :: After -> "

    .line 1276
    sget-boolean v5, Lcom/android/server/StorageFeature;->INSTALLED_SECOND_DISK:Z

    if-eqz v5, :cond_d

    .line 1277
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "First SD :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Second SD ::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1281
    :goto_3
    const-string v5, "MountService"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :goto_4
    return-void

    .line 1199
    .end local v1           #in:Landroid/content/Intent;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SD ::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1208
    :cond_5
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Lcom/android/server/MountService$VolumeList;->updatePending(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1219
    .restart local v1       #in:Landroid/content/Intent;
    :cond_6
    if-eqz p4, :cond_2

    .line 1221
    const/4 v5, 0x1

    if-ne p4, v5, :cond_7

    .line 1226
    const-string v5, "bad_removal"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "nofs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "unmountable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1231
    const-string v5, "MountService"

    const-string v6, "updating volume state for media bad removal nofs and unmountable"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    const-string v5, "unmounted"

    invoke-direct {p0, p2, v5}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    const-string v5, "MountService"

    const-string v6, "Sending intent :: ACTION_MEDIA_UNMOUNTED "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    new-instance v1, Landroid/content/Intent;

    .end local v1           #in:Landroid/content/Intent;
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1       #in:Landroid/content/Intent;
    goto/16 :goto_2

    .line 1236
    :cond_7
    const/4 v5, 0x2

    if-eq p4, v5, :cond_2

    .line 1237
    const/4 v5, 0x3

    if-ne p4, v5, :cond_8

    .line 1238
    const-string v5, "MountService"

    const-string v6, "updating volume state checking"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    const-string v5, "checking"

    invoke-direct {p0, p2, v5}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    const-string v5, "MountService"

    const-string v6, "Sending intent :: ACTION_MEDIA_CHECKING"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    new-instance v1, Landroid/content/Intent;

    .end local v1           #in:Landroid/content/Intent;
    const-string v5, "android.intent.action.MEDIA_CHECKING"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1       #in:Landroid/content/Intent;
    goto/16 :goto_2

    .line 1242
    :cond_8
    const/4 v5, 0x4

    if-ne p4, v5, :cond_9

    .line 1243
    const-string v5, "MountService"

    const-string v6, "updating volume state mounted"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const-string v5, "mounted"

    invoke-direct {p0, p2, v5}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    new-instance v1, Landroid/content/Intent;

    .end local v1           #in:Landroid/content/Intent;
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1246
    .restart local v1       #in:Landroid/content/Intent;
    const-string v5, "read-only"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1247
    const-string v5, "MountService"

    const-string v6, "Sending intent :: ACTION_MEDIA_MOUNTED"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1248
    :cond_9
    const/4 v5, 0x5

    if-ne p4, v5, :cond_a

    .line 1249
    new-instance v1, Landroid/content/Intent;

    .end local v1           #in:Landroid/content/Intent;
    const-string v5, "android.intent.action.MEDIA_EJECT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1250
    .restart local v1       #in:Landroid/content/Intent;
    const-string v5, "MountService"

    const-string v6, "Sending intent :: ACTION_MEDIA_EJECT"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1251
    :cond_a
    const/4 v5, 0x6

    if-eq p4, v5, :cond_2

    .line 1252
    const/4 v5, 0x7

    if-ne p4, v5, :cond_b

    .line 1253
    const-string v5, "MountService"

    const-string v6, "Updating volume state media mounted"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    const-string v5, "unmounted"

    invoke-direct {p0, p2, v5}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    new-instance v1, Landroid/content/Intent;

    .end local v1           #in:Landroid/content/Intent;
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1257
    .restart local v1       #in:Landroid/content/Intent;
    const-string v5, "MountService"

    const-string v6, "Sending intent :: ACTION_MEDIA_UNMOUNTED"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    iget-object v5, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1260
    const-string v5, "MountService"

    const-string v6, "Updating media shared"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    const-string v5, "shared"

    invoke-direct {p0, p2, v5}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    new-instance v1, Landroid/content/Intent;

    .end local v1           #in:Landroid/content/Intent;
    const-string v5, "android.intent.action.MEDIA_SHARED"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1263
    .restart local v1       #in:Landroid/content/Intent;
    const-string v5, "MountService"

    const-string v6, "Sending intent :: ACTION_MEDIA_SHARED"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1264
    :cond_b
    const/16 v5, 0x8

    if-ne p4, v5, :cond_c

    .line 1265
    const-string v5, "MountService"

    const-string v6, "Live shared mounts not supported yet!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1268
    :cond_c
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled VolumeState {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1279
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SD ::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3
.end method

.method private onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 24
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 988
    const/4 v12, 0x0

    .line 990
    .local v12, in:Landroid/content/Intent;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 991
    .local v7, builder:Ljava/lang/StringBuilder;
    const-string v19, "onEvent::"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " raw= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    if-eqz p3, :cond_0

    .line 994
    const-string v19, " cooked = "

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    move-object/from16 v5, p3

    .local v5, arr$:[Ljava/lang/String;
    array-length v14, v5

    .local v14, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v14, :cond_0

    aget-object v18, v5, v11

    .line 996
    .local v18, str:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 999
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v14           #len$:I
    .end local v18           #str:Ljava/lang/String;
    :cond_0
    const-string v19, "MountService"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const/16 v19, 0x25d

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 1007
    const/16 v19, 0x2

    aget-object v19, p3, v19

    const/16 v20, 0x3

    aget-object v20, p3, v20

    const/16 v21, 0x7

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    const/16 v22, 0xa

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1130
    :goto_1
    if-eqz v12, :cond_1

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1133
    :cond_1
    const/16 v19, 0x1

    :goto_2
    return v19

    .line 1010
    :cond_2
    const/16 v19, 0x26c

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 1012
    const/4 v6, 0x0

    .line 1013
    .local v6, avail:Z
    const/16 v19, 0x5

    aget-object v19, p3, v19

    const-string v20, "available"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1014
    const/4 v6, 0x1

    .line 1016
    :cond_3
    const/16 v19, 0x3

    aget-object v19, p3, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1017
    .end local v6           #avail:Z
    :cond_4
    const/16 v19, 0x276

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    const/16 v19, 0x277

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    const/16 v19, 0x278

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 1023
    :cond_5
    const/16 v19, 0x2

    aget-object v13, p3, v19

    .line 1024
    .local v13, label:Ljava/lang/String;
    const/16 v19, 0x3

    aget-object v17, p3, v19

    .line 1025
    .local v17, path:Ljava/lang/String;
    const/4 v15, -0x1

    .line 1026
    .local v15, major:I
    const/16 v16, -0x1

    .line 1029
    .local v16, minor:I
    const/16 v19, 0x6

    :try_start_0
    aget-object v19, p3, v19

    const/16 v20, 0x1

    const/16 v21, 0x6

    aget-object v21, p3, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1

    sub-int v21, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1030
    .local v8, devComp:Ljava/lang/String;
    const-string v19, ":"

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1031
    .local v9, devTok:[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v9, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1032
    const/16 v19, 0x1

    aget-object v19, v9, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 1037
    .end local v8           #devComp:Ljava/lang/String;
    .end local v9           #devTok:[Ljava/lang/String;
    :goto_3
    const/16 v19, 0x276

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 1038
    new-instance v19, Lcom/android/server/MountService$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService$4;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/MountService$4;->start()V

    goto/16 :goto_1

    .line 1033
    :catch_0
    move-exception v19

    move-object/from16 v10, v19

    .line 1034
    .local v10, ex:Ljava/lang/Exception;
    const-string v19, "MountService"

    const-string v20, "Failed to parse major/minor"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1077
    .end local v10           #ex:Ljava/lang/Exception;
    :cond_6
    const/16 v19, 0x277

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 1079
    new-instance v19, Lcom/android/server/MountService$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService$5;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/MountService$5;->start()V

    .line 1097
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "bad_removal"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1098
    const/16 v19, 0x1

    goto/16 :goto_2

    .line 1101
    :cond_7
    const-string v19, "MountService"

    const-string v20, "Sending unmounted event first"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const-string v19, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    new-instance v12, Landroid/content/Intent;

    .end local v12           #in:Landroid/content/Intent;
    const-string v19, "android.intent.action.MEDIA_UNMOUNTED"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "file://"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object v0, v12

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1104
    .restart local v12       #in:Landroid/content/Intent;
    const-string v19, "MountService"

    const-string v20, "Sending intent :: ACTION_MEDIA_UNMOUNTED "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1107
    const-string v19, "MountService"

    const-string v20, "Sending media removed"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const-string v19, "removed"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    const-string v19, "MountService"

    const-string v20, "Sending intent :: ACTION_MEDIA_REMOVED "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    new-instance v12, Landroid/content/Intent;

    .end local v12           #in:Landroid/content/Intent;
    const-string v19, "android.intent.action.MEDIA_REMOVED"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "file://"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object v0, v12

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v12       #in:Landroid/content/Intent;
    goto/16 :goto_1

    .line 1111
    :cond_8
    const/16 v19, 0x278

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 1112
    const-string v19, "MountService"

    const-string v20, "Sending unmounted event first"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const-string v19, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    new-instance v12, Landroid/content/Intent;

    .end local v12           #in:Landroid/content/Intent;
    const-string v19, "android.intent.action.MEDIA_UNMOUNTED"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "file://"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object v0, v12

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1116
    .restart local v12       #in:Landroid/content/Intent;
    const-string v19, "MountService"

    const-string v20, "Sending intent :: ACTION_MEDIA_UNMOUNTED "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1119
    const-string v19, "MountService"

    const-string v20, "Sending media bad removal"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    const-string v19, "bad_removal"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    new-instance v12, Landroid/content/Intent;

    .end local v12           #in:Landroid/content/Intent;
    const-string v19, "android.intent.action.MEDIA_BAD_REMOVAL"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "file://"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object v0, v12

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1122
    .restart local v12       #in:Landroid/content/Intent;
    const-string v19, "MountService"

    const-string v20, "Sending intent :: ACTION_MEDIA_BAD_REMOVAL "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1124
    :cond_9
    const-string v19, "MountService"

    const-string v20, "Unknown code {%d}"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1127
    .end local v13           #label:Ljava/lang/String;
    .end local v15           #major:I
    .end local v16           #minor:I
    .end local v17           #path:Ljava/lang/String;
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_2
.end method

.method private final printDebug(I)Ljava/lang/String;
    .locals 2
    .parameter "state"

    .prologue
    .line 1155
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1156
    const-string v0, "init"

    .line 1179
    .local v0, ret:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1157
    .end local v0           #ret:Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    .line 1158
    const-string v0, "NoMedia"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 1159
    .end local v0           #ret:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 1160
    const-string v0, "Idle"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 1161
    .end local v0           #ret:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 1162
    const-string v0, "Pending"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 1163
    .end local v0           #ret:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 1164
    const-string v0, "Checking"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 1165
    .end local v0           #ret:Ljava/lang/String;
    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 1166
    const-string v0, "Mounted"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 1167
    .end local v0           #ret:Ljava/lang/String;
    :cond_5
    const/4 v1, 0x5

    if-ne p1, v1, :cond_6

    .line 1168
    const-string v0, "Unmounting"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 1169
    .end local v0           #ret:Ljava/lang/String;
    :cond_6
    const/4 v1, 0x6

    if-ne p1, v1, :cond_7

    .line 1170
    const-string v0, "Formatting"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 1171
    .end local v0           #ret:Ljava/lang/String;
    :cond_7
    const/4 v1, 0x7

    if-ne p1, v1, :cond_8

    .line 1172
    const-string v0, "Shared"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 1173
    .end local v0           #ret:Ljava/lang/String;
    :cond_8
    const/16 v1, 0x8

    if-ne p1, v1, :cond_9

    .line 1174
    const-string v0, "SharedMnt"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 1176
    .end local v0           #ret:Ljava/lang/String;
    :cond_9
    const-string v0, "unknown"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0
.end method

.method private removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .locals 4
    .parameter "obbState"

    .prologue
    .line 2655
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2656
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2657
    .local v1, obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-eqz v1, :cond_1

    .line 2658
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2659
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->unlink()V

    .line 2661
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2662
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2666
    :cond_1
    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2667
    return-void
.end method

.method private sendUmsIntent(Z)V
    .locals 3
    .parameter "c"

    .prologue
    const-string v1, "MountService"

    .line 1670
    if-eqz p1, :cond_0

    .line 1671
    const-string v0, "MountService"

    const-string v0, "Sending intent :: ACTION_UMS_CONNECTED "

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :goto_0
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string v2, "android.intent.action.UMS_CONNECTED"

    :goto_1
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1678
    return-void

    .line 1673
    :cond_0
    const-string v0, "MountService"

    const-string v0, "Sending intent :: ACTION_UMS_DISCONNECTED "

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1676
    :cond_1
    const-string v2, "android.intent.action.UMS_DISCONNECTED"

    goto :goto_1
.end method

.method private setInitPlayNotificationSounds()V
    .locals 3

    .prologue
    const-string v2, "1"

    .line 3509
    const-string v0, "persist.service.mount.playsnd"

    const-string v1, "1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mNotificationPlaySound:Z

    .line 3510
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInitPlayNotificationSounds :: get default value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/MountService;->mNotificationPlaySound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3511
    return-void
.end method

.method private setUmsDisabling(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1849
    iget-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1850
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsDisabling:Z

    .line 1851
    monitor-exit v0

    .line 1852
    return-void

    .line 1851
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setUmsEnabling(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1861
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    .line 1862
    monitor-exit v0

    .line 1863
    return-void

    .line 1862
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "path"
    .parameter "state"

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    const-string v9, "MountService"

    .line 837
    const-string v6, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePublicVolumeState :: path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    invoke-virtual {v6, p1}, Lcom/android/server/MountService$VolumeList;->isVaildVolumePath(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 841
    const-string v6, "MountService"

    const-string v6, "updatePublicVolumeState -> wrong Path.."

    invoke-static {v9, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :goto_0
    return-void

    .line 845
    :cond_0
    const/4 v3, 0x0

    .line 847
    .local v3, legacyState:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 848
    const-string v6, "MountService"

    const-string v6, "Duplicate state transition (%s -> %s) and path is %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v8

    aput-object p2, v7, v10

    const/4 v8, 0x2

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 871
    :cond_1
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    iget-object v6, v6, Lcom/android/server/MountService$VolumeList;->targeting_prefer_asec_path:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 872
    const-string v6, "unmounted"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 873
    const-string v6, "MountService"

    const-string v6, "mPms.updateExternalMediaStatus(false, false)"

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object v6, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/PackageManagerService;

    invoke-virtual {v6, v8, v8}, Lcom/android/server/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 880
    iget-object v6, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v7, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8, p1}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 888
    :cond_2
    :goto_1
    move-object v4, v3

    .line 889
    .local v4, oldState:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/MountService$VolumeList;->updateVolumeState(Ljava/lang/String;Ljava/lang/String;)Z

    .line 891
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 892
    :try_start_0
    iget-object v7, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v2, v7, v10

    .local v2, i:I
    :goto_2
    if-ltz v2, :cond_4

    .line 893
    iget-object v7, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_1
    iget-object v7, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v7, p1, v4, p2}, Landroid/os/storage/IMountServiceListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 892
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 881
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    .end local v4           #oldState:Ljava/lang/String;
    :cond_3
    const-string v6, "mounted"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 882
    const-string v6, "MountService"

    const-string v6, "mPms.updateExternalMediaStatus(ture, false)"

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object v6, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/PackageManagerService;

    invoke-virtual {v6, v10, v8}, Lcom/android/server/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_1

    .line 896
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    .restart local v4       #oldState:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 897
    .local v5, rex:Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "MountService"

    const-string v8, "Listener dead"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v7, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 903
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    .end local v5           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 899
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 900
    .local v1, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v7, "MountService"

    const-string v8, "Listener failed"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 903
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_4
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private validatePermission(Ljava/lang/String;)V
    .locals 4
    .parameter "perm"

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1682
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires %s permission"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1684
    :cond_0
    return-void
.end method

.method private waitForReady()V
    .locals 3

    .prologue
    .line 690
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/MountService;->mReady:Z

    if-nez v1, :cond_0

    .line 691
    const/4 v0, 0x5

    .local v0, retries:I
    :goto_1
    if-lez v0, :cond_2

    .line 692
    iget-boolean v1, p0, Lcom/android/server/MountService;->mReady:Z

    if-eqz v1, :cond_1

    .line 699
    .end local v0           #retries:I
    :cond_0
    return-void

    .line 695
    .restart local v0       #retries:I
    :cond_1
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 691
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 697
    :cond_2
    const-string v1, "MountService"

    const-string v2, "waitForReady :: Waiting too long for mReady!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private warnOnNotMounted()V
    .locals 3

    .prologue
    .line 2149
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    iget-object v1, v1, Lcom/android/server/MountService$VolumeList;->targeting_prefer_asec_path:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2150
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2151
    const-string v1, "MountService"

    const-string v2, "warnOnNotMounted :: called when storage not mounted"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    :cond_0
    return-void
.end method


# virtual methods
.method public createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .parameter "id"
    .parameter "sizeMb"
    .parameter "fstype"
    .parameter "key"
    .parameter "ownerUid"

    .prologue
    .line 2240
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    iget-object v1, v0, Lcom/android/server/MountService$VolumeList;->targeting_prefer_asec_path:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/MountService;->createSecureContainer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public createSecureContainer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .parameter "path"
    .parameter "id"
    .parameter "sizeMb"
    .parameter "fstype"
    .parameter "key"
    .parameter "ownerUid"

    .prologue
    .line 2217
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " :::: createSecureContainer :: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sizeMb = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fstype = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ownerUid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    const-string v3, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2219
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2222
    const/4 v2, 0x0

    .line 2223
    .local v2, rc:I
    const-string v3, "asec create %s %d %s %s %d %s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p4, v4, v5

    const/4 v5, 0x3

    aput-object p5, v4, v5

    const/4 v5, 0x4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2225
    .local v0, cmd:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2230
    :goto_0
    if-nez v2, :cond_0

    .line 2231
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2233
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v5, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2234
    monitor-exit v3

    .line 2236
    :cond_0
    return v2

    .line 2226
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 2227
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v2, -0x1

    goto :goto_0

    .line 2234
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public destroySecureContainer(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 8
    .parameter "path"
    .parameter "id"
    .parameter "force"

    .prologue
    .line 2266
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " :::: destroySecureContainer :: id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", force = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    const-string v3, "android.permission.ASEC_DESTROY"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2268
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2277
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 2279
    const/4 v2, 0x0

    .line 2281
    .local v2, rc:I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec destroy %s %s %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    if-eqz p3, :cond_2

    const-string v7, "force"

    :goto_0
    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2291
    :goto_1
    if-nez v2, :cond_1

    .line 2292
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2293
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v5, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2294
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v5, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2296
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2299
    :cond_1
    return v2

    .line 2281
    :cond_2
    :try_start_2
    const-string v7, "graceful"
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2282
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 2283
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2284
    .local v0, code:I
    const/16 v3, 0x195

    if-ne v0, v3, :cond_3

    .line 2285
    const/4 v2, -0x7

    goto :goto_1

    .line 2287
    :cond_3
    const/4 v2, -0x1

    goto :goto_1

    .line 2296
    .end local v0           #code:I
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method public destroySecureContainer(Ljava/lang/String;Z)I
    .locals 1
    .parameter "id"
    .parameter "force"

    .prologue
    .line 2303
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    iget-object v0, v0, Lcom/android/server/MountService$VolumeList;->targeting_prefer_asec_path:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/MountService;->destroySecureContainer(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const-string v9, "android.permission.DUMP"

    .line 3093
    iget-object v7, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 3094
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: can\'t dump ActivityManager from from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " without permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3122
    .end local p0
    :goto_0
    return-void

    .line 3100
    .restart local p0
    :cond_0
    iget-object v8, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v8

    .line 3101
    :try_start_0
    const-string v7, "  mObbMounts:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3103
    iget-object v7, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3104
    .local v0, binders:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3106
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    const-string v7, "    Key="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3107
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3108
    .local v6, obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/MountService$ObbState;

    .line 3109
    .local v5, obbState:Lcom/android/server/MountService$ObbState;
    const-string v7, "      "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/MountService$ObbState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3121
    .end local v0           #binders:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #obbState:Lcom/android/server/MountService$ObbState;
    .end local v6           #obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    .end local p0
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 3113
    .restart local v0       #binders:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .restart local p0
    :cond_2
    :try_start_1
    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3114
    const-string v7, "  mObbPathToStateMap:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3115
    iget-object v7, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 3116
    .end local p0
    .local v4, maps:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3117
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3118
    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    const-string v7, "    "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3119
    const-string v7, " -> "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/MountService$ObbState;

    invoke-virtual {p0}, Lcom/android/server/MountService$ObbState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 3121
    .end local v2           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    :cond_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public enableShared(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1889
    iput-boolean p1, p0, Lcom/android/server/MountService;->mShared:Z

    .line 1890
    return-void
.end method

.method public encryptBatchVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .parameter "path"
    .parameter "password"
    .parameter "cid"
    .parameter "encMode"

    .prologue
    const/4 v4, 0x0

    const-string v7, "MountService"

    .line 3273
    const-string v2, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " :::: encryptBatchVolume :: path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", encMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3274
    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3275
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3277
    const-string v2, "encrypt"

    iget-object v3, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    invoke-virtual {v3, p1}, Lcom/android/server/MountService$VolumeList;->getEncryptedState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3278
    const-string v2, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encryptBatchVolume -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isn\'t permited."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3281
    :cond_0
    const-string v2, "batch"

    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/MountService;->askPermissionFakedState(Ljava/lang/String;Ljava/lang/String;I)I

    .line 3284
    const/4 v1, 0x0

    .line 3286
    .local v1, rc:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "crypto batch %s %s %d %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3290
    :goto_0
    const-string v2, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " encryptBatchVolume :: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3292
    return v1

    .line 3287
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 3288
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public encryptFormatVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "path"
    .parameter "password"
    .parameter "cid"

    .prologue
    const-string v4, "MountService"

    .line 3375
    const-string v2, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " :::: encryptFormatVolume :: path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", password = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3377
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3379
    const-string v2, "encrypt"

    iget-object v3, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    invoke-virtual {v3, p1}, Lcom/android/server/MountService$VolumeList;->getEncryptedState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3380
    const-string v2, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encryptFormatVolume -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isn\'t permited."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    :cond_0
    const/4 v1, 0x0

    .line 3386
    .local v1, rc:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "crypto format %s %s %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3391
    :goto_0
    return v1

    .line 3387
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 3388
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public encryptMountVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "path"
    .parameter "password"
    .parameter "cid"

    .prologue
    const-string v4, "MountService"

    .line 3296
    const-string v2, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " :::: encryptMountVolume :: path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3297
    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3298
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3300
    const-string v2, "encrypt"

    iget-object v3, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    invoke-virtual {v3, p1}, Lcom/android/server/MountService$VolumeList;->getEncryptedState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3301
    const-string v2, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encryptMountVolume -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isn\'t permited."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3304
    :cond_0
    sget-boolean v2, Lcom/android/server/StorageFeature;->INSTALLED_SECOND_DISK:Z

    if-eqz v2, :cond_2

    .line 3305
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3306
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 3307
    .local v0, firstPath:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3308
    .local v1, firstState:Ljava/lang/String;
    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "removed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "shared"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "unmountable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3313
    :cond_1
    const-string v2, "MountService"

    const-string v2, "encryptMountVolume -> first sdcard is not ready. "

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3314
    const/4 v2, -0x6

    .line 3319
    .end local v0           #firstPath:Ljava/lang/String;
    .end local v1           #firstState:Ljava/lang/String;
    :goto_0
    return v2

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doEncryptMountVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .locals 1
    .parameter "id"

    .prologue
    .line 2262
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    iget-object v0, v0, Lcom/android/server/MountService$VolumeList;->targeting_prefer_asec_path:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/MountService;->finalizeSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public finalizeSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "path"
    .parameter "id"

    .prologue
    .line 2244
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " :::: finalizeSecureContainer :: id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2248
    const/4 v1, 0x0

    .line 2250
    .local v1, rc:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec finalize %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2258
    :goto_0
    return v1

    .line 2255
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2256
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public finishMediaUpdate()V
    .locals 2

    .prologue
    .line 2526
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2527
    return-void
.end method

.method public formatVolume(Ljava/lang/String;)I
    .locals 4
    .parameter "path"

    .prologue
    const-string v3, "MountService"

    .line 2094
    const-string v1, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " :::: formatVolume :: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    const-string v1, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2096
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2108
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/MountService;->isEncryptionEnabled(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2109
    const-string v1, "format"

    invoke-direct {p0, p1, v1}, Lcom/android/server/MountService;->actionStorageAskPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2110
    .local v0, Ret:I
    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    .line 2111
    const-string v1, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "formatVolume :: actionStorageAskPermission result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 2116
    .end local v0           #Ret:I
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doFormatVolume(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getAsecVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "path"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v13, "mounted"

    const-string v12, "removed"

    const-string v11, "MountService"

    .line 2496
    const-string v7, "volume aseced %s"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object p1, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2497
    .local v0, cmd:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v7, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2499
    .local v5, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2500
    .local v3, line:Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2503
    .local v6, tok:[Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2508
    .local v1, code:I
    const/16 v7, 0xd6

    if-ne v1, v7, :cond_1

    .line 2509
    const/4 v7, 0x2

    aget-object v7, v6, v7

    const-string v8, "mounted"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2510
    const-string v7, "MountService"

    const-string v7, "getAsecVolumeState :: result = mounted"

    invoke-static {v11, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    const-string v7, "mounted"

    move-object v7, v13

    .line 2521
    .end local v1           #code:I
    .end local v3           #line:Ljava/lang/String;
    .end local v6           #tok:[Ljava/lang/String;
    :goto_0
    return-object v7

    .line 2504
    .restart local v3       #line:Ljava/lang/String;
    .restart local v6       #tok:[Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 2505
    .local v4, nfe:Ljava/lang/NumberFormatException;
    const-string v7, "MountService"

    const-string v7, "getAsecVolumeState :: Error parsing code %s"

    new-array v8, v9, [Ljava/lang/Object;

    aget-object v9, v6, v10

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    const-string v7, "removed"

    move-object v7, v12

    goto :goto_0

    .line 2513
    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    .restart local v1       #code:I
    :cond_0
    const-string v7, "MountService"

    const-string v7, "getAsecVolumeState :: result = unmounted"

    invoke-static {v11, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    const-string v7, "removed"

    move-object v7, v12

    goto :goto_0

    .line 2516
    :cond_1
    const-string v7, "MountService"

    const-string v7, "getAsecVolumeState :: Unexpected response code %d"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    const-string v7, "removed"

    move-object v7, v12

    goto :goto_0

    .line 2520
    .end local v1           #code:I
    .end local v3           #line:Ljava/lang/String;
    .end local v6           #tok:[Ljava/lang/String;
    :cond_2
    const-string v7, "MountService"

    const-string v7, "getAsecVolumeState :: Got an empty response"

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    const-string v7, "removed"

    move-object v7, v12

    goto :goto_0
.end method

.method public getDeviceDriverPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 3644
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " :::: getDevicePath :: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3645
    const-string v0, "root"

    invoke-direct {p0, p1, v0}, Lcom/android/server/MountService;->getDeviceDriverPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "path"

    .prologue
    .line 3396
    const-string v8, "crypto status %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3400
    .local v0, cmd:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v8, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 3406
    .local v6, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3407
    .local v4, line:Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3408
    .local v7, tok:[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x2

    if-ge v8, v9, :cond_0

    .line 3409
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Malformed response to encrypted volume status"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    new-instance v8, Ljava/lang/String;

    const-string v9, ""

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3429
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #tok:[Ljava/lang/String;
    :goto_0
    return-object v8

    .line 3401
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 3402
    .local v2, ex:Lcom/android/server/NativeDaemonConnectorException;
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to read response to encrypted volume status"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3403
    new-instance v8, Ljava/lang/String;

    const-string v9, ""

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3415
    .end local v2           #ex:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #tok:[Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    :try_start_1
    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 3420
    .local v1, code:I
    const/16 v8, 0x12d

    if-ne v1, v8, :cond_1

    .line 3421
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getEncryptStatus :: path = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3422
    const/4 v8, 0x2

    aget-object v8, v7, v8

    goto :goto_0

    .line 3416
    .end local v1           #code:I
    :catch_1
    move-exception v8

    move-object v5, v8

    .line 3417
    .local v5, nfe:Ljava/lang/NumberFormatException;
    const-string v8, "MountService"

    const-string v9, "getEncryptStatus :: Error parsing code %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    aget-object v12, v7, v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3418
    new-instance v8, Ljava/lang/String;

    const-string v9, ""

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3424
    .end local v5           #nfe:Ljava/lang/NumberFormatException;
    .restart local v1       #code:I
    :cond_1
    const-string v8, "MountService"

    const-string v9, "getEncryptStatus :: Unexpected response code %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3425
    new-instance v8, Ljava/lang/String;

    const-string v9, ""

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3428
    .end local v1           #code:I
    .end local v4           #line:Ljava/lang/String;
    .end local v7           #tok:[Ljava/lang/String;
    :cond_2
    const-string v8, "MountService"

    const-string v9, "getEncryptStatus :: Got an empty response"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3429
    new-instance v8, Ljava/lang/String;

    const-string v9, ""

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "filename"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "Unexpected response code %d"

    .line 2549
    if-nez p1, :cond_0

    .line 2550
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "filename cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2553
    :cond_0
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2554
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2557
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "obb path %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2558
    .local v2, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2559
    .local v3, tok:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2560
    .local v0, code:I
    const/16 v4, 0xd3

    if-eq v0, v4, :cond_1

    .line 2561
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2564
    .end local v0           #code:I
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 2565
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2566
    .restart local v0       #code:I
    const/16 v4, 0x196

    if-ne v0, v4, :cond_2

    .line 2567
    const/4 v4, 0x0

    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    :goto_0
    return-object v4

    .line 2563
    .restart local v2       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #tok:[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    aget-object v4, v3, v4
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2569
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    .restart local v1       #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v11, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getPlayNotificationSounds()Z
    .locals 1

    .prologue
    .line 3514
    iget-boolean v0, p0, Lcom/android/server/MountService;->mNotificationPlaySound:Z

    return v0
.end method

.method public getSecureContainerInstalledPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "id"

    .prologue
    const-string v5, "MountService"

    .line 2475
    const-string v3, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " :::: getSecureContainerInstalledPath :: id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    const-string v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2477
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2478
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2479
    const/4 v2, 0x0

    .line 2480
    .local v2, ret:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2481
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2482
    .local v0, iter:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2483
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/MountService$PackageInstalledMap;

    .line 2484
    .local v1, map:Lcom/android/server/MountService$PackageInstalledMap;
    iget-object v4, v1, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2485
    iget-object v2, v1, Lcom/android/server/MountService$PackageInstalledMap;->InstalledPath:Ljava/lang/String;

    .line 2490
    .end local v0           #iter:Ljava/util/Iterator;
    .end local v1           #map:Lcom/android/server/MountService$PackageInstalledMap;
    :cond_1
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSecureContainerInstalledPath :: ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    monitor-exit v3

    return-object v2

    .line 2492
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getSecureContainerList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    iget-object v0, v0, Lcom/android/server/MountService$VolumeList;->targeting_prefer_asec_path:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->getSecureContainerList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecureContainerList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 14
    .parameter "path"

    .prologue
    const/4 v13, 0x0

    const-string v12, "MountService"

    .line 2155
    const-string v7, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " :::: getSecureContainerList :: path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    const-string v7, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v7}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2157
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2161
    iget-object v7, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v7

    .line 2162
    :try_start_0
    iget-object v8, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    invoke-virtual {v8, p1}, Lcom/android/server/MountService$VolumeList;->isASECMounted(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 2163
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSecureContainerList -> HashSet is not empty !!! ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2166
    .local v6, rdata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 2167
    .local v1, i:I
    iget-object v8, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2168
    .local v2, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2170
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/MountService$PackageInstalledMap;

    .line 2171
    .local v4, map:Lcom/android/server/MountService$PackageInstalledMap;
    iget-object v8, v4, Lcom/android/server/MountService$PackageInstalledMap;->InstalledPath:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2172
    iget-object v8, v4, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2173
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2176
    .end local v4           #map:Lcom/android/server/MountService$PackageInstalledMap;
    :cond_1
    new-array v8, v1, [Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    monitor-exit v7

    move-object v7, p0

    .line 2190
    .end local v1           #i:I
    .end local v2           #iter:Ljava/util/Iterator;
    .end local v6           #rdata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v7

    .line 2178
    .restart local p0
    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2182
    :try_start_1
    iget-object v7, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v8, "asec list %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x6f

    invoke-virtual {v7, v8, v9}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 2183
    .local v5, packages:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    array-length v7, v5

    if-ge v3, v7, :cond_3

    .line 2184
    const-string v7, "MountService"

    const-string v8, "getSecureContainerList -> %s:%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aget-object v11, v5, v3

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2183
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2178
    .end local v3           #j:I
    .end local v5           #packages:[Ljava/lang/String;
    .end local p0
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .restart local v3       #j:I
    .restart local v5       #packages:[Ljava/lang/String;
    .restart local p0
    :cond_3
    move-object v7, v5

    .line 2186
    goto :goto_1

    .line 2188
    .end local v3           #j:I
    .end local v5           #packages:[Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 2189
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v7, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSecureContainerList :: NativeDaemonConnectorException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    new-array v7, v13, [Ljava/lang/String;

    goto :goto_1
.end method

.method public getSecureContainerListAll()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 2199
    invoke-static {}, Landroid/os/Environment;->getInstalledStorageDirectory()[Ljava/io/File;

    move-result-object v1

    .line 2200
    .local v1, SecureDevices:[Ljava/io/File;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2202
    .local v3, arrySecurePackage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2203
    .local v4, currNum:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v8, v1

    if-ge v5, v8, :cond_1

    .line 2205
    aget-object v8, v1, v5

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/MountService;->getSecureContainerList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2206
    .local v7, packages:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    array-length v8, v7

    if-ge v6, v8, :cond_0

    .line 2207
    aget-object v8, v7, v6

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2208
    add-int/lit8 v4, v4, 0x1

    .line 2206
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2203
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2211
    .end local v6           #j:I
    .end local v7           #packages:[Ljava/lang/String;
    :cond_1
    new-array v8, v4, [Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v0, p0

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 2212
    .local v2, SecurePackages:[Ljava/lang/String;
    return-object v2
.end method

.method public getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    iget-object v0, v0, Lcom/android/server/MountService$VolumeList;->targeting_prefer_asec_path:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/MountService;->getSecureContainerPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecureContainerPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "path"
    .parameter "id"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "Unexpected response code %d"

    const-string v6, "MountService"

    .line 2440
    const-string v4, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " :::: getSecureContainerPath :: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    const-string v4, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2442
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2445
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    invoke-virtual {v4, p1}, Lcom/android/server/MountService$VolumeList;->isASECMounted(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2446
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v5, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2447
    const-string v4, "MountService"

    const-string v4, "getSecureContainerPath -> not mounted, just return HashSet data"

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    invoke-virtual {v5}, Lcom/android/server/MountService$VolumeList;->getASECMountPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2459
    .end local p0
    :goto_0
    return-object v4

    .line 2453
    .restart local p0
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "asec path %s %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2454
    .local v2, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2455
    .local v3, tok:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2456
    .local v0, code:I
    const/16 v4, 0xd3

    if-eq v0, v4, :cond_1

    .line 2457
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2460
    .end local v0           #code:I
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 2461
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2462
    .restart local v0       #code:I
    const/16 v4, 0x196

    if-ne v0, v4, :cond_2

    .line 2463
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Container \'%s\' not found"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object p2, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2459
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #tok:[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    aget-object v4, v3, v4
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2465
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    .restart local v1       #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v11, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getShowSafeUnmountNotification(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 3682
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShowSafeUnmountNotification :: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mShowSafeUnmountNotificationWhenUnmountedSd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/MountService;->mShowSafeUnmountNotificationWhenUnmountedSd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mShowSafeUnmountNotificationWhenUnmounted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/MountService;->mShowSafeUnmountNotificationWhenUnmounted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3685
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3686
    sget-boolean v0, Lcom/android/server/MountService;->mShowSafeUnmountNotificationWhenUnmountedSd:Z

    .line 3688
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/android/server/MountService;->mShowSafeUnmountNotificationWhenUnmounted:Z

    goto :goto_0
.end method

.method public getStorageCidNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "path"

    .prologue
    const-string v5, "MountService"

    const-string v4, ""

    .line 3168
    const-string v2, "cid"

    invoke-direct {p0, p1, v2}, Lcom/android/server/MountService;->getDeviceDriverPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3171
    .local v0, devPath:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3173
    invoke-direct {p0, v0}, Lcom/android/server/MountService;->getStroageInformation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3174
    .local v1, result:Ljava/lang/String;
    const-string v2, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " :::: getStorageCidNumber :: path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 3179
    .end local v1           #result:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 3177
    :cond_0
    const-string v2, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStorageCidNumber :: Failed to get root path of mmc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getStorageSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "path"

    .prologue
    const-string v5, "MountService"

    const-string v4, ""

    .line 3152
    const-string v2, "serial"

    invoke-direct {p0, p1, v2}, Lcom/android/server/MountService;->getDeviceDriverPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3155
    .local v0, devPath:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/serial"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3157
    invoke-direct {p0, v0}, Lcom/android/server/MountService;->getStroageInformation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3158
    .local v1, result:Ljava/lang/String;
    const-string v2, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " :::: getStorageSerialNumber :: path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 3164
    .end local v1           #result:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 3161
    :cond_0
    const-string v2, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStorageSerialNumber :: Failed to get root path of mmc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .locals 14
    .parameter "path"

    .prologue
    const/4 v12, 0x0

    const-string v13, "MountService"

    .line 2120
    const-string v7, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v7}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2121
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2123
    :try_start_0
    iget-object v7, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v8, "storage users %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x70

    invoke-virtual {v7, v8, v9}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 2127
    .local v5, r:[Ljava/lang/String;
    array-length v7, v5

    new-array v1, v7, [I

    .line 2128
    .local v1, data:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v5

    if-ge v3, v7, :cond_0

    .line 2129
    aget-object v7, v5, v3

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 2131
    .local v6, tok:[Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_1
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v1, v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2128
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2132
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 2133
    .local v4, nfe:Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v7, "MountService"

    const-string v8, "getStorageUsers :: Error parsing pid %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-object v11, v6, v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    const/4 v7, 0x0

    new-array v7, v7, [I

    .line 2143
    .end local v1           #data:[I
    .end local v3           #i:I
    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    .end local v5           #r:[Ljava/lang/String;
    .end local v6           #tok:[Ljava/lang/String;
    :goto_1
    return-object v7

    .line 2135
    .restart local v1       #data:[I
    .restart local v3       #i:I
    .restart local v5       #r:[Ljava/lang/String;
    .restart local v6       #tok:[Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v0, v7

    .line 2136
    .local v0, are:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v7, "MountService"

    const-string v8, "getStorageUsers :: out of bounds"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    const/4 v7, 0x0

    new-array v7, v7, [I
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .end local v0           #are:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v6           #tok:[Ljava/lang/String;
    :cond_0
    move-object v7, v1

    .line 2140
    goto :goto_1

    .line 2141
    .end local v1           #data:[I
    .end local v3           #i:I
    .end local v5           #r:[Ljava/lang/String;
    :catch_2
    move-exception v7

    move-object v2, v7

    .line 2142
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v7, "MountService"

    const-string v7, "getStorageUsers :: Failed to retrieve storage users list"

    invoke-static {v13, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2143
    new-array v7, v12, [I

    goto :goto_1
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mountPoint"

    .prologue
    .line 2006
    const-string v0, "removed"

    .line 2011
    .local v0, state:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    invoke-virtual {v1, p1}, Lcom/android/server/MountService$VolumeList;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2012
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVolumeState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): Unknown volume"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 2016
    :cond_0
    return-object v0
.end method

.method public isEncryptionEnabled(Ljava/lang/String;Z)Z
    .locals 5
    .parameter "path"
    .parameter "withinit"

    .prologue
    const-string v4, "MountService"

    const-string v3, " :::: isEncryptionEnabled :: path = "

    .line 3183
    const-string v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3184
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3186
    if-eqz p2, :cond_0

    .line 3187
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isEncryptionEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 3188
    .local v0, rc:Z
    const-string v1, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " :::: isEncryptionEnabled :: path = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (withinit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 3197
    .end local v0           #rc:Z
    :goto_0
    return v1

    .line 3192
    :cond_0
    const-string v1, "encrypt"

    iget-object v2, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    invoke-virtual {v2, p1}, Lcom/android/server/MountService$VolumeList;->getEncryptedState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3193
    const-string v1, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " :::: isEncryptionEnabled :: path = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result = true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    const/4 v1, 0x1

    goto :goto_0

    .line 3196
    :cond_1
    const-string v1, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " :::: isEncryptionEnabled :: path = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result = false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .locals 2
    .parameter "filename"

    .prologue
    .line 2575
    if-nez p1, :cond_0

    .line 2576
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filename cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2579
    :cond_0
    iget-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v0

    .line 2580
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2581
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSecureContainerMounted(Ljava/lang/String;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 2404
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    iget-object v0, v0, Lcom/android/server/MountService$VolumeList;->targeting_prefer_asec_path:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/MountService;->isSecureContainerMounted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSecureContainerMounted(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "path"
    .parameter "id"

    .prologue
    const-string v3, "MountService"

    .line 2391
    const-string v1, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " :::: isSecureContainerMounted :: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    const-string v1, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2393
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2396
    iget-object v1, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 2397
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v3, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 2398
    .local v0, ret:Z
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSecureContainerMounted -> ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    monitor-exit v1

    return v0

    .line 2400
    .end local v0           #ret:Z
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isUsbMassStorageConnected()Z
    .locals 2

    .prologue
    .line 1866
    const-string v0, "MountService"

    const-string v1, "isUsbMassStorageConnected :: "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1876
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1877
    const/4 v0, 0x1

    .line 1879
    :goto_0
    return v0

    :cond_0
    const-string v0, "ums"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->doGetShareMethodAvailable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isUsbMassStorageEnabled()Z
    .locals 2

    .prologue
    .line 1982
    const-string v0, "MountService"

    const-string v1, " :::: isUsbMassStorageEnabled :: "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    const-string v0, "share"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->isUsbMassStorageEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    .locals 7
    .parameter "filename"
    .parameter "key"
    .parameter "token"
    .parameter "nonce"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2586
    if-nez p1, :cond_0

    .line 2587
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "filename cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2590
    :cond_0
    if-nez p3, :cond_1

    .line 2591
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "token cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2594
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2595
    .local v3, callerUid:I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2596
    .local v0, obbState:Lcom/android/server/MountService$ObbState;
    new-instance v6, Lcom/android/server/MountService$MountObbAction;

    invoke-direct {v6, p0, v0, p2}, Lcom/android/server/MountService$MountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;)V

    .line 2597
    .local v6, action:Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v6}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2601
    return-void
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter "id"
    .parameter "key"
    .parameter "ownerUid"

    .prologue
    .line 2338
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    iget-object v0, v0, Lcom/android/server/MountService$VolumeList;->targeting_prefer_asec_path:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/MountService;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .parameter "path"
    .parameter "id"
    .parameter "key"
    .parameter "ownerUid"

    .prologue
    .line 2307
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " :::: mountSecureContainer :: path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ownerUid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    const-string v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2309
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2312
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2313
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v6, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2314
    const/4 v5, -0x6

    monitor-exit v4

    move v4, v5

    .line 2334
    :goto_0
    return v4

    .line 2316
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2318
    const/4 v3, 0x0

    .line 2319
    .local v3, rc:I
    const-string v4, "asec mount %s %s %d %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    const/4 v6, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2321
    .local v0, cmd:Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2329
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 2330
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2331
    :try_start_2
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v6, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2332
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    move v4, v3

    .line 2334
    goto :goto_0

    .line 2316
    .end local v0           #cmd:Ljava/lang/String;
    .end local v3           #rc:I
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 2322
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v3       #rc:I
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 2323
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2324
    .local v1, code:I
    const/16 v4, 0x195

    if-eq v1, v4, :cond_1

    .line 2325
    const/4 v3, -0x1

    goto :goto_1

    .line 2332
    .end local v1           #code:I
    .end local v2           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method

.method public mountVolume(Ljava/lang/String;)I
    .locals 10
    .parameter "path"

    .prologue
    const-string v9, "unmounted"

    const-string v8, "unmountable"

    const-string v7, "MountService"

    .line 2020
    const-string v5, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " :::: mountVolume :: path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    const-string v5, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v5}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2023
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2024
    sget-boolean v5, Lcom/android/server/StorageFeature;->INSTALLED_SECOND_DISK:Z

    if-eqz v5, :cond_1

    .line 2025
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2026
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2027
    .local v4, vs:Ljava/lang/String;
    const-string v5, "unmounted"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "removed"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "shared"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "unmountable"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2032
    :cond_0
    const-string v5, "MountService"

    const-string v5, "mountVolume -> first SD card is not ready. "

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    const/4 v5, -0x6

    .line 2055
    .end local v4           #vs:Ljava/lang/String;
    :goto_0
    return v5

    .line 2037
    :cond_1
    sget-boolean v5, Lcom/android/server/StorageFeature;->INSTALLED_SECOND_DISK:Z

    if-eqz v5, :cond_5

    .line 2038
    const/4 v1, 0x0

    .line 2039
    .local v1, rc:I
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2040
    .local v0, firstPath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 2041
    .local v2, secondPath:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2042
    invoke-direct {p0, v0}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v1

    .line 2044
    :cond_2
    if-nez v1, :cond_4

    .line 2045
    invoke-virtual {p0, v2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2046
    .local v3, secondState:Ljava/lang/String;
    const-string v5, "unmounted"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "nofs"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "unmountable"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2050
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v1

    .end local v3           #secondState:Ljava/lang/String;
    :cond_4
    move v5, v1

    .line 2053
    goto :goto_0

    .line 2055
    .end local v0           #firstPath:Ljava/lang/String;
    .end local v1           #rc:I
    .end local v2           #secondPath:Ljava/lang/String;
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v5

    goto :goto_0
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 911
    const-string v0, "MountService"

    const-string v1, "onDaemonConnected ::"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    new-instance v0, Lcom/android/server/MountService$2;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$2;-><init>(Lcom/android/server/MountService;)V

    invoke-virtual {v0}, Lcom/android/server/MountService$2;->start()V

    .line 973
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 979
    iget-object v0, p0, Lcom/android/server/MountService;->mWorkQueueHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/MountService$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/MountService$3;-><init>(Lcom/android/server/MountService;ILjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 984
    const/4 v0, 0x1

    return v0
.end method

.method public registerCallBackListener(Landroid/os/storage/IMountCallBackListener;)V
    .locals 5
    .parameter "callback"

    .prologue
    .line 3618
    iget-object v2, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 3619
    :try_start_0
    new-instance v0, Lcom/android/server/MountService$MountCallBackBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MountService$MountCallBackBinderListener;-><init>(Lcom/android/server/MountService;Landroid/os/storage/IMountCallBackListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3621
    .local v0, bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    :try_start_1
    invoke-interface {p1}, Landroid/os/storage/IMountCallBackListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 3622
    iget-object v3, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3626
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 3627
    return-void

    .line 3623
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 3624
    .local v1, rex:Landroid/os/RemoteException;
    const-string v3, "MountService"

    const-string v4, "registerCallBackListener : Failed to link to listener death"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3626
    .end local v0           #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    .end local v1           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public registerListener(Landroid/os/storage/IMountServiceListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 1749
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1750
    :try_start_0
    new-instance v0, Lcom/android/server/MountService$MountServiceBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MountService$MountServiceBinderListener;-><init>(Lcom/android/server/MountService;Landroid/os/storage/IMountServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1752
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_1
    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1753
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1757
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1758
    return-void

    .line 1754
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1755
    .local v1, rex:Landroid/os/RemoteException;
    const-string v3, "MountService"

    const-string v4, "Failed to link to listener death"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1757
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "oldId"
    .parameter "newId"

    .prologue
    .line 2436
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    iget-object v0, v0, Lcom/android/server/MountService$VolumeList;->targeting_prefer_asec_path:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/MountService;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "path"
    .parameter "oldId"
    .parameter "newId"

    .prologue
    .line 2408
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " :::: renameSecureContainer :: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oldId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    const-string v3, "android.permission.ASEC_RENAME"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2410
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2413
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2418
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v5, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v5, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v5, p0, p1, p3}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2420
    :cond_0
    const/4 v4, -0x6

    monitor-exit v3

    move v3, v4

    .line 2432
    :goto_0
    return v3

    .line 2422
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2424
    const/4 v2, 0x0

    .line 2425
    .local v2, rc:I
    const-string v3, "asec rename %s %s %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2427
    .local v0, cmd:Ljava/lang/String;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move v3, v2

    .line 2432
    goto :goto_0

    .line 2422
    .end local v0           #cmd:Ljava/lang/String;
    .end local v2           #rc:I
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 2428
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v2       #rc:I
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 2429
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setEncryptionEnabled(Ljava/lang/String;Z)I
    .locals 8
    .parameter "path"
    .parameter "enable"

    .prologue
    const/4 v5, 0x0

    const-string v7, "encrypt"

    const-string v6, "decrypt"

    .line 3243
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " :::: setEncryptionEnabled :: path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3245
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3247
    const/4 v1, 0x0

    .line 3249
    .local v1, rc:I
    if-eqz p2, :cond_0

    .line 3250
    const-string v2, "encrypt"

    iget-object v2, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    invoke-virtual {v2, p1}, Lcom/android/server/MountService$VolumeList;->getEncryptedState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    .line 3269
    :goto_0
    return v2

    .line 3254
    :cond_0
    const-string v2, "decrypt"

    iget-object v2, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    invoke-virtual {v2, p1}, Lcom/android/server/MountService$VolumeList;->getEncryptedState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    .line 3255
    goto :goto_0

    .line 3259
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "crypto %scrypt %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p2, :cond_2

    const-string v6, "en"

    :goto_1
    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 3260
    if-eqz p2, :cond_3

    .line 3261
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    const-string v3, "encrypt"

    invoke-virtual {v2, p1, v3}, Lcom/android/server/MountService$VolumeList;->updateEncrypting(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v2, v1

    .line 3269
    goto :goto_0

    .line 3259
    :cond_2
    const-string v6, "de"

    goto :goto_1

    .line 3263
    :cond_3
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    const-string v3, "decrypt"

    invoke-virtual {v2, p1, v3}, Lcom/android/server/MountService$VolumeList;->updateEncrypting(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3266
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 3267
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public setPlayNotificationSounds(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 3518
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3520
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires WRITE_SETTINGS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3522
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/MountService;->mNotificationPlaySound:Z

    .line 3523
    const-string v0, "persist.service.mount.playsnd"

    if-eqz p1, :cond_1

    const-string v1, "1"

    :goto_0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3524
    return-void

    .line 3523
    :cond_1
    const-string v1, "0"

    goto :goto_0
.end method

.method public setShowSafeUnmountNotification(Ljava/lang/String;Z)V
    .locals 3
    .parameter "path"
    .parameter "set"

    .prologue
    .line 3693
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowSafeUnmountNotification :: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", set = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3694
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3695
    sput-boolean p2, Lcom/android/server/MountService;->mShowSafeUnmountNotificationWhenUnmountedSd:Z

    .line 3699
    :goto_0
    return-void

    .line 3697
    :cond_0
    sput-boolean p2, Lcom/android/server/MountService;->mShowSafeUnmountNotificationWhenUnmounted:Z

    goto :goto_0
.end method

.method public setUsbMassStorageEnabled(Z)V
    .locals 14
    .parameter "enable"

    .prologue
    const/4 v10, 0x1

    const-string v13, "shared"

    const-string v12, "mounted"

    const-string v11, " after disabling share method "

    const-string v9, "MountService"

    .line 1893
    const-string v6, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " :::: setUsbMassStorageEnabled :: enable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1895
    const-string v6, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v6}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1898
    const-string v6, "share"

    invoke-direct {p0, v6}, Lcom/android/server/MountService;->isUsbMassStorageEnabled(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, p1, :cond_1

    .line 1899
    const-string v6, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate state change ( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/server/MountService;->isVolumeStateShared()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    :cond_0
    :goto_0
    return-void

    .line 1908
    :cond_1
    const-string v0, "ums"

    .line 1909
    .local v0, method:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 1911
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 1912
    sget-boolean v6, Lcom/android/server/StorageFeature;->INSTALLED_SECOND_DISK:Z

    if-eqz v6, :cond_2

    .line 1913
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1914
    .local v2, secondPath:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1915
    .local v3, secondState:Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1917
    new-instance v4, Lcom/android/server/MountService$UmsEnableCallBack;

    invoke-direct {v4, p0, v2, v0, v10}, Lcom/android/server/MountService$UmsEnableCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1918
    .local v4, umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    iget-object v6, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1922
    .end local v2           #secondPath:Ljava/lang/String;
    .end local v3           #secondState:Ljava/lang/String;
    .end local v4           #umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1923
    .local v1, path:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1924
    .local v5, vs:Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1926
    new-instance v4, Lcom/android/server/MountService$UmsEnableCallBack;

    invoke-direct {v4, p0, v1, v0, v10}, Lcom/android/server/MountService$UmsEnableCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1927
    .restart local v4       #umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    iget-object v6, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1936
    .end local v1           #path:Ljava/lang/String;
    .end local v4           #umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    .end local v5           #vs:Ljava/lang/String;
    :cond_3
    if-nez p1, :cond_0

    .line 1937
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsDisabling()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1938
    const-string v6, "MountService"

    const-string v6, "setUsbMassStorageEnabled -> skip (disabling ums mode by other process)"

    invoke-static {v9, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1941
    :cond_4
    invoke-direct {p0, v10}, Lcom/android/server/MountService;->setUmsDisabling(Z)V

    .line 1942
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1943
    .restart local v1       #path:Ljava/lang/String;
    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1945
    invoke-direct {p0, v1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_7

    .line 1946
    const-string v6, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to remount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " after disabling share method "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    sget-boolean v6, Lcom/android/server/StorageFeature;->INSTALLED_SECOND_DISK:Z

    if-eqz v6, :cond_6

    .line 1948
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1949
    .restart local v2       #secondPath:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1951
    .restart local v3       #secondState:Ljava/lang/String;
    const-string v6, "shared"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "unmounted"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1954
    :cond_5
    invoke-direct {p0, v2, v0, p1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1977
    .end local v2           #secondPath:Ljava/lang/String;
    .end local v3           #secondState:Ljava/lang/String;
    :cond_6
    :goto_1
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/MountService;->setUmsDisabling(Z)V

    goto/16 :goto_0

    .line 1960
    :cond_7
    sget-boolean v6, Lcom/android/server/StorageFeature;->INSTALLED_SECOND_DISK:Z

    if-eqz v6, :cond_6

    .line 1961
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1962
    .restart local v2       #secondPath:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1964
    .restart local v3       #secondState:Ljava/lang/String;
    const-string v6, "shared"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "unmounted"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1967
    :cond_8
    invoke-direct {p0, v2, v0, p1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1969
    invoke-direct {p0, v2}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_6

    .line 1970
    const-string v6, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed  to remount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " after disabling share method "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1973
    :cond_9
    const-string v6, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipped to remount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    .locals 14
    .parameter "observer"

    .prologue
    const/4 v13, 0x1

    const-string v12, "checking"

    const-string v11, "MountService"

    .line 1772
    const-string v8, "MountService"

    const-string v8, "shutdown :: "

    invoke-static {v11, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    const-string v8, "android.permission.SHUTDOWN"

    invoke-direct {p0, v8}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1780
    invoke-direct {p0}, Lcom/android/server/MountService;->isVolumeStateShared()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1789
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    .line 1841
    :goto_0
    return-void

    .line 1791
    :cond_0
    sget-boolean v8, Lcom/android/server/StorageFeature;->INSTALLED_SECOND_DISK:Z

    if-eqz v8, :cond_3

    .line 1792
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1793
    .local v4, secondPath:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1794
    .local v5, secondState:Ljava/lang/String;
    const-string v8, "checking"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1795
    const-string v8, "MountService"

    const-string v8, "shutdown :: Second SD Card -> MEDIA_CHECKING status"

    invoke-static {v11, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    const/16 v2, 0x1e

    .line 1797
    .local v2, retries:I
    :goto_1
    const-string v8, "checking"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v3, v2, -0x1

    .end local v2           #retries:I
    .local v3, retries:I
    if-ltz v2, :cond_7

    .line 1799
    const-wide/16 v8, 0x3e8

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1804
    invoke-virtual {p0, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move v2, v3

    .end local v3           #retries:I
    .restart local v2       #retries:I
    goto :goto_1

    .line 1800
    .end local v2           #retries:I
    .restart local v3       #retries:I
    :catch_0
    move-exception v0

    .line 1801
    .local v0, iex:Ljava/lang/InterruptedException;
    const-string v8, "MountService"

    const-string v8, "shutdown :: Second SD Card -> Interrupted while waiting for media"

    invoke-static {v11, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 1806
    .end local v0           #iex:Ljava/lang/InterruptedException;
    .end local v3           #retries:I
    .restart local v2       #retries:I
    :cond_1
    :goto_2
    if-nez v2, :cond_2

    .line 1807
    const-string v8, "MountService"

    const-string v8, "shutdown :: Second SD Card -> Timed out waiting for media to check"

    invoke-static {v11, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    .end local v2           #retries:I
    :cond_2
    new-instance v7, Lcom/android/server/MountService$UnmountCallBack;

    invoke-direct {v7, p0, v4, v13}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    .line 1811
    .local v7, ucb:Lcom/android/server/MountService$UnmountCallBack;
    iget-object v8, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x4

    invoke-virtual {v9, v10, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1813
    .end local v4           #secondPath:Ljava/lang/String;
    .end local v5           #secondState:Ljava/lang/String;
    .end local v7           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1814
    .local v1, path:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1820
    .local v6, state:Ljava/lang/String;
    const-string v8, "checking"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1821
    const-string v8, "MountService"

    const-string v8, "shutdown :: First SD Card -> MEDIA_CHECKING status"

    invoke-static {v11, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    const/16 v2, 0x1e

    .line 1823
    .restart local v2       #retries:I
    :goto_3
    const-string v8, "checking"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v3, v2, -0x1

    .end local v2           #retries:I
    .restart local v3       #retries:I
    if-ltz v2, :cond_6

    .line 1825
    const-wide/16 v8, 0x3e8

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1830
    invoke-virtual {p0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move v2, v3

    .end local v3           #retries:I
    .restart local v2       #retries:I
    goto :goto_3

    .line 1826
    .end local v2           #retries:I
    .restart local v3       #retries:I
    :catch_1
    move-exception v0

    .line 1827
    .restart local v0       #iex:Ljava/lang/InterruptedException;
    const-string v8, "MountService"

    const-string v8, "shutdown :: First SD Card -> Interrupted while waiting for media"

    invoke-static {v11, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 1832
    .end local v0           #iex:Ljava/lang/InterruptedException;
    .end local v3           #retries:I
    .restart local v2       #retries:I
    :cond_4
    :goto_4
    if-nez v2, :cond_5

    .line 1833
    const-string v8, "MountService"

    const-string v8, "shutdown :: First SD Card -> Timed out waiting for media to check"

    invoke-static {v11, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    .end local v2           #retries:I
    :cond_5
    new-instance v7, Lcom/android/server/MountService$ShutdownCallBack;

    invoke-direct {v7, p0, v1, p1}, Lcom/android/server/MountService$ShutdownCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/IMountShutdownObserver;)V

    .line 1839
    .local v7, ucb:Lcom/android/server/MountService$ShutdownCallBack;
    iget-object v8, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v13, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v7           #ucb:Lcom/android/server/MountService$ShutdownCallBack;
    .restart local v3       #retries:I
    :cond_6
    move v2, v3

    .end local v3           #retries:I
    .restart local v2       #retries:I
    goto :goto_4

    .end local v1           #path:Ljava/lang/String;
    .end local v2           #retries:I
    .end local v6           #state:Ljava/lang/String;
    .restart local v3       #retries:I
    .restart local v4       #secondPath:Ljava/lang/String;
    .restart local v5       #secondState:Ljava/lang/String;
    :cond_7
    move v2, v3

    .end local v3           #retries:I
    .restart local v2       #retries:I
    goto :goto_2
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .locals 7
    .parameter "filename"
    .parameter "force"
    .parameter "token"
    .parameter "nonce"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2605
    if-nez p1, :cond_0

    .line 2606
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "filename cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2609
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2610
    .local v3, callerUid:I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2611
    .local v0, obbState:Lcom/android/server/MountService$ObbState;
    new-instance v6, Lcom/android/server/MountService$UnmountObbAction;

    invoke-direct {v6, p0, v0, p2}, Lcom/android/server/MountService$UnmountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V

    .line 2612
    .local v6, action:Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v6}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2616
    return-void
.end method

.method public unmountSecureContainer(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 8
    .parameter "path"
    .parameter "id"
    .parameter "force"

    .prologue
    const/4 v7, 0x0

    const-string v6, "MountService"

    .line 2342
    const-string v4, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " :::: unmountSecureContainer :: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", force = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    const-string v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2344
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2347
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2348
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v6, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2349
    const/4 v5, -0x5

    monitor-exit v4

    move v4, v5

    .line 2383
    :goto_0
    return v4

    .line 2351
    :cond_0
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    invoke-virtual {v5, p1}, Lcom/android/server/MountService$VolumeList;->isASECMounted(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2352
    const-string v5, "MountService"

    const-string v6, "unmountSecureContainer -> not mounted, after remove hadset, just return true"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v6, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2354
    monitor-exit v4

    move v4, v7

    goto :goto_0

    .line 2356
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2363
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 2365
    const/4 v3, 0x0

    .line 2366
    .local v3, rc:I
    const-string v4, "asec unmount %s %s %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    if-eqz p3, :cond_3

    const-string v7, "force"

    :goto_1
    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2368
    .local v0, cmd:Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2378
    :goto_2
    if-nez v3, :cond_2

    .line 2379
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2380
    :try_start_2
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v6, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2381
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    move v4, v3

    .line 2383
    goto :goto_0

    .line 2356
    .end local v0           #cmd:Ljava/lang/String;
    .end local v3           #rc:I
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 2366
    .restart local v3       #rc:I
    :cond_3
    const-string v7, "graceful"

    goto :goto_1

    .line 2369
    .restart local v0       #cmd:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 2370
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2371
    .local v1, code:I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_4

    .line 2372
    const/4 v3, -0x7

    goto :goto_2

    .line 2374
    :cond_4
    const/4 v3, -0x1

    goto :goto_2

    .line 2381
    .end local v1           #code:I
    .end local v2           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .locals 1
    .parameter "id"
    .parameter "force"

    .prologue
    .line 2387
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    iget-object v0, v0, Lcom/android/server/MountService$VolumeList;->targeting_prefer_asec_path:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/MountService;->unmountSecureContainer(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public unmountVolume(Ljava/lang/String;Z)V
    .locals 10
    .parameter "path"
    .parameter "force"

    .prologue
    const-string v9, "Unmounting "

    const-string v8, ", getVolumeState = "

    const-string v7, ", force = "

    const-string v6, "MountService"

    .line 2059
    const-string v4, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " :::: unmountVolume :: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", force = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    const-string v4, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2061
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2063
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2064
    .local v3, volState:Ljava/lang/String;
    const-string v4, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unmounting "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", force = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", getVolumeState = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    const-string v4, "unmounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "removed"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "shared"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "unmountable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2091
    :cond_0
    :goto_0
    return-void

    .line 2073
    :cond_1
    sget-boolean v4, Lcom/android/server/StorageFeature;->INSTALLED_SECOND_DISK:Z

    if-eqz v4, :cond_3

    .line 2074
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2075
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2076
    .local v0, secondPath:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2077
    .local v1, secondState:Ljava/lang/String;
    const-string v4, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unmounting "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", force = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", getVolumeState = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    const-string v4, "mounted"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "checking"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2082
    :cond_2
    const-string v4, "MountService"

    const-string v4, "At first time, we have to unmount the second Sd Card when mounted"

    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    new-instance v2, Lcom/android/server/MountService$UnmountCallBack;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    .line 2084
    .local v2, ucb:Lcom/android/server/MountService$UnmountCallBack;
    iget-object v4, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2089
    .end local v0           #secondPath:Ljava/lang/String;
    .end local v1           #secondState:Ljava/lang/String;
    .end local v2           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :cond_3
    new-instance v2, Lcom/android/server/MountService$UnmountCallBack;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    .line 2090
    .restart local v2       #ucb:Lcom/android/server/MountService$UnmountCallBack;
    iget-object v4, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public unregisterCallBackListener(Landroid/os/storage/IMountCallBackListener;)V
    .locals 5
    .parameter "callback"

    .prologue
    .line 3630
    iget-object v2, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 3631
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountCallBackBinderListener;

    .line 3632
    .local v0, bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    iget-object v3, v0, Lcom/android/server/MountService$MountCallBackBinderListener;->mCallback:Landroid/os/storage/IMountCallBackListener;

    if-ne v3, p1, :cond_0

    .line 3633
    iget-object v3, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3634
    monitor-exit v2

    .line 3638
    .end local v0           #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    :goto_0
    return-void

    .line 3637
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

.method public unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 1761
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1762
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;

    .line 1763
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    iget-object v3, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    if-ne v3, p1, :cond_0

    .line 1764
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1765
    monitor-exit v2

    .line 1769
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :goto_0
    return-void

    .line 1768
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
