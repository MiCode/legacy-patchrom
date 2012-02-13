.class Lcom/android/server/PackageManagerService;
.super Landroid/content/pm/IPackageManager$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PackageManagerService$Settings;,
        Lcom/android/server/PackageManagerService$SharedUserSetting;,
        Lcom/android/server/PackageManagerService$PackageSetting;,
        Lcom/android/server/PackageManagerService$PackageSettingBase;,
        Lcom/android/server/PackageManagerService$GrantedPermissions;,
        Lcom/android/server/PackageManagerService$PreferredActivity;,
        Lcom/android/server/PackageManagerService$PackageSignatures;,
        Lcom/android/server/PackageManagerService$BasePermission;,
        Lcom/android/server/PackageManagerService$PackageRemovedInfo;,
        Lcom/android/server/PackageManagerService$PackageInstalledInfo;,
        Lcom/android/server/PackageManagerService$SdInstallArgs;,
        Lcom/android/server/PackageManagerService$FileInstallArgs;,
        Lcom/android/server/PackageManagerService$InstallArgs;,
        Lcom/android/server/PackageManagerService$MoveParams;,
        Lcom/android/server/PackageManagerService$InstallParams;,
        Lcom/android/server/PackageManagerService$HandlerParams;,
        Lcom/android/server/PackageManagerService$AppDirObserver;,
        Lcom/android/server/PackageManagerService$ServiceIntentResolver;,
        Lcom/android/server/PackageManagerService$ActivityIntentResolver;,
        Lcom/android/server/PackageManagerService$PackageHandler;,
        Lcom/android/server/PackageManagerService$PostInstallData;,
        Lcom/android/server/PackageManagerService$DefaultContainerConnection;
    }
.end annotation


# static fields
.field private static final ADD_EVENTS:I = 0x88

.field static final BROADCAST_DELAY:I = 0x2710

.field private static final DEBUG_INSTALL:Z = false

.field private static final DEBUG_PREFERRED:Z = false

.field static final DEBUG_SD_INSTALL:Z = false

.field private static final DEBUG_SETTINGS:Z = false

.field private static final DEBUG_UPGRADE:Z = false

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName; = null

.field static final DEFAULT_CONTAINER_PACKAGE:Ljava/lang/String; = "com.android.defcontainer"

.field static final DEX_OPT_FAILED:I = -0x1

.field static final DEX_OPT_PERFORMED:I = 0x1

.field static final DEX_OPT_SKIPPED:I = 0x0

.field static final END_COPY:I = 0x4

.field static final FIND_INSTALL_LOC:I = 0x8

.field private static final FIRST_APPLICATION_UID:I = 0x2710

.field private static final GET_CERTIFICATES:Z = true

.field static final INIT_COPY:I = 0x5

.field private static final INSTALL_PACKAGE_SUFFIX:Ljava/lang/String; = "-"

.field private static final LIB_DIR_NAME:Ljava/lang/String; = "lib"

.field static final LOG_EVENT_PMS_INSTALL:I = 0xf4308

.field private static final LOG_UID:I = 0x3ef

.field private static final MAX_APPLICATION_UIDS:I = 0x3e8

.field static final MAX_CONTAINERS:I = 0xfa

.field static final MCS_BOUND:I = 0x3

.field static final MCS_GIVE_UP:I = 0xb

.field static final MCS_RECONNECT:I = 0xa

.field static final MCS_UNBIND:I = 0x6

.field private static final MULTIPLE_APPLICATION_UIDS:Z = true

.field private static final NFC_UID:I = 0x401

.field private static final OBSERVER_EVENTS:I = 0x2c8

.field private static final PKG_INSTALL_COMPLETE:I = 0x1

.field private static final PKG_INSTALL_INCOMPLETE:I = 0x0

.field static final POST_INSTALL:I = 0x9

.field private static final RADIO_UID:I = 0x3e9

.field static final REMOVE_CHATTY:I = 0x10000

.field private static final REMOVE_EVENTS:I = 0x248

.field static final SCAN_FORCE_DEX:I = 0x4

.field static final SCAN_MONITOR:I = 0x1

.field static final SCAN_NEW_INSTALL:I = 0x10

.field static final SCAN_NO_DEX:I = 0x2

.field static final SCAN_NO_PATHS:I = 0x20

.field static final SCAN_UPDATE_SIGNATURE:I = 0x8

.field static final SCAN_UPDATE_TIME:I = 0x40

.field private static final SD_ENCRYPTION_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final SD_ENCRYPTION_KEYSTORE_NAME:Ljava/lang/String; = "AppsOnSD"

.field static final SEND_PENDING_BROADCAST:I = 0x1

.field private static final SHOW_INFO:Z = false

.field static final START_CLEANING_PACKAGE:I = 0x7

.field private static final SYSTEM_PROPERTY_EFS_ENABLED:Ljava/lang/String; = "persist.security.efs.enabled"

.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field static final UPDATED_MEDIA_STATUS:I = 0xc

.field static final WRITE_SETTINGS:I = 0xd

.field static final WRITE_SETTINGS_DELAY:I = 0x2710

.field private static final mProviderInitOrderSorter:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mResolvePrioritySorter:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final mTempContainerPrefix:Ljava/lang/String; = "smdl2tmp"


# instance fields
.field final mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

.field mAndroidApplication:Landroid/content/pm/ApplicationInfo;

.field final mAppDataDir:Ljava/io/File;

.field final mAppDirs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field final mAppInstallDir:Ljava/io/File;

.field final mAppInstallObserver:Landroid/os/FileObserver;

.field final mAvailableFeatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field final mContext:Landroid/content/Context;

.field final mDalvikCacheDir:Ljava/io/File;

.field private final mDefContainerConn:Lcom/android/server/PackageManagerService$DefaultContainerConnection;

.field final mDefParseFlags:I

.field private final mDeviceManager:Landroid/os/IDeviceManager3LM;

.field final mDrmAppInstallObserver:Landroid/os/FileObserver;

.field final mDrmAppPrivateInstallDir:Ljava/io/File;

.field final mFactoryTest:Z

.field final mFrameworkDir:Ljava/io/File;

.field final mFrameworkInstallObserver:Landroid/os/FileObserver;

.field mGlobalGids:[I

.field final mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

.field final mHandlerThread:Landroid/os/HandlerThread;

.field mHasSystemUidErrors:Z

.field final mInstallLock:Ljava/lang/Object;

.field final mInstaller:Lcom/android/server/Installer;

.field final mInstrumentation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Instrumentation;",
            ">;"
        }
    .end annotation
.end field

.field private mIsIgnoreMotoIMESignatureCheck:Z

.field mLastScanError:I

.field private mMediaMounted:Z

.field final mMetrics:Landroid/util/DisplayMetrics;

.field mNextInstallToken:I

.field final mNoDexOpt:Z

.field final mOutPermissions:[I

.field final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingBroadcasts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPermissionGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field mPlatformPackage:Landroid/content/pm/PackageParser$Package;

.field final mProtectedBroadcasts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field

.field final mProvidersByComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field

.field final mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

.field final mResolveActivity:Landroid/content/pm/ActivityInfo;

.field mResolveComponentName:Landroid/content/ComponentName;

.field final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field mRestoredSettings:Z

.field final mRunningInstalls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/PackageManagerService$PostInstallData;",
            ">;"
        }
    .end annotation
.end field

.field mSafeMode:Z

.field mScanningPath:Ljava/io/File;

.field final mSdkCodename:Ljava/lang/String;

.field final mSdkVersion:I

.field final mSecureAppDataDir:Ljava/io/File;

.field final mSeparateProcesses:[Ljava/lang/String;

.field final mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

.field final mSettings:Lcom/android/server/PackageManagerService$Settings;

.field final mSharedLibraries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSystemAppDir:Ljava/io/File;

.field final mSystemInstallObserver:Landroid/os/FileObserver;

.field final mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mSystemReady:Z

.field mTmpSharedLibraries:[Ljava/lang/String;

.field final mTransferedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mVendorAppDir:Ljava/io/File;

.field final mVendorInstallObserver:Landroid/os/FileObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    new-instance v0, Lcom/android/server/PackageManagerService$3;

    invoke-direct {v0}, Lcom/android/server/PackageManagerService$3;-><init>()V

    sput-object v0, Lcom/android/server/PackageManagerService;->mResolvePrioritySorter:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/PackageManagerService$4;

    invoke-direct {v0}, Lcom/android/server/PackageManagerService$4;-><init>()V

    sput-object v0, Lcom/android/server/PackageManagerService;->mProviderInitOrderSorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 37
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    invoke-direct/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;-><init>()V

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService;->mIsIgnoreMotoIMESignatureCheck:Z

    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "PackageManager"

    const/16 v7, 0xa

    invoke-direct {v5, v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    const-string v5, "REL"

    sget-object v6, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    :goto_0
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSdkCodename:Ljava/lang/String;

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    const/4 v5, 0x3

    new-array v5, v5, [I

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mAvailableFeatures:Ljava/util/HashMap;

    new-instance v5, Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;-><init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    new-instance v5, Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;-><init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    new-instance v5, Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;-><init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mInstrumentation:Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mTransferedPackages:Ljava/util/HashSet;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mProtectedBroadcasts:Ljava/util/HashSet;

    new-instance v5, Landroid/content/pm/ActivityInfo;

    invoke-direct {v5}, Landroid/content/pm/ActivityInfo;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    new-instance v5, Lcom/android/server/PackageManagerService$DefaultContainerConnection;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService$DefaultContainerConnection;-><init>(Lcom/android/server/PackageManagerService;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mDefContainerConn:Lcom/android/server/PackageManagerService$DefaultContainerConnection;

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mNextInstallToken:I

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService;->mMediaMounted:Z

    const/16 v5, 0xbf4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v5, v0

    if-gtz v5, :cond_0

    const-string v5, "PackageManager"

    const-string v6, "**** ro.build.version.sdk not set!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService;->mFactoryTest:Z

    const-string v5, "eng"

    const-string v6, "ro.build.type"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService;->mNoDexOpt:Z

    const-string v5, "DeviceManager3LM"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mDeviceManager:Landroid/os/IDeviceManager3LM;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10d003d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService;->mIsIgnoreMotoIMESignatureCheck:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    new-instance v5, Lcom/android/server/PackageManagerService$Settings;

    invoke-direct {v5}, Lcom/android/server/PackageManagerService$Settings;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    const-string v6, "android.uid.system"

    const/16 v7, 0x3e8

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/PackageManagerService$Settings;->addSharedUserLP(Ljava/lang/String;II)Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    const-string v6, "android.uid.phone"

    const/16 v7, 0x3e9

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/PackageManagerService$Settings;->addSharedUserLP(Ljava/lang/String;II)Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    const-string v6, "android.uid.log"

    const/16 v7, 0x3ef

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/PackageManagerService$Settings;->addSharedUserLP(Ljava/lang/String;II)Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    const-string v6, "android.uid.nfc"

    const/16 v7, 0x401

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/PackageManagerService$Settings;->addSharedUserLP(Ljava/lang/String;II)Lcom/android/server/PackageManagerService$SharedUserSetting;

    const-string v5, "debug.separate_processes"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .local v33, separateProcesses:Ljava/lang/String;
    if-eqz v33, :cond_6

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    const-string v5, "*"

    move-object v0, v5

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x8

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    const-string v5, "PackageManager"

    const-string v6, "Running with debug.separate_processes: * (ALL)"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    new-instance v21, Lcom/android/server/Installer;

    invoke-direct/range {v21 .. v21}, Lcom/android/server/Installer;-><init>()V

    .local v21, installer:Lcom/android/server/Installer;
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/Installer;->ping()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    :goto_3
    const-string v5, "window"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/view/WindowManager;

    .local v36, wm:Landroid/view/WindowManager;
    invoke-interface/range {v36 .. v36}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    .local v12, d:Landroid/view/Display;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    move-object v5, v0

    invoke-virtual {v12, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    move-object v12, v0

    .end local v12           #d:Landroid/view/Display;
    monitor-enter v12

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v21, v0

    .end local v21           #installer:Lcom/android/server/Installer;
    monitor-enter v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    new-instance v5, Lcom/android/server/PackageManagerService$PackageHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$PackageHandler;-><init>(Lcom/android/server/PackageManagerService;Landroid/os/Looper;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v13

    .local v13, dataDir:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v6, "data"

    invoke-direct {v5, v13, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mAppDataDir:Ljava/io/File;

    new-instance v5, Ljava/io/File;

    const-string v6, "secure/data"

    invoke-direct {v5, v13, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSecureAppDataDir:Ljava/io/File;

    new-instance v5, Ljava/io/File;

    const-string v6, "app-private"

    invoke-direct {v5, v13, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-nez v5, :cond_1

    new-instance v26, Ljava/io/File;

    const-string v5, "misc"

    move-object/from16 v0, v26

    move-object v1, v13

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v26, miscDir:Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->mkdirs()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppDataDir:Ljava/io/File;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSecureAppDataDir:Ljava/io/File;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .end local v26           #miscDir:Ljava/io/File;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/PackageManagerService;->readPermissions()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/PackageManagerService$Settings;->readLP()Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService;->mRestoredSettings:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v34

    .local v34, startTime:J
    const/16 v5, 0xbfe

    move v0, v5

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Landroid/util/EventLog;->writeEvent(IJ)I

    const/16 v32, 0x21

    .local v32, scanMode:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService;->mNoDexOpt:Z

    move v5, v0

    if-eqz v5, :cond_2

    const-string v5, "PackageManager"

    const-string v6, "Running ENG build: no pre-dexopt!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v32, v32, 0x2

    :cond_2
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .local v23, libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "framework"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    new-instance v5, Ljava/io/File;

    const-string v6, "dalvik-cache"

    invoke-direct {v5, v13, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mDalvikCacheDir:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-eqz v5, :cond_12

    const/4 v15, 0x0

    .local v15, didDexOpt:Z
    const-string v5, "java.boot.class.path"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, bootClassPath:Ljava/lang/String;
    if-eqz v11, :cond_8

    const/16 v5, 0x3a

    invoke-static {v11, v5}, Lcom/android/server/PackageManagerService;->splitString(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v29

    .local v29, paths:[Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, i:I
    :goto_4
    move-object/from16 v0, v29

    array-length v0, v0

    move v5, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_9

    :try_start_3
    aget-object v5, v29, v20

    invoke-static {v5}, Ldalvik/system/DexFile;->isDexOptNeeded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    aget-object v5, v29, v20

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    aget-object v6, v29, v20

    const/16 v7, 0x3e8

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/Installer;->dexopt(Ljava/lang/String;IZ)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v15, 0x1

    :cond_3
    :goto_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .end local v11           #bootClassPath:Ljava/lang/String;
    .end local v13           #dataDir:Ljava/io/File;
    .end local v15           #didDexOpt:Z
    .end local v20           #i:I
    .end local v23           #libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v29           #paths:[Ljava/lang/String;
    .end local v32           #scanMode:I
    .end local v33           #separateProcesses:Ljava/lang/String;
    .end local v34           #startTime:J
    .end local v36           #wm:Landroid/view/WindowManager;
    :cond_4
    sget-object v5, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    goto/16 :goto_0

    :catch_0
    move-exception v5

    move-object/from16 v16, v5

    .local v16, e:Ljava/lang/Exception;
    const-string v5, "PackageManager"

    const-string v6, "config_ignoremotoime_signaturecheck is not set"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v16           #e:Ljava/lang/Exception;
    .restart local v33       #separateProcesses:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    const-string v5, ","

    move-object/from16 v0, v33

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Running with debug.separate_processes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    goto/16 :goto_2

    .restart local v21       #installer:Lcom/android/server/Installer;
    :cond_7
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    goto/16 :goto_3

    .end local v21           #installer:Lcom/android/server/Installer;
    .restart local v11       #bootClassPath:Ljava/lang/String;
    .restart local v13       #dataDir:Ljava/io/File;
    .restart local v15       #didDexOpt:Z
    .restart local v20       #i:I
    .restart local v23       #libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v29       #paths:[Ljava/lang/String;
    .restart local v32       #scanMode:I
    .restart local v34       #startTime:J
    .restart local v36       #wm:Landroid/view/WindowManager;
    :catch_1
    move-exception v5

    move-object/from16 v16, v5

    .local v16, e:Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Boot class path not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v29, v20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v11           #bootClassPath:Ljava/lang/String;
    .end local v13           #dataDir:Ljava/io/File;
    .end local v15           #didDexOpt:Z
    .end local v16           #e:Ljava/io/FileNotFoundException;
    .end local v20           #i:I
    .end local v23           #libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v29           #paths:[Ljava/lang/String;
    .end local v32           #scanMode:I
    .end local v34           #startTime:J
    .end local p1
    :catchall_0
    move-exception v5

    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5

    :catchall_1
    move-exception v5

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5

    .restart local v11       #bootClassPath:Ljava/lang/String;
    .restart local v13       #dataDir:Ljava/io/File;
    .restart local v15       #didDexOpt:Z
    .restart local v20       #i:I
    .restart local v23       #libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v29       #paths:[Ljava/lang/String;
    .restart local v32       #scanMode:I
    .restart local v34       #startTime:J
    .restart local p1
    :catch_2
    move-exception v5

    move-object/from16 v16, v5

    .local v16, e:Ljava/io/IOException;
    :try_start_6
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading boot class path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v29, v20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .end local v16           #e:Ljava/io/IOException;
    .end local v20           #i:I
    .end local v29           #paths:[Ljava/lang/String;
    :cond_8
    const-string v5, "PackageManager"

    const-string v6, "No BOOTCLASSPATH found!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, libs:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_a
    :goto_6
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .local v22, lib:Ljava/lang/String;
    :try_start_7
    invoke-static/range {v22 .. v22}, Ldalvik/system/DexFile;->isDexOptNeeded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    const/16 v6, 0x3e8

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, v22

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/Installer;->dexopt(Ljava/lang/String;IZ)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    const/4 v15, 0x1

    goto :goto_6

    :catch_3
    move-exception v5

    move-object/from16 v16, v5

    .local v16, e:Ljava/io/FileNotFoundException;
    :try_start_8
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Library not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v16           #e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v5

    move-object/from16 v16, v5

    .local v16, e:Ljava/io/IOException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading library: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .end local v16           #e:Ljava/io/IOException;
    .end local v22           #lib:Ljava/lang/String;
    .end local v25           #libs:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/framework-res.apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/moto-res.apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/blur-res.apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/framework-miui-res.apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v19

    .local v19, frameworkFiles:[Ljava/lang/String;
    if-eqz v19, :cond_f

    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_7
    move-object/from16 v0, v19

    array-length v0, v0

    move v5, v0

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_f

    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    move-object v5, v0

    aget-object v6, v19, v20

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v24, libPath:Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v28

    .local v28, path:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_c
    :goto_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    :cond_d
    const-string v5, ".apk"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, ".jar"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v5

    if-eqz v5, :cond_c

    :cond_e
    :try_start_9
    invoke-static/range {v28 .. v28}, Ldalvik/system/DexFile;->isDexOptNeeded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    const/16 v6, 0x3e8

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, v28

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/Installer;->dexopt(Ljava/lang/String;IZ)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    const/4 v15, 0x1

    goto :goto_8

    :catch_5
    move-exception v5

    move-object/from16 v16, v5

    .local v16, e:Ljava/io/FileNotFoundException;
    :try_start_a
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Jar not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .end local v16           #e:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v5

    move-object/from16 v16, v5

    .local v16, e:Ljava/io/IOException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading jar: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .end local v16           #e:Ljava/io/IOException;
    .end local v20           #i:I
    .end local v24           #libPath:Ljava/io/File;
    .end local v28           #path:Ljava/lang/String;
    :cond_f
    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mDalvikCacheDir:Ljava/io/File;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v17

    .local v17, files:[Ljava/lang/String;
    if-eqz v17, :cond_12

    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_9
    move-object/from16 v0, v17

    array-length v0, v0

    move v5, v0

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_12

    aget-object v18, v17, v20

    .local v18, fn:Ljava/lang/String;
    const-string v5, "data@app@"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "data@app-private@"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_10
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pruning dalvik file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mDalvikCacheDir:Ljava/io/File;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_11
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .end local v11           #bootClassPath:Ljava/lang/String;
    .end local v15           #didDexOpt:Z
    .end local v17           #files:[Ljava/lang/String;
    .end local v18           #fn:Ljava/lang/String;
    .end local v19           #frameworkFiles:[Ljava/lang/String;
    .end local v20           #i:I
    :cond_12
    new-instance v5, Lcom/android/server/PackageManagerService$AppDirObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2c8

    const/4 v8, 0x1

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService$AppDirObserver;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;IZ)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mFrameworkInstallObserver:Landroid/os/FileObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkInstallObserver:Landroid/os/FileObserver;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/os/FileObserver;->startWatching()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    move-object v6, v0

    const/16 v7, 0x41

    or-int/lit8 v8, v32, 0x2

    const-wide/16 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->scanDirLI(Ljava/io/File;IIJ)V

    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "app"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSystemAppDir:Ljava/io/File;

    new-instance v5, Lcom/android/server/PackageManagerService$AppDirObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSystemAppDir:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2c8

    const/4 v8, 0x1

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService$AppDirObserver;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;IZ)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSystemInstallObserver:Landroid/os/FileObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSystemInstallObserver:Landroid/os/FileObserver;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/os/FileObserver;->startWatching()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSystemAppDir:Ljava/io/File;

    move-object v6, v0

    const/16 v7, 0x41

    const-wide/16 v9, 0x0

    move-object/from16 v5, p0

    move/from16 v8, v32

    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->scanDirLI(Ljava/io/File;IIJ)V

    new-instance v5, Ljava/io/File;

    const-string v6, "/vendor/app"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mVendorAppDir:Ljava/io/File;

    new-instance v5, Lcom/android/server/PackageManagerService$AppDirObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mVendorAppDir:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2c8

    const/4 v8, 0x1

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService$AppDirObserver;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;IZ)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mVendorInstallObserver:Landroid/os/FileObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mVendorInstallObserver:Landroid/os/FileObserver;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/os/FileObserver;->startWatching()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mVendorAppDir:Ljava/io/File;

    move-object v6, v0

    const/16 v7, 0x41

    const-wide/16 v9, 0x0

    move-object/from16 v5, p0

    move/from16 v8, v32

    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->scanDirLI(Ljava/io/File;IIJ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/Installer;->moveFiles()I

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, psit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    :cond_14
    :goto_a
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v30, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->pkgFlags:I

    move v5, v0

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->remove()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " no longer exists; wiping its data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .local v27, msg:Ljava/lang/String;
    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/server/Installer;->remove(Ljava/lang/String;Z)I

    goto :goto_a

    .end local v27           #msg:Ljava/lang/String;
    .end local v30           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_15
    new-instance v5, Ljava/io/File;

    const-string v6, "app"

    invoke-direct {v5, v13, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-nez v5, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/PackageManagerService$Settings;->getListOfIncompleteInstallPackages()Ljava/util/ArrayList;

    move-result-object v14

    .local v14, deletePkgsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    const/16 v20, 0x0

    .end local p1
    .restart local v20       #i:I
    :goto_b
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_17

    move-object v0, v14

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/PackageManagerService$PackageSetting;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/PackageManagerService;->cleanupInstallFailedPackage(Lcom/android/server/PackageManagerService$PackageSetting;)V

    add-int/lit8 v20, v20, 0x1

    goto :goto_b

    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PackageManagerService;->deleteTempPackageFiles()V

    const/16 v5, 0xc08

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    new-instance v5, Lcom/android/server/PackageManagerService$AppDirObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2c8

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService$AppDirObserver;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;IZ)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mAppInstallObserver:Landroid/os/FileObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppInstallObserver:Landroid/os/FileObserver;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/os/FileObserver;->startWatching()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    move-object v6, v0

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v5, p0

    move/from16 v8, v32

    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->scanDirLI(Ljava/io/File;IIJ)V

    new-instance v5, Lcom/android/server/PackageManagerService$AppDirObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2c8

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService$AppDirObserver;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;IZ)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mDrmAppInstallObserver:Landroid/os/FileObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mDrmAppInstallObserver:Landroid/os/FileObserver;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/os/FileObserver;->startWatching()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    move-object v6, v0

    const/16 v7, 0x10

    const-wide/16 v9, 0x0

    move-object/from16 v5, p0

    move/from16 v8, v32

    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->scanDirLI(Ljava/io/File;IIJ)V

    const-string v5, "PackageManager"

    const-string v6, "Forcing a check for dexopt of com.adobe.flashplayer"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "com.adobe.flashplayer"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService;->performDexOpt(Ljava/lang/String;)Z

    const/16 v5, 0xc12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Time to scan packages: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v7, v7, v34

    long-to-float v7, v7

    const/high16 v8, 0x447a

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/PackageManagerService$Settings;->mInternalSdkPlatform:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v6, v0

    if-eq v5, v6, :cond_19

    const/4 v5, 0x1

    move v9, v5

    .local v9, regrantPermissions:Z
    :goto_c
    if-eqz v9, :cond_18

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Platform changed from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v7, v0

    iget v7, v7, Lcom/android/server/PackageManagerService$Settings;->mInternalSdkPlatform:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; regranting permissions for internal storage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v6, v0

    iput v6, v5, Lcom/android/server/PackageManagerService$Settings;->mInternalSdkPlatform:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v5, p0

    move v10, v9

    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    const/16 v5, 0xc1c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    monitor-exit v21
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    monitor-exit v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    return-void

    .end local v9           #regrantPermissions:Z
    :cond_19
    const/4 v5, 0x0

    move v9, v5

    goto :goto_c
.end method

.method static synthetic access$1600(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-static {p0}, Lcom/android/server/PackageManagerService;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700()Ljava/util/Comparator;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/PackageManagerService;->mResolvePrioritySorter:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1800(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-static {p0}, Lcom/android/server/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-static {p0}, Lcom/android/server/PackageManagerService;->ignoreCodePath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/PackageManagerService;)Lcom/android/server/PackageManagerService$DefaultContainerConnection;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mDefContainerConn:Lcom/android/server/PackageManagerService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/PackageManagerService;Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/PackageManagerService;->updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallArgs;ZLcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PackageManagerService;->installPackageLI(Lcom/android/server/PackageManagerService$InstallArgs;ZLcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-static {p0}, Lcom/android/server/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallParams;)Lcom/android/server/PackageManagerService$InstallArgs;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->createInstallArgs(Lcom/android/server/PackageManagerService$InstallParams;)Lcom/android/server/PackageManagerService$InstallArgs;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallArgs;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->processPendingInstall(Lcom/android/server/PackageManagerService$InstallArgs;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/PackageManagerService;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/PackageManagerService$InstallArgs;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/PackageManagerService;->createInstallArgs(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/PackageManagerService$InstallArgs;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$MoveParams;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->processPendingMove(Lcom/android/server/PackageManagerService$MoveParams;I)V

    return-void
.end method

.method static synthetic access$2800(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/server/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/PackageManagerService;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->createTempPackageFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/PackageManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/PackageManagerService;Ljava/lang/String;ZZI)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/PackageManagerService;->deletePackageX(Ljava/lang/String;ZZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/PackageManagerService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->clearApplicationUserDataLI(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/PackageManagerService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->deleteApplicationCacheFilesLI(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageStats;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->getPackageSizeInfoLI(Ljava/lang/String;Landroid/content/pm/PackageStats;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/PackageManagerService;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->updateExternalMediaStatusInner(ZZ)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/PackageManagerService;ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/PackageManagerService;->sendResourcesChangedBroadcast(ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/PackageManagerService;Landroid/content/pm/PackageParser$Package;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->moveDexFilesLI(Landroid/content/pm/PackageParser$Package;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/PackageManagerService;->sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/PackageManagerService;Ljava/util/Set;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->unloadAllContainers(Ljava/util/Set;)V

    return-void
.end method

.method static appendInt([II)[I
    .locals 5
    .parameter "cur"
    .parameter "val"

    .prologue
    const/4 v4, 0x0

    if-nez p0, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput p1, v3, v4

    :goto_0
    return-object v3

    :cond_0
    array-length v0, p0

    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    aget v3, p0, v1

    if-ne v3, p1, :cond_1

    move-object v3, p0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v0, 0x1

    new-array v2, v3, [I

    .local v2, ret:[I
    invoke-static {p0, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p1, v2, v0

    move-object v3, v2

    goto :goto_0
.end method

.method static appendInts([I[I)[I
    .locals 3
    .parameter "cur"
    .parameter "add"

    .prologue
    if-nez p1, :cond_0

    move-object v2, p0

    :goto_0
    return-object v2

    :cond_0
    if-nez p0, :cond_1

    move-object v2, p1

    goto :goto_0

    :cond_1
    array-length v0, p1

    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    invoke-static {p0, v2}, Lcom/android/server/PackageManagerService;->appendInt([II)[I

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v2, p0

    goto :goto_0
.end method

.method static arrayToString([I)Ljava/lang/String;
    .locals 3
    .parameter "array"

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .local v0, buf:Ljava/lang/StringBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #i:I
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private checkPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;
    .locals 4
    .parameter "permName"

    .prologue
    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->findPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;

    move-result-object v0

    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not allowed to add to permission tree "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " owned by uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No permission tree found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 10
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .local p4, query:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v6

    .local v6, N:I
    if-ne v6, v0, :cond_0

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    move-object v0, p0

    .end local v6           #N:I
    :goto_0
    return-object v0

    .restart local v6       #N:I
    .restart local p0
    :cond_0
    if-le v6, v0, :cond_4

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .local v7, r0:Landroid/content/pm/ResolveInfo;
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .local v8, r1:Landroid/content/pm/ResolveInfo;
    iget v0, v7, Landroid/content/pm/ResolveInfo;->priority:I

    iget v1, v8, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v0, v1, :cond_1

    iget v0, v7, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iget v1, v8, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, v7, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v1, v8, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v0, v1, :cond_2

    :cond_1
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    move-object v0, p0

    goto :goto_0

    .restart local p0
    :cond_2
    iget v5, v7, Landroid/content/pm/ResolveInfo;->priority:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->findPreferredActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .local v9, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v9, :cond_3

    move-object v0, v9

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_0

    .end local v6           #N:I
    .end local v7           #r0:Landroid/content/pm/ResolveInfo;
    .end local v8           #r1:Landroid/content/pm/ResolveInfo;
    .end local v9           #ri:Landroid/content/pm/ResolveInfo;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearApplicationUserDataLI(Ljava/lang/String;)Z
    .locals 12
    .parameter "packageName"

    .prologue
    const/4 v10, 0x0

    const-string v11, "Package named \'"

    const-string v9, "\' doesn\'t exist."

    const-string v8, "PackageManager"

    if-nez p1, :cond_0

    const-string v6, "PackageManager"

    const-string v6, "Attempt to delete null packageName."

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v10

    :goto_0
    return v6

    :cond_0
    const/4 v1, 0x0

    .local v1, dataOnly:Z
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .local v2, p:Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_3

    const/4 v1, 0x1

    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v3, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v3, :cond_1

    iget-object v7, v3, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v7, :cond_2

    :cond_1
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package named \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' doesn\'t exist."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    move v6, v10

    goto :goto_0

    :cond_2
    iget-object v2, v3, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .end local v3           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    .local v5, useEncryptedFSDir:Z
    if-nez v1, :cond_6

    if-nez v2, :cond_4

    const-string v6, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package named \'"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' doesn\'t exist."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v10

    goto :goto_0

    .end local v2           #p:Landroid/content/pm/PackageParser$Package;
    .end local v5           #useEncryptedFSDir:Z
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .restart local v2       #p:Landroid/content/pm/PackageParser$Package;
    .restart local v5       #useEncryptedFSDir:Z
    :cond_4
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_5

    const-string v6, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has no applicationInfo."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v10

    goto/16 :goto_0

    :cond_5
    invoke-static {v2}, Lcom/android/server/PackageManagerService;->useEncryptedFilesystemForPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_6
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    invoke-virtual {v6, p1, v5}, Lcom/android/server/Installer;->clearUserData(Ljava/lang/String;Z)I

    move-result v4

    .local v4, retCode:I
    if-gez v4, :cond_7

    const-string v6, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t remove cache files for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v10

    goto/16 :goto_0

    .end local v4           #retCode:I
    :cond_7
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method private collectCertificatesLI(Landroid/content/pm/PackageParser;Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)Z
    .locals 6
    .parameter "pp"
    .parameter "ps"
    .parameter "pkg"
    .parameter "srcFile"
    .parameter "parseFlags"

    .prologue
    const/4 v4, 0x1

    const-string v5, "PackageManager"

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePath:Ljava/io/File;

    invoke-virtual {v0, p4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    invoke-virtual {p4}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    #getter for: Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;
    invoke-static {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    #getter for: Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;
    invoke-static {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    #getter for: Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;
    invoke-static {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v0

    iput-object v0, p3, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move v0, v4

    :goto_0
    return v0

    :cond_0
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageSetting for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is missing signatures.  Collecting certs again to recover them."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p1, p3, p5}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/PackageParser;->getParseError()I

    move-result v0

    iput v0, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " changed; collecting certs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method static comparePermissionInfos(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)Z
    .locals 3
    .parameter "pi1"
    .parameter "pi2"

    .prologue
    const/4 v2, 0x0

    iget v0, p0, Landroid/content/pm/PermissionInfo;->icon:I

    iget v1, p1, Landroid/content/pm/PermissionInfo;->icon:I

    if-eq v0, v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/content/pm/PermissionInfo;->logo:I

    iget v1, p1, Landroid/content/pm/PermissionInfo;->logo:I

    if-eq v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iget v1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "s1"
    .parameter "s2"

    .prologue
    const/4 v2, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static copyZipEntry(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipOutputStream;)V
    .locals 5
    .parameter "zipEntry"
    .parameter "inZipFile"
    .parameter "outZipStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .local v0, buffer:[B
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .local v2, newEntry:Ljava/util/zip/ZipEntry;
    :goto_0
    invoke-virtual {p2, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {p1, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .local v1, data:Ljava/io/InputStream;
    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, num:I
    if-lez v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    .end local v1           #data:Ljava/io/InputStream;
    .end local v2           #newEntry:Ljava/util/zip/ZipEntry;
    .end local v3           #num:I
    :cond_0
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .restart local v2       #newEntry:Ljava/util/zip/ZipEntry;
    goto :goto_0

    .restart local v1       #data:Ljava/io/InputStream;
    .restart local v3       #num:I
    :cond_1
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->flush()V

    return-void
.end method

.method private createInstallArgs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/PackageManagerService$InstallArgs;
    .locals 1
    .parameter "flags"
    .parameter "fullCodePath"
    .parameter "fullResourcePath"
    .parameter "nativeLibraryPath"

    .prologue
    invoke-static {p1}, Lcom/android/server/PackageManagerService;->installOnSd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/PackageManagerService$SdInstallArgs;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/server/PackageManagerService$SdInstallArgs;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/PackageManagerService$FileInstallArgs;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/server/PackageManagerService$FileInstallArgs;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createInstallArgs(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/PackageManagerService$InstallArgs;
    .locals 3
    .parameter "packageURI"
    .parameter "flags"
    .parameter "pkgName"
    .parameter "dataDir"

    .prologue
    invoke-static {p2}, Lcom/android/server/PackageManagerService;->installOnSd(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const-string v2, "/pkg.apk"

    invoke-static {v1, p3, v2}, Lcom/android/server/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, cid:Ljava/lang/String;
    new-instance v1, Lcom/android/server/PackageManagerService$SdInstallArgs;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/PackageManagerService$SdInstallArgs;-><init>(Lcom/android/server/PackageManagerService;Landroid/net/Uri;Ljava/lang/String;)V

    .end local v0           #cid:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/server/PackageManagerService$FileInstallArgs;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/android/server/PackageManagerService$FileInstallArgs;-><init>(Lcom/android/server/PackageManagerService;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createInstallArgs(Lcom/android/server/PackageManagerService$InstallParams;)Lcom/android/server/PackageManagerService$InstallArgs;
    .locals 1
    .parameter "params"

    .prologue
    iget v0, p1, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    invoke-static {v0}, Lcom/android/server/PackageManagerService;->installOnSd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/PackageManagerService$SdInstallArgs;

    invoke-direct {v0, p0, p1}, Lcom/android/server/PackageManagerService$SdInstallArgs;-><init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallParams;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/PackageManagerService$FileInstallArgs;

    invoke-direct {v0, p0, p1}, Lcom/android/server/PackageManagerService$FileInstallArgs;-><init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallParams;)V

    goto :goto_0
.end method

.method private createTempPackageFile(Ljava/io/File;)Ljava/io/File;
    .locals 8
    .parameter "installDir"

    .prologue
    const/4 v6, 0x0

    const-string v7, "PackageManager"

    :try_start_0
    const-string v2, "vmdl"

    const-string v3, ".tmp"

    invoke-static {v2, v3, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, tmpPackageFile:Ljava/io/File;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x180

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v1

    .end local v1           #tmpPackageFile:Ljava/io/File;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/io/IOException;
    const-string v2, "PackageManager"

    const-string v2, "Couldn\'t create temp file for downloaded package file."

    invoke-static {v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v6

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #tmpPackageFile:Ljava/io/File;
    :catch_1
    move-exception v2

    move-object v0, v2

    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "PackageManager"

    const-string v2, "Trouble getting the canoncical path for a temp file."

    invoke-static {v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v6

    goto :goto_0
.end method

.method private deleteApplicationCacheFilesLI(Ljava/lang/String;)Z
    .locals 8
    .parameter "packageName"

    .prologue
    const/4 v6, 0x0

    const-string v7, "PackageManager"

    if-nez p1, :cond_0

    const-string v4, "PackageManager"

    const-string v4, "Attempt to delete null packageName."

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    :goto_0
    return v4

    :cond_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .local v1, p:Landroid/content/pm/PackageParser$Package;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package named \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' doesn\'t exist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    goto :goto_0

    .end local v1           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .restart local v1       #p:Landroid/content/pm/PackageParser$Package;
    :cond_1
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_2

    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has no applicationInfo."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/android/server/PackageManagerService;->useEncryptedFilesystemForPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    .local v3, useEncryptedFSDir:Z
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    invoke-virtual {v4, p1, v3}, Lcom/android/server/Installer;->deleteCacheFiles(Ljava/lang/String;Z)I

    move-result v2

    .local v2, retCode:I
    if-gez v2, :cond_3

    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t remove cache files for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    goto :goto_0

    .end local v2           #retCode:I
    :cond_3
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method private deleteInstalledPackageLI(Landroid/content/pm/PackageParser$Package;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;Z)Z
    .locals 7
    .parameter "p"
    .parameter "deleteCodeAndResources"
    .parameter "flags"
    .parameter "outInfo"
    .parameter "writeSettings"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no applicationInfo."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    :goto_0
    return v2

    :cond_0
    if-eqz p4, :cond_1

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, p4, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->uid:I

    :cond_1
    invoke-direct {p0, p1, p4, p3, p5}, Lcom/android/server/PackageManagerService;->removePackageDataLI(Landroid/content/pm/PackageParser$Package;Lcom/android/server/PackageManagerService$PackageRemovedInfo;IZ)V

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/android/server/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    move v1, v2

    .local v1, installFlags:I
    :goto_1
    invoke-static {p1}, Lcom/android/server/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v6

    :goto_2
    or-int/2addr v1, v2

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->createInstallArgs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/PackageManagerService$InstallArgs;

    move-result-object v2

    iput-object v2, p4, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/PackageManagerService$InstallArgs;

    .end local v1           #installFlags:I
    :cond_2
    move v2, v6

    goto :goto_0

    :cond_3
    move v1, v5

    goto :goto_1

    .restart local v1       #installFlags:I
    :cond_4
    move v2, v5

    goto :goto_2
.end method

.method private deletePackageLI(Ljava/lang/String;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;Z)Z
    .locals 10
    .parameter "packageName"
    .parameter "deleteCodeAndResources"
    .parameter "flags"
    .parameter "outInfo"
    .parameter "writeSettings"

    .prologue
    const/4 v5, 0x0

    const-string v9, "Package named \'"

    const-string v4, "\' doesn\'t exist."

    const-string v3, "PackageManager"

    if-nez p1, :cond_0

    const-string v0, "PackageManager"

    const-string v0, "Attempt to delete null packageName."

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mDeviceManager:Landroid/os/IDeviceManager3LM;

    invoke-interface {v0, p1}, Landroid/os/IDeviceManager3LM;->checkAppUninstallPolicies(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v5

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v6, 0x0

    .local v6, dataOnly:Z
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .local v1, p:Landroid/content/pm/PackageParser$Package;
    if-nez v1, :cond_3

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v7, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v7, :cond_2

    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package named \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' doesn\'t exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    move v0, v5

    goto :goto_0

    :cond_2
    iget-object v1, v7, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .end local v7           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_4

    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package named \'"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' doesn\'t exist."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    goto :goto_0

    .end local v1           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v1       #p:Landroid/content/pm/PackageParser$Package;
    :cond_4
    if-eqz v6, :cond_5

    invoke-direct {p0, v1, p4, p3, p5}, Lcom/android/server/PackageManagerService;->removePackageDataLI(Landroid/content/pm/PackageParser$Package;Lcom/android/server/PackageManagerService$PackageRemovedInfo;IZ)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_6

    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has no applicationInfo."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    goto/16 :goto_0

    :cond_6
    const/4 v8, 0x0

    .local v8, ret:Z
    invoke-static {v1}, Lcom/android/server/PackageManagerService;->isSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing system package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, p3, p4, p5}, Lcom/android/server/PackageManagerService;->deleteSystemPackageLI(Landroid/content/pm/PackageParser$Package;ILcom/android/server/PackageManagerService$PackageRemovedInfo;Z)Z

    move-result v8

    :goto_1
    move v0, v8

    goto/16 :goto_0

    :cond_7
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing non-system package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/PackageManagerService;->killApplication(Ljava/lang/String;I)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->deleteInstalledPackageLI(Landroid/content/pm/PackageParser$Package;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;Z)Z

    move-result v8

    goto :goto_1
.end method

.method private deletePackageX(Ljava/lang/String;ZZI)Z
    .locals 10
    .parameter "packageName"
    .parameter "sendBroadCast"
    .parameter "deleteCodeAndResources"
    .parameter "flags"

    .prologue
    new-instance v4, Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    invoke-direct {v4}, Lcom/android/server/PackageManagerService$PackageRemovedInfo;-><init>()V

    .local v4, info:Lcom/android/server/PackageManagerService$PackageRemovedInfo;
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v6

    .local v6, dpm:Landroid/app/admin/IDevicePolicyManager;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6, p1}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not removing package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": has active device admin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .end local v6           #dpm:Landroid/app/admin/IDevicePolicyManager;
    :goto_0
    return v0

    .restart local v6       #dpm:Landroid/app/admin/IDevicePolicyManager;
    :catch_0
    move-exception v0

    :cond_0
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    .end local v6           #dpm:Landroid/app/admin/IDevicePolicyManager;
    monitor-enter v6

    const/high16 v0, 0x1

    or-int v3, p4, v0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->deletePackageLI(Ljava/lang/String;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;Z)Z

    move-result v8

    .local v8, res:Z
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_1

    if-eqz p2, :cond_1

    iget-boolean v9, v4, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    .local v9, systemUpdate:Z
    invoke-virtual {v4, p3, v9}, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->sendBroadcast(ZZ)V

    if-eqz v9, :cond_1

    new-instance v7, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Landroid/os/Bundle;-><init>(I)V

    .local v7, extras:Landroid/os/Bundle;
    const-string v0, "android.intent.extra.UID"

    iget v1, v4, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedUid:I

    if-ltz v1, :cond_3

    iget v1, v4, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedUid:I

    :goto_1
    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    const/4 v1, 0x0

    invoke-static {v0, p1, v7, v1}, Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    const/4 v1, 0x0

    invoke-static {v0, p1, v7, v1}, Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V

    .end local v7           #extras:Landroid/os/Bundle;
    .end local v9           #systemUpdate:Z
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    iget-object v0, v4, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v1, v4, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/PackageManagerService$InstallArgs;

    invoke-virtual {v1, p3}, Lcom/android/server/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    move v0, v8

    goto :goto_0

    .end local v8           #res:Z
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .restart local v7       #extras:Landroid/os/Bundle;
    .restart local v8       #res:Z
    .restart local v9       #systemUpdate:Z
    :cond_3
    iget v1, v4, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->uid:I

    goto :goto_1

    .end local v7           #extras:Landroid/os/Bundle;
    .end local v9           #systemUpdate:Z
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private deleteSystemPackageLI(Landroid/content/pm/PackageParser$Package;ILcom/android/server/PackageManagerService$PackageRemovedInfo;Z)Z
    .locals 9
    .parameter "p"
    .parameter "flags"
    .parameter "outInfo"
    .parameter "writeSettings"

    .prologue
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .local v6, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_0

    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no applicationInfo."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .end local v6           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v0

    .restart local v6       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    const/4 v7, 0x0

    .local v7, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/PackageManagerService$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v7

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to delete unknown system package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    const-string v0, "PackageManager"

    const-string v1, "Deleting system pkg from data partition"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    iget v0, v7, Lcom/android/server/PackageManagerService$PackageSettingBase;->versionCode:I

    iget v1, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    if-ge v0, v1, :cond_2

    and-int/lit8 p2, p2, -0x2

    :goto_1
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->deleteInstalledPackageLI(Landroid/content/pm/PackageParser$Package;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;Z)Z

    move-result v8

    .local v8, ret:Z
    if-nez v8, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    .end local v8           #ret:Z
    :cond_2
    or-int/lit8 p2, p2, 0x1

    goto :goto_1

    .restart local v8       #ret:Z
    :cond_3
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/PackageManagerService$Settings;->enableSystemPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesLI(Ljava/lang/String;)Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, v7, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePath:Ljava/io/File;

    const/4 v2, 0x5

    const/16 v3, 0x21

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .local v2, newPkg:Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_4

    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to restore system package:"

    .end local v2           #newPkg:Landroid/content/pm/PackageParser$Package;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .restart local v2       #newPkg:Landroid/content/pm/PackageParser$Package;
    :cond_4
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    .end local v6           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    monitor-enter v6

    :try_start_4
    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    if-eqz p4, :cond_5

    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v0}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    :cond_5
    monitor-exit v6

    const/4 v0, 0x1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method private deleteTempPackageFiles()V
    .locals 6

    .prologue
    new-instance v0, Lcom/android/server/PackageManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/PackageManagerService$6;-><init>(Lcom/android/server/PackageManagerService;)V

    .local v0, filter:Ljava/io/FilenameFilter;
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    invoke-virtual {v4, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    .local v3, tmpFilesList:[Ljava/lang/String;
    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    aget-object v5, v3, v1

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v2, tmpFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private extractPublicFiles(Landroid/content/pm/PackageParser$Package;Ljava/io/File;)V
    .locals 10
    .parameter "newPackage"
    .parameter "publicZipFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v1, fstr:Ljava/io/FileOutputStream;
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v4, publicZipOutStream:Ljava/util/zip/ZipOutputStream;
    new-instance v2, Ljava/util/zip/ZipFile;

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .local v2, privateZip:Ljava/util/zip/ZipFile;
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, privateZipEntries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .local v5, zipEntry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .local v6, zipEntryName:Ljava/lang/String;
    const-string v7, "AndroidManifest.xml"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "resources.arsc"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "res/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_1
    :try_start_0
    invoke-static {v5, v2, v4}, Lcom/android/server/PackageManagerService;->copyZipEntry(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v7

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    throw v7

    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #zipEntry:Ljava/util/zip/ZipEntry;
    .end local v6           #zipEntryName:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->finish()V

    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->flush()V

    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1a4

    invoke-static {v7, v8, v9, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    return-void
.end method

.method private findPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;
    .locals 4
    .parameter "permName"

    .prologue
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    iget-object v2, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    move-object v2, v0

    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "defProcessName"
    .parameter "processName"
    .parameter "uid"

    .prologue
    if-nez p1, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private generateApplicationInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .parameter "packageName"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v1, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->generatePackageInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .local v0, pInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .end local v0           #pInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .restart local v0       #pInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    move-object v2, v3

    goto :goto_0

    .end local v0           #pInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v2, v1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-static {v2, p2}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    goto :goto_0
.end method

.method private generatePackageInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 3
    .parameter "packageName"
    .parameter "flags"

    .prologue
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v0, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->pkgFlags:I

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePathString:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-direct {p0, v2}, Lcom/android/server/PackageManagerService;->getDataPathForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget v2, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    iput v2, v1, Landroid/content/pm/PackageParser$Package;->mSetEnabled:I

    :cond_0
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/PackageManagerService;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static final generatePermissionInfo(Lcom/android/server/PackageManagerService$BasePermission;I)Landroid/content/pm/PermissionInfo;
    .locals 2
    .parameter "bp"
    .parameter "flags"

    .prologue
    iget-object v1, p0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    invoke-static {v1, p1}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    .local v0, pi:Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    iput v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move-object v1, v0

    goto :goto_0
.end method

.method static getApkName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "codePath"

    .prologue
    const/4 v5, 0x0

    if-nez p0, :cond_0

    move-object v2, v5

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, sidx:I
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, eidx:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_1

    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Invalid code path, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Not a valid apk name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    goto :goto_0
.end method

.method private getDataPathForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/io/File;
    .locals 4
    .parameter "pkg"

    .prologue
    invoke-static {p1}, Lcom/android/server/PackageManagerService;->useEncryptedFilesystemForPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    .local v1, useEncryptedFSDir:Z
    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSecureAppDataDir:Ljava/io/File;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v0, dataPath:Ljava/io/File;
    :goto_0
    return-object v0

    .end local v0           #dataPath:Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mAppDataDir:Ljava/io/File;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v0       #dataPath:Ljava/io/File;
    goto :goto_0
.end method

.method private getEncryptKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x0

    const-string v3, "AppsOnSD"

    const-string v8, "PackageManager"

    :try_start_0
    invoke-static {}, Landroid/security/SystemKeyStore;->getInstance()Landroid/security/SystemKeyStore;

    move-result-object v3

    const-string v4, "AppsOnSD"

    invoke-virtual {v3, v4}, Landroid/security/SystemKeyStore;->retrieveKeyHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, sdEncKey:Ljava/lang/String;
    if-nez v2, :cond_0

    invoke-static {}, Landroid/security/SystemKeyStore;->getInstance()Landroid/security/SystemKeyStore;

    move-result-object v3

    const/16 v4, 0x80

    const-string v5, "AES"

    const-string v6, "AppsOnSD"

    invoke-virtual {v3, v4, v5, v6}, Landroid/security/SystemKeyStore;->generateNewKeyHexString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "PackageManager"

    const-string v4, "Failed to create encryption keys"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v7

    .end local v2           #sdEncKey:Ljava/lang/String;
    :goto_0
    return-object v3

    .restart local v2       #sdEncKey:Ljava/lang/String;
    :cond_0
    move-object v3, v2

    goto :goto_0

    .end local v2           #sdEncKey:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, nsae:Ljava/security/NoSuchAlgorithmException;
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create encryption keys with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v7

    goto :goto_0

    .end local v1           #nsae:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .local v0, ioe:Ljava/io/IOException;
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to retrieve encryption keys with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v7

    goto :goto_0
.end method

.method private getNativeBinaryDirForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/io/File;
    .locals 4
    .parameter "pkg"

    .prologue
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .local v0, nativeLibraryDir:Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v3, "lib"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "oldCodePath"
    .parameter "prefix"
    .parameter "suffix"

    .prologue
    const-string v7, "-"

    const-string v1, ""

    .local v1, idxStr:Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, idx:I
    if-eqz p0, :cond_2

    move-object v3, p0

    .local v3, subStr:Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .local v2, sidx:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "-"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "-"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v4, 0x1

    if-gt v0, v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    .end local v2           #sidx:I
    .end local v3           #subStr:Ljava/lang/String;
    :cond_2
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .restart local v2       #sidx:I
    .restart local v3       #subStr:Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getPackageSizeInfoLI(Ljava/lang/String;Landroid/content/pm/PackageStats;)Z
    .locals 13
    .parameter "packageName"
    .parameter "pStats"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v2, "PackageManager"

    if-nez p1, :cond_0

    const-string v0, "PackageManager"

    const-string v0, "Attempt to get size of null packageName."

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    :goto_0
    return v0

    :cond_0
    const/4 v7, 0x0

    .local v7, dataOnly:Z
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$Package;

    .local v8, p:Landroid/content/pm/PackageParser$Package;
    if-nez v8, :cond_3

    const/4 v7, 0x1

    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v9, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v9, :cond_1

    iget-object v1, v9, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package named \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' doesn\'t exist."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    move v0, v11

    goto :goto_0

    :cond_2
    iget-object v8, v9, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .end local v9           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .local v3, publicSrcDir:Ljava/lang/String;
    if-nez v7, :cond_5

    iget-object v6, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .local v6, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_4

    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has no applicationInfo."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    goto :goto_0

    .end local v3           #publicSrcDir:Ljava/lang/String;
    .end local v6           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v8           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .restart local v3       #publicSrcDir:Ljava/lang/String;
    .restart local v6       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v8       #p:Landroid/content/pm/PackageParser$Package;
    :cond_4
    invoke-static {v8}, Lcom/android/server/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object v3, v0

    .end local v6           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_5
    :goto_1
    invoke-static {v8}, Lcom/android/server/PackageManagerService;->useEncryptedFilesystemForPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    .local v5, useEncryptedFSDir:Z
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/Installer;->getSizeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageStats;Z)I

    move-result v10

    .local v10, res:I
    if-gez v10, :cond_7

    move v0, v11

    goto/16 :goto_0

    .end local v5           #useEncryptedFSDir:Z
    .end local v10           #res:I
    .restart local v6       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_6
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_1

    .end local v6           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v5       #useEncryptedFSDir:Z
    .restart local v10       #res:I
    :cond_7
    move v0, v12

    goto/16 :goto_0

    .end local v10           #res:I
    :cond_8
    move v0, v12

    goto/16 :goto_0
.end method

.method private static getSettingsProblemFile()Ljava/io/File;
    .locals 4

    .prologue
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .local v0, dataDir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "system"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v2, systemDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "uiderrors.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, fname:Ljava/io/File;
    return-object v1
.end method

.method static getTempContainerId()Ljava/lang/String;
    .locals 11

    .prologue
    const-string v10, "smdl2tmp"

    const/4 v7, 0x1

    .local v7, tmpIdx:I
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v4

    .local v4, list:[Ljava/lang/String;
    if-eqz v4, :cond_2

    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .local v5, name:Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v8, "smdl2tmp"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v8, "smdl2tmp"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .local v6, subStr:Ljava/lang/String;
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, cid:I
    if-lt v1, v7, :cond_0

    add-int/lit8 v7, v1, 0x1

    goto :goto_1

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #cid:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #subStr:Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "smdl2tmp"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #subStr:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method private grantPermissionsLP(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 21
    .parameter "pkg"
    .parameter "replace"

    .prologue
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v16, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v16, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object/from16 v18, v0

    move-object/from16 v9, v18

    .local v9, gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    :goto_1
    const/4 v8, 0x0

    .local v8, changedPermission:Z
    if-eqz p2, :cond_1

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService$PackageSettingBase;->permissionsFixed:Z

    move-object v0, v9

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_1

    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mGlobalGids:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v9

    iput-object v0, v1, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    :cond_1
    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mGlobalGids:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v9

    iput-object v0, v1, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, N:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    if-ge v10, v3, :cond_18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .local v12, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/PackageManagerService$BasePermission;

    .local v7, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v7, :cond_17

    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    move-object/from16 v18, v0

    if-eqz v18, :cond_17

    iget-object v15, v7, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    .local v15, perm:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, allowedSig:Z
    move-object v0, v7

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move-object v0, v7

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    :cond_3
    const/4 v5, 0x1

    .local v5, allowed:Z
    :cond_4
    :goto_3
    if-eqz v5, :cond_15

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->pkgFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_5

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->permissionsFixed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    if-nez v6, :cond_5

    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    const/4 v5, 0x0

    sget-object v18, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    move-object/from16 v0, v18

    array-length v0, v0

    move v4, v0

    .local v4, NP:I
    const/4 v11, 0x0

    .local v11, ip:I
    :goto_4
    if-ge v11, v4, :cond_5

    sget-object v18, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v13, v18, v11

    .local v13, npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v18, v0

    move-object v0, v13

    iget v0, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_12

    const/4 v5, 0x1

    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Auto-granting "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " to old pkg "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4           #NP:I
    .end local v11           #ip:I
    .end local v13           #npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_5
    if-eqz v5, :cond_14

    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_13

    const/4 v8, 0x1

    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    move-object/from16 v18, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/server/PackageManagerService;->appendInts([I[I)[I

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v9

    iput-object v0, v1, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    .end local v5           #allowed:Z
    .end local v6           #allowedSig:Z
    .end local v15           #perm:Ljava/lang/String;
    :cond_6
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .end local v3           #N:I
    .end local v7           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v8           #changedPermission:Z
    .end local v9           #gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    .end local v10           #i:I
    .end local v12           #name:Ljava/lang/String;
    :cond_7
    move-object/from16 v9, v16

    goto/16 :goto_1

    .restart local v3       #N:I
    .restart local v6       #allowedSig:Z
    .restart local v7       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .restart local v8       #changedPermission:Z
    .restart local v9       #gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    .restart local v10       #i:I
    .restart local v12       #name:Ljava/lang/String;
    .restart local v15       #perm:Ljava/lang/String;
    :cond_8
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    move-object/from16 v18, v0

    if-nez v18, :cond_9

    const/4 v5, 0x0

    .restart local v5       #allowed:Z
    goto/16 :goto_3

    .end local v5           #allowed:Z
    :cond_9
    move-object v0, v7

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    move-object v0, v7

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    :cond_a
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;
    invoke-static/range {v18 .. v18}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v18

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v18

    if-nez v18, :cond_d

    :cond_b
    const/16 v18, 0x1

    move/from16 v5, v18

    .restart local v5       #allowed:Z
    :goto_6
    if-nez v5, :cond_c

    move-object v0, v7

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    invoke-static/range {p1 .. p1}, Lcom/android/server/PackageManagerService;->isSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-static/range {p1 .. p1}, Lcom/android/server/PackageManagerService;->isUpdatedSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v18

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/PackageManagerService$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v17

    .local v17, sysPs:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object/from16 v18, v0

    move-object/from16 v14, v18

    .local v14, origGp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    :goto_7
    move-object v0, v14

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    const/4 v5, 0x1

    .end local v14           #origGp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    .end local v17           #sysPs:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_c
    :goto_8
    if-eqz v5, :cond_4

    const/4 v6, 0x1

    goto/16 :goto_3

    .end local v5           #allowed:Z
    :cond_d
    const/16 v18, 0x0

    move/from16 v5, v18

    goto :goto_6

    .restart local v5       #allowed:Z
    .restart local v17       #sysPs:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_e
    move-object/from16 v14, v17

    goto :goto_7

    .restart local v14       #origGp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    :cond_f
    const/4 v5, 0x0

    goto :goto_8

    .end local v14           #origGp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    .end local v17           #sysPs:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_10
    const/4 v5, 0x1

    goto :goto_8

    .end local v5           #allowed:Z
    :cond_11
    const/4 v5, 0x0

    .restart local v5       #allowed:Z
    goto/16 :goto_3

    .restart local v4       #NP:I
    .restart local v11       #ip:I
    .restart local v13       #npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_12
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .end local v4           #NP:I
    .end local v11           #ip:I
    .end local v13           #npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_13
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->haveGids:Z

    move/from16 v18, v0

    if-nez v18, :cond_6

    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    move-object/from16 v18, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/server/PackageManagerService;->appendInts([I[I)[I

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v9

    iput-object v0, v1, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    goto/16 :goto_5

    :cond_14
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Not granting permission "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " to package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " because it was previously installed without"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_15
    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    const/4 v8, 0x1

    move-object v0, v9

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    move-object/from16 v18, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/server/PackageManagerService;->removeInts([I[I)[I

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v9

    iput-object v0, v1, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Un-granting permission "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " from package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " (protectionLevel="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v7

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " flags=0x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_16
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Not granting permission "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " to package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " (protectionLevel="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v7

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " flags=0x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .end local v5           #allowed:Z
    .end local v6           #allowedSig:Z
    .end local v15           #perm:Ljava/lang/String;
    :cond_17
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown permission "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " in package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .end local v7           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v12           #name:Ljava/lang/String;
    :cond_18
    if-nez v8, :cond_19

    if-eqz p2, :cond_1a

    :cond_19
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->permissionsFixed:Z

    move/from16 v18, v0

    if-nez v18, :cond_1a

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->pkgFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_1b

    :cond_1a
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->pkgFlags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-eqz v18, :cond_1c

    :cond_1b
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService$PackageSettingBase;->permissionsFixed:Z

    :cond_1c
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService$PackageSettingBase;->haveGids:Z

    goto/16 :goto_0
.end method

.method private static hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgInfo"
    .parameter "perm"

    .prologue
    const/4 v2, 0x1

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Permission;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static ignoreCodePath(Ljava/lang/String;)Z
    .locals 5
    .parameter "fullPathStr"

    .prologue
    invoke-static {p0}, Lcom/android/server/PackageManagerService;->getApkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, apkName:Ljava/lang/String;
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, idx:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .local v2, version:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    .end local v2           #version:Ljava/lang/String;
    :goto_0
    return v3

    .restart local v2       #version:Ljava/lang/String;
    :catch_0
    move-exception v3

    .end local v2           #version:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private installNewPackageLI(Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .locals 9
    .parameter "pkg"
    .parameter "parseFlags"
    .parameter "scanMode"
    .parameter "installerPackageName"
    .parameter "res"

    .prologue
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .local v8, pkgName:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->getDataPathForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    .local v6, dataDirExists:Z
    iput-object v8, p5, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to re-install "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " without first uninstalling package running as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v3, v3, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    iput v1, p5, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    monitor-exit v0

    :cond_0
    :goto_0
    return-void

    .restart local p0
    :cond_1
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to re-install "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " without first uninstalling."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    iput v1, p5, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    monitor-exit v0

    goto :goto_0

    .end local p0
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local p0
    :cond_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->scanPackageLI(Landroid/content/pm/PackageParser$Package;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    .local v7, newPackage:Landroid/content/pm/PackageParser$Package;
    if-nez v7, :cond_4

    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package couldn\'t be installed in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    iput v0, p5, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, -0x2

    iput v0, p5, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto :goto_0

    :cond_4
    invoke-direct {p0, v7, p4, p5}, Lcom/android/server/PackageManagerService;->updateSettingsLI(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    iget v0, p5, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x0

    if-eqz v6, :cond_5

    const/4 v0, 0x1

    move v3, v0

    :goto_1
    iget-object v4, p5, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->deletePackageLI(Ljava/lang/String;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;Z)Z

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    move v3, v0

    goto :goto_1
.end method

.method static installOnSd(I)Z
    .locals 2
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private installPackageLI(Lcom/android/server/PackageManagerService$InstallArgs;ZLcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .locals 28
    .parameter "args"
    .parameter "newInstall"
    .parameter "res"

    .prologue
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/PackageManagerService$InstallArgs;->flags:I

    move/from16 v19, v0

    .local v19, pFlags:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    move-object v9, v0

    .local v9, installerPackageName:Ljava/lang/String;
    new-instance v27, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v27, tmpPackageFile:Ljava/io/File;
    and-int/lit8 v5, v19, 0x1

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    move v13, v5

    .local v13, forwardLocked:Z
    :goto_0
    and-int/lit8 v5, v19, 0x8

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    move/from16 v18, v5

    .local v18, onSd:Z
    :goto_1
    const/16 v24, 0x0

    .local v24, replace:Z
    if-eqz v18, :cond_2

    const/4 v5, 0x0

    :goto_2
    or-int/lit8 v5, v5, 0x4

    or-int/lit8 v5, v5, 0x8

    if-eqz p2, :cond_3

    const/16 v6, 0x10

    :goto_3
    or-int v8, v5, v6

    .local v8, scanMode:I
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-eqz v13, :cond_4

    const/16 v5, 0x10

    :goto_4
    or-int/lit8 v5, v5, 0x2

    if-eqz v18, :cond_5

    const/16 v6, 0x20

    :goto_5
    or-int v7, v5, v6

    .local v7, parseFlags:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    move v5, v0

    or-int/2addr v7, v5

    new-instance v22, Landroid/content/pm/PackageParser;

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .local v22, pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    move-object v6, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object v2, v5

    move-object v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .local v6, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v6, :cond_6

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/PackageParser;->getParseError()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .end local v6           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local p2
    :goto_6
    return-void

    .end local v7           #parseFlags:I
    .end local v8           #scanMode:I
    .end local v13           #forwardLocked:Z
    .end local v18           #onSd:Z
    .end local v22           #pp:Landroid/content/pm/PackageParser;
    .end local v24           #replace:Z
    .restart local p2
    :cond_0
    const/4 v5, 0x0

    move v13, v5

    goto :goto_0

    .restart local v13       #forwardLocked:Z
    :cond_1
    const/4 v5, 0x0

    move/from16 v18, v5

    goto :goto_1

    .restart local v18       #onSd:Z
    .restart local v24       #replace:Z
    :cond_2
    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .restart local v8       #scanMode:I
    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    .restart local v6       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v7       #parseFlags:I
    .restart local v22       #pp:Landroid/content/pm/PackageParser;
    :cond_6
    move-object v0, v6

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    .local v20, pkgName:Ljava/lang/String;
    iget-object v5, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_7

    and-int/lit8 v5, v19, 0x4

    if-nez v5, :cond_7

    const/16 v5, -0xf

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto :goto_6

    :cond_7
    move-object/from16 v0, v22

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/PackageParser;->getParseError()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto :goto_6

    :cond_8
    :try_start_0
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .local v21, pkgSigs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, v6, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v11, arr$:[Landroid/content/pm/Signature;
    array-length v15, v11

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_7
    if-ge v14, v15, :cond_9

    aget-object v25, v11, v14

    .local v25, sig:Landroid/content/pm/Signature;
    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    const/4 v10, 0x0

    invoke-static {v5, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .end local v25           #sig:Landroid/content/pm/Signature;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mDeviceManager:Landroid/os/IDeviceManager3LM;

    move-object v5, v0

    iget-object v10, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object v0, v5

    move-object/from16 v1, v20

    move-object v2, v10

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IDeviceManager3LM;->checkAppInstallPolicies(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_a

    const/4 v5, -0x2

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .end local v11           #arr$:[Landroid/content/pm/Signature;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v21           #pkgSigs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    move-object v12, v5

    .local v12, e:Landroid/os/RemoteException;
    const-string v5, "PackageManager"

    const-string v6, "Unable to communicate with 3LM device mgmt service"

    .end local v6           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x2

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto/16 :goto_6

    .end local v12           #e:Landroid/os/RemoteException;
    .restart local v6       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v11       #arr$:[Landroid/content/pm/Signature;
    .restart local v14       #i$:I
    .restart local v15       #len$:I
    .restart local v21       #pkgSigs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    const/16 v22, 0x0

    const/16 v16, 0x0

    .local v16, oldCodePath:Ljava/lang/String;
    const/16 v26, 0x0

    .local v26, systemApp:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    and-int/lit8 v10, v19, 0x2

    if-eqz v10, :cond_b

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v10, v0

    iget-object v10, v10, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .local v17, oldName:Ljava/lang/String;
    iget-object v10, v6, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-eqz v10, :cond_d

    iget-object v10, v6, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v10, v0

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->setPackageName(Ljava/lang/String;)V

    move-object v0, v6

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v24, 0x1

    .end local v17           #oldName:Ljava/lang/String;
    :cond_b
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v10, v0

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v23, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v23, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v10, v0

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/android/server/PackageManagerService$PackageSetting;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePathString:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v10, v0

    if-eqz v10, :cond_c

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v10, v0

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v10, :cond_c

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v10, v0

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_e

    const/4 v10, 0x1

    move/from16 v26, v10

    :cond_c
    :goto_9
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v26, :cond_f

    if-eqz v18, :cond_f

    const-string v5, "PackageManager"

    const-string v6, "Cannot install updates to system apps on sdcard"

    .end local v6           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x13

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto/16 :goto_6

    .end local v23           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v6       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v17       #oldName:Ljava/lang/String;
    .restart local p2
    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v10, v0

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/16 v24, 0x1

    goto :goto_8

    .end local v17           #oldName:Ljava/lang/String;
    .end local p2
    .restart local v23       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_e
    const/4 v10, 0x0

    move/from16 v26, v10

    goto :goto_9

    .end local v6           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v23           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v6       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v23       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_f
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move v5, v0

    move-object/from16 v0, p1

    move v1, v5

    move-object/from16 v2, v20

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService$InstallArgs;->doRename(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    const/4 v5, -0x4

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto/16 :goto_6

    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/PackageManagerService$InstallArgs;->getResourcePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v5, v10}, Lcom/android/server/PackageManagerService;->setApplicationInfoPaths(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/PackageManagerService$InstallArgs;->getNativeLibraryPath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-eqz v24, :cond_11

    move-object/from16 v5, p0

    move-object/from16 v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->replacePackageLI(Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    goto/16 :goto_6

    :cond_11
    move-object/from16 v5, p0

    move-object/from16 v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->installNewPackageLI(Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    goto/16 :goto_6
.end method

.method private static isExternal(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .parameter "pkg"

    .prologue
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .parameter "pkg"

    .prologue
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isPackageFilename(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    if-eqz p0, :cond_0

    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSystemApp(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1
    .parameter "pkg"

    .prologue
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUpdatedSystemApp(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1
    .parameter "pkg"

    .prologue
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private killApplication(Ljava/lang/String;I)V
    .locals 2
    .parameter "pkgName"
    .parameter "uid"

    .prologue
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, am:Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->killApplicationWithUid(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private loadMediaPackages(Ljava/util/HashMap;[ILjava/util/HashSet;)V
    .locals 23
    .parameter
    .parameter "uidArr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/PackageManagerService$SdInstallArgs;",
            "Ljava/lang/String;",
            ">;[I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, processCids:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/PackageManagerService$SdInstallArgs;Ljava/lang/String;>;"
    .local p3, removeCids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .local v21, pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    .local v19, keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/PackageManagerService$SdInstallArgs;>;"
    const/16 v17, 0x0

    .local v17, doGc:Z
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/PackageManagerService$SdInstallArgs;

    .local v14, args:Lcom/android/server/PackageManagerService$SdInstallArgs;
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .local v16, codePath:Ljava/lang/String;
    const/16 v22, -0x12

    .local v22, retCode:I
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v14, v5}, Lcom/android/server/PackageManagerService$SdInstallArgs;->doPreInstall(I)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to mount cid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v14, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " when installing from sdcard"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v5, 0x1

    move/from16 v0, v22

    move v1, v5

    if-eq v0, v1, :cond_0

    iget-object v5, v14, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    :goto_1
    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v16, :cond_2

    :try_start_1
    invoke-virtual {v14}, Lcom/android/server/PackageManagerService$SdInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v14, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cachepath "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Lcom/android/server/PackageManagerService$SdInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not match one in settings "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v5, 0x1

    move/from16 v0, v22

    move v1, v5

    if-eq v0, v1, :cond_0

    iget-object v5, v14, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    goto :goto_1

    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    move v5, v0

    or-int/lit8 v7, v5, 0x20

    .local v7, parseFlags:I
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    move-object v11, v0

    monitor-enter v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v6, Ljava/io/File;

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v20

    .local v20, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v22, 0x1

    :try_start_4
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Lcom/android/server/PackageManagerService$SdInstallArgs;->doPostInstall(I)I

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v7           #parseFlags:I
    :goto_2
    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v5, 0x1

    move/from16 v0, v22

    move v1, v5

    if-eq v0, v1, :cond_0

    iget-object v5, v14, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    goto/16 :goto_1

    .restart local v7       #parseFlags:I
    :catchall_0
    move-exception v6

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v6

    .end local v7           #parseFlags:I
    .end local v20           #pkg:Landroid/content/pm/PackageParser$Package;
    :catchall_1
    move-exception v5

    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v5

    const/4 v6, 0x1

    move/from16 v0, v22

    move v1, v6

    if-eq v0, v1, :cond_4

    iget-object v6, v14, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    move-object/from16 v0, p3

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    throw v5

    .restart local v7       #parseFlags:I
    .restart local v20       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_5
    :try_start_9
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to install pkg from  "

    .end local v7           #parseFlags:I
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from sdcard"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .end local v14           #args:Lcom/android/server/PackageManagerService$SdInstallArgs;
    .end local v16           #codePath:Ljava/lang/String;
    .end local v20           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v22           #retCode:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/PackageManagerService$Settings;->mExternalSdkPlatform:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v7, v0

    if-eq v6, v7, :cond_a

    const/4 v6, 0x1

    move v12, v6

    .local v12, regrantPermissions:Z
    :goto_3
    if-eqz v12, :cond_7

    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Platform changed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v8, v0

    iget v8, v8, Lcom/android/server/PackageManagerService$Settings;->mExternalSdkPlatform:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; regranting permissions for external storage"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v7, v0

    iput v7, v6, Lcom/android/server/PackageManagerService$Settings;->mExternalSdkPlatform:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v8, p0

    move v13, v12

    invoke-direct/range {v8 .. v13}, Lcom/android/server/PackageManagerService;->updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v21

    move-object/from16 v3, p2

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->sendResourcesChangedBroadcast(ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    :cond_8
    if-eqz v17, :cond_9

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    :cond_9
    if-eqz p3, :cond_c

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .local v15, cid:Ljava/lang/String;
    const-string v5, "smdl2tmp"

    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Destroying stale temporary container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v15}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    goto :goto_4

    .end local v12           #regrantPermissions:Z
    .end local v15           #cid:Ljava/lang/String;
    :cond_a
    const/4 v6, 0x0

    move v12, v6

    goto/16 :goto_3

    :catchall_3
    move-exception v6

    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v6

    .restart local v12       #regrantPermissions:Z
    .restart local v15       #cid:Ljava/lang/String;
    :cond_b
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is stale"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v15           #cid:Ljava/lang/String;
    :cond_c
    return-void
.end method

.method public static final main(Landroid/content/Context;Z)Landroid/content/pm/IPackageManager;
    .locals 2
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    new-instance v0, Lcom/android/server/PackageManagerService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/PackageManagerService;-><init>(Landroid/content/Context;Z)V

    .local v0, m:Lcom/android/server/PackageManagerService;
    const-string v1, "package"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-object v0
.end method

.method private moveDexFilesLI(Landroid/content/pm/PackageParser$Package;)I
    .locals 5
    .parameter "newPackage"

    .prologue
    const-string v4, "PackageManager"

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/Installer;->movedex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .local v0, retCode:I
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/PackageManagerService;->mNoDexOpt:Z

    if-eqz v1, :cond_1

    const-string v1, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dex file doesn\'t exist, skipping move: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #retCode:I
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .restart local v0       #retCode:I
    :cond_1
    const-string v1, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t rename dex file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    goto :goto_0
.end method

.method private performDexOptLI(Landroid/content/pm/PackageParser$Package;Z)I
    .locals 10
    .parameter "pkg"
    .parameter "forceDex"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v7, "PackageManager"

    const/4 v2, 0x0

    .local v2, performed:Z
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v4, :cond_3

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    .local v1, path:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, ret:I
    if-nez p2, :cond_0

    :try_start_0
    invoke-static {v1}, Ldalvik/system/DexFile;->isDexOptNeeded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Lcom/android/server/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v8

    :goto_0
    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/Installer;->dexopt(Ljava/lang/String;IZ)I

    move-result v3

    const/4 v4, 0x1

    iput-boolean v4, p1, Landroid/content/pm/PackageParser$Package;->mDidDexOpt:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ldalvik/system/StaleDexCacheError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v2, 0x1

    :cond_1
    :goto_1
    if-gez v3, :cond_3

    const/4 v4, -0x1

    .end local v1           #path:Ljava/lang/String;
    .end local v3           #ret:I
    :goto_2
    return v4

    .restart local v1       #path:Ljava/lang/String;
    .restart local v3       #ret:I
    :cond_2
    move v6, v9

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Apk not found for dexopt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_1

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/io/IOException;
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException reading apk: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, -0x1

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .local v0, e:Ldalvik/system/StaleDexCacheError;
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StaleDexCacheError when reading apk: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, -0x1

    goto :goto_1

    .end local v0           #e:Ldalvik/system/StaleDexCacheError;
    :catch_3
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    const-string v4, "PackageManager"

    const-string v4, "Exception when doing dexopt : "

    invoke-static {v7, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, -0x1

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #path:Ljava/lang/String;
    .end local v3           #ret:I
    :cond_3
    if-eqz v2, :cond_4

    move v4, v8

    goto :goto_2

    :cond_4
    move v4, v9

    goto :goto_2
.end method

.method private processPendingInstall(Lcom/android/server/PackageManagerService$InstallArgs;I)V
    .locals 2
    .parameter "args"
    .parameter "currentStatus"

    .prologue
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/PackageManagerService$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/PackageManagerService$5;-><init>(Lcom/android/server/PackageManagerService;ILcom/android/server/PackageManagerService$InstallArgs;)V

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private processPendingMove(Lcom/android/server/PackageManagerService$MoveParams;I)V
    .locals 2
    .parameter "mp"
    .parameter "currentStatus"

    .prologue
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/PackageManagerService$13;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/PackageManagerService$13;-><init>(Lcom/android/server/PackageManagerService;ILcom/android/server/PackageManagerService$MoveParams;)V

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private readPermissionsFromXml(Ljava/io/File;)V
    .locals 21
    .parameter "permFile"

    .prologue
    const/4 v13, 0x0

    .local v13, permReader:Ljava/io/FileReader;
    :try_start_0
    new-instance v14, Ljava/io/FileReader;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v13           #permReader:Ljava/io/FileReader;
    .local v14, permReader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .local v11, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v11, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string v18, "permissions"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :goto_0
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_1
    move-object v13, v14

    .end local v14           #permReader:Ljava/io/FileReader;
    .restart local v13       #permReader:Ljava/io/FileReader;
    :goto_2
    return-void

    :catch_0
    move-exception v18

    move-object/from16 v3, v18

    .local v3, e:Ljava/io/FileNotFoundException;
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Couldn\'t find or open permissions file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v3           #e:Ljava/io/FileNotFoundException;
    .end local v13           #permReader:Ljava/io/FileReader;
    .restart local v11       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14       #permReader:Ljava/io/FileReader;
    :cond_0
    :try_start_3
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .local v10, name:Ljava/lang/String;
    const-string v18, "group"

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    const/16 v18, 0x0

    const-string v19, "gid"

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, gidStr:Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .local v6, gid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mGlobalGids:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v6

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->appendInt([II)[I

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mGlobalGids:[I

    .end local v6           #gid:I
    :goto_3
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .end local v7           #gidStr:Ljava/lang/String;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v18

    move-object/from16 v3, v18

    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    const-string v18, "PackageManager"

    const-string v19, "Got execption parsing permissions."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v3

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v18

    goto :goto_1

    .restart local v7       #gidStr:Ljava/lang/String;
    .restart local v10       #name:Ljava/lang/String;
    .restart local v11       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    :try_start_6
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<group> without gid at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .end local v7           #gidStr:Ljava/lang/String;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v18

    move-object/from16 v3, v18

    .local v3, e:Ljava/io/IOException;
    :try_start_7
    const-string v18, "PackageManager"

    const-string v19, "Got execption parsing permissions."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v3

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    .end local v3           #e:Ljava/io/IOException;
    .restart local v10       #name:Ljava/lang/String;
    .restart local v11       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    :try_start_9
    const-string v18, "permission"

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/16 v18, 0x0

    const-string v19, "name"

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, perm:Ljava/lang/String;
    if-nez v12, :cond_3

    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<permission> without name at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .end local v10           #name:Ljava/lang/String;
    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v12           #perm:Ljava/lang/String;
    :catchall_0
    move-exception v18

    :try_start_a
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :goto_4
    throw v18

    .restart local v10       #name:Ljava/lang/String;
    .restart local v11       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12       #perm:Ljava/lang/String;
    :cond_3
    :try_start_b
    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v12           #perm:Ljava/lang/String;
    :cond_4
    const-string v18, "assign-permission"

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    const/16 v18, 0x0

    const-string v19, "name"

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #perm:Ljava/lang/String;
    if-nez v12, :cond_5

    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<assign-permission> without name at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_5
    const/16 v18, 0x0

    const-string v19, "uid"

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .local v17, uidStr:Ljava/lang/String;
    if-nez v17, :cond_6

    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<assign-permission> without uid at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_6
    invoke-static/range {v17 .. v17}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v16

    .local v16, uid:I
    if-gez v16, :cond_7

    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<assign-permission> with unknown uid \""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\" at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashSet;

    .local v15, perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v15, :cond_8

    new-instance v15, Ljava/util/HashSet;

    .end local v15           #perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .restart local v15       #perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_8
    invoke-virtual {v15, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .end local v12           #perm:Ljava/lang/String;
    .end local v15           #perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16           #uid:I
    .end local v17           #uidStr:Ljava/lang/String;
    :cond_9
    const-string v18, "library"

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    const/16 v18, 0x0

    const-string v19, "name"

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, lname:Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "file"

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, lfile:Ljava/lang/String;
    if-nez v9, :cond_a

    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<library> without name at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_a
    if-nez v8, :cond_b

    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<library> without file at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v9

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .end local v8           #lfile:Ljava/lang/String;
    .end local v9           #lname:Ljava/lang/String;
    :cond_c
    const-string v18, "feature"

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    const/16 v18, 0x0

    const-string v19, "name"

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, fname:Ljava/lang/String;
    if-nez v5, :cond_d

    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<feature> without name at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_d
    new-instance v4, Landroid/content/pm/FeatureInfo;

    invoke-direct {v4}, Landroid/content/pm/FeatureInfo;-><init>()V

    .local v4, fi:Landroid/content/pm/FeatureInfo;
    iput-object v5, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAvailableFeatures:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .end local v4           #fi:Landroid/content/pm/FeatureInfo;
    .end local v5           #fname:Ljava/lang/String;
    :cond_e
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_0

    .end local v10           #name:Ljava/lang/String;
    .end local v11           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v19

    goto/16 :goto_4
.end method

.method static removeInt([II)[I
    .locals 6
    .parameter "cur"
    .parameter "val"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    array-length v0, p0

    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    aget v3, p0, v1

    if-ne v3, p1, :cond_3

    sub-int v3, v0, v5

    new-array v2, v3, [I

    .local v2, ret:[I
    if-lez v1, :cond_1

    invoke-static {p0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    sub-int v3, v0, v5

    if-ge v1, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    sub-int/2addr v4, v5

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move-object v3, v2

    goto :goto_0

    .end local v2           #ret:[I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object v3, p0

    goto :goto_0
.end method

.method static removeInts([I[I)[I
    .locals 3
    .parameter "cur"
    .parameter "rem"

    .prologue
    if-nez p1, :cond_1

    :cond_0
    return-object p0

    :cond_1
    if-eqz p0, :cond_0

    array-length v0, p1

    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    invoke-static {p0, v2}, Lcom/android/server/PackageManagerService;->removeInt([II)[I

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private removePackageDataLI(Landroid/content/pm/PackageParser$Package;Lcom/android/server/PackageManagerService$PackageRemovedInfo;IZ)V
    .locals 18
    .parameter "p"
    .parameter "outInfo"
    .parameter "flags"
    .parameter "writeSettings"

    .prologue
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v13, v0

    .local v13, packageName:Ljava/lang/String;
    if-eqz p2, :cond_0

    move-object v0, v13

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    :cond_0
    const/high16 v3, 0x1

    and-int v3, v3, p3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v3, v0

    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v4, v0

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v10, deletedPs:Lcom/android/server/PackageManagerService$PackageSetting;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    and-int/lit8 v3, p3, 0x1

    if-nez v3, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/android/server/PackageManagerService;->useEncryptedFilesystemForPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v17

    .local v17, useEncryptedFSDir:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v3, v0

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v13

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Installer;->remove(Ljava/lang/String;Z)I

    move-result v16

    .local v16, retCode:I
    if-gez v16, :cond_1

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t remove app data or cache directory for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", retcode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v16           #retCode:I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService;->schedulePackageCleaning(Ljava/lang/String;)V

    .end local v17           #useEncryptedFSDir:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v9, v0

    monitor-enter v9

    if-eqz v10, :cond_9

    and-int/lit8 v3, p3, 0x1

    if-nez v3, :cond_4

    if-eqz p2, :cond_3

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v3, v0

    #calls: Lcom/android/server/PackageManagerService$Settings;->removePackageLP(Ljava/lang/String;)I
    invoke-static {v3, v13}, Lcom/android/server/PackageManagerService$Settings;->access$800(Lcom/android/server/PackageManagerService$Settings;Ljava/lang/String;)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedUid:I

    :cond_3
    if-eqz v10, :cond_4

    iget-object v4, v10, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/PackageManagerService;->updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    iget-object v3, v10, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mGlobalGids:[I

    move-object v4, v0

    #calls: Lcom/android/server/PackageManagerService$Settings;->updateSharedUserPermsLP(Lcom/android/server/PackageManagerService$PackageSetting;[I)V
    invoke-static {v3, v10, v4}, Lcom/android/server/PackageManagerService$Settings;->access$3200(Lcom/android/server/PackageManagerService$Settings;Lcom/android/server/PackageManagerService$PackageSetting;[I)V

    :cond_4
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .local v15, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v3, v0

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;
    invoke-static {v3}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/PackageManagerService$PreferredActivity;

    .local v12, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    iget-object v3, v12, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v10, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    .end local v15           #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :catchall_0
    move-exception v3

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .end local v10           #deletedPs:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .restart local v10       #deletedPs:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v17       #useEncryptedFSDir:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Package;

    .local v14, pkg:Landroid/content/pm/PackageParser$Package;
    new-instance v9, Ljava/io/File;

    iget-object v3, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v9, dataDir:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .end local v9           #dataDir:Ljava/io/File;
    .end local v14           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v17           #useEncryptedFSDir:Z
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v15       #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :cond_8
    :try_start_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/PackageManagerService$PreferredActivity;

    .restart local v12       #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v3, v0

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;
    invoke-static {v3}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/server/IntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    goto :goto_3

    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    .end local v15           #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :cond_9
    if-eqz p4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    :cond_a
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method private replaceNonSystemPackageLI(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .locals 23
    .parameter "deletedPackage"
    .parameter "pkg"
    .parameter "parseFlags"
    .parameter "scanMode"
    .parameter "installerPackageName"
    .parameter "res"

    .prologue
    const/16 v17, 0x0

    .local v17, newPackage:Landroid/content/pm/PackageParser$Package;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v5, v0

    .local v5, pkgName:Ljava/lang/String;
    const/16 v16, 0x1

    .local v16, deletedPkg:Z
    const/16 v22, 0x0

    .local v22, updatedSettings:Z
    const/16 v18, 0x0

    .local v18, oldInstallerPackageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v4, v0

    monitor-enter v4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    invoke-virtual {v6, v5}, Lcom/android/server/PackageManagerService$Settings;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v4, v0

    if-eqz v4, :cond_3

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/server/PackageManagerService$PackageSetting;

    move-object v0, v4

    iget-wide v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->lastUpdateTime:J

    move-wide/from16 v20, v0

    .local v20, origUpdateTime:J
    :goto_0
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object v8, v0

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/PackageManagerService;->deletePackageLI(Ljava/lang/String;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;Z)Z

    move-result v4

    if-nez v4, :cond_4

    const/16 v4, -0xa

    move v0, v4

    move-object/from16 v1, p6

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/16 v16, 0x0

    :cond_0
    :goto_1
    move-object/from16 v0, p6

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move v4, v0

    const/4 v6, 0x1

    if-eq v4, v6, :cond_2

    if-eqz v22, :cond_1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object v8, v0

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/PackageManagerService;->deletePackageLI(Ljava/lang/String;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;Z)Z

    :cond_1
    if-eqz v16, :cond_2

    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object v4, v0

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v7, restoreFile:Ljava/io/File;
    if-nez v7, :cond_6

    const-string v4, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed allocating storage when restoring pkg : "

    .end local v7           #restoreFile:Ljava/io/File;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #pkgName:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void

    .end local v20           #origUpdateTime:J
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .restart local v5       #pkgName:Ljava/lang/String;
    :cond_3
    const-wide/16 v20, 0x0

    .restart local v20       #origUpdateTime:J
    goto :goto_0

    :cond_4
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    or-int/lit8 v9, p4, 0x40

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v6 .. v11}, Lcom/android/server/PackageManagerService;->scanPackageLI(Landroid/content/pm/PackageParser$Package;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    if-nez v17, :cond_5

    const-string v4, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package couldn\'t be installed in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    move v4, v0

    move v0, v4

    move-object/from16 v1, p6

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    const/4 v4, -0x2

    move v0, v4

    move-object/from16 v1, p6

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->updateSettingsLI(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    const/16 v22, 0x1

    goto/16 :goto_1

    .restart local v7       #restoreFile:Ljava/io/File;
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/android/server/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z

    move-result v19

    .local v19, oldOnSd:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    move v4, v0

    or-int/lit8 v4, v4, 0x2

    invoke-static/range {p1 .. p1}, Lcom/android/server/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x10

    :goto_3
    or-int/2addr v4, v6

    if-eqz v19, :cond_8

    const/16 v6, 0x20

    :goto_4
    or-int v8, v4, v6

    .local v8, oldParseFlags:I
    if-eqz v19, :cond_9

    const/4 v4, 0x0

    :goto_5
    or-int/lit8 v4, v4, 0x8

    or-int/lit8 v9, v4, 0x40

    .local v9, oldScanMode:I
    move-object/from16 v6, p0

    move-wide/from16 v10, v20

    invoke-direct/range {v6 .. v11}, Lcom/android/server/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    if-nez v4, :cond_a

    const-string v4, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to restore package : "

    .end local v7           #restoreFile:Ljava/io/File;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #pkgName:Ljava/lang/String;
    const-string v6, " after failed upgrade"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v8           #oldParseFlags:I
    .end local v9           #oldScanMode:I
    .restart local v5       #pkgName:Ljava/lang/String;
    .restart local v7       #restoreFile:Ljava/io/File;
    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    .restart local v8       #oldParseFlags:I
    :cond_9
    const/4 v4, 0x1

    goto :goto_5

    .restart local v9       #oldScanMode:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v4, v0

    monitor-enter v4

    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v11, v0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    invoke-direct/range {v10 .. v15}, Lcom/android/server/PackageManagerService;->updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v4, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successfully restored package : "

    .end local v7           #restoreFile:Ljava/io/File;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #pkgName:Ljava/lang/String;
    const-string v6, " after failed upgrade"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .restart local v7       #restoreFile:Ljava/io/File;
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
.end method

.method private replacePackageLI(Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .locals 9
    .parameter "pkg"
    .parameter "parseFlags"
    .parameter "scanMode"
    .parameter "installerPackageName"
    .parameter "res"

    .prologue
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .local v7, pkgName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .local v1, oldPackage:Landroid/content/pm/PackageParser$Package;
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/PackageManagerService;->checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, -0x68

    iput v2, p5, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/android/server/PackageManagerService;->isSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v8

    .local v8, sysPkg:Z
    if-eqz v8, :cond_1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/PackageManagerService;->replaceSystemPackageLI(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    goto :goto_0

    .end local v1           #oldPackage:Landroid/content/pm/PackageParser$Package;
    .end local v8           #sysPkg:Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .restart local v1       #oldPackage:Landroid/content/pm/PackageParser$Package;
    .restart local v8       #sysPkg:Z
    :cond_1
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/PackageManagerService;->replaceNonSystemPackageLI(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    goto :goto_0
.end method

.method private replaceSystemPackageLI(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;IILjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .locals 17
    .parameter "deletedPackage"
    .parameter "pkg"
    .parameter "parseFlags"
    .parameter "scanMode"
    .parameter "installerPackageName"
    .parameter "res"

    .prologue
    const/4 v11, 0x0

    .local v11, newPackage:Landroid/content/pm/PackageParser$Package;
    const/16 v16, 0x0

    .local v16, updatedSettings:Z
    or-int/lit8 p3, p3, 0x3

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v15, v0

    .local v15, packageName:Ljava/lang/String;
    const/16 v5, -0xa

    move v0, v5

    move-object/from16 v1, p6

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-nez v15, :cond_1

    const-string v5, "PackageManager"

    const-string v6, "Attempt to delete null packageName."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v6, v0

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageParser$Package;

    .local v13, oldPkg:Landroid/content/pm/PackageParser$Package;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v14, oldPkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v13, :cond_2

    iget-object v6, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_2

    if-nez v14, :cond_3

    :cond_2
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " information"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_0

    .end local v13           #oldPkg:Landroid/content/pm/PackageParser$Package;
    .end local v14           #oldPkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v13       #oldPkg:Landroid/content/pm/PackageParser$Package;
    .restart local v14       #oldPkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v5, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService;->killApplication(Ljava/lang/String;I)V

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object v5, v0

    iget-object v6, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v6, v5, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->uid:I

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object v5, v0

    iput-object v15, v5, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    invoke-virtual {v6, v15}, Lcom/android/server/PackageManagerService$Settings;->disableSystemPackageLP(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    if-eqz p1, :cond_8

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object v6, v0

    invoke-static/range {p2 .. p2}, Lcom/android/server/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x8

    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v9, v0

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v10, v0

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->createInstallArgs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/PackageManagerService$InstallArgs;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/PackageManagerService$InstallArgs;

    :goto_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x80

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const-wide/16 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->scanPackageLI(Landroid/content/pm/PackageParser$Package;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v11

    if-nez v11, :cond_9

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package couldn\'t be installed in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p6

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    const/4 v5, -0x2

    move v0, v5

    move-object/from16 v1, p6

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    :cond_4
    :goto_3
    move-object/from16 v0, p6

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    if-eqz v11, :cond_5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V

    :cond_5
    const/16 v8, 0x9

    const-wide/16 v9, 0x0

    move-object/from16 v5, p0

    move-object v6, v13

    move/from16 v7, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->scanPackageLI(Landroid/content/pm/PackageParser$Package;IIJ)Landroid/content/pm/PackageParser$Package;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    if-eqz v16, :cond_6

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    invoke-virtual {v6, v15}, Lcom/android/server/PackageManagerService$Settings;->enableSystemPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    iget-object v7, v14, Lcom/android/server/PackageManagerService$PackageSettingBase;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v6, v15, v7}, Lcom/android/server/PackageManagerService$Settings;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    :cond_7
    const/16 v7, 0x10

    goto/16 :goto_1

    :cond_8
    :try_start_4
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/PackageManagerService$InstallArgs;

    goto/16 :goto_2

    :catchall_2
    move-exception v6

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v6

    :cond_9
    iget-object v5, v11, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v5, :cond_a

    iget-object v12, v11, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v12, newPkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-wide v5, v14, Lcom/android/server/PackageManagerService$PackageSettingBase;->firstInstallTime:J

    iput-wide v5, v12, Lcom/android/server/PackageManagerService$PackageSettingBase;->firstInstallTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v12, Lcom/android/server/PackageManagerService$PackageSettingBase;->lastUpdateTime:J

    .end local v12           #newPkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_a
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->updateSettingsLI(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    const/16 v16, 0x1

    goto :goto_3
.end method

.method private static reportSettingsProblem(ILjava/lang/String;)V
    .locals 9
    .parameter "priority"
    .parameter "msg"

    .prologue
    :try_start_0
    invoke-static {}, Lcom/android/server/PackageManagerService;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v1

    .local v1, fname:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v3, v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .local v3, out:Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .local v4, pw:Ljava/io/PrintWriter;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2}, Ljava/text/SimpleDateFormat;-><init>()V

    .local v2, formatter:Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .local v0, dateString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1fc

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #dateString:Ljava/lang/String;
    .end local v1           #fname:Ljava/io/File;
    .end local v2           #formatter:Ljava/text/SimpleDateFormat;
    .end local v3           #out:Ljava/io/FileOutputStream;
    .end local v4           #pw:Ljava/io/PrintWriter;
    :goto_0
    const-string v5, "PackageManager"

    invoke-static {p0, v5, p1}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private scanDirLI(Ljava/io/File;IIJ)V
    .locals 10
    .parameter "dir"
    .parameter "flags"
    .parameter "scanMode"
    .parameter "currentTime"

    .prologue
    const-string v9, "PackageManager"

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .local v6, files:[Ljava/lang/String;
    if-nez v6, :cond_1

    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No files in app dir "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, v6

    if-ge v7, v0, :cond_0

    new-instance v1, Ljava/io/File;

    aget-object v0, v6, v7

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, file:Ljava/io/File;
    aget-object v0, v6, v7

    invoke-static {v0}, Lcom/android/server/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    or-int/lit8 v2, p2, 0x4

    move-object v0, p0

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v8

    .local v8, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v8, :cond_2

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    const/4 v2, -0x2

    if-ne v0, v2, :cond_2

    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleaning up failed install of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private scanPackageLI(Landroid/content/pm/PackageParser$Package;IIJ)Landroid/content/pm/PackageParser$Package;
    .locals 53
    .parameter "pkg"
    .parameter "parseFlags"
    .parameter "scanMode"
    .parameter "currentTime"

    .prologue
    new-instance v46, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v46

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v46, scanFile:Ljava/io/File;
    if-eqz v46, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v5, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    if-nez v5, :cond_1

    :cond_0
    const-string v5, "PackageManager"

    const-string v6, " Code and resource paths haven\'t been set correctly"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    const/4 v5, 0x0

    .end local p1
    .end local p3
    :goto_0
    return-object v5

    .restart local p1
    .restart local p3
    :cond_1
    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mScanningPath:Ljava/io/File;

    if-nez p1, :cond_2

    const/16 v5, -0x6a

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "android"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    if-eqz v6, :cond_4

    const-string v6, "PackageManager"

    const-string v7, "*************************************************"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PackageManager"

    const-string v7, "Core android package being redefined.  Skipping."

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " file="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mScanningPath:Ljava/io/File;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PackageManager"

    const-string v7, "*************************************************"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x5

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    const/4 v6, 0x0

    monitor-exit v5

    move-object v5, v6

    goto :goto_0

    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v6, v0

    move v0, v6

    move-object/from16 v1, p1

    iput v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const-class v7, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/content/pm/ActivityInfo;->launchMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const/16 v7, 0x20

    iput v7, v6, Landroid/content/pm/ActivityInfo;->flags:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const v7, 0x10300a3

    iput v7, v6, Landroid/content/pm/ActivityInfo;->theme:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/content/pm/ActivityInfo;->exported:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/content/pm/ComponentInfo;->enabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    iput-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/content/pm/ResolveInfo;->priority:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/content/pm/ResolveInfo;->match:I

    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_6

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scanning package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Application package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " already installed.  Skipping duplicate."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    const/4 v5, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    :cond_8
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v10, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v10, destCodeFile:Ljava/io/File;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v11, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v11, destResourceFile:Ljava/io/File;
    const/4 v9, 0x0

    .local v9, suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    const/16 v40, 0x0

    .local v40, pkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-static/range {p1 .. p1}, Lcom/android/server/PackageManagerService;->isSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v17, v0

    monitor-enter v17

    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v5, v0

    if-nez v5, :cond_a

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_13

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    move-object v5, v0

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    :cond_c
    const/16 v30, 0x0

    .local v30, num:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_d

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v16, v5

    .local v16, N:I
    :goto_1
    const/16 v24, 0x0

    .local v24, i:I
    :goto_2
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .local v22, file:Ljava/lang/String;
    if-nez v22, :cond_e

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requires unavailable shared library "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; failing!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x9

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    const/4 v5, 0x0

    monitor-exit v17

    goto/16 :goto_0

    .end local v16           #N:I
    .end local v22           #file:Ljava/lang/String;
    .end local v24           #i:I
    .end local v30           #num:I
    :catchall_1
    move-exception v5

    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .restart local v30       #num:I
    .restart local p1
    :cond_d
    const/4 v5, 0x0

    move/from16 v16, v5

    goto :goto_1

    .restart local v16       #N:I
    .restart local v22       #file:Ljava/lang/String;
    .restart local v24       #i:I
    :cond_e
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    move-object v5, v0

    aput-object v22, v5, v30

    add-int/lit8 v30, v30, 0x1

    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .end local v22           #file:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_10

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v16, v5

    :goto_3
    const/16 v24, 0x0

    :goto_4
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .restart local v22       #file:Ljava/lang/String;
    if-nez v22, :cond_11

    const-string v6, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " desires unavailable shared library "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "; ignoring!"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .end local v22           #file:Ljava/lang/String;
    :cond_10
    const/4 v5, 0x0

    move/from16 v16, v5

    goto :goto_3

    .restart local v22       #file:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    move-object v5, v0

    aput-object v22, v5, v30

    add-int/lit8 v30, v30, 0x1

    goto :goto_5

    .end local v22           #file:Ljava/lang/String;
    :cond_12
    if-lez v30, :cond_13

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mTmpSharedLibraries:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x0

    move-object v0, v5

    move v1, v6

    move-object v2, v7

    move v3, v8

    move/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .end local v16           #N:I
    .end local v24           #i:I
    .end local v30           #num:I
    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/PackageManagerService$Settings;->getSharedUserLP(Ljava/lang/String;IZ)Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-result-object v9

    if-nez v9, :cond_14

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating application package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for shared user failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    const/4 v5, 0x0

    monitor-exit v17

    goto/16 :goto_0

    :cond_14
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_15

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shared UserID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v9, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): packages="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v9, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const/4 v7, 0x0

    .local v7, origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    const/4 v8, 0x0

    .local v8, realName:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/String;

    .local v43, renamed:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->setPackageName(Ljava/lang/String;)V

    .end local v43           #renamed:Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mTransferedPackages:Ljava/util/HashSet;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Package "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v12, v0

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " was transferred to another, but its .apk remains"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v13, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v15}, Lcom/android/server/PackageManagerService$Settings;->getPackageLP(Landroid/content/pm/PackageParser$Package;Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZZ)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v40

    if-nez v40, :cond_1b

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating application package "

    .end local v7           #origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    const/4 v5, 0x0

    monitor-exit v17

    goto/16 :goto_0

    .restart local v7       #origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v43       #renamed:Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v24, v5, v6

    .restart local v24       #i:I
    :goto_6
    if-ltz v24, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/android/server/PackageManagerService$Settings;->peekPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v7

    if-eqz v7, :cond_19

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService;->verifyPackageUpdate(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-nez v5, :cond_1a

    const/4 v7, 0x0

    :cond_19
    :goto_7
    add-int/lit8 v24, v24, -0x1

    goto :goto_6

    :cond_1a
    iget-object v5, v7, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v5, :cond_16

    iget-object v5, v7, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v5, v5, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to migrate data from "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v12, v7, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " to "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v12, v0

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ": old uid "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v7, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    .end local v7           #origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v7, v7, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " differs from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .restart local v7       #origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    goto :goto_7

    .end local v24           #i:I
    .end local v43           #renamed:Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->origPackage:Lcom/android/server/PackageManagerService$PackageSettingBase;

    move-object v5, v0

    if-eqz v5, :cond_1c

    iget-object v5, v7, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->setPackageName(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->realName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " renamed to replace old package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .local v26, msg:Ljava/lang/String;
    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mTransferedPackages:Ljava/util/HashSet;

    move-object v5, v0

    iget-object v6, v7, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSettingBase;->origPackage:Lcom/android/server/PackageManagerService$PackageSettingBase;

    .end local v26           #msg:Ljava/lang/String;
    :cond_1c
    if-eqz v8, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mTransferedPackages:Ljava/util/HashSet;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1e

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x80

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move v6, v0

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService;->verifySignaturesLP(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-nez v5, :cond_21

    and-int/lit8 v5, p2, 0x40

    if-nez v5, :cond_1f

    const/4 v5, 0x0

    monitor-exit v17

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object v6, v0

    #setter for: Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;
    invoke-static {v5, v6}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1102(Lcom/android/server/PackageManagerService$PackageSignatures;[Landroid/content/pm/Signature;)[Landroid/content/pm/Signature;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v5, v0

    if-eqz v5, :cond_20

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    #getter for: Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;
    invoke-static {v5}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v5

    if-eqz v5, :cond_20

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Signature mismatch for shared user : "

    .end local v7           #origPackage:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService;->mIsIgnoreMotoIMESignatureCheck:Z

    move v5, v0

    if-eqz v5, :cond_22

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_22

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "com.motorola.inputmethod"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_22

    const-string v5, "PackageManager"

    const-string v6, "Signature mismatch for moto ime, but we want continue"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " signature changed; retaining data."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .restart local v26       #msg:Ljava/lang/String;
    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .end local v26           #msg:Ljava/lang/String;
    :cond_21
    and-int/lit8 v5, p3, 0x10

    if-eqz v5, :cond_26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    .restart local v16       #N:I
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_8
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/PackageParser$Provider;

    .local v34, p:Landroid/content/pm/PackageParser$Provider;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v5, :cond_25

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .local v27, names:[Ljava/lang/String;
    const/16 v25, 0x0

    .local v25, j:I
    :goto_9
    move-object/from16 v0, v27

    array-length v0, v0

    move v5, v0

    move/from16 v0, v25

    move v1, v5

    if-ge v0, v1, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v5, v0

    aget-object v6, v27, v25

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v5, v0

    aget-object v6, v27, v25

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/PackageParser$Provider;

    .local v33, other:Landroid/content/pm/PackageParser$Provider;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t install because provider name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v27, v25

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (in package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") is already used by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v33, :cond_23

    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_23

    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    :goto_a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0xd

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    const/4 v5, 0x0

    monitor-exit v17

    goto/16 :goto_0

    .end local v16           #N:I
    .end local v24           #i:I
    .end local v25           #j:I
    .end local v27           #names:[Ljava/lang/String;
    .end local v33           #other:Landroid/content/pm/PackageParser$Provider;
    .end local v34           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_22
    const/16 v5, -0x68

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    const/4 v5, 0x0

    monitor-exit v17

    goto/16 :goto_0

    .restart local v16       #N:I
    .restart local v24       #i:I
    .restart local v25       #j:I
    .restart local v27       #names:[Ljava/lang/String;
    .restart local v33       #other:Landroid/content/pm/PackageParser$Provider;
    .restart local v34       #p:Landroid/content/pm/PackageParser$Provider;
    :cond_23
    const-string v7, "?"

    goto :goto_a

    .end local v33           #other:Landroid/content/pm/PackageParser$Provider;
    :cond_24
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_9

    .end local v25           #j:I
    .end local v27           #names:[Ljava/lang/String;
    :cond_25
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_8

    .end local v16           #N:I
    .end local v24           #i:I
    .end local v34           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_26
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v39, v0

    .local v39, pkgName:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_28

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v24, v5, v6

    .restart local v24       #i:I
    :goto_b
    if-ltz v24, :cond_28

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .local v32, origName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->peekPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v31

    .local v31, orig:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v31, :cond_27

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService;->verifyPackageUpdate(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-eqz v5, :cond_27

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adopting permissions from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, v32

    move-object v2, v6

    #calls: Lcom/android/server/PackageManagerService$Settings;->transferPermissions(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->access$1300(Lcom/android/server/PackageManagerService$Settings;Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    add-int/lit8 v24, v24, -0x1

    goto :goto_b

    .end local v24           #i:I
    .end local v31           #orig:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v32           #origName:Ljava/lang/String;
    :cond_28
    invoke-virtual/range {v46 .. v46}, Ljava/io/File;->lastModified()J

    move-result-wide v48

    .local v48, scanFileTime:J
    and-int/lit8 v5, p3, 0x4

    if-eqz v5, :cond_2b

    const/4 v5, 0x1

    move/from16 v23, v5

    .local v23, forceDex:Z
    :goto_c
    if-nez v23, :cond_29

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    move-wide v5, v0

    cmp-long v5, v48, v5

    if-eqz v5, :cond_2c

    :cond_29
    const/4 v5, 0x1

    move/from16 v47, v5

    .local v47, scanFileNewer:Z
    :goto_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v8, v0

    .end local v8           #realName:Ljava/lang/String;
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6, v7, v8}, Lcom/android/server/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_2d

    new-instance v20, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "system"

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v20, dataPath:Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-eqz v5, :cond_3b

    invoke-virtual/range {v46 .. v46}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v36

    .local v36, path:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-eqz v5, :cond_2a

    new-instance v28, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v28, nativeLibraryDir:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    .local v21, dataPathString:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/PackageManagerService;->isSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-static/range {p1 .. p1}, Lcom/android/server/PackageManagerService;->isUpdatedSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-nez v5, :cond_39

    invoke-static/range {v28 .. v28}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removed obsolete native libraries for system package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v21           #dataPathString:Ljava/lang/String;
    .end local v28           #nativeLibraryDir:Ljava/io/File;
    :cond_2a
    :goto_f
    move-object/from16 v0, v36

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_3b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService;->performDexOptLI(Landroid/content/pm/PackageParser$Package;Z)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3b

    const/16 v5, -0xb

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    const/4 v5, 0x0

    goto/16 :goto_0

    .end local v20           #dataPath:Ljava/io/File;
    .end local v23           #forceDex:Z
    .end local v36           #path:Ljava/lang/String;
    .end local v47           #scanFileNewer:Z
    .restart local v8       #realName:Ljava/lang/String;
    :cond_2b
    const/4 v5, 0x0

    move/from16 v23, v5

    goto/16 :goto_c

    .restart local v23       #forceDex:Z
    :cond_2c
    const/4 v5, 0x0

    move/from16 v47, v5

    goto/16 :goto_d

    .end local v8           #realName:Ljava/lang/String;
    .restart local v47       #scanFileNewer:Z
    :cond_2d
    invoke-static/range {p1 .. p1}, Lcom/android/server/PackageManagerService;->useEncryptedFilesystemForPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v52

    .local v52, useEncryptedFSDir:Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/PackageManagerService;->getDataPathForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/io/File;

    move-result-object v20

    .restart local v20       #dataPath:Ljava/io/File;
    const/16 v51, 0x0

    .local v51, uidError:Z
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/os/FileUtils;->getPermissions(Ljava/lang/String;[I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, v6, :cond_31

    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v5

    if-eqz v5, :cond_31

    const/16 v42, 0x0

    .local v42, recovered:Z
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-eqz v5, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v39

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Installer;->remove(Ljava/lang/String;Z)I

    move-result v44

    .local v44, ret:I
    if-ltz v44, :cond_2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has changed from uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; old data erased"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .restart local v26       #msg:Ljava/lang/String;
    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const/16 v42, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v0, v5

    move-object/from16 v1, v39

    move/from16 v2, v52

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/Installer;->install(Ljava/lang/String;ZII)I

    move-result v44

    const/4 v5, -0x1

    move/from16 v0, v44

    move v1, v5

    if-ne v0, v1, :cond_2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " could not have data directory re-created after delete."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const/4 v5, -0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    const/4 v5, 0x0

    goto/16 :goto_0

    .end local v26           #msg:Ljava/lang/String;
    .end local v44           #ret:I
    :cond_2e
    if-nez v42, :cond_2f

    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService;->mHasSystemUidErrors:Z

    :cond_2f
    if-nez v42, :cond_31

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/mismatched_uid/settings_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/fs_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has mismatched uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on disk, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in settings"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .restart local v26       #msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;
    invoke-static {v6}, Lcom/android/server/PackageManagerService$Settings;->access$1400(Lcom/android/server/PackageManagerService$Settings;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;
    invoke-static {v6}, Lcom/android/server/PackageManagerService$Settings;->access$1400(Lcom/android/server/PackageManagerService$Settings;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v51, 0x1

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->uidError:Z

    move v6, v0

    if-nez v6, :cond_30

    const/4 v6, 0x6

    move v0, v6

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :cond_30
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v26           #msg:Ljava/lang/String;
    .end local v42           #recovered:Z
    :cond_31
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    :goto_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-nez v5, :cond_32

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    if-eqz v5, :cond_32

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    move-object v5, v0

    if-nez v5, :cond_38

    new-instance v5, Ljava/io/File;

    const-string v6, "lib"

    move-object v0, v5

    move-object/from16 v1, v20

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v29

    .local v29, nativeLibraryPath:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    move-object/from16 v0, v29

    move-object v1, v5

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    .end local v29           #nativeLibraryPath:Ljava/lang/String;
    :cond_32
    :goto_11
    move/from16 v0, v51

    move-object/from16 v1, v40

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService$PackageSettingBase;->uidError:Z

    goto/16 :goto_e

    .restart local v26       #msg:Ljava/lang/String;
    .restart local v42       #recovered:Z
    :catchall_2
    move-exception v6

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v6

    .end local v26           #msg:Ljava/lang/String;
    .end local v42           #recovered:Z
    :cond_33
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_34

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-eqz v5, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v0, v5

    move-object/from16 v1, v39

    move/from16 v2, v52

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/Installer;->install(Ljava/lang/String;ZII)I

    move-result v44

    .restart local v44       #ret:I
    if-gez v44, :cond_36

    const/4 v5, -0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    const/4 v5, 0x0

    goto/16 :goto_0

    .end local v44           #ret:I
    :cond_35
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f9

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v8, v0

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_36
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_37

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto/16 :goto_10

    :cond_37
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create data directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto/16 :goto_10

    :cond_38
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    move-object v6, v0

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    goto/16 :goto_11

    .end local v51           #uidError:Z
    .end local v52           #useEncryptedFSDir:Z
    .restart local v21       #dataPathString:Ljava/lang/String;
    .restart local v28       #nativeLibraryDir:Ljava/io/File;
    .restart local v36       #path:Ljava/lang/String;
    :cond_39
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unpacking native libraries for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/Installer;->unlinkNativeLibraryDirectory(Ljava/lang/String;)I

    move-object/from16 v0, v46

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesLI(Ljava/io/File;Ljava/io/File;)I

    goto/16 :goto_f

    :cond_3a
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Linking native library dir for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v21

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Installer;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .end local v21           #dataPathString:Ljava/lang/String;
    .end local v28           #nativeLibraryDir:Ljava/io/File;
    .end local v36           #path:Ljava/lang/String;
    :cond_3b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService;->mFactoryTest:Z

    move v5, v0

    if-eqz v5, :cond_3c

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object v5, v0

    const-string v6, "android.permission.FACTORY_TEST"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_3c
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_3d

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService;->killApplication(Ljava/lang/String;I)V

    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    and-int/lit8 v6, p3, 0x1

    if-eqz v6, :cond_3e

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object v7, v0

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v40

    move-object/from16 v2, p1

    #calls: Lcom/android/server/PackageManagerService$Settings;->insertPackageSettingLP(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->access$1500(Lcom/android/server/PackageManagerService$Settings;Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object v0, v6

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-wide/16 v6, 0x0

    cmp-long v6, p4, v6

    if-eqz v6, :cond_42

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->firstInstallTime:J

    move-wide v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_41

    move-wide/from16 v0, p4

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/android/server/PackageManagerService$PackageSettingBase;->lastUpdateTime:J

    move-wide/from16 v0, p4

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/android/server/PackageManagerService$PackageSettingBase;->firstInstallTime:J

    :cond_3f
    :goto_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    .restart local v16       #N:I
    const/16 v41, 0x0

    .local v41, r:Ljava/lang/StringBuilder;
    const/16 v24, 0x0

    .end local v9           #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    .restart local v24       #i:I
    :goto_13
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_4b

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/PackageParser$Provider;

    .restart local v34       #p:Landroid/content/pm/PackageParser$Provider;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v9, v0

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7, v8, v9}, Lcom/android/server/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    move-object v6, v0

    new-instance v7, Landroid/content/ComponentName;

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v9, v0

    iget-object v9, v9, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    move v0, v6

    move-object/from16 v1, v34

    iput-boolean v0, v1, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v6, :cond_48

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .restart local v27       #names:[Ljava/lang/String;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const/16 v25, 0x0

    .restart local v25       #j:I
    move-object/from16 v35, v34

    .end local v34           #p:Landroid/content/pm/PackageParser$Provider;
    .local v35, p:Landroid/content/pm/PackageParser$Provider;
    :goto_14
    move-object/from16 v0, v27

    array-length v0, v0

    move v6, v0

    move/from16 v0, v25

    move v1, v6

    if-ge v0, v1, :cond_47

    const/4 v6, 0x1

    move/from16 v0, v25

    move v1, v6

    if-ne v0, v1, :cond_73

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    move v6, v0

    if-eqz v6, :cond_73

    new-instance v34, Landroid/content/pm/PackageParser$Provider;

    invoke-direct/range {v34 .. v35}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    .end local v35           #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v34       #p:Landroid/content/pm/PackageParser$Provider;
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, v34

    iput-boolean v0, v1, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v6, v0

    aget-object v7, v27, v25

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v6, v0

    aget-object v7, v27, v25

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v6, :cond_44

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    aget-object v7, v27, v25

    iput-object v7, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    :goto_16
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_40

    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Registered content provider: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v27, v25

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", className = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isSyncable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v8, v0

    iget-boolean v8, v8, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    :goto_17
    add-int/lit8 v25, v25, 0x1

    move-object/from16 v35, v34

    .end local v34           #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v35       #p:Landroid/content/pm/PackageParser$Provider;
    goto/16 :goto_14

    .end local v16           #N:I
    .end local v24           #i:I
    .end local v25           #j:I
    .end local v27           #names:[Ljava/lang/String;
    .end local v35           #p:Landroid/content/pm/PackageParser$Provider;
    .end local v41           #r:Ljava/lang/StringBuilder;
    .restart local v9       #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :cond_41
    and-int/lit8 v6, p3, 0x40

    if-eqz v6, :cond_3f

    move-wide/from16 v0, p4

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/android/server/PackageManagerService$PackageSettingBase;->lastUpdateTime:J

    goto/16 :goto_12

    .end local v9           #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    .end local p3
    :catchall_3
    move-exception v6

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v6

    .restart local v9       #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    .restart local p3
    :cond_42
    :try_start_7
    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->firstInstallTime:J

    move-wide v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_43

    move-wide/from16 v0, v48

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/android/server/PackageManagerService$PackageSettingBase;->lastUpdateTime:J

    move-wide/from16 v0, v48

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/android/server/PackageManagerService$PackageSettingBase;->firstInstallTime:J

    goto/16 :goto_12

    :cond_43
    and-int/lit8 v6, p2, 0x40

    if-eqz v6, :cond_3f

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    move-wide v6, v0

    cmp-long v6, v48, v6

    if-eqz v6, :cond_3f

    move-wide/from16 v0, v48

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/android/server/PackageManagerService$PackageSettingBase;->lastUpdateTime:J

    goto/16 :goto_12

    .end local v9           #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    .restart local v16       #N:I
    .restart local v24       #i:I
    .restart local v25       #j:I
    .restart local v27       #names:[Ljava/lang/String;
    .restart local v34       #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v41       #r:Ljava/lang/StringBuilder;
    :cond_44
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v27, v25

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto/16 :goto_16

    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v6, v0

    aget-object v7, v27, v25

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/PackageParser$Provider;

    .restart local v33       #other:Landroid/content/pm/PackageParser$Provider;
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping provider name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v27, v25

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (in package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): name already used by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v33, :cond_46

    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_46

    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    :goto_18
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    :cond_46
    const-string v8, "?"

    goto :goto_18

    .end local v33           #other:Landroid/content/pm/PackageParser$Provider;
    .end local v34           #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v35       #p:Landroid/content/pm/PackageParser$Provider;
    :cond_47
    move-object/from16 v34, v35

    .end local v25           #j:I
    .end local v27           #names:[Ljava/lang/String;
    .end local v35           #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v34       #p:Landroid/content/pm/PackageParser$Provider;
    :cond_48
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_49

    if-nez v41, :cond_4a

    new-instance v41, Ljava/lang/StringBuilder;

    .end local v41           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v41

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .restart local v41       #r:Ljava/lang/StringBuilder;
    :goto_19
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_49
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_13

    :cond_4a
    const/16 v6, 0x20

    move-object/from16 v0, v41

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_19

    .end local v34           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_4b
    if-eqz v41, :cond_4c

    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Providers: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v41, 0x0

    const/16 v24, 0x0

    :goto_1a
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_4f

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/content/pm/PackageParser$Service;

    .local v45, s:Landroid/content/pm/PackageParser$Service;
    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v9, v0

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7, v8, v9}, Lcom/android/server/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;->addService(Landroid/content/pm/PackageParser$Service;)V

    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_4d

    if-nez v41, :cond_4e

    new-instance v41, Ljava/lang/StringBuilder;

    .end local v41           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v41

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .restart local v41       #r:Ljava/lang/StringBuilder;
    :goto_1b
    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4d
    add-int/lit8 v24, v24, 0x1

    goto :goto_1a

    :cond_4e
    const/16 v6, 0x20

    move-object/from16 v0, v41

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b

    .end local v45           #s:Landroid/content/pm/PackageParser$Service;
    :cond_4f
    if-eqz v41, :cond_50

    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Services: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v41, 0x0

    const/16 v24, 0x0

    :goto_1c
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_53

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageParser$Activity;

    .local v17, a:Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v9, v0

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7, v8, v9}, Lcom/android/server/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    move-object v6, v0

    const-string v7, "receiver"

    move-object v0, v6

    move-object/from16 v1, v17

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->addActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_51

    if-nez v41, :cond_52

    new-instance v41, Ljava/lang/StringBuilder;

    .end local v41           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v41

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .restart local v41       #r:Ljava/lang/StringBuilder;
    :goto_1d
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_51
    add-int/lit8 v24, v24, 0x1

    goto :goto_1c

    :cond_52
    const/16 v6, 0x20

    move-object/from16 v0, v41

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    .end local v17           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_53
    if-eqz v41, :cond_54

    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Receivers: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v41, 0x0

    const/16 v24, 0x0

    :goto_1e
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_57

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageParser$Activity;

    .restart local v17       #a:Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v9, v0

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7, v8, v9}, Lcom/android/server/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    move-object v6, v0

    const-string v7, "activity"

    move-object v0, v6

    move-object/from16 v1, v17

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->addActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_55

    if-nez v41, :cond_56

    new-instance v41, Ljava/lang/StringBuilder;

    .end local v41           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v41

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .restart local v41       #r:Ljava/lang/StringBuilder;
    :goto_1f
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_55
    add-int/lit8 v24, v24, 0x1

    goto :goto_1e

    :cond_56
    const/16 v6, 0x20

    move-object/from16 v0, v41

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1f

    .end local v17           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_57
    if-eqz v41, :cond_58

    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Activities: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v41, 0x0

    const/16 v24, 0x0

    :goto_20
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_5d

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/pm/PackageParser$PermissionGroup;

    .local v38, pg:Landroid/content/pm/PackageParser$PermissionGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/PackageParser$PermissionGroup;

    .local v19, cur:Landroid/content/pm/PackageParser$PermissionGroup;
    if-nez v19, :cond_5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_59

    if-nez v41, :cond_5a

    new-instance v41, Ljava/lang/StringBuilder;

    .end local v41           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v41

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .restart local v41       #r:Ljava/lang/StringBuilder;
    :goto_21
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_59
    :goto_22
    add-int/lit8 v24, v24, 0x1

    goto :goto_20

    :cond_5a
    const/16 v6, 0x20

    move-object/from16 v0, v41

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_21

    :cond_5b
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission group "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ignored: original from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_59

    if-nez v41, :cond_5c

    new-instance v41, Ljava/lang/StringBuilder;

    .end local v41           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v41

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .restart local v41       #r:Ljava/lang/StringBuilder;
    :goto_23
    const-string v6, "DUP:"

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    :cond_5c
    const/16 v6, 0x20

    move-object/from16 v0, v41

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_23

    .end local v19           #cur:Landroid/content/pm/PackageParser$PermissionGroup;
    .end local v38           #pg:Landroid/content/pm/PackageParser$PermissionGroup;
    :cond_5d
    if-eqz v41, :cond_5e

    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Permission Groups: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v41, 0x0

    const/16 v24, 0x0

    .end local p3
    :goto_24
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_6c

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/PackageParser$Permission;

    .local v34, p:Landroid/content/pm/PackageParser$Permission;
    move-object/from16 v0, v34

    iget-boolean v0, v0, Landroid/content/pm/PackageParser$Permission;->tree:Z

    move v6, v0

    if-eqz v6, :cond_65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    move-object/from16 v37, v6

    .local v37, permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    :goto_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageParser$PermissionGroup;

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    iput-object v0, v1, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v6, :cond_5f

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    move-object v6, v0

    if-eqz v6, :cond_6b

    :cond_5f
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v37

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/PackageManagerService$BasePermission;

    .local v18, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-nez v18, :cond_60

    new-instance v18, Lcom/android/server/PackageManagerService$BasePermission;

    .end local v18           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v18

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService$BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .restart local v18       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v37

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_60
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    move-object v6, v0

    if-nez v6, :cond_69

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object v6, v0

    if-eqz v6, :cond_61

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    :cond_61
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService;->findPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;

    move-result-object v50

    .local v50, tree:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v50, :cond_62

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    :cond_62
    move-object/from16 v0, v40

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move v0, v6

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_63

    if-nez v41, :cond_66

    new-instance v41, Ljava/lang/StringBuilder;

    .end local v41           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v41

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .restart local v41       #r:Ljava/lang/StringBuilder;
    :goto_26
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v50           #tree:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_63
    :goto_27
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_64

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move v0, v6

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    .end local v18           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_64
    :goto_28
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_24

    .end local v37           #permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    move-object/from16 v37, v6

    goto/16 :goto_25

    .restart local v18       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .restart local v37       #permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    .restart local v50       #tree:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_66
    const/16 v6, 0x20

    move-object/from16 v0, v41

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26

    :cond_67
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ignored: base tree "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .end local v50           #tree:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_68
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ignored: original from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    :cond_69
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_63

    if-nez v41, :cond_6a

    new-instance v41, Ljava/lang/StringBuilder;

    .end local v41           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v41

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .restart local v41       #r:Ljava/lang/StringBuilder;
    :goto_29
    const-string v6, "DUP:"

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_27

    :cond_6a
    const/16 v6, 0x20

    move-object/from16 v0, v41

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_29

    .end local v18           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_6b
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ignored: no group "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .end local v34           #p:Landroid/content/pm/PackageParser$Permission;
    .end local v37           #permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    :cond_6c
    if-eqz v41, :cond_6d

    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Permissions: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v41, 0x0

    const/16 v24, 0x0

    :goto_2a
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_70

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageParser$Instrumentation;

    .local v17, a:Landroid/content/pm/PackageParser$Instrumentation;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstrumentation:Ljava/util/HashMap;

    move-object v6, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/PackageParser$Instrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_6e

    if-nez v41, :cond_6f

    new-instance v41, Ljava/lang/StringBuilder;

    .end local v41           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v41

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .restart local v41       #r:Ljava/lang/StringBuilder;
    :goto_2b
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6e
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2a

    :cond_6f
    const/16 v6, 0x20

    move-object/from16 v0, v41

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2b

    .end local v17           #a:Landroid/content/pm/PackageParser$Instrumentation;
    :cond_70
    if-eqz v41, :cond_71

    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Instrumentation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    move-object v6, v0

    if-eqz v6, :cond_72

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v24, 0x0

    :goto_2c
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProtectedBroadcasts:Ljava/util/HashSet;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v24, v24, 0x1

    goto :goto_2c

    :cond_72
    move-object/from16 v0, v40

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$PackageSetting;->setTimeStamp(J)V

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v5, p1

    goto/16 :goto_0

    .restart local v25       #j:I
    .restart local v27       #names:[Ljava/lang/String;
    .restart local v35       #p:Landroid/content/pm/PackageParser$Provider;
    .restart local p3
    :cond_73
    move-object/from16 v34, v35

    .end local v35           #p:Landroid/content/pm/PackageParser$Provider;
    .local v34, p:Landroid/content/pm/PackageParser$Provider;
    goto/16 :goto_15
.end method

.method private scanPackageLI(Ljava/io/File;IIJ)Landroid/content/pm/PackageParser$Package;
    .locals 21
    .parameter "scanFile"
    .parameter "parseFlags"
    .parameter "scanMode"
    .parameter "currentTime"

    .prologue
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    .local v19, scanPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    move v5, v0

    or-int p2, p2, v5

    new-instance v6, Landroid/content/pm/PackageParser;

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .local v6, pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    move-object v5, v0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object v3, v5

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v8

    .local v8, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v8, :cond_0

    invoke-virtual {v6}, Landroid/content/pm/PackageParser;->getParseError()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    const/4 v5, 0x0

    .end local v6           #pp:Landroid/content/pm/PackageParser;
    :goto_0
    return-object v5

    .restart local v6       #pp:Landroid/content/pm/PackageParser;
    :cond_0
    const/4 v7, 0x0

    .local v7, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v9, v0

    iget-object v9, v9, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    iget-object v10, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .local v17, oldName:Ljava/lang/String;
    iget-object v9, v8, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-eqz v9, :cond_1

    iget-object v9, v8, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v9, v0

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->peekPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v7

    :cond_1
    if-nez v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v9, v0

    iget-object v10, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/server/PackageManagerService$Settings;->peekPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v7

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v9, v0

    iget-object v9, v9, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    if-eqz v7, :cond_3

    iget-object v10, v7, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v20, updatedPkg:Lcom/android/server/PackageManagerService$PackageSetting;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v20, :cond_5

    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_5

    if-eqz v7, :cond_5

    iget-object v5, v7, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePath:Ljava/io/File;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget v5, v8, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v9, v7, Lcom/android/server/PackageManagerService$PackageSettingBase;->versionCode:I

    if-ge v5, v9, :cond_4

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #pp:Landroid/content/pm/PackageParser;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v7, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " at "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " ignored: updated version "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v7, Lcom/android/server/PackageManagerService$PackageSettingBase;->versionCode:I

    .end local v7           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " better than this "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v8, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    const/4 v5, 0x0

    goto/16 :goto_0

    .end local v20           #updatedPkg:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v6       #pp:Landroid/content/pm/PackageParser;
    .restart local v7       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_3
    :try_start_1
    iget-object v10, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    goto :goto_1

    .end local v6           #pp:Landroid/content/pm/PackageParser;
    .end local v17           #oldName:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .restart local v6       #pp:Landroid/content/pm/PackageParser;
    .restart local v17       #oldName:Ljava/lang/String;
    .restart local v20       #updatedPkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v9, v0

    iget-object v10, v7, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v5, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "reverting from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": new version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v8, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " better than installed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Lcom/android/server/PackageManagerService$PackageSettingBase;->versionCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Lcom/android/server/PackageManagerService$FileInstallArgs;

    iget-object v5, v7, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePathString:Ljava/lang/String;

    iget-object v9, v7, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iget-object v10, v7, Lcom/android/server/PackageManagerService$PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v9

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService$FileInstallArgs;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v15, args:Lcom/android/server/PackageManagerService$InstallArgs;
    invoke-virtual {v15}, Lcom/android/server/PackageManagerService$FileInstallArgs;->cleanUpResourcesLI()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    iget-object v9, v7, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/android/server/PackageManagerService$Settings;->enableSystemPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    .end local v15           #args:Lcom/android/server/PackageManagerService$InstallArgs;
    :cond_5
    if-eqz v20, :cond_6

    or-int/lit8 p2, p2, 0x1

    :cond_6
    move-object/from16 v5, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->collectCertificatesLI(Landroid/content/pm/PackageParser;Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #pp:Landroid/content/pm/PackageParser;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed verifying certificates for package:"

    .end local v7           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto/16 :goto_0

    .restart local v7       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .restart local v6       #pp:Landroid/content/pm/PackageParser;
    :cond_7
    if-eqz v7, :cond_8

    iget-object v5, v7, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePath:Ljava/io/File;

    iget-object v6, v7, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePath:Ljava/io/File;

    .end local v6           #pp:Landroid/content/pm/PackageParser;
    invoke-virtual {v5, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    or-int/lit8 p2, p2, 0x10

    :cond_8
    const/16 v16, 0x0

    .local v16, codePath:Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, resPath:Ljava/lang/String;
    if-eqz v7, :cond_a

    iget-object v5, v7, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a

    and-int/lit8 v5, p2, 0x10

    if-eqz v5, :cond_a

    iget-object v5, v7, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePathString:Ljava/lang/String;

    if-eqz v5, :cond_9

    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePathString:Ljava/lang/String;

    move-object/from16 v18, v0

    .end local v7           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :goto_2
    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v8

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/server/PackageManagerService;->setApplicationInfoPaths(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/lang/String;)V

    or-int/lit8 v12, p3, 0x8

    move-object/from16 v9, p0

    move-object v10, v8

    move/from16 v11, p2

    move-wide/from16 v13, p4

    invoke-direct/range {v9 .. v14}, Lcom/android/server/PackageManagerService;->scanPackageLI(Landroid/content/pm/PackageParser$Package;IIJ)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    goto/16 :goto_0

    .restart local v7       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_9
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resource path not set for pkg : "

    .end local v7           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .restart local v7       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_a
    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    move-object/from16 v18, v0

    goto :goto_2
.end method

.method private static final sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V
    .locals 11
    .parameter "action"
    .parameter "pkg"
    .parameter "extras"
    .parameter "finishedReceiver"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, am:Landroid/app/IActivityManager;
    if-eqz v0, :cond_2

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "package"

    const/4 v3, 0x0

    invoke-static {v1, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    invoke-direct {v2, p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v2, intent:Landroid/content/Intent;
    if-eqz p2, :cond_1

    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    const/high16 v1, 0x1000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz p3, :cond_3

    const/4 v4, 0x1

    move v9, v4

    :goto_0
    const/4 v10, 0x0

    move-object v4, p3

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    :goto_1
    return-void

    .restart local v2       #intent:Landroid/content/Intent;
    :cond_3
    move v9, v4

    goto :goto_0

    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;I)V
    .locals 4
    .parameter "packageName"
    .parameter "killFlag"
    .parameter
    .parameter "packageUid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, componentNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "android.intent.extra.changed_component_name"

    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .local v1, nameList:[Ljava/lang/String;
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v2, "android.intent.extra.changed_component_name_list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "android.intent.extra.DONT_KILL_APP"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "android.intent.extra.UID"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    const/4 v3, 0x0

    invoke-static {v2, p1, v0, v3}, Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V

    return-void
.end method

.method private sendResourcesChangedBroadcast(ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    .locals 5
    .parameter "mediaStatus"
    .parameter
    .parameter "uidArr"
    .parameter "finishedReceiver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[I",
            "Landroid/content/IIntentReceiver;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    if-lez v2, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, extras:Landroid/os/Bundle;
    const-string v3, "android.intent.extra.changed_package_list"

    new-array v4, v2, [Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    invoke-virtual {v1, v3, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string v3, "android.intent.extra.changed_uid_list"

    invoke-virtual {v1, v3, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_0
    if-eqz p1, :cond_2

    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object v0, v3

    .local v0, action:Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    invoke-static {v0, v3, v1, p4}, Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V

    .end local v0           #action:Ljava/lang/String;
    .end local v1           #extras:Landroid/os/Bundle;
    :cond_1
    return-void

    .restart local v1       #extras:Landroid/os/Bundle;
    :cond_2
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object v0, v3

    goto :goto_0
.end method

.method private static setApplicationInfoPaths(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pkg"
    .parameter "destCodePath"
    .parameter "destResPath"

    .prologue
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p2, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    return-void
.end method

.method private setEnabledSetting(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 22
    .parameter "packageName"
    .parameter "className"
    .parameter "newState"
    .parameter "flags"

    .prologue
    if-eqz p3, :cond_0

    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    const/16 v17, 0x2

    move/from16 v0, p3

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid new component state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .local v16, uid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v13

    .local v13, permission:I
    if-nez v13, :cond_1

    const/16 v17, 0x1

    move/from16 v5, v17

    .local v5, allowedByPermission:Z
    :goto_0
    const/4 v15, 0x0

    .local v15, sendNow:Z
    if-nez p2, :cond_2

    const/16 v17, 0x1

    move/from16 v10, v17

    .local v10, isApp:Z
    :goto_1
    if-eqz v10, :cond_3

    move-object/from16 v8, p1

    .local v8, componentName:Ljava/lang/String;
    :goto_2
    const/4 v12, -0x1

    .local v12, packageUid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v17, v0

    monitor-enter v17

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v14, pkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v14, :cond_5

    if-nez p2, :cond_4

    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown package: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .end local v14           #pkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_0
    move-exception v18

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .end local v5           #allowedByPermission:Z
    .end local v8           #componentName:Ljava/lang/String;
    .end local v10           #isApp:Z
    .end local v12           #packageUid:I
    .end local v15           #sendNow:Z
    :cond_1
    const/16 v17, 0x0

    move/from16 v5, v17

    goto :goto_0

    .restart local v5       #allowedByPermission:Z
    .restart local v15       #sendNow:Z
    :cond_2
    const/16 v17, 0x0

    move/from16 v10, v17

    goto :goto_1

    .restart local v10       #isApp:Z
    :cond_3
    move-object/from16 v8, p2

    goto :goto_2

    .restart local v8       #componentName:Ljava/lang/String;
    .restart local v12       #packageUid:I
    .restart local v14       #pkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_4
    :try_start_1
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown component: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_5
    if-nez v5, :cond_6

    move-object v0, v14

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    new-instance v18, Ljava/lang/SecurityException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Permission Denial: attempt to change component state from pid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", uid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", package uid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v14

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_6
    if-nez p2, :cond_d

    move-object v0, v14

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-ne v0, v1, :cond_7

    monitor-exit v17

    :goto_3
    return-void

    :cond_7
    move/from16 v0, p3

    move-object v1, v14

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    move-object v0, v14

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v18, v0

    move/from16 v0, p3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/PackageParser$Package;->mSetEnabled:I

    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    iget v12, v14, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .local v9, components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v9, :cond_e

    const/16 v18, 0x1

    move/from16 v11, v18

    .local v11, newPackage:Z
    :goto_5
    if-eqz v11, :cond_9

    new-instance v9, Ljava/util/ArrayList;

    .end local v9           #components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .restart local v9       #components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    and-int/lit8 v18, p4, 0x1

    if-nez v18, :cond_f

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_6
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, callingId:J
    if-eqz v15, :cond_c

    and-int/lit8 v17, p4, 0x1

    if-eqz v17, :cond_11

    const/16 v17, 0x1

    :goto_7
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move-object v3, v9

    move v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_c
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .end local v6           #callingId:J
    .end local v9           #components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #newPackage:Z
    :cond_d
    packed-switch p3, :pswitch_data_0

    :try_start_3
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Invalid new component state: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v17

    goto/16 :goto_3

    :pswitch_0
    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageSetting;->enableComponentLP(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_8

    const-string v18, "PackageManager"

    const-string v19, "setEnabledSetting(ENABLED) - would have exited here"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_1
    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageSetting;->disableComponentLP(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_8

    const-string v18, "PackageManager"

    const-string v19, "setEnabledSetting(DISABLED) - would have exited here"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_2
    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageSetting;->restoreComponentLP(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_8

    const-string v18, "PackageManager"

    const-string v19, "setEnabledSetting(DEFAULT) - would have exited here"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .restart local v9       #components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_e
    const/16 v18, 0x0

    move/from16 v11, v18

    goto/16 :goto_5

    .restart local v11       #newPackage:Z
    :cond_f
    if-eqz v11, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/PackageManagerService$PackageHandler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const-wide/16 v20, 0x2710

    invoke-virtual/range {v18 .. v21}, Lcom/android/server/PackageManagerService$PackageHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_6

    .restart local v6       #callingId:J
    :cond_11
    const/16 v17, 0x0

    goto/16 :goto_7

    :catchall_1
    move-exception v17

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v17

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setPermissionsLI(Landroid/content/pm/PackageParser$Package;)I
    .locals 11
    .parameter "newPackage"

    .prologue
    const/4 v9, -0x4

    const-string v10, "PackageManager"

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .local v3, pkgName:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, retCode:I
    invoke-static {p1}, Lcom/android/server/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, destResourceFile:Ljava/io/File;
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/PackageManagerService;->extractPublicFiles(Landroid/content/pm/PackageParser$Package;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/PackageManagerService;->getApkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/Installer;->setForwardLockPerm(Ljava/lang/String;I)I

    move-result v4

    .end local v0           #destResourceFile:Ljava/io/File;
    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    const-string v5, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t set new package file permissions for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". The return code was: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    :goto_1
    return v5

    .restart local v0       #destResourceFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    :try_start_1
    const-string v5, "PackageManager"

    const-string v6, "Couldn\'t create a new zip file for the public parts of a forward-locked app."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v9

    goto :goto_1

    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    throw v5

    :cond_1
    const/16 v2, 0x1a0

    .local v2, filePermissions:I
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    const/16 v6, 0x1a0

    const/4 v7, -0x1

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v4

    goto :goto_0

    .end local v0           #destResourceFile:Ljava/io/File;
    .end local v2           #filePermissions:I
    :cond_2
    const/4 v5, 0x1

    goto :goto_1
.end method

.method static splitString(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 5
    .parameter "str"
    .parameter "sep"

    .prologue
    const/4 v0, 0x1

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v3, v0, [Ljava/lang/String;

    .local v3, res:[Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .local v2, lastI:I
    :goto_1
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    return-object v3
.end method

.method private unloadAllContainers(Ljava/util/Set;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/PackageManagerService$SdInstallArgs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, cidArgs:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/PackageManagerService$SdInstallArgs;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$SdInstallArgs;

    .local v0, arg:Lcom/android/server/PackageManagerService$SdInstallArgs;
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v3}, Lcom/android/server/PackageManagerService$SdInstallArgs;->doPostDeleteLI(Z)Z

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .end local v0           #arg:Lcom/android/server/PackageManagerService$SdInstallArgs;
    :cond_0
    return-void
.end method

.method private unloadMediaPackages(Ljava/util/HashMap;[IZ)V
    .locals 19
    .parameter
    .parameter "uidArr"
    .parameter "reportStatus"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/PackageManagerService$SdInstallArgs;",
            "Ljava/lang/String;",
            ">;[IZ)V"
        }
    .end annotation

    .prologue
    .local p1, processCids:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/PackageManagerService$SdInstallArgs;Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .local v17, pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .local v13, failedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/PackageManagerService$SdInstallArgs;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    .local v15, keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/PackageManagerService$SdInstallArgs;>;"
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/PackageManagerService$SdInstallArgs;

    .local v11, args:Lcom/android/server/PackageManagerService$SdInstallArgs;
    iget-object v12, v11, Lcom/android/server/PackageManagerService$SdInstallArgs;->cid:Ljava/lang/String;

    .local v12, cid:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/server/PackageManagerService$SdInstallArgs;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .local v6, pkgName:Ljava/lang/String;
    new-instance v9, Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    invoke-direct {v9}, Lcom/android/server/PackageManagerService$PackageRemovedInfo;-><init>()V

    .local v9, outInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    move-object v12, v0

    .end local v12           #cid:Ljava/lang/String;
    monitor-enter v12

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object/from16 v5, p0

    :try_start_0
    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->deletePackageLI(Ljava/lang/String;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;Z)Z

    move-result v18

    .local v18, res:Z
    if-eqz v18, :cond_0

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v6           #pkgName:Ljava/lang/String;
    :goto_1
    monitor-exit v12

    goto :goto_0

    .end local v18           #res:Z
    :catchall_0
    move-exception v5

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v6       #pkgName:Ljava/lang/String;
    .restart local v18       #res:Z
    :cond_0
    :try_start_1
    const-string v5, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to delete pkg from sdcard : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .end local v6           #pkgName:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v9           #outInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;
    .end local v11           #args:Lcom/android/server/PackageManagerService$SdInstallArgs;
    .end local v18           #res:Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v5, 0x0

    new-instance v6, Lcom/android/server/PackageManagerService$12;

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService$12;-><init>(Lcom/android/server/PackageManagerService;ZLjava/util/Set;)V

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->sendResourcesChangedBroadcast(ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    :goto_2
    return-void

    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    move-object v5, v0

    const/16 v6, 0xc

    if-eqz p3, :cond_3

    const/4 v7, 0x1

    :goto_3
    const/4 v8, -0x1

    invoke-virtual {v5, v6, v7, v8, v15}, Lcom/android/server/PackageManagerService$PackageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .local v16, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .end local v16           #msg:Landroid/os/Message;
    :cond_3
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private updateExternalMediaStatusInner(ZZ)V
    .locals 25
    .parameter "mediaStatus"
    .parameter "reportStatus"

    .prologue
    const/16 v20, 0x0

    .local v20, uidArr:[I
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .local v18, removeCids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .local v16, processCids:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/PackageManagerService$SdInstallArgs;Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v12

    .local v12, list:[Ljava/lang/String;
    if-eqz v12, :cond_0

    move-object v0, v12

    array-length v0, v0

    move/from16 v22, v0

    if-nez v22, :cond_2

    :cond_0
    const-string v22, "PackageManager"

    const-string v23, "No secure containers on sdcard"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->loadMediaPackages(Ljava/util/HashMap;[ILjava/util/HashSet;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/PackageManagerService;->startCleaningPackages()V

    :goto_0
    return-void

    :cond_2
    move-object v0, v12

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .local v21, uidList:[I
    const/4 v13, 0x0

    .local v13, num:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v22, v0

    monitor-enter v22

    move-object v5, v12

    .local v5, arr$:[Ljava/lang/String;
    :try_start_0
    array-length v11, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v14, v13

    .end local v13           #num:I
    .local v14, num:I
    :goto_1
    if-ge v10, v11, :cond_6

    :try_start_1
    aget-object v6, v5, v10

    .local v6, cid:Ljava/lang/String;
    new-instance v4, Lcom/android/server/PackageManagerService$SdInstallArgs;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$SdInstallArgs;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;)V

    .local v4, args:Lcom/android/server/PackageManagerService$SdInstallArgs;
    invoke-virtual {v4}, Lcom/android/server/PackageManagerService$SdInstallArgs;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .local v15, pkgName:Ljava/lang/String;
    if-nez v15, :cond_3

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v13, v14

    .end local v14           #num:I
    .restart local v13       #num:I
    :goto_2
    add-int/lit8 v10, v10, 0x1

    move v14, v13

    .end local v13           #num:I
    .restart local v14       #num:I
    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v17, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v17, :cond_4

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePathString:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePathString:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual {v4}, Lcom/android/server/PackageManagerService$SdInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePathString:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object v1, v4

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move/from16 v19, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v19, uid:I
    const/16 v23, -0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    add-int/lit8 v13, v14, 0x1

    .end local v14           #num:I
    .restart local v13       #num:I
    :try_start_2
    aput v19, v21, v14

    goto :goto_2

    .end local v4           #args:Lcom/android/server/PackageManagerService$SdInstallArgs;
    .end local v6           #cid:Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v15           #pkgName:Ljava/lang/String;
    .end local v17           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v19           #uid:I
    :catchall_0
    move-exception v23

    :goto_3
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v23

    .end local v13           #num:I
    .restart local v4       #args:Lcom/android/server/PackageManagerService$SdInstallArgs;
    .restart local v6       #cid:Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    .restart local v14       #num:I
    .restart local v15       #pkgName:Ljava/lang/String;
    .restart local v17       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_4
    :try_start_3
    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    move v13, v14

    .end local v14           #num:I
    .restart local v13       #num:I
    goto :goto_2

    .end local v4           #args:Lcom/android/server/PackageManagerService$SdInstallArgs;
    .end local v6           #cid:Ljava/lang/String;
    .end local v13           #num:I
    .end local v15           #pkgName:Ljava/lang/String;
    .end local v17           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v14       #num:I
    :cond_6
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-lez v14, :cond_1

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move v2, v14

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    move v0, v14

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    aget v23, v21, v23

    aput v23, v20, v22

    const/4 v7, 0x0

    .local v7, di:I
    const/4 v9, 0x1

    .local v9, i:I
    move v8, v7

    .end local v7           #di:I
    .local v8, di:I
    :goto_4
    if-ge v9, v14, :cond_1

    const/16 v22, 0x1

    sub-int v22, v9, v22

    aget v22, v21, v22

    aget v23, v21, v9

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    add-int/lit8 v7, v8, 0x1

    .end local v8           #di:I
    .restart local v7       #di:I
    aget v22, v21, v9

    aput v22, v20, v8

    :goto_5
    add-int/lit8 v9, v9, 0x1

    move v8, v7

    .end local v7           #di:I
    .restart local v8       #di:I
    goto :goto_4

    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #di:I
    .end local v9           #i:I
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v14           #num:I
    .end local v21           #uidList:[I
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->unloadMediaPackages(Ljava/util/HashMap;[IZ)V

    goto/16 :goto_0

    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    .restart local v14       #num:I
    .restart local v21       #uidList:[I
    :catchall_1
    move-exception v23

    move v13, v14

    .end local v14           #num:I
    .restart local v13       #num:I
    goto :goto_3

    .end local v13           #num:I
    .restart local v8       #di:I
    .restart local v9       #i:I
    .restart local v14       #num:I
    :cond_8
    move v7, v8

    .end local v8           #di:I
    .restart local v7       #di:I
    goto :goto_5
.end method

.method private updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V
    .locals 9
    .parameter "changingPkg"
    .parameter "pkgInfo"
    .parameter "grantPermissions"
    .parameter "replace"
    .parameter "replaceAll"

    .prologue
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v5, v5, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$BasePermission;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSettingBase;

    iput-object v1, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    :cond_1
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    if-nez v5, :cond_2

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing dangling permission tree: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p2, :cond_3

    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-static {p2, v5}, Lcom/android/server/PackageManagerService;->hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing old permission tree: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_4
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v5, v5, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .restart local v0       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    iget v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    if-nez v5, :cond_6

    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v5, :cond_6

    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/PackageManagerService;->findPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;

    move-result-object v4

    .local v4, tree:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v4, :cond_6

    iget-object v5, v4, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    iput-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    new-instance v5, Landroid/content/pm/PackageParser$Permission;

    iget-object v6, v4, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    new-instance v7, Landroid/content/pm/PermissionInfo;

    iget-object v8, v0, Lcom/android/server/PackageManagerService$BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    invoke-direct {v7, v8}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    invoke-direct {v5, v6, v7}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PermissionInfo;)V

    iput-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v4, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget v5, v4, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    iput v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    .end local v4           #tree:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_6
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSettingBase;

    iput-object v1, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    :cond_7
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    if-nez v5, :cond_8

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing dangling permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    :cond_8
    if-eqz p1, :cond_5

    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz p2, :cond_9

    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-static {p2, v5}, Lcom/android/server/PackageManagerService;->hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_9
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing old permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_a
    if-eqz p3, :cond_c

    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-eq v3, p2, :cond_b

    invoke-direct {p0, v3, p5}, Lcom/android/server/PackageManagerService;->grantPermissionsLP(Landroid/content/pm/PackageParser$Package;Z)V

    goto :goto_2

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_c
    if-eqz p2, :cond_d

    invoke-direct {p0, p2, p4}, Lcom/android/server/PackageManagerService;->grantPermissionsLP(Landroid/content/pm/PackageParser$Package;Z)V

    :cond_d
    return-void
.end method

.method private updateSettingsLI(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .locals 8
    .parameter "newPackage"
    .parameter "installerPackageName"
    .parameter "res"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .local v6, pkgName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v2}, Lcom/android/server/PackageManagerService$Settings;->setInstallStatus(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v1}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->moveDexFilesLI(Landroid/content/pm/PackageParser$Package;)I

    move-result v0

    iput v0, p3, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-eq v0, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->setPermissionsLI(Landroid/content/pm/PackageParser$Package;)I

    move-result v0

    iput v0, p3, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/Installer;->rmdex(Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New package installed in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_2
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->updatePermissionsLP(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    iput-object v6, p3, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p3, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->uid:I

    iput-object p1, p3, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    const/4 v1, 0x1

    invoke-virtual {v0, v6, v1}, Lcom/android/server/PackageManagerService$Settings;->setInstallStatus(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v0, v6, p2}, Lcom/android/server/PackageManagerService$Settings;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p3, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v0}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method private static useEncryptedFilesystemForPackage(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .parameter "pkg"

    .prologue
    invoke-static {}, Landroid/os/Environment;->isEncryptedFilesystemEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private verifyPackageUpdate(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)Z
    .locals 6
    .parameter "oldPkg"
    .parameter "newPkg"

    .prologue
    const/4 v2, 0x0

    const-string v5, "Unable to update from "

    const-string v4, "PackageManager"

    const-string v3, " to "

    iget v0, p1, Lcom/android/server/PackageManagerService$GrantedPermissions;->pkgFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to update from "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": old package not in system partition"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to update from "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": old package still exists"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private verifySignaturesLP(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)Z
    .locals 5
    .parameter "pkgSetting"
    .parameter "pkg"

    .prologue
    const/4 v2, 0x0

    const-string v4, "PackageManager"

    const-string v3, "Package "

    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    #getter for: Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;
    invoke-static {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    #getter for: Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;
    invoke-static {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageManagerService;->checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " signatures do not match the previously installed version; ignoring!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x7

    iput v0, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    #getter for: Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;
    invoke-static {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    #getter for: Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;
    invoke-static {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageManagerService;->checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has no signatures that match those in shared user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; ignoring!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x8

    iput v0, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addPackageToPreferred(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    const-string v0, "PackageManager"

    const-string v1, "addPackageToPreferred: this is now a no-op"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/PackageManagerService;->addPermissionLocked(Landroid/content/pm/PermissionInfo;Z)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/PackageManagerService;->addPermissionLocked(Landroid/content/pm/PermissionInfo;Z)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addPermissionLocked(Landroid/content/pm/PermissionInfo;Z)Z
    .locals 7
    .parameter "info"
    .parameter "async"

    .prologue
    const/4 v6, 0x2

    iget v4, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v4, :cond_0

    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Label must be specified in permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/PackageManagerService;->checkPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;

    move-result-object v3

    .local v3, tree:Lcom/android/server/PackageManagerService$BasePermission;
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v4, v4, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    iget-object v5, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService$BasePermission;

    .local v1, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-nez v1, :cond_4

    const/4 v4, 0x1

    move v0, v4

    .local v0, added:Z
    :goto_0
    const/4 v2, 0x1

    .local v2, changed:Z
    if-eqz v0, :cond_5

    new-instance v1, Lcom/android/server/PackageManagerService$BasePermission;

    .end local v1           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-direct {v1, v4, v5, v6}, Lcom/android/server/PackageManagerService$BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .restart local v1       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_1
    :goto_1
    iget v4, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    new-instance v4, Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v3, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    new-instance v6, Landroid/content/pm/PermissionInfo;

    invoke-direct {v6, p1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    invoke-direct {v4, v5, v6}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PermissionInfo;)V

    iput-object v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v3, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget v4, v3, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    iput v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v4, v4, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    iget-object v5, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v2, :cond_3

    if-nez p2, :cond_7

    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v4}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    :cond_3
    :goto_2
    return v0

    .end local v0           #added:Z
    .end local v2           #changed:Z
    :cond_4
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .restart local v0       #added:Z
    .restart local v2       #changed:Z
    :cond_5
    iget v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    if-eq v4, v6, :cond_6

    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    iget v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    iget v5, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-ne v4, v5, :cond_1

    iget-object v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v3, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    iget v5, v3, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    if-ne v4, v5, :cond_1

    iget-object v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-static {v4, p1}, Lcom/android/server/PackageManagerService;->comparePermissionInfos(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/PackageManagerService;->scheduleWriteSettingsLocked()V

    goto :goto_2
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 4
    .parameter "filter"
    .parameter "match"
    .parameter "set"
    .parameter "activity"

    .prologue
    const-string v0, "android.permission.SET_PREFERRED_APPLICATIONS"

    const-string v0, "PackageManager"

    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/PackageManagerService;->getUidTargetSdkVersionLockedLP(I)I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring addPreferredActivity() from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding preferred activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/util/LogPrinter;

    const/4 v2, 0x4

    const-string v3, "PackageManager"

    invoke-direct {v1, v2, v3}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {p1, v1, v2}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;
    invoke-static {v1}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/server/PackageManagerService$PreferredActivity;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/server/PackageManagerService$PreferredActivity;-><init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    invoke-virtual {v1, v2}, Lcom/android/server/IntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    invoke-virtual {p0}, Lcom/android/server/PackageManagerService;->scheduleWriteSettingsLocked()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "names"

    .prologue
    array-length v3, p1

    new-array v2, v3, [Ljava/lang/String;

    .local v2, out:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    array-length v4, p1

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v4, v4, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, cur:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v4, v0

    :goto_1
    aput-object v4, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    aget-object v4, p1, v1

    goto :goto_1

    .end local v0           #cur:Ljava/lang/String;
    :cond_1
    monitor-exit v3

    return-object v2

    .end local v1           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "permName"
    .parameter "pkgName"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mDeviceManager:Landroid/os/IDeviceManager3LM;

    invoke-interface {v4, p1, p2}, Landroid/os/IDeviceManager3LM;->checkPackagePermission(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    :try_start_1
    monitor-exit v3

    move v3, v5

    :goto_0
    return v3

    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Landroid/os/RemoteException;
    monitor-exit v3

    move v3, v5

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .local v1, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_2

    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v2, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v4, v2, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v4, v4, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    monitor-exit v3

    move v3, v6

    goto :goto_0

    :cond_1
    iget-object v4, v2, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    monitor-exit v3

    move v3, v6

    goto :goto_0

    .end local v2           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_2
    monitor-exit v3

    move v3, v5

    goto :goto_0

    .end local v1           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "pkg1"
    .parameter "pkg2"

    .prologue
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .local v0, p1:Landroid/content/pm/PackageParser$Package;
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .local v1, p2:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, -0x4

    monitor-exit v2

    move v2, v3

    :goto_0
    return v2

    :cond_1
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/PackageManagerService;->checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v3

    monitor-exit v2

    move v2, v3

    goto :goto_0

    .end local v0           #p1:Landroid/content/pm/PackageParser$Package;
    .end local v1           #p2:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 7
    .parameter "s1"
    .parameter "s2"

    .prologue
    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, -0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const/4 v6, -0x2

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .local v3, set1:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p1

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .local v5, sig:Landroid/content/pm/Signature;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v5           #sig:Landroid/content/pm/Signature;
    :cond_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .local v4, set2:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p2

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v5, v0, v1

    .restart local v5       #sig:Landroid/content/pm/Signature;
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v5           #sig:Landroid/content/pm/Signature;
    :cond_4
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    goto :goto_0

    :cond_5
    const/4 v6, -0x3

    goto :goto_0
.end method

.method public checkUidPermission(Ljava/lang/String;I)I
    .locals 9
    .parameter "permName"
    .parameter "uid"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mDeviceManager:Landroid/os/IDeviceManager3LM;

    invoke-interface {v6, p1, p2}, Landroid/os/IDeviceManager3LM;->checkUidPermission(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    :try_start_1
    monitor-exit v5

    move v5, v7

    :goto_0
    return v5

    :catch_0
    move-exception v6

    move-object v1, v6

    .local v1, e:Landroid/os/RemoteException;
    monitor-exit v5

    move v5, v7

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v6, p2}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v3

    .local v3, obj:Ljava/lang/Object;
    if-eqz v3, :cond_1

    move-object v0, v3

    check-cast v0, Lcom/android/server/PackageManagerService$GrantedPermissions;

    move-object v2, v0

    .local v2, gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    iget-object v6, v2, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    monitor-exit v5

    move v5, v8

    goto :goto_0

    .end local v2           #gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    :cond_1
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .local v4, perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    monitor-exit v5

    move v5, v8

    goto :goto_0

    .end local v4           #perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    monitor-exit v5

    move v5, v7

    goto :goto_0

    .end local v3           #obj:Ljava/lang/Object;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public checkUidSignatures(II)I
    .locals 7
    .parameter "uid1"
    .parameter "uid2"

    .prologue
    const/4 v6, -0x4

    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v4, p1}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v1

    .local v1, obj:Ljava/lang/Object;
    if-eqz v1, :cond_2

    instance-of v4, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v4, :cond_0

    check-cast v1, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .end local v1           #obj:Ljava/lang/Object;
    iget-object v4, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    #getter for: Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;
    invoke-static {v4}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v2

    .local v2, s1:[Landroid/content/pm/Signature;
    :goto_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v4, p2}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #obj:Ljava/lang/Object;
    if-eqz v1, :cond_5

    instance-of v4, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v4, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    #getter for: Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;
    invoke-static {v4}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v3

    .local v3, s2:[Landroid/content/pm/Signature;
    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/android/server/PackageManagerService;->checkSignaturesLP([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v4

    monitor-exit v5

    .end local v2           #s1:[Landroid/content/pm/Signature;
    .end local v3           #s2:[Landroid/content/pm/Signature;
    :goto_2
    return v4

    :cond_0
    instance-of v4, v1, Lcom/android/server/PackageManagerService$PackageSetting;

    if-eqz v4, :cond_1

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .end local v1           #obj:Ljava/lang/Object;
    iget-object v4, v1, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    #getter for: Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;
    invoke-static {v4}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v2

    .restart local v2       #s1:[Landroid/content/pm/Signature;
    goto :goto_0

    .end local v2           #s1:[Landroid/content/pm/Signature;
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_1
    monitor-exit v5

    move v4, v6

    goto :goto_2

    :cond_2
    monitor-exit v5

    move v4, v6

    goto :goto_2

    .restart local v2       #s1:[Landroid/content/pm/Signature;
    :cond_3
    instance-of v4, v1, Lcom/android/server/PackageManagerService$PackageSetting;

    if-eqz v4, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    #getter for: Lcom/android/server/PackageManagerService$PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;
    invoke-static {v4}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v3

    .restart local v3       #s2:[Landroid/content/pm/Signature;
    goto :goto_1

    .end local v3           #s2:[Landroid/content/pm/Signature;
    :cond_4
    monitor-exit v5

    move v4, v6

    goto :goto_2

    :cond_5
    monitor-exit v5

    move v4, v6

    goto :goto_2

    .end local v1           #obj:Ljava/lang/Object;
    .end local v2           #s1:[Landroid/content/pm/Signature;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method cleanupInstallFailedPackage(Lcom/android/server/PackageManagerService$PackageSetting;)V
    .locals 8
    .parameter "ps"

    .prologue
    const-string v7, "Unable to remove old code file: "

    const-string v6, "PackageManager"

    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up incompletely installed app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-static {v4}, Lcom/android/server/PackageManagerService;->useEncryptedFilesystemForPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    .local v3, useSecureFS:Z
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    iget-object v5, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/Installer;->remove(Ljava/lang/String;Z)I

    move-result v2

    .local v2, retCode:I
    if-gez v2, :cond_0

    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t remove app data directory for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", retcode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #retCode:I
    .end local v3           #useSecureFS:Z
    :cond_0
    :goto_0
    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePath:Ljava/io/File;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePath:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to remove old code file: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePath:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePath:Ljava/io/File;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePath:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePath:Ljava/io/File;

    iget-object v5, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePath:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to remove old code file: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePath:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v5, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    #calls: Lcom/android/server/PackageManagerService$Settings;->removePackageLP(Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/android/server/PackageManagerService$Settings;->access$800(Lcom/android/server/PackageManagerService$Settings;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .local v1, pkg:Landroid/content/pm/PackageParser$Package;
    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, dataDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 3
    .parameter "packageName"
    .parameter "observer"

    .prologue
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CLEAR_APP_USER_DATA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/PackageManagerService$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/PackageManagerService$8;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;)V
    .locals 6
    .parameter "packageName"

    .prologue
    const-string v2, "android.permission.SET_PREFERRED_APPLICATIONS"

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, uid:I
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .local v0, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v1, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/PackageManagerService;->getUidTargetSdkVersionLockedLP(I)I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring clearPackagePreferredActivities() from uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/PackageManagerService;->clearPackagePreferredActivitiesLP(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/PackageManagerService;->scheduleWriteSettingsLocked()V

    :cond_3
    monitor-exit v2

    goto :goto_0

    .end local v0           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v1           #uid:I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method clearPackagePreferredActivitiesLP(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v0, 0x0

    .local v0, changed:Z
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;
    invoke-static {v3}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService$PreferredActivity;

    .local v2, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    iget-object v3, v2, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_0

    .end local v2           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    :cond_1
    return v0
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "names"

    .prologue
    array-length v3, p1

    new-array v1, v3, [Ljava/lang/String;

    .local v1, out:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    array-length v4, p1

    const/4 v5, 0x1

    sub-int v0, v4, v5

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v2, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/server/PackageManagerService$PackageSettingBase;->realName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/server/PackageManagerService$PackageSettingBase;->realName:Ljava/lang/String;

    :goto_1
    aput-object v4, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    aget-object v4, p1, v0

    goto :goto_1

    .end local v2           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_1
    monitor-exit v3

    return-object v1

    .end local v0           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 3
    .parameter "packageName"
    .parameter "observer"

    .prologue
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DELETE_CACHE_FILES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/PackageManagerService$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/PackageManagerService$9;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    .locals 4
    .parameter "packageName"
    .parameter "observer"
    .parameter "flags"

    .prologue
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DELETE_PACKAGES"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mDeviceManager:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1, p1}, Landroid/os/IDeviceManager3LM;->checkAppUninstallPolicies(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/content/pm/IPackageDeleteObserver;->packageDeleted(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v2, Lcom/android/server/PackageManagerService$7;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/android/server/PackageManagerService$7;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;)V

    invoke-virtual {v1, v2}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PackageManager"

    const-string v2, "Unable to communicate with 3LM device mgmt service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 39
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    move-object v2, v0

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump ActivityManager from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " without permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local p1
    :goto_0
    return-void

    .restart local p1
    :cond_0
    const/16 v20, 0x1

    .local v20, dumpStar:Z
    const/4 v13, 0x0

    .local v13, dumpLibs:Z
    const/4 v12, 0x0

    .local v12, dumpFeatures:Z
    const/16 v18, 0x0

    .local v18, dumpResolvers:Z
    const/16 v16, 0x0

    .local v16, dumpPermissions:Z
    const/4 v15, 0x0

    .local v15, dumpPackages:Z
    const/16 v19, 0x0

    .local v19, dumpSharedUsers:Z
    const/4 v14, 0x0

    .local v14, dumpMessages:Z
    const/16 v17, 0x0

    .local v17, dumpProviders:Z
    const/4 v6, 0x0

    .local v6, packageName:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, showFilters:Z
    const/16 v30, 0x0

    .local v30, opti:I
    :cond_1
    :goto_1
    move-object/from16 v0, p3

    array-length v0, v0

    move v2, v0

    move/from16 v0, v30

    move v1, v2

    if-ge v0, v1, :cond_2

    aget-object v29, p3, v30

    .local v29, opt:Ljava/lang/String;
    if-eqz v29, :cond_2

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, v29

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_7

    .end local v29           #opt:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    array-length v0, v0

    move v2, v0

    move/from16 v0, v30

    move v1, v2

    if-ge v0, v1, :cond_4

    aget-object v9, p3, v30

    .local v9, cmd:Ljava/lang/String;
    add-int/lit8 v30, v30, 0x1

    const-string v2, "android"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "."

    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_3
    move-object v6, v9

    .end local v9           #cmd:Ljava/lang/String;
    :cond_4
    :goto_2
    const/16 v34, 0x0

    .local v34, printedTitle:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v9, v0

    monitor-enter v9

    if-nez v20, :cond_5

    if-eqz v13, :cond_1a

    :cond_5
    if-nez v6, :cond_1a

    if-eqz v34, :cond_6

    :try_start_0
    const-string v2, " "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    const/16 v34, 0x1

    const-string v2, "Libraries:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .end local p1
    .local v27, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .local v28, name:Ljava/lang/String;
    const-string v2, "  "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " -> "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .end local v27           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v28           #name:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .end local v34           #printedTitle:Z
    .restart local v29       #opt:Ljava/lang/String;
    .restart local p1
    :cond_7
    add-int/lit8 v30, v30, 0x1

    const-string v2, "-a"

    move-object v0, v2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "-h"

    move-object v0, v2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "Package manager dump options:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  [-h] [-f] [cmd] ..."

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    -f: print details of intent filters"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    -h: print this help"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  cmd may be one of:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    l[ibraries]: list known shared libraries"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    f[ibraries]: list device features"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    r[esolvers]: dump intent resolvers"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    perm[issions]: dump permissions"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    prov[iders]: dump content providers"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    p[ackages]: dump installed packages"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    s[hared-users]: dump shared user IDs"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    m[essages]: print collected runtime messages"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    <package.name>: info about given package"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v2, "-f"

    move-object v0, v2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; use -h for help"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v29           #opt:Ljava/lang/String;
    .restart local v9       #cmd:Ljava/lang/String;
    :cond_a
    const-string v2, "l"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "libraries"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    const/16 v20, 0x0

    const/4 v13, 0x1

    goto/16 :goto_2

    :cond_c
    const-string v2, "f"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "features"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    const/16 v20, 0x0

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_e
    const-string v2, "r"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "resolvers"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_f
    const/16 v20, 0x0

    const/16 v18, 0x1

    goto/16 :goto_2

    :cond_10
    const-string v2, "perm"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "permissions"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    const/16 v20, 0x0

    const/16 v16, 0x1

    goto/16 :goto_2

    :cond_12
    const-string v2, "p"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "packages"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    const/16 v20, 0x0

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_14
    const-string v2, "s"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "shared-users"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_15
    const/16 v20, 0x0

    const/16 v19, 0x1

    goto/16 :goto_2

    :cond_16
    const-string v2, "prov"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "providers"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    const/16 v20, 0x0

    const/16 v17, 0x1

    goto/16 :goto_2

    :cond_18
    const-string v2, "m"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "messages"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_19
    const/16 v20, 0x0

    const/4 v14, 0x1

    goto/16 :goto_2

    .end local v9           #cmd:Ljava/lang/String;
    .end local p1
    .restart local v34       #printedTitle:Z
    :cond_1a
    if-nez v20, :cond_1b

    if-eqz v12, :cond_1d

    :cond_1b
    if-nez v6, :cond_1d

    if-eqz v34, :cond_1c

    :try_start_1
    const-string v2, " "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1c
    const/16 v34, 0x1

    const-string v2, "Features:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAvailableFeatures:Ljava/util/HashMap;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .restart local v27       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .restart local v28       #name:Ljava/lang/String;
    const-string v2, "  "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .end local v27           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v28           #name:Ljava/lang/String;
    :cond_1d
    if-nez v20, :cond_1e

    if-eqz v18, :cond_22

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    move-object v2, v0

    if-eqz v34, :cond_29

    const-string v3, "\nActivity Resolver Table:"

    move-object v4, v3

    :goto_5
    const-string v5, "  "

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v34, 0x1

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    move-object v2, v0

    if-eqz v34, :cond_2a

    const-string v3, "\nReceiver Resolver Table:"

    move-object v4, v3

    :goto_6
    const-string v5, "  "

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v34, 0x1

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    move-object v2, v0

    if-eqz v34, :cond_2b

    const-string v3, "\nService Resolver Table:"

    move-object v4, v3

    :goto_7
    const-string v5, "  "

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v34, 0x1

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v2, v0

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;
    invoke-static {v2}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v2

    if-eqz v34, :cond_2c

    const-string v3, "\nPreferred Activities:"

    move-object v4, v3

    :goto_8
    const-string v5, "  "

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/IntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_22

    const/16 v34, 0x1

    :cond_22
    const/16 v33, 0x0

    .local v33, printedSomething:Z
    if-nez v20, :cond_23

    if-eqz v16, :cond_2d

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_24
    :goto_9
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/PackageManagerService$BasePermission;

    .local v31, p:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v6, :cond_25

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_25
    if-nez v33, :cond_27

    if-eqz v34, :cond_26

    const-string v2, " "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_26
    const-string v2, "Permissions:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v33, 0x1

    const/16 v34, 0x1

    :cond_27
    const-string v2, "  Permission ["

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "] ("

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {v31 .. v31}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "):"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    sourcePackage="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    uid="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    move v2, v0

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " gids="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    move-object v2, v0

    invoke-static {v2}, Lcom/android/server/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " type="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    move v2, v0

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " prot="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    move v2, v0

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    move-object v2, v0

    if-eqz v2, :cond_28

    const-string v2, "    packageSetting="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_28
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    move-object v2, v0

    if-eqz v2, :cond_24

    const-string v2, "    perm="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_9

    .end local v24           #i$:Ljava/util/Iterator;
    .end local v31           #p:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v33           #printedSomething:Z
    :cond_29
    const-string v3, "Activity Resolver Table:"

    move-object v4, v3

    goto/16 :goto_5

    :cond_2a
    const-string v3, "Receiver Resolver Table:"

    move-object v4, v3

    goto/16 :goto_6

    :cond_2b
    const-string v3, "Service Resolver Table:"

    move-object v4, v3

    goto/16 :goto_7

    :cond_2c
    const-string v3, "Preferred Activities:"

    move-object v4, v3

    goto/16 :goto_8

    .restart local v33       #printedSomething:Z
    :cond_2d
    if-nez v20, :cond_2e

    if-eqz v17, :cond_33

    :cond_2e
    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24       #i$:Ljava/util/Iterator;
    :cond_2f
    :goto_a
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/PackageParser$Provider;

    .local v31, p:Landroid/content/pm/PackageParser$Provider;
    if-eqz v6, :cond_30

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v2, v0

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    :cond_30
    if-nez v33, :cond_32

    if-eqz v34, :cond_31

    const-string v2, " "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_31
    const-string v2, "Registered ContentProviders:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v33, 0x1

    const/16 v34, 0x1

    :cond_32
    const-string v2, "  ["

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v2, v0

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "]: "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Landroid/content/pm/PackageParser$Provider;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    .end local v24           #i$:Ljava/util/Iterator;
    .end local v31           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_33
    const/16 v33, 0x0

    const/16 v32, 0x0

    .local v32, packageSharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;
    if-nez v20, :cond_34

    if-eqz v15, :cond_4a

    :cond_34
    new-instance v37, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v37

    move-object v1, v2

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v37, sdf:Ljava/text/SimpleDateFormat;
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .local v11, date:Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v2, v0

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_35
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v35, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v6, :cond_36

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->realName:Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    :cond_36
    if-nez v33, :cond_38

    if-eqz v34, :cond_37

    const-string v2, " "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_37
    const-string v2, "Packages:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v33, 0x1

    const/16 v34, 0x1

    :cond_38
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object/from16 v32, v0

    const-string v2, "  Package ["

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->realName:Ljava/lang/String;

    move-object v2, v0

    if-eqz v2, :cond_47

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->realName:Ljava/lang/String;

    move-object v2, v0

    :goto_b
    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "] ("

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {v35 .. v35}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "):"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->realName:Ljava/lang/String;

    move-object v2, v0

    if-eqz v2, :cond_39

    const-string v2, "    compat name="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_39
    const-string v2, "    userId="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move v2, v0

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " gids="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    move-object v2, v0

    invoke-static {v2}, Lcom/android/server/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    sharedUser="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v2, "    pkg="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v2, "    codePath="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePathString:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    resourcePath="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePathString:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    nativeLibraryPath="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    versionCode="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->versionCode:I

    move v2, v0

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v2, v0

    if-eqz v2, :cond_46

    const-string v2, "    versionName="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v2, v0

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    dataDir="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v2, v0

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    targetSdk="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v2, v0

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v2, v0

    iget-boolean v2, v2, Landroid/content/pm/PackageParser$Package;->mOperationPending:Z

    if-eqz v2, :cond_3a

    const-string v2, "    mOperationPending=true"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3a
    const-string v2, "    supportsScreens=["

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v22, 0x1

    .local v22, first:Z
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v2, v0

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_3c

    if-nez v22, :cond_3b

    const-string v2, ", "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3b
    const/16 v22, 0x0

    const-string v2, "small"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3c
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v2, v0

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_3e

    if-nez v22, :cond_3d

    const-string v2, ", "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3d
    const/16 v22, 0x0

    const-string v2, "medium"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3e
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v2, v0

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_40

    if-nez v22, :cond_3f

    const-string v2, ", "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3f
    const/16 v22, 0x0

    const-string v2, "large"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_40
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v2, v0

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x8

    and-int/2addr v2, v3

    if-eqz v2, :cond_42

    if-nez v22, :cond_41

    const-string v2, ", "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_41
    const/16 v22, 0x0

    const-string v2, "xlarge"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_42
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v2, v0

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_44

    if-nez v22, :cond_43

    const-string v2, ", "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_43
    const/16 v22, 0x0

    const-string v2, "resizeable"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_44
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v2, v0

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_46

    if-nez v22, :cond_45

    const-string v2, ", "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_45
    const/16 v22, 0x0

    const-string v2, "anyDensity"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .end local v22           #first:Z
    :cond_46
    const-string v2, "]"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    timeStamp="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    move-wide v2, v0

    invoke-virtual {v11, v2, v3}, Ljava/util/Date;->setTime(J)V

    move-object/from16 v0, v37

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    firstInstallTime="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->firstInstallTime:J

    move-wide v2, v0

    invoke-virtual {v11, v2, v3}, Ljava/util/Date;->setTime(J)V

    move-object/from16 v0, v37

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    lastUpdateTime="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->lastUpdateTime:J

    move-wide v2, v0

    invoke-virtual {v11, v2, v3}, Ljava/util/Date;->setTime(J)V

    move-object/from16 v0, v37

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    signatures="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v2, "    permissionsFixed="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->permissionsFixed:Z

    move v2, v0

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " haveGids="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->haveGids:Z

    move v2, v0

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v2, "    pkgFlags=0x"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->pkgFlags:I

    move v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " installStatus="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    move v2, v0

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " enabled="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    move v2, v0

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_48

    const-string v2, "    disabledComponents:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    .local v36, s:Ljava/lang/String;
    const-string v2, "      "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    .end local v25           #i$:Ljava/util/Iterator;
    .end local v36           #s:Ljava/lang/String;
    :cond_47
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    move-object v2, v0

    goto/16 :goto_b

    :cond_48
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_49

    const-string v2, "    enabledComponents:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25       #i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    .restart local v36       #s:Ljava/lang/String;
    const-string v2, "      "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    .end local v25           #i$:Ljava/util/Iterator;
    .end local v36           #s:Ljava/lang/String;
    :cond_49
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_35

    const-string v2, "    grantedPermissions:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25       #i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    .restart local v36       #s:Ljava/lang/String;
    const-string v2, "      "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .end local v11           #date:Ljava/util/Date;
    .end local v25           #i$:Ljava/util/Iterator;
    .end local v35           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v36           #s:Ljava/lang/String;
    .end local v37           #sdf:Ljava/text/SimpleDateFormat;
    :cond_4a
    const/16 v33, 0x0

    if-nez v20, :cond_4b

    if-eqz v15, :cond_57

    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24       #i$:Ljava/util/Iterator;
    :cond_4c
    :goto_f
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .local v21, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_4d

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    :cond_4d
    if-nez v33, :cond_4f

    if-eqz v34, :cond_4e

    const-string v2, " "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4e
    const-string v2, "Renamed packages:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v33, 0x1

    const/16 v34, 0x1

    :cond_4f
    const-string v2, "  "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " -> "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    .end local v21           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24           #i$:Ljava/util/Iterator;
    :cond_50
    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24       #i$:Ljava/util/Iterator;
    :cond_51
    :goto_10
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/PackageManagerService$PackageSetting;

    .restart local v35       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v6, :cond_52

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->realName:Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    :cond_52
    if-nez v33, :cond_54

    if-eqz v34, :cond_53

    const-string v2, " "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_53
    const-string v2, "Hidden system packages:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v33, 0x1

    const/16 v34, 0x1

    :cond_54
    const-string v2, "  Package ["

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->realName:Ljava/lang/String;

    move-object v2, v0

    if-eqz v2, :cond_56

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->realName:Ljava/lang/String;

    move-object v2, v0

    :goto_11
    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "] ("

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {v35 .. v35}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "):"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->realName:Ljava/lang/String;

    move-object v2, v0

    if-eqz v2, :cond_55

    const-string v2, "    compat name="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_55
    const-string v2, "    userId="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move v2, v0

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string v2, "    sharedUser="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v2, "    codePath="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePathString:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    resourcePath="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePathString:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_56
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    move-object v2, v0

    goto/16 :goto_11

    .end local v24           #i$:Ljava/util/Iterator;
    .end local v35           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_57
    const/16 v33, 0x0

    if-nez v20, :cond_58

    if-eqz v19, :cond_5d

    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v2, v0

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/PackageManagerService$Settings;->access$3600(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_59
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .local v38, su:Lcom/android/server/PackageManagerService$SharedUserSetting;
    if-eqz v6, :cond_5a

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_59

    :cond_5a
    if-nez v33, :cond_5c

    if-eqz v34, :cond_5b

    const-string v2, " "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5b
    const-string v2, "Shared users:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v33, 0x1

    const/16 v34, 0x1

    :cond_5c
    const-string v2, "  SharedUser ["

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "] ("

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {v38 .. v38}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "):"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    userId="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    move v2, v0

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " gids="

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    move-object v2, v0

    invoke-static {v2}, Lcom/android/server/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    grantedPermissions:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25       #i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    .restart local v36       #s:Ljava/lang/String;
    const-string v2, "      "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    .end local v25           #i$:Ljava/util/Iterator;
    .end local v36           #s:Ljava/lang/String;
    .end local v38           #su:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :cond_5d
    if-nez v20, :cond_5e

    if-eqz v14, :cond_60

    :cond_5e
    if-nez v6, :cond_60

    if-eqz v34, :cond_5f

    const-string v2, " "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5f
    const/16 v34, 0x1

    const-string v2, "Settings parse messages:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v2, v0

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;
    invoke-static {v2}, Lcom/android/server/PackageManagerService$Settings;->access$1400(Lcom/android/server/PackageManagerService$Settings;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "Package warning messages:"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/PackageManagerService;->getSettingsProblemFile()Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v23

    .local v23, fname:Ljava/io/File;
    :try_start_2
    new-instance v26, Ljava/io/FileInputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v26, in:Ljava/io/FileInputStream;
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileInputStream;->available()I

    move-result v8

    .local v8, avail:I
    new-array v10, v8, [B

    .local v10, data:[B
    move-object/from16 v0, v26

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v10}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v8           #avail:I
    .end local v10           #data:[B
    .end local v23           #fname:Ljava/io/File;
    .end local v26           #in:Ljava/io/FileInputStream;
    :cond_60
    :goto_13
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .restart local v23       #fname:Ljava/io/File;
    :catch_0
    move-exception v2

    goto :goto_13

    :catch_1
    move-exception v2

    goto :goto_13
.end method

.method public enterSafeMode()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/PackageManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PackageManagerService;->mSafeMode:Z

    :cond_0
    return-void
.end method

.method findPreferredActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;
    .locals 17
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .parameter
    .parameter "priority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .local p4, query:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v13, v0

    monitor-enter v13

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v14, v0

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;
    invoke-static {v14}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v14

    const/high16 v15, 0x1

    and-int v15, v15, p3

    if-eqz v15, :cond_1

    const/4 v15, 0x1

    :goto_0
    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v11

    .local v11, prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    if-eqz v11, :cond_8

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_8

    const/4 v9, 0x0

    .local v9, match:I
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    .local v5, N:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_1
    if-ge v8, v5, :cond_2

    move-object/from16 v0, p4

    move v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .local v12, ri:Landroid/content/pm/ResolveInfo;
    iget v14, v12, Landroid/content/pm/ResolveInfo;->match:I

    if-le v14, v9, :cond_0

    iget v9, v12, Landroid/content/pm/ResolveInfo;->match:I

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v5           #N:I
    .end local v8           #j:I
    .end local v9           #match:I
    .end local v11           #prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    .end local v12           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    .restart local v5       #N:I
    .restart local v8       #j:I
    .restart local v9       #match:I
    .restart local v11       #prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :cond_2
    const/high16 v14, 0xfff

    and-int/2addr v9, v14

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    .local v4, M:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v4, :cond_8

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/PackageManagerService$PreferredActivity;

    .local v10, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    iget v14, v10, Lcom/android/server/PackageManagerService$PreferredActivity;->mMatch:I

    if-eq v14, v9, :cond_4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    iget-object v14, v10, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .local v6, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v6, :cond_3

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_3

    move-object/from16 v0, p4

    move v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .restart local v12       #ri:Landroid/content/pm/ResolveInfo;
    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v15, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iget-object v15, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object v0, v10

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$PreferredActivity;->sameSet(Ljava/util/List;I)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Result set changed, dropping preferred activity for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v14, v0

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;
    invoke-static {v14}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/android/server/IntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    const/4 v14, 0x0

    monitor-exit v13

    move-object v13, v14

    .end local v4           #M:I
    .end local v5           #N:I
    .end local v6           #ai:Landroid/content/pm/ActivityInfo;
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v9           #match:I
    .end local v10           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    .end local v12           #ri:Landroid/content/pm/ResolveInfo;
    :goto_4
    return-object v13

    .restart local v4       #M:I
    .restart local v5       #N:I
    .restart local v6       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v7       #i:I
    .restart local v8       #j:I
    .restart local v9       #match:I
    .restart local v10       #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    .restart local v12       #ri:Landroid/content/pm/ResolveInfo;
    :cond_7
    monitor-exit v13

    move-object v13, v12

    goto :goto_4

    .end local v4           #M:I
    .end local v5           #N:I
    .end local v6           #ai:Landroid/content/pm/ActivityInfo;
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v9           #match:I
    .end local v10           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    .end local v12           #ri:Landroid/content/pm/ResolveInfo;
    :cond_8
    monitor-exit v13

    const/4 v13, 0x0

    goto :goto_4

    .end local v11           #prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :catchall_0
    move-exception v14

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14
.end method

.method public finishPackageInstall(I)V
    .locals 4
    .parameter "token"

    .prologue
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public freeStorage(JLandroid/content/IntentSender;)V
    .locals 3
    .parameter "freeStorageSize"
    .parameter "pi"

    .prologue
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CLEAR_APP_CACHE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/PackageManagerService$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/PackageManagerService$2;-><init>(Lcom/android/server/PackageManagerService;JLandroid/content/IntentSender;)V

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    .locals 3
    .parameter "freeStorageSize"
    .parameter "observer"

    .prologue
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CLEAR_APP_CACHE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/PackageManagerService$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/PackageManagerService$1;-><init>(Lcom/android/server/PackageManagerService;JLandroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method generatePackageInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/PackageInfo;
    .locals 9
    .parameter "p"
    .parameter "flags"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    and-int/lit16 v0, p2, 0x2000

    if-eqz v0, :cond_0

    move-object v0, p1

    move v2, p2

    move-wide v5, v3

    invoke-static/range {v0 .. v6}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJ)Landroid/content/pm/PackageInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v8, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v8, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, v8, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v0, :cond_2

    iget-object v0, v8, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v7, v0

    .local v7, gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    :goto_1
    iget-object v1, v7, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    iget-wide v3, v8, Lcom/android/server/PackageManagerService$PackageSettingBase;->firstInstallTime:J

    iget-wide v5, v8, Lcom/android/server/PackageManagerService$PackageSettingBase;->lastUpdateTime:J

    move-object v0, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJ)Landroid/content/pm/PackageInfo;

    move-result-object v0

    goto :goto_0

    .end local v7           #gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    :cond_2
    move-object v7, v8

    goto :goto_1
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .parameter "component"
    .parameter "flags"

    .prologue
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    #getter for: Lcom/android/server/PackageManagerService$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->access$900(Lcom/android/server/PackageManagerService$ActivityIntentResolver;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .local v0, a:Landroid/content/pm/PackageParser$Activity;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/PackageManagerService$Settings;->isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    :cond_1
    monitor-exit v1

    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #a:Landroid/content/pm/PackageParser$Activity;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 6
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v0

    .local v0, N:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$PermissionGroup;

    .local v3, pg:Landroid/content/pm/PackageParser$PermissionGroup;
    invoke-static {v3, p1}, Landroid/content/pm/PackageParser;->generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #N:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    .end local v3           #pg:Landroid/content/pm/PackageParser$PermissionGroup;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0       #N:I
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .locals 5
    .parameter "appPackageName"

    .prologue
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v0, pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_0
    :try_start_1
    iget v2, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .parameter "packageName"
    .parameter "flags"

    .prologue
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    const-string v2, "android"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "system"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    :cond_2
    and-int/lit16 v2, p2, 0x2000

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->generateApplicationInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    :cond_3
    monitor-exit v1

    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;)I
    .locals 7
    .parameter "componentName"

    .prologue
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, packageNameStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v2, pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v2, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown component: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v1           #packageNameStr:Ljava/lang/String;
    .end local v2           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1       #packageNameStr:Ljava/lang/String;
    .restart local v2       #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .local v0, classNameStr:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/android/server/PackageManagerService$PackageSetting;->currentEnabledStateLP(Ljava/lang/String;)I

    move-result v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v4
.end method

.method public getInstallLocation()I
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInstalledApplications(I)Ljava/util/List;
    .locals 8
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    and-int/lit16 v7, p1, 0x2000

    if-eqz v7, :cond_1

    :try_start_0
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v5, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v7, v5, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    invoke-direct {p0, v7, p1}, Lcom/android/server/PackageManagerService;->generateApplicationInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v3           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    .end local v5           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    .local v4, p:Landroid/content/pm/PackageParser$Package;
    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_2

    invoke-static {v4, p1}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    .end local v4           #p:Landroid/content/pm/PackageParser$Package;
    :cond_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public getInstalledPackages(I)Ljava/util/List;
    .locals 9
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    and-int/lit16 v8, p1, 0x2000

    if-eqz v8, :cond_1

    :try_start_0
    iget-object v8, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v5, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v8, v5, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    invoke-direct {p0, v8, p1}, Lcom/android/server/PackageManagerService;->generatePackageInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .local v6, psPkg:Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    .end local v5           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v6           #psPkg:Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .local v3, p:Landroid/content/pm/PackageParser$Package;
    iget-object v8, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_2

    invoke-virtual {p0, v3, p1}, Lcom/android/server/PackageManagerService;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .local v4, pi:Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    .end local v3           #p:Landroid/content/pm/PackageParser$Package;
    .end local v4           #pi:Landroid/content/pm/PackageInfo;
    :cond_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "packageName"

    .prologue
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v0, pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installerPackageName:Ljava/lang/String;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .locals 3
    .parameter "name"
    .parameter "flags"

    .prologue
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mInstrumentation:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Instrumentation;

    .local v0, i:Landroid/content/pm/PackageParser$Instrumentation;
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .end local v0           #i:Landroid/content/pm/PackageParser$Instrumentation;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .locals 7
    .parameter "uid"

    .prologue
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v5, p1}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v1

    .local v1, obj:Ljava/lang/Object;
    instance-of v5, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v5, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v3, v0

    .local v3, sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    monitor-exit v4

    move-object v4, v5

    .end local v3           #sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :goto_0
    return-object v4

    :cond_0
    instance-of v5, v1, Lcom/android/server/PackageManagerService$PackageSetting;

    if-eqz v5, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    move-object v2, v0

    .local v2, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v5, v2, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    monitor-exit v4

    move-object v4, v5

    goto :goto_0

    .end local v2           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_1
    monitor-exit v4

    const/4 v4, 0x0

    goto :goto_0

    .end local v1           #obj:Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .locals 5
    .parameter "packageName"

    .prologue
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v1, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v2, v1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    .local v2, suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    :goto_0
    monitor-exit v3

    move-object v3, v4

    .end local v1           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v2           #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :goto_1
    return-object v3

    .restart local v1       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v2       #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :cond_0
    iget-object v4, v1, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    goto :goto_0

    .end local v1           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v2           #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    new-array v3, v3, [I

    goto :goto_1

    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 3
    .parameter "packageName"
    .parameter "flags"

    .prologue
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/PackageManagerService;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    and-int/lit16 v2, p2, 0x2000

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->generatePackageInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    :cond_1
    monitor-exit v1

    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V
    .locals 3
    .parameter "packageName"
    .parameter "observer"

    .prologue
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_PACKAGE_SIZE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/PackageManagerService$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/PackageManagerService$10;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getPackageUid(Ljava/lang/String;)I
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v4, -0x1

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    monitor-exit v2

    move v2, v3

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v1, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_2

    :cond_1
    monitor-exit v2

    move v2, v4

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_3

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_1
    monitor-exit v2

    move v2, v3

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    .end local v1           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 13
    .parameter "uid"

    .prologue
    iget-object v9, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    iget-object v10, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v10, p1}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v5

    .local v5, obj:Ljava/lang/Object;
    instance-of v10, v5, Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v10, :cond_1

    move-object v0, v5

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v8, v0

    .local v8, sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    iget-object v10, v8, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v1

    .local v1, N:I
    new-array v7, v1, [Ljava/lang/String;

    .local v7, res:[Ljava/lang/String;
    iget-object v10, v8, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    const/4 v2, 0x0

    .local v2, i:I
    move v3, v2

    .end local v2           #i:I
    .end local p0
    .local v3, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/PackageManagerService$PackageSetting;

    iget-object v10, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    aput-object v10, v7, v3

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0

    :cond_0
    monitor-exit v9

    move-object v9, v7

    .end local v1           #N:I
    .end local v3           #i:I
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    .end local v7           #res:[Ljava/lang/String;
    .end local v8           #sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :goto_1
    return-object v9

    .restart local p0
    :cond_1
    instance-of v10, v5, Lcom/android/server/PackageManagerService$PackageSetting;

    if-eqz v10, :cond_2

    move-object v0, v5

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    move-object v6, v0

    .local v6, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, v6, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    aput-object v12, v10, v11

    monitor-exit v9

    move-object v9, v10

    goto :goto_1

    .end local v6           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_2
    monitor-exit v9

    const/4 v9, 0x0

    goto :goto_1

    .end local v5           #obj:Ljava/lang/Object;
    .end local p0
    :catchall_0
    move-exception v10

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 2
    .parameter "name"
    .parameter "flags"

    .prologue
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-static {p0, p2}, Landroid/content/pm/PackageParser;->generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 3
    .parameter "name"
    .parameter "flags"

    .prologue
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .local v0, p:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lcom/android/server/PackageManagerService;->generatePermissionInfo(Lcom/android/server/PackageManagerService$BasePermission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .end local v0           #p:Lcom/android/server/PackageManagerService$BasePermission;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getPersistentApplications(I)Ljava/util/List;
    .locals 5
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .local v2, p:Landroid/content/pm/PackageParser$Package;
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/PackageManagerService;->mSafeMode:Z

    if-eqz v4, :cond_1

    invoke-static {v2}, Lcom/android/server/PackageManagerService;->isSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    invoke-static {v2, p1}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    .end local v2           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .locals 5
    .parameter
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .local p2, outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .local v1, num:I
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;
    invoke-static {v4}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService$PreferredActivity;

    .local v2, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    if-eqz p3, :cond_1

    iget-object v4, v2, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    if-eqz p1, :cond_2

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v2}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p2, :cond_0

    iget-object v4, v2, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    .end local v2           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1
.end method

.method public getPreferredPackages(I)Ljava/util/List;
    .locals 1
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .locals 4
    .parameter "component"
    .parameter "flags"

    .prologue
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Provider;

    .local v0, p:Landroid/content/pm/PackageParser$Provider;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/PackageManagerService$Settings;->isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    monitor-exit v1

    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #p:Landroid/content/pm/PackageParser$Provider;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .parameter "component"
    .parameter "flags"

    .prologue
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    #getter for: Lcom/android/server/PackageManagerService$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->access$900(Lcom/android/server/PackageManagerService$ActivityIntentResolver;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .local v0, a:Landroid/content/pm/PackageParser$Activity;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/PackageManagerService$Settings;->isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    monitor-exit v1

    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #a:Landroid/content/pm/PackageParser$Activity;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .locals 4
    .parameter "component"
    .parameter "flags"

    .prologue
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    #getter for: Lcom/android/server/PackageManagerService$ServiceIntentResolver;->mServices:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;->access$1000(Lcom/android/server/PackageManagerService$ServiceIntentResolver;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Service;

    .local v0, s:Landroid/content/pm/PackageParser$Service;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/PackageManagerService$Settings;->isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    monitor-exit v1

    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #s:Landroid/content/pm/PackageParser$Service;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    .locals 7

    .prologue
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mAvailableFeatures:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .local v0, featSet:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/FeatureInfo;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    .local v3, size:I
    if-lez v3, :cond_0

    add-int/lit8 v5, v3, 0x1

    new-array v1, v5, [Landroid/content/pm/FeatureInfo;

    .local v1, features:[Landroid/content/pm/FeatureInfo;
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v2, Landroid/content/pm/FeatureInfo;

    invoke-direct {v2}, Landroid/content/pm/FeatureInfo;-><init>()V

    .local v2, fi:Landroid/content/pm/FeatureInfo;
    const-string v5, "ro.opengles.version"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    aput-object v2, v1, v3

    monitor-exit v4

    move-object v4, v1

    .end local v1           #features:[Landroid/content/pm/FeatureInfo;
    .end local v2           #fi:Landroid/content/pm/FeatureInfo;
    :goto_0
    return-object v4

    :cond_0
    monitor-exit v4

    const/4 v4, 0x0

    goto :goto_0

    .end local v0           #featSet:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/FeatureInfo;>;"
    .end local v3           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .locals 5

    .prologue
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .local v0, libSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .local v2, size:I
    if-lez v2, :cond_0

    new-array v1, v2, [Ljava/lang/String;

    .local v1, libs:[Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v3

    move-object v3, v1

    .end local v1           #libs:[Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    monitor-exit v3

    const/4 v3, 0x0

    goto :goto_0

    .end local v0           #libSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getUidForSharedUser(Ljava/lang/String;)I
    .locals 6
    .parameter "sharedUserName"

    .prologue
    const/4 v5, -0x1

    if-nez p1, :cond_0

    move v1, v5

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/PackageManagerService$Settings;->getSharedUserLP(Ljava/lang/String;IZ)Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-result-object v0

    .local v0, suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    if-nez v0, :cond_1

    monitor-exit v1

    move v1, v5

    goto :goto_0

    :cond_1
    iget v2, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .end local v0           #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getUidTargetSdkVersionLockedLP(I)I
    .locals 10
    .parameter "uid"

    .prologue
    iget-object v9, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v9, p1}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v4

    .local v4, obj:Ljava/lang/Object;
    instance-of v9, v4, Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v9, :cond_2

    move-object v0, v4

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v6, v0

    .local v6, sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    iget-object v9, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v1

    .local v1, N:I
    const/16 v8, 0x2710

    .local v8, vers:I
    iget-object v9, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageManagerService$PackageSetting;

    .local v5, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v9, v5, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v9, :cond_0

    iget-object v9, v5, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .local v7, v:I
    if-ge v7, v8, :cond_0

    move v8, v7

    goto :goto_0

    .end local v5           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v7           #v:I
    :cond_1
    move v9, v8

    .end local v1           #N:I
    .end local v2           #i:I
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    .end local v6           #sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    .end local v8           #vers:I
    :goto_1
    return v9

    :cond_2
    instance-of v9, v4, Lcom/android/server/PackageManagerService$PackageSetting;

    if-eqz v9, :cond_3

    move-object v0, v4

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    move-object v5, v0

    .restart local v5       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v9, v5, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v9, :cond_3

    iget-object v9, v5, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_1

    .end local v5           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_3
    const/16 v9, 0x2710

    goto :goto_1
.end method

.method public hasSystemFeature(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mAvailableFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasSystemUidErrors()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/PackageManagerService;->mHasSystemUidErrors:Z

    return v0
.end method

.method public installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;I)V
    .locals 1
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/PackageManagerService;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    return-void
.end method

.method public installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    .locals 7
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"
    .parameter "installerPackageName"

    .prologue
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .local v6, msg:Landroid/os/Message;
    new-instance v0, Lcom/android/server/PackageManagerService$InstallParams;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService$InstallParams;-><init>(Lcom/android/server/PackageManagerService;Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public isProtectedBroadcast(Ljava/lang/String;)Z
    .locals 2
    .parameter "actionName"

    .prologue
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mProtectedBroadcasts:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSafeMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/PackageManagerService;->mSafeMode:Z

    return v0
.end method

.method public movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V
    .locals 13
    .parameter "packageName"
    .parameter "observer"
    .parameter "flags"

    .prologue
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MOVE_PACKAGE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    .local v11, returnCode:I
    const/4 v7, 0x0

    .local v7, currFlags:I
    const/4 v9, 0x0

    .local v9, newFlags:I
    iget-object v12, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v12

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageParser$Package;

    .local v10, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v10, :cond_1

    const/4 v11, -0x2

    :cond_0
    :goto_0
    const/4 v1, 0x1

    if-eq v11, v1, :cond_9

    new-instance v0, Lcom/android/server/PackageManagerService$MoveParams;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/PackageManagerService$MoveParams;-><init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallArgs;Landroid/content/pm/IPackageMoveObserver;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v11}, Lcom/android/server/PackageManagerService;->processPendingMove(Lcom/android/server/PackageManagerService$MoveParams;I)V

    :goto_1
    monitor-exit v12

    return-void

    :cond_1
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_2

    invoke-static {v10}, Lcom/android/server/PackageManagerService;->isSystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "PackageManager"

    const-string v2, "Cannot move system application"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, -0x3

    goto :goto_0

    :cond_2
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_3

    invoke-static {v10}, Lcom/android/server/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "PackageManager"

    const-string v2, "Cannot move forward locked app."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, -0x4

    goto :goto_0

    :cond_3
    iget-boolean v1, v10, Landroid/content/pm/PackageParser$Package;->mOperationPending:Z

    if-eqz v1, :cond_4

    const-string v1, "PackageManager"

    const-string v2, "Attempt to move package which has pending operations"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, -0x7

    goto :goto_0

    :cond_4
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_6

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_6

    const-string v1, "PackageManager"

    const-string v2, "Ambigous flags specified for move location."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, -0x5

    :cond_5
    :goto_2
    const/4 v1, 0x1

    if-ne v11, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v10, Landroid/content/pm/PackageParser$Package;->mOperationPending:Z

    goto :goto_0

    .end local v10           #pkg:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v10       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_6
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    move v9, v1

    :goto_3
    :try_start_1
    invoke-static {v10}, Lcom/android/server/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    move v7, v1

    :goto_4
    if-ne v9, v7, :cond_5

    const-string v1, "PackageManager"

    const-string v2, "No move required. Trying to move to same location"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, -0x5

    goto :goto_2

    :cond_7
    const/16 v1, 0x10

    move v9, v1

    goto :goto_3

    :cond_8
    const/16 v1, 0x10

    move v7, v1

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .local v8, msg:Landroid/os/Message;
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v2, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v3, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {p0, v7, v1, v2, v3}, Lcom/android/server/PackageManagerService;->createInstallArgs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/PackageManagerService$InstallArgs;

    move-result-object v2

    .local v2, srcArgs:Lcom/android/server/PackageManagerService$InstallArgs;
    new-instance v0, Lcom/android/server/PackageManagerService$MoveParams;

    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object v1, p0

    move-object v3, p2

    move v4, v9

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/PackageManagerService$MoveParams;-><init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallArgs;Landroid/content/pm/IPackageMoveObserver;ILjava/lang/String;Ljava/lang/String;)V

    .local v0, mp:Lcom/android/server/PackageManagerService$MoveParams;
    iput-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    invoke-virtual {v1, v8}, Lcom/android/server/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public nextPackageToClean(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "lastPackage"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/PackageManagerService;->mMediaMounted:Z

    if-nez v1, :cond_0

    monitor-exit v0

    move-object v0, v2

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    :goto_1
    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .restart local p0
    :cond_2
    move-object v1, v2

    goto :goto_1

    .end local p0
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_0

    const-string v1, "PackageManager"

    const-string v2, "Package Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    throw v0
.end method

.method public performDexOpt(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/server/PackageManagerService;->mNoDexOpt:Z

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Landroid/content/pm/PackageParser$Package;->mDidDexOpt:Z

    if-eqz v2, :cond_2

    :cond_1
    monitor-exit v1

    move v1, v3

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, v0, v2}, Lcom/android/server/PackageManagerService;->performDexOptLI(Landroid/content/pm/PackageParser$Package;Z)I

    move-result v2

    if-ne v2, v4, :cond_3

    move v2, v4

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v1, v2

    goto :goto_0

    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v0       #p:Landroid/content/pm/PackageParser$Package;
    :cond_3
    move v2, v3

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .locals 7
    .parameter "processName"
    .parameter "uid"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Provider;>;"
    move-object v1, v0

    .end local v0           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .local v1, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    :goto_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Provider;

    .local v3, p:Landroid/content/pm/PackageParser$Provider;
    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v5, :cond_5

    if-eqz p1, :cond_0

    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, p2, :cond_5

    :cond_0
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v6, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v5, v6, p3}, Lcom/android/server/PackageManagerService$Settings;->isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/server/PackageManagerService;->mSafeMode:Z

    if-eqz v5, :cond_1

    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    :cond_1
    if-nez v1, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v0       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    :goto_1
    :try_start_2
    invoke-static {v3, p3}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    move-object v1, v0

    .end local v0           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v1       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    goto :goto_0

    .end local v3           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    sget-object v4, Lcom/android/server/PackageManagerService;->mProviderInitOrderSorter:Ljava/util/Comparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    return-object v1

    .end local v1           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Provider;>;"
    .restart local v0       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    :catchall_0
    move-exception v5

    :goto_3
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .end local v0           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v1       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Provider;>;"
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v0       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    goto :goto_3

    .end local v0           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v1       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v3       #p:Landroid/content/pm/PackageParser$Provider;
    :cond_4
    move-object v0, v1

    .end local v1           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v0       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    goto :goto_1

    .end local v0           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v1       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    :cond_5
    move-object v0, v1

    .end local v1           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v0       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    goto :goto_2
.end method

.method public queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .parameter "targetPackage"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/InstrumentationInfo;>;"
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mInstrumentation:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Instrumentation;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Instrumentation;

    .local v2, p:Landroid/content/pm/PackageParser$Instrumentation;
    if-eqz p1, :cond_1

    iget-object v4, v2, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v4, v4, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    invoke-static {v2, p2}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Instrumentation;>;"
    .end local v2           #p:Landroid/content/pm/PackageParser$Instrumentation;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Instrumentation;>;"
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .local v1, comp:Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, v1, p3}, Lcom/android/server/PackageManagerService;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    .local v5, ri:Landroid/content/pm/ResolveInfo;
    iput-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_0
    move-object v6, v2

    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v6

    :cond_1
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    .local v4, pkgName:Ljava/lang/String;
    if-nez v4, :cond_2

    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    invoke-virtual {v7, p1, p2, p3}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_3

    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    iget-object v8, v3, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v7, p1, p2, p3, v8}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    monitor-exit v6

    move-object v6, v7

    goto :goto_0

    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v4           #pkgName:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 22
    .parameter "caller"
    .parameter "specifics"
    .parameter "specificTypes"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .local v13, resultsAction:Ljava/lang/String;
    or-int/lit8 v20, p6, 0x40

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v12

    .local v12, results:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v18, 0x0

    .local v18, specificsPos:I
    if-eqz p2, :cond_d

    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    move v0, v9

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    aget-object v17, p2, v9

    .local v17, sintent:Landroid/content/Intent;
    if-nez v17, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .local v5, action:Ljava/lang/String;
    if-eqz v13, :cond_2

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/4 v5, 0x0

    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .local v8, comp:Landroid/content/ComponentName;
    const/4 v14, 0x0

    .local v14, ri:Landroid/content/pm/ResolveInfo;
    const/4 v6, 0x0

    .local v6, ai:Landroid/content/pm/ActivityInfo;
    if-nez v8, :cond_a

    if-eqz p3, :cond_9

    aget-object v20, p3, v9

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object/from16 v20, v0

    move-object v0, v14

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_3

    :cond_3
    iget-object v6, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v8, Landroid/content/ComponentName;

    .end local v8           #comp:Landroid/content/ComponentName;
    move-object v0, v6

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object v0, v6

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object v0, v8

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v8       #comp:Landroid/content/ComponentName;
    :cond_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .local v4, N:I
    move/from16 v11, v18

    .local v11, j:I
    :goto_3
    if-ge v11, v4, :cond_b

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/ResolveInfo;

    .local v19, sri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_6

    :cond_5
    if-eqz v5, :cond_8

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    :cond_6
    invoke-interface {v12, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-nez v14, :cond_7

    move-object/from16 v14, v19

    :cond_7
    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v4, v4, -0x1

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .end local v4           #N:I
    .end local v11           #j:I
    .end local v19           #sri:Landroid/content/pm/ResolveInfo;
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    if-nez v6, :cond_4

    goto/16 :goto_1

    .restart local v4       #N:I
    .restart local v11       #j:I
    :cond_b
    if-nez v14, :cond_c

    new-instance v14, Landroid/content/pm/ResolveInfo;

    .end local v14           #ri:Landroid/content/pm/ResolveInfo;
    invoke-direct {v14}, Landroid/content/pm/ResolveInfo;-><init>()V

    .restart local v14       #ri:Landroid/content/pm/ResolveInfo;
    iput-object v6, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_c
    move-object v0, v12

    move/from16 v1, v18

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iput v9, v14, Landroid/content/pm/ResolveInfo;->specificIndex:I

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .end local v4           #N:I
    .end local v5           #action:Ljava/lang/String;
    .end local v6           #ai:Landroid/content/pm/ActivityInfo;
    .end local v8           #comp:Landroid/content/ComponentName;
    .end local v9           #i:I
    .end local v11           #j:I
    .end local v14           #ri:Landroid/content/pm/ResolveInfo;
    .end local v17           #sintent:Landroid/content/Intent;
    :cond_d
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .restart local v4       #N:I
    move/from16 v9, v18

    .restart local v9       #i:I
    :goto_4
    const/16 v20, 0x1

    sub-int v20, v4, v20

    move v0, v9

    move/from16 v1, v20

    if-ge v0, v1, :cond_14

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .local v15, rii:Landroid/content/pm/ResolveInfo;
    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    if-nez v20, :cond_f

    :cond_e
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_f
    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v10, :cond_e

    :cond_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .restart local v5       #action:Ljava/lang/String;
    if-eqz v13, :cond_11

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_10

    :cond_11
    add-int/lit8 v11, v9, 0x1

    .restart local v11       #j:I
    :goto_6
    if-ge v11, v4, :cond_10

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .local v16, rij:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_12

    invoke-interface {v12, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v4, v4, -0x1

    :cond_12
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .end local v5           #action:Ljava/lang/String;
    .end local v11           #j:I
    .end local v16           #rij:Landroid/content/pm/ResolveInfo;
    :cond_13
    and-int/lit8 v20, p6, 0x40

    if-nez v20, :cond_e

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object v1, v15

    iput-object v0, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    goto :goto_5

    .end local v10           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v15           #rii:Landroid/content/pm/ResolveInfo;
    :cond_14
    if-eqz p1, :cond_15

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    const/4 v9, 0x0

    .end local p0
    :goto_7
    if-ge v9, v4, :cond_15

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    .local v7, ainfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    invoke-interface {v12, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .end local v7           #ainfo:Landroid/content/pm/ActivityInfo;
    :cond_15
    and-int/lit8 v20, p6, 0x40

    if-nez v20, :cond_17

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v4, :cond_17

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .restart local v7       #ainfo:Landroid/content/pm/ActivityInfo;
    :cond_16
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .end local v7           #ainfo:Landroid/content/pm/ActivityInfo;
    :cond_17
    return-object v12
.end method

.method public queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .local v1, comp:Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, v1, p3}, Lcom/android/server/PackageManagerService;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    .local v5, ri:Landroid/content/pm/ResolveInfo;
    iput-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_0
    move-object v6, v2

    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v6

    :cond_1
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    .local v4, pkgName:Ljava/lang/String;
    if-nez v4, :cond_2

    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    invoke-virtual {v7, p1, p2, p3}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_3

    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    iget-object v8, v3, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v7, p1, p2, p3, v8}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    monitor-exit v6

    move-object v6, v7

    goto :goto_0

    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v4           #pkgName:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public queryIntentServices(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .local v0, comp:Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, v0, p3}, Lcom/android/server/PackageManagerService;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    .local v5, si:Landroid/content/pm/ServiceInfo;
    if-eqz v5, :cond_0

    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .local v4, ri:Landroid/content/pm/ResolveInfo;
    iput-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    :cond_0
    move-object v6, v1

    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #si:Landroid/content/pm/ServiceInfo;
    :goto_0
    return-object v6

    :cond_1
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .local v3, pkgName:Ljava/lang/String;
    if-nez v3, :cond_2

    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    invoke-virtual {v7, p1, p2, p3}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .local v2, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    iget-object v8, v2, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v7, p1, p2, p3, v8}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    monitor-exit v6

    move-object v6, v7

    goto :goto_0

    .end local v2           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v3           #pkgName:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .parameter "group"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .local v1, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v4, v4, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService$BasePermission;

    .local v2, p:Lcom/android/server/PackageManagerService$BasePermission;
    if-nez p1, :cond_2

    iget-object v4, v2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-nez v4, :cond_0

    :cond_1
    invoke-static {v2, p2}, Lcom/android/server/PackageManagerService;->generatePermissionInfo(Lcom/android/server/PackageManagerService$BasePermission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    .end local v2           #p:Lcom/android/server/PackageManagerService$BasePermission;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    .restart local v2       #p:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_2
    :try_start_1
    iget-object v4, v2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    invoke-static {v4, p2}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2           #p:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    monitor-exit v3

    move-object v3, v1

    :goto_1
    return-object v3

    :cond_4
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v1

    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public querySyncProviders(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .parameter "outNames"
    .parameter "outInfo"

    .prologue
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Provider;

    .local v2, p:Landroid/content/pm/PackageParser$Provider;
    iget-boolean v4, v2, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/PackageManagerService;->mSafeMode:Z

    if-eqz v4, :cond_1

    iget-object v4, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;"
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;>;"
    .end local v2           #p:Landroid/content/pm/PackageParser$Provider;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;>;"
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 12
    .parameter "parser"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v6, v6, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/PackageManagerService$BasePermission;

    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    invoke-direct {v0, p2, v11, v9}, Lcom/android/server/PackageManagerService$BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .restart local v0       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v6, v6, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .local v3, outerDepth:I
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, type:I
    if-eq v5, v9, :cond_5

    if-ne v5, v10, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_5

    :cond_2
    if-eq v5, v10, :cond_1

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .local v4, tagName:Ljava/lang/String;
    const-string v6, "group"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "gid"

    invoke-interface {p1, v11, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, gidStr:Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-static {v2}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v1

    .local v1, gid:I
    iget-object v6, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    invoke-static {v6, v1}, Lcom/android/server/PackageManagerService;->appendInt([II)[I

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    .end local v1           #gid:I
    .end local v2           #gidStr:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .restart local v2       #gidStr:Ljava/lang/String;
    :cond_4
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<group> without gid at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2           #gidStr:Ljava/lang/String;
    .end local v4           #tagName:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method readPermissions()V
    .locals 11

    .prologue
    const-string v10, "etc/permissions/platform.xml"

    const-string v9, " cannot be read"

    const-string v8, "PackageManager"

    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "etc/permissions"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v4, libraryDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const-string v6, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", skipping"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be read"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_6

    aget-object v1, v0, v2

    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "etc/permissions/platform.xml"

    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-xml file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " directory, ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permissions library file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be read"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    invoke-direct {p0, v1}, Lcom/android/server/PackageManagerService;->readPermissionsFromXml(Ljava/io/File;)V

    goto :goto_2

    .end local v1           #f:Ljava/io/File;
    :cond_6
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "etc/permissions/platform.xml"

    invoke-direct {v5, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v5, permFile:Ljava/io/File;
    invoke-direct {p0, v5}, Lcom/android/server/PackageManagerService;->readPermissionsFromXml(Ljava/io/File;)V

    goto/16 :goto_0
.end method

.method public removePackageFromPreferred(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    const-string v0, "PackageManager"

    const-string v1, "removePackageFromPreferred: this is now a no-op"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 17
    .parameter "pkg"
    .parameter "chatty"

    .prologue
    if-eqz p2, :cond_0

    const-string v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Removing package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v14, v0

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v12, v0

    monitor-enter v12

    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService;->clearPackagePreferredActivitiesLP(Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v13, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v14, v0

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object v13, v0

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object v13, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, N:I
    const/4 v9, 0x0

    .local v9, r:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$Provider;

    .local v8, p:Landroid/content/pm/PackageParser$Provider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    move-object v13, v0

    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v15, v15, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v13, v13, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v13, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget-object v13, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v13, v13, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, names:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    array-length v13, v7

    if-ge v6, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v13, v0

    aget-object v14, v7, v6

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v8, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v13, v0

    aget-object v14, v7, v6

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_4

    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unregistered content provider: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v7, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", className = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v15, v15, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", isSyncable = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v15, v15, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_2

    if-nez v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    .end local v9           #r:Ljava/lang/StringBuilder;
    const/16 v13, 0x100

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .restart local v9       #r:Ljava/lang/StringBuilder;
    :goto_3
    iget-object v13, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v13, v13, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v2           #N:I
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v7           #names:[Ljava/lang/String;
    .end local v8           #p:Landroid/content/pm/PackageParser$Provider;
    .end local v9           #r:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v13

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .restart local v2       #N:I
    .restart local v5       #i:I
    .restart local v6       #j:I
    .restart local v7       #names:[Ljava/lang/String;
    .restart local v8       #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v9       #r:Ljava/lang/StringBuilder;
    :cond_6
    const/16 v13, 0x20

    :try_start_1
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .end local v6           #j:I
    .end local v7           #names:[Ljava/lang/String;
    .end local v8           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_7
    if-eqz v9, :cond_8

    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Providers: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v9, 0x0

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v2, :cond_b

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageParser$Service;

    .local v10, s:Landroid/content/pm/PackageParser$Service;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    move-object v13, v0

    invoke-virtual {v13, v10}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;->removeService(Landroid/content/pm/PackageParser$Service;)V

    if-eqz p2, :cond_9

    if-nez v9, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    .end local v9           #r:Ljava/lang/StringBuilder;
    const/16 v13, 0x100

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .restart local v9       #r:Ljava/lang/StringBuilder;
    :goto_5
    iget-object v13, v10, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    const/16 v13, 0x20

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .end local v10           #s:Landroid/content/pm/PackageParser$Service;
    :cond_b
    if-eqz v9, :cond_c

    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Services: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v9, 0x0

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v2, :cond_f

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    .local v3, a:Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    move-object v13, v0

    const-string v14, "receiver"

    invoke-virtual {v13, v3, v14}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->removeActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    if-eqz p2, :cond_d

    if-nez v9, :cond_e

    new-instance v9, Ljava/lang/StringBuilder;

    .end local v9           #r:Ljava/lang/StringBuilder;
    const/16 v13, 0x100

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .restart local v9       #r:Ljava/lang/StringBuilder;
    :goto_7
    iget-object v13, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_e
    const/16 v13, 0x20

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .end local v3           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_f
    if-eqz v9, :cond_10

    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Receivers: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v9, 0x0

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v2, :cond_13

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    .restart local v3       #a:Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    move-object v13, v0

    const-string v14, "activity"

    invoke-virtual {v13, v3, v14}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->removeActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    if-eqz p2, :cond_11

    if-nez v9, :cond_12

    new-instance v9, Ljava/lang/StringBuilder;

    .end local v9           #r:Ljava/lang/StringBuilder;
    const/16 v13, 0x100

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .restart local v9       #r:Ljava/lang/StringBuilder;
    :goto_9
    iget-object v13, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_12
    const/16 v13, 0x20

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    .end local v3           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_13
    if-eqz v9, :cond_14

    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Activities: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v9, 0x0

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v2, :cond_18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$Permission;

    .local v8, p:Landroid/content/pm/PackageParser$Permission;
    const/4 v11, 0x0

    .local v11, tree:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v13, v0

    iget-object v13, v13, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    iget-object v14, v8, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageManagerService$BasePermission;

    .local v4, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-nez v4, :cond_15

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v13, v0

    iget-object v13, v13, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    iget-object v14, v8, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    check-cast v4, Lcom/android/server/PackageManagerService$BasePermission;

    .restart local v4       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_15
    if-eqz v4, :cond_16

    iget-object v13, v4, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-ne v13, v8, :cond_16

    const/4 v13, 0x0

    iput-object v13, v4, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz p2, :cond_16

    if-nez v9, :cond_17

    new-instance v9, Ljava/lang/StringBuilder;

    .end local v9           #r:Ljava/lang/StringBuilder;
    const/16 v13, 0x100

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .restart local v9       #r:Ljava/lang/StringBuilder;
    :goto_b
    iget-object v13, v8, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v13, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_17
    const/16 v13, 0x20

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .end local v4           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v8           #p:Landroid/content/pm/PackageParser$Permission;
    .end local v11           #tree:Z
    :cond_18
    if-eqz v9, :cond_19

    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Permissions: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v9, 0x0

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v2, :cond_1c

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Instrumentation;

    .local v3, a:Landroid/content/pm/PackageParser$Instrumentation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstrumentation:Ljava/util/HashMap;

    move-object v13, v0

    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Instrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1a

    if-nez v9, :cond_1b

    new-instance v9, Ljava/lang/StringBuilder;

    .end local v9           #r:Ljava/lang/StringBuilder;
    const/16 v13, 0x100

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .restart local v9       #r:Ljava/lang/StringBuilder;
    :goto_d
    iget-object v13, v3, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v13, v13, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_1b
    const/16 v13, 0x20

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    .end local v3           #a:Landroid/content/pm/PackageParser$Instrumentation;
    :cond_1c
    if-eqz v9, :cond_1d

    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Instrumentation: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->checkPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v0, :cond_1

    iget v2, v0, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v2}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 8
    .parameter "filter"
    .parameter "match"
    .parameter "set"
    .parameter "activity"

    .prologue
    const/4 v5, 0x1

    const-string v4, "android.permission.SET_PREFERRED_APPLICATIONS"

    const-string v4, "PackageManager"

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v4

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "replacePreferredActivity expects filter to have only 1 action."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v4

    if-eq v4, v5, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "replacePreferredActivity expects filter to have only 1 category."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "replacePreferredActivity expects filter to have no data authorities, paths, schemes or types."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/PackageManagerService;->getUidTargetSdkVersionLockedLP(I)I

    move-result v5

    const/16 v6, 0x8

    if-ge v5, v6, :cond_4

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring replacePreferredActivity() from uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    :goto_0
    return-void

    :cond_4
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;
    invoke-static {v5}, Lcom/android/server/PackageManagerService$Settings;->access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v1

    .local v1, category:Ljava/lang/String;
    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageManagerService$PreferredActivity;

    .local v3, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    invoke-virtual {v3}, Lcom/android/server/PackageManagerService$PreferredActivity;->countActions()I

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "PackageManager"

    const-string v6, "PreferredActivity filter needs to have at least 1 action."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #action:Ljava/lang/String;
    .end local v1           #category:Ljava/lang/String;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    .end local v3           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #category:Ljava/lang/String;
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    .restart local v3       #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    :cond_7
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/PackageManagerService$PreferredActivity;->countCategories()I

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "PackageManager"

    const-string v6, "PreferredActivity filter needs to have at least 1 category."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/PackageManagerService$PreferredActivity;->getAction(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/PackageManagerService$PreferredActivity;->getCategory(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removed preferred activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/util/LogPrinter;

    const/4 v6, 0x4

    const-string v7, "PackageManager"

    invoke-direct {v5, v6, v7}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v6, "  "

    invoke-virtual {p1, v5, v6}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_1

    .end local v3           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    :cond_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/PackageManagerService;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .locals 4
    .parameter "name"
    .parameter "flags"

    .prologue
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Provider;

    .local v0, provider:Landroid/content/pm/PackageParser$Provider;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/PackageManagerService$Settings;->isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/PackageManagerService;->mSafeMode:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    :goto_0
    monitor-exit v1

    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .end local v0           #provider:Landroid/content/pm/PackageParser$Provider;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 2
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/PackageManagerService;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .local v0, query:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/PackageManagerService;->chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    return-object v1
.end method

.method public resolveService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 3
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/PackageManagerService;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .local v0, query:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    move-object v1, p0

    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method schedulePackageCleaning(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Lcom/android/server/PackageManagerService$PackageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method scheduleWriteSettingsLocked()V
    .locals 4

    .prologue
    const/16 v3, 0xd

    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/PackageManagerService$PackageHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/PackageManagerService$PackageHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .locals 1
    .parameter "appPackageName"
    .parameter "newState"
    .parameter "flags"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/PackageManagerService;->setEnabledSetting(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    .locals 2
    .parameter "componentName"
    .parameter "newState"
    .parameter "flags"

    .prologue
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/server/PackageManagerService;->setEnabledSetting(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public setInstallLocation(I)Z
    .locals 4
    .parameter "loc"

    .prologue
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/PackageManagerService;->getInstallLocation()I

    move-result v0

    if-ne v0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method startCleaningPackages()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/PackageManagerService;->mMediaMounted:Z

    if-nez v3, :cond_1

    monitor-exit v2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v3, v3, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_2

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.content.pm.CLEAN_EXTERNAL_STORAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/server/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, am:Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2
    invoke-interface {v0, v2, v1, v3}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public systemReady()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/PackageManagerService;->mSystemReady:Z

    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "compatibility_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v0, v3

    .local v0, compatibilityModeEnabled:Z
    :goto_0
    invoke-static {v0}, Landroid/content/pm/PackageParser;->setCompatibilityModeEnabled(Z)V

    return-void

    .end local v0           #compatibilityModeEnabled:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public updateExternalMediaStatus(ZZ)V
    .locals 7
    .parameter "mediaStatus"
    .parameter "reportStatus"

    .prologue
    const-string v6, "unmounted"

    const-string v5, "mounted"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Media status can only be updated by the system"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating external media status from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/PackageManagerService;->mMediaMounted:Z

    if-eqz v4, :cond_1

    const-string v4, "mounted"

    move-object v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_2

    const-string v4, "mounted"

    move-object v4, v5

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/server/PackageManagerService;->mMediaMounted:Z

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    const/16 v3, 0xc

    if-eqz p2, :cond_3

    const/4 v4, 0x1

    :goto_2
    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v1

    .end local v0           #msg:Landroid/os/Message;
    :goto_3
    return-void

    :cond_1
    const-string v4, "unmounted"

    move-object v4, v6

    goto :goto_0

    :cond_2
    const-string v4, "unmounted"

    move-object v4, v6

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    iput-boolean p1, p0, Lcom/android/server/PackageManagerService;->mMediaMounted:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    new-instance v2, Lcom/android/server/PackageManagerService$11;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/PackageManagerService$11;-><init>(Lcom/android/server/PackageManagerService;ZZ)V

    invoke-virtual {v1, v2}, Lcom/android/server/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
