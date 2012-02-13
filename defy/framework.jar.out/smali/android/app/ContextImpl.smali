.class Landroid/app/ContextImpl;
.super Landroid/content/Context;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ContextImpl$1;,
        Landroid/app/ContextImpl$SharedPreferencesImpl;,
        Landroid/app/ContextImpl$ApplicationPackageManager;,
        Landroid/app/ContextImpl$ApplicationContentResolver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_ICONS:Z = false

.field private static final EMPTY_FILE_LIST:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ApplicationContext"

.field private static sAlarmManager:Landroid/app/AlarmManager;

.field private static sConnectivityManager:Landroid/net/ConnectivityManager;

.field private static sInstanceCount:J

.field private static sLocationManager:Landroid/location/LocationManager;

.field private static sLocationProxy:Lcom/motorola/android/locationproxy/LocationProxy;

.field private static sPowerManager:Landroid/os/PowerManager;

.field private static final sSharedPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/ContextImpl$SharedPreferencesImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSync:Ljava/lang/Object;

.field private static sThrottleManager:Landroid/net/ThrottleManager;

.field private static sVzwConnectivityManager:Landroid/net/VzwConnectivityManager;

.field private static sVzwLocationManager:Lcom/vzw/location/VzwLocationManager;

.field private static sWifiManager:Landroid/net/wifi/WifiManager;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mActivityToken:Landroid/os/IBinder;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAuthenticationManager:Ljava/lang/Object;

.field private mCacheDir:Ljava/io/File;

.field private mClipboardManager:Landroid/text/ClipboardManager;

.field private mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

.field private mDatabasesDir:Ljava/io/File;

.field private mDeepSleepManager:Lcom/motorola/android/os/DeepSleepManager;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mDropBoxManager:Landroid/os/DropBoxManager;

.field private mExternalCacheDir:Ljava/io/File;

.field private mExternalFilesDir:Ljava/io/File;

.field private mFilesDir:Ljava/io/File;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field mMainThread:Landroid/app/ActivityThread;

.field private mNfcManager:Landroid/nfc/NfcManager;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOuterContext:Landroid/content/Context;

.field mPackageInfo:Landroid/app/LoadedApk;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreferencesDir:Ljava/io/File;

.field private mReceiverRestrictedContext:Landroid/content/Context;

.field private mResources:Landroid/content/res/Resources;

.field private mRestricted:Z

.field private mSearchManager:Landroid/app/SearchManager;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private final mSync:Ljava/lang/Object;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeResource:I

.field private mUiModeManager:Landroid/app/UiModeManager;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/ContextImpl;->sSync:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/ContextImpl;->sSharedPrefs:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/app/ContextImpl;->sInstanceCount:J

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/app/ContextImpl;->EMPTY_FILE_LIST:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/Context;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    iput-object v1, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    iput-object v1, p0, Landroid/app/ContextImpl;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mActivityManager:Landroid/app/ActivityManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mWallpaperManager:Landroid/app/WallpaperManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    iput-object v1, p0, Landroid/app/ContextImpl;->mSearchManager:Landroid/app/SearchManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mStorageManager:Landroid/os/storage/StorageManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mVibrator:Landroid/os/Vibrator;

    iput-object v1, p0, Landroid/app/ContextImpl;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object v1, p0, Landroid/app/ContextImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mClipboardManager:Landroid/text/ClipboardManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mDropBoxManager:Landroid/os/DropBoxManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mUiModeManager:Landroid/app/UiModeManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mDownloadManager:Landroid/app/DownloadManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mNfcManager:Landroid/nfc/NfcManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mAuthenticationManager:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    iput-object v1, p0, Landroid/app/ContextImpl;->mDeepSleepManager:Lcom/motorola/android/os/DeepSleepManager;

    iput-object p0, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/app/ContextImpl;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/Context;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    iput-object v1, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    iput-object v1, p0, Landroid/app/ContextImpl;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mActivityManager:Landroid/app/ActivityManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mWallpaperManager:Landroid/app/WallpaperManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    iput-object v1, p0, Landroid/app/ContextImpl;->mSearchManager:Landroid/app/SearchManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mStorageManager:Landroid/os/storage/StorageManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mVibrator:Landroid/os/Vibrator;

    iput-object v1, p0, Landroid/app/ContextImpl;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object v1, p0, Landroid/app/ContextImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mClipboardManager:Landroid/text/ClipboardManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mDropBoxManager:Landroid/os/DropBoxManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mUiModeManager:Landroid/app/UiModeManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mDownloadManager:Landroid/app/DownloadManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mNfcManager:Landroid/nfc/NfcManager;

    iput-object v1, p0, Landroid/app/ContextImpl;->mAuthenticationManager:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    iput-object v1, p0, Landroid/app/ContextImpl;->mDeepSleepManager:Lcom/motorola/android/os/DeepSleepManager;

    sget-wide v0, Landroid/app/ContextImpl;->sInstanceCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Landroid/app/ContextImpl;->sInstanceCount:J

    iget-object v0, p1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iput-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v0, p1, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    iput-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    iget-object v0, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iput-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    iput-object v0, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    iput-object p0, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-static {p0}, Landroid/app/ContextImpl;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/String;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-static {p0, p1, p2}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    return-void
.end method

.method static createDropBoxManager()Landroid/os/DropBoxManager;
    .locals 3

    .prologue
    const-string v2, "dropbox"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/os/IDropBoxManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IDropBoxManagerService;

    move-result-object v1

    .local v1, service:Lcom/android/internal/os/IDropBoxManagerService;
    new-instance v2, Landroid/os/DropBoxManager;

    invoke-direct {v2, v1}, Landroid/os/DropBoxManager;-><init>(Lcom/android/internal/os/IDropBoxManagerService;)V

    return-object v2
.end method

.method static createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;
    .locals 2
    .parameter "mainThread"

    .prologue
    new-instance v0, Landroid/app/ContextImpl;

    invoke-direct {v0}, Landroid/app/ContextImpl;-><init>()V

    .local v0, context:Landroid/app/ContextImpl;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/ContextImpl;->init(Landroid/content/res/Resources;Landroid/app/ActivityThread;)V

    return-object v0
.end method

.method private enforce(Ljava/lang/String;IZILjava/lang/String;)V
    .locals 4
    .parameter "permission"
    .parameter "resultOfCheck"
    .parameter "selfToo"
    .parameter "uid"
    .parameter "message"

    .prologue
    if-eqz p2, :cond_2

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p5, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Neither user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nor current process has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v2, ""

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    return-void
.end method

.method private enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .parameter "modeFlags"
    .parameter "resultOfCheck"
    .parameter "selfToo"
    .parameter "uid"
    .parameter "uri"
    .parameter "message"

    .prologue
    if-eqz p2, :cond_2

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p6, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Neither user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nor current process has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->uriModeFlagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " permission on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v2, ""

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    return-void
.end method

.method private getAccountManager()Landroid/accounts/AccountManager;
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/app/ContextImpl;->mAccountManager:Landroid/accounts/AccountManager;

    if-nez v3, :cond_0

    const-string v3, "account"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/accounts/IAccountManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManager;

    move-result-object v1

    .local v1, service:Landroid/accounts/IAccountManager;
    new-instance v3, Landroid/accounts/AccountManager;

    invoke-direct {v3, p0, v1}, Landroid/accounts/AccountManager;-><init>(Landroid/content/Context;Landroid/accounts/IAccountManager;)V

    iput-object v3, p0, Landroid/app/ContextImpl;->mAccountManager:Landroid/accounts/AccountManager;

    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/accounts/IAccountManager;
    :cond_0
    iget-object v3, p0, Landroid/app/ContextImpl;->mAccountManager:Landroid/accounts/AccountManager;

    monitor-exit v2

    return-object v3

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getActivityManager()Landroid/app/ActivityManager;
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/app/ActivityManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mActivityManager:Landroid/app/ActivityManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getAlarmManager()Landroid/app/AlarmManager;
    .locals 4

    .prologue
    sget-object v2, Landroid/app/ContextImpl;->sSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Landroid/app/ContextImpl;->sAlarmManager:Landroid/app/AlarmManager;

    if-nez v3, :cond_0

    const-string v3, "alarm"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v1

    .local v1, service:Landroid/app/IAlarmManager;
    new-instance v3, Landroid/app/AlarmManager;

    invoke-direct {v3, v1}, Landroid/app/AlarmManager;-><init>(Landroid/app/IAlarmManager;)V

    sput-object v3, Landroid/app/ContextImpl;->sAlarmManager:Landroid/app/AlarmManager;

    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/app/IAlarmManager;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Landroid/app/ContextImpl;->sAlarmManager:Landroid/app/AlarmManager;

    return-object v2

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/AudioManager;

    invoke-direct {v0, p0}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getAuthenticationManager()Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mAuthenticationManager:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/motorola/android/simauth/SimAuthenticationManagerFactory;->getInstance()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ContextImpl;->mAuthenticationManager:Ljava/lang/Object;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mAuthenticationManager:Ljava/lang/Object;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getClipboardManager()Landroid/text/ClipboardManager;
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mClipboardManager:Landroid/text/ClipboardManager;

    if-nez v1, :cond_0

    new-instance v1, Landroid/text/ClipboardManager;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/text/ClipboardManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mClipboardManager:Landroid/text/ClipboardManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mClipboardManager:Landroid/text/ClipboardManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 4

    .prologue
    sget-object v2, Landroid/app/ContextImpl;->sSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Landroid/app/ContextImpl;->sConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_0

    const-string v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .local v1, service:Landroid/net/IConnectivityManager;
    new-instance v3, Landroid/net/ConnectivityManager;

    invoke-direct {v3, v1}, Landroid/net/ConnectivityManager;-><init>(Landroid/net/IConnectivityManager;)V

    sput-object v3, Landroid/app/ContextImpl;->sConnectivityManager:Landroid/net/ConnectivityManager;

    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/net/IConnectivityManager;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Landroid/app/ContextImpl;->sConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v2

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getDataDirFile()Ljava/io/File;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getDataDirFile()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDatabasesDir()Ljava/io/File;
    .locals 4

    .prologue
    const-string v0, "databases"

    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "databases"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    :cond_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "databases"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    :cond_1
    iget-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/app/admin/DevicePolicyManager;->create(Landroid/content/Context;Landroid/os/Handler;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ContextImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getDownloadManager()Landroid/app/DownloadManager;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mDownloadManager:Landroid/app/DownloadManager;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/MiuiClassFactory;->createDownloadManager(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/app/DownloadManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ContextImpl;->mDownloadManager:Landroid/app/DownloadManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mDownloadManager:Landroid/app/DownloadManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getDropBoxManager()Landroid/os/DropBoxManager;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mDropBoxManager:Landroid/os/DropBoxManager;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/app/ContextImpl;->createDropBoxManager()Landroid/os/DropBoxManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ContextImpl;->mDropBoxManager:Landroid/os/DropBoxManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mDropBoxManager:Landroid/os/DropBoxManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getInstanceCount()J
    .locals 2

    .prologue
    sget-wide v0, Landroid/app/ContextImpl;->sInstanceCount:J

    return-wide v0
.end method

.method private getLocationManager()Landroid/location/LocationManager;
    .locals 4

    .prologue
    sget-object v2, Landroid/app/ContextImpl;->sSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Landroid/app/ContextImpl;->sLocationManager:Landroid/location/LocationManager;

    if-nez v3, :cond_0

    const-string v3, "location"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v1

    .local v1, service:Landroid/location/ILocationManager;
    new-instance v3, Landroid/location/LocationManager;

    invoke-direct {v3, v1}, Landroid/location/LocationManager;-><init>(Landroid/location/ILocationManager;)V

    sput-object v3, Landroid/app/ContextImpl;->sLocationManager:Landroid/location/LocationManager;

    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/location/ILocationManager;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Landroid/app/ContextImpl;->sLocationManager:Landroid/location/LocationManager;

    return-object v2

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getLocationProxy()Lcom/motorola/android/locationproxy/LocationProxy;
    .locals 4

    .prologue
    sget-object v2, Landroid/app/ContextImpl;->sSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Landroid/app/ContextImpl;->sLocationProxy:Lcom/motorola/android/locationproxy/LocationProxy;

    if-nez v3, :cond_0

    const-string v3, "locationproxy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/motorola/android/locationproxy/ILocationProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/locationproxy/ILocationProxy;

    move-result-object v1

    .local v1, service:Lcom/motorola/android/locationproxy/ILocationProxy;
    new-instance v3, Lcom/motorola/android/locationproxy/LocationProxy;

    invoke-direct {v3, v1}, Lcom/motorola/android/locationproxy/LocationProxy;-><init>(Lcom/motorola/android/locationproxy/ILocationProxy;)V

    sput-object v3, Landroid/app/ContextImpl;->sLocationProxy:Lcom/motorola/android/locationproxy/LocationProxy;

    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Lcom/motorola/android/locationproxy/ILocationProxy;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Landroid/app/ContextImpl;->sLocationProxy:Lcom/motorola/android/locationproxy/LocationProxy;

    return-object v2

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getNfcManager()Landroid/nfc/NfcManager;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mNfcManager:Landroid/nfc/NfcManager;

    if-nez v1, :cond_0

    new-instance v1, Landroid/nfc/NfcManager;

    invoke-direct {v1, p0}, Landroid/nfc/NfcManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mNfcManager:Landroid/nfc/NfcManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mNfcManager:Landroid/nfc/NfcManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 5

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/NotificationManager;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x103000b

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/app/NotificationManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getPowerManager()Landroid/os/PowerManager;
    .locals 5

    .prologue
    sget-object v2, Landroid/app/ContextImpl;->sSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Landroid/app/ContextImpl;->sPowerManager:Landroid/os/PowerManager;

    if-nez v3, :cond_0

    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .local v1, service:Landroid/os/IPowerManager;
    new-instance v3, Landroid/os/PowerManager;

    iget-object v4, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/os/PowerManager;-><init>(Landroid/os/IPowerManager;Landroid/os/Handler;)V

    sput-object v3, Landroid/app/ContextImpl;->sPowerManager:Landroid/os/PowerManager;

    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/os/IPowerManager;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Landroid/app/ContextImpl;->sPowerManager:Landroid/os/PowerManager;

    return-object v2

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getPreferencesDir()Ljava/io/File;
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "shared_prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    :cond_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSearchManager()Landroid/app/SearchManager;
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mSearchManager:Landroid/app/SearchManager;

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/app/SearchManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mSearchManager:Landroid/app/SearchManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mSearchManager:Landroid/app/SearchManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getSensorManager()Landroid/hardware/SensorManager;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_0

    new-instance v1, Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/SensorManager;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getStorageManager()Landroid/os/storage/StorageManager;
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/app/ContextImpl;->mStorageManager:Landroid/os/storage/StorageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    new-instance v2, Landroid/os/storage/StorageManager;

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/storage/StorageManager;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/app/ContextImpl;->mStorageManager:Landroid/os/storage/StorageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Landroid/app/ContextImpl;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v1

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, rex:Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "ApplicationContext"

    const-string v3, "Failed to create StorageManager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/ContextImpl;->mStorageManager:Landroid/os/storage/StorageManager;

    goto :goto_0

    .end local v0           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    new-instance v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getThrottleManager()Landroid/net/ThrottleManager;
    .locals 4

    .prologue
    sget-object v2, Landroid/app/ContextImpl;->sSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Landroid/app/ContextImpl;->sThrottleManager:Landroid/net/ThrottleManager;

    if-nez v3, :cond_0

    const-string v3, "throttle"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IThrottleManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IThrottleManager;

    move-result-object v1

    .local v1, service:Landroid/net/IThrottleManager;
    new-instance v3, Landroid/net/ThrottleManager;

    invoke-direct {v3, v1}, Landroid/net/ThrottleManager;-><init>(Landroid/net/IThrottleManager;)V

    sput-object v3, Landroid/app/ContextImpl;->sThrottleManager:Landroid/net/ThrottleManager;

    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/net/IThrottleManager;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Landroid/app/ContextImpl;->sThrottleManager:Landroid/net/ThrottleManager;

    return-object v2

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getUiModeManager()Landroid/app/UiModeManager;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mUiModeManager:Landroid/app/UiModeManager;

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/UiModeManager;

    invoke-direct {v1}, Landroid/app/UiModeManager;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mUiModeManager:Landroid/app/UiModeManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mUiModeManager:Landroid/app/UiModeManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getUsbManager()Landroid/hardware/usb/UsbManager;
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/app/ContextImpl;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-nez v3, :cond_0

    const-string v3, "usb"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    .local v1, service:Landroid/hardware/usb/IUsbManager;
    new-instance v3, Landroid/hardware/usb/UsbManager;

    invoke-direct {v3, p0, v1}, Landroid/hardware/usb/UsbManager;-><init>(Landroid/content/Context;Landroid/hardware/usb/IUsbManager;)V

    iput-object v3, p0, Landroid/app/ContextImpl;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/hardware/usb/IUsbManager;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Landroid/app/ContextImpl;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v2

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getVibrator()Landroid/os/Vibrator;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mVibrator:Landroid/os/Vibrator;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getVzwConnectivityManager()Landroid/net/VzwConnectivityManager;
    .locals 4

    .prologue
    sget-object v2, Landroid/app/ContextImpl;->sSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Landroid/app/ContextImpl;->sVzwConnectivityManager:Landroid/net/VzwConnectivityManager;

    if-nez v3, :cond_0

    const-string v3, "vzwconnectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/IVzwConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVzwConnectivityManager;

    move-result-object v1

    .local v1, service:Landroid/net/IVzwConnectivityManager;
    new-instance v3, Landroid/net/VzwConnectivityManager;

    invoke-direct {v3, v1}, Landroid/net/VzwConnectivityManager;-><init>(Landroid/net/IVzwConnectivityManager;)V

    sput-object v3, Landroid/app/ContextImpl;->sVzwConnectivityManager:Landroid/net/VzwConnectivityManager;

    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/net/IVzwConnectivityManager;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Landroid/app/ContextImpl;->sVzwConnectivityManager:Landroid/net/VzwConnectivityManager;

    return-object v2

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getVzwLocationManager()Lcom/vzw/location/VzwLocationManager;
    .locals 4

    .prologue
    sget-object v2, Landroid/app/ContextImpl;->sSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Landroid/app/ContextImpl;->sVzwLocationManager:Lcom/vzw/location/VzwLocationManager;

    if-nez v3, :cond_0

    const-string v3, "VZW_LOCATION_SERVICE"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/vzw/location/IVzwLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vzw/location/IVzwLocationManager;

    move-result-object v1

    .local v1, service:Lcom/vzw/location/IVzwLocationManager;
    new-instance v3, Lcom/vzw/location/VzwLocationManager;

    invoke-direct {v3, v1}, Lcom/vzw/location/VzwLocationManager;-><init>(Lcom/vzw/location/IVzwLocationManager;)V

    sput-object v3, Landroid/app/ContextImpl;->sVzwLocationManager:Lcom/vzw/location/VzwLocationManager;

    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Lcom/vzw/location/IVzwLocationManager;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Landroid/app/ContextImpl;->sVzwLocationManager:Lcom/vzw/location/VzwLocationManager;

    return-object v2

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getWallpaperManager()Landroid/app/WallpaperManager;
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/app/WallpaperManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mWallpaperManager:Landroid/app/WallpaperManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 5

    .prologue
    sget-object v2, Landroid/app/ContextImpl;->sSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Landroid/app/ContextImpl;->sWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v3, :cond_0

    const-string v3, "wifi"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v1

    .local v1, service:Landroid/net/wifi/IWifiManager;
    new-instance v3, Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/net/wifi/WifiManager;-><init>(Landroid/net/wifi/IWifiManager;Landroid/os/Handler;)V

    sput-object v3, Landroid/app/ContextImpl;->sWifiManager:Landroid/net/wifi/WifiManager;

    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Landroid/net/wifi/IWifiManager;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Landroid/app/ContextImpl;->sWifiManager:Landroid/net/wifi/WifiManager;

    return-object v2

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private static makeBackupFile(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .parameter "prefsFile"

    .prologue
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "base"
    .parameter "name"

    .prologue
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contains a path separator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerReceiverInternal(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)Landroid/content/Intent;
    .locals 9
    .parameter "receiver"
    .parameter "filter"
    .parameter "broadcastPermission"
    .parameter "scheduler"
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .local v7, rd:Landroid/content/IIntentReceiver;
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_2

    if-eqz p5, :cond_2

    if-nez p4, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p4

    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    move-object v1, p1

    move-object v2, p5

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v7

    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-interface {v0, v1, v7, p2, p3}, Landroid/app/IActivityManager;->registerReceiver(Landroid/app/IApplicationThread;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    if-nez p4, :cond_3

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p4

    :cond_3
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    move-object v1, p1

    move-object v2, p5

    move-object v3, p4

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v7

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    .local v6, e:Landroid/os/RemoteException;
    move-object v0, v8

    goto :goto_1
.end method

.method private static setFilePermissionsFromMode(Ljava/lang/String;II)V
    .locals 3
    .parameter "name"
    .parameter "mode"
    .parameter "extraPermissions"

    .prologue
    const/4 v2, -0x1

    or-int/lit16 v0, p2, 0x1b0

    .local v0, perms:I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    invoke-static {p0, v0, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    return-void
.end method

.method private uriModeFlagToString(I)Ljava/lang/String;
    .locals 3
    .parameter "uriModeFlags"

    .prologue
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission mode flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "read and write"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "read"

    goto :goto_0

    :pswitch_2
    const-string v0, "write"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private validateFilePath(Ljava/lang/String;Z)Ljava/io/File;
    .locals 7
    .parameter "name"
    .parameter "createDirectory"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_1

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, dirPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, dir:Ljava/io/File;
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v1           #dirPath:Ljava/lang/String;
    .local v2, f:Ljava/io/File;
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f9

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_0
    return-object v2

    .end local v0           #dir:Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    :cond_1
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDatabasesDir()Ljava/io/File;

    move-result-object v0

    .restart local v0       #dir:Ljava/io/File;
    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .restart local v2       #f:Ljava/io/File;
    goto :goto_0
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 10
    .parameter "service"
    .parameter "conn"
    .parameter "flags"

    .prologue
    const/4 v9, 0x0

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2, p3}, Landroid/app/LoadedApk;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)Landroid/app/IServiceConnection;

    move-result-object v5

    .local v5, sd:Landroid/app/IServiceConnection;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    move-object v3, p1

    move v6, p3

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;I)I

    move-result v8

    .local v8, res:I
    if-gez v8, :cond_1

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to bind to service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #res:I
    :catch_0
    move-exception v0

    move-object v7, v0

    .local v7, e:Landroid/os/RemoteException;
    move v0, v9

    .end local v7           #e:Landroid/os/RemoteException;
    :goto_0
    return v0

    .end local v5           #sd:Landroid/app/IServiceConnection;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v5       #sd:Landroid/app/IServiceConnection;
    .restart local v8       #res:I
    :cond_1
    if-eqz v8, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v9

    goto :goto_0
.end method

.method public checkCallingOrSelfPermission(Ljava/lang/String;)I
    .locals 2
    .parameter "permission"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
    .locals 2
    .parameter "uri"
    .parameter "modeFlags"

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    return v0
.end method

.method public checkCallingPermission(Ljava/lang/String;)I
    .locals 3
    .parameter "permission"

    .prologue
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "permission is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .local v0, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    goto :goto_0
.end method

.method public checkCallingUriPermission(Landroid/net/Uri;I)I
    .locals 2
    .parameter "uri"
    .parameter "modeFlags"

    .prologue
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .local v0, pid:I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public checkPermission(Ljava/lang/String;II)I
    .locals 3
    .parameter "permission"
    .parameter "pid"
    .parameter "uid"

    .prologue
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "permission is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public checkUriPermission(Landroid/net/Uri;III)I
    .locals 2
    .parameter "uri"
    .parameter "pid"
    .parameter "uid"
    .parameter "modeFlags"

    .prologue
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 2
    .parameter "uri"
    .parameter "readPermission"
    .parameter "writePermission"
    .parameter "pid"
    .parameter "uid"
    .parameter "modeFlags"

    .prologue
    const/4 v1, 0x0

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2, p4, p5}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p0, p3, p4, p5}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public clearWallpaper()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->clear()V

    return-void
.end method

.method public createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .locals 5
    .parameter "packageName"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const-string v2, "system"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Landroid/app/ContextImpl;

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;)V

    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2, p1, p2}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;I)Landroid/app/LoadedApk;

    move-result-object v1

    .local v1, pi:Landroid/app/LoadedApk;
    if-eqz v1, :cond_3

    new-instance v0, Landroid/app/ContextImpl;

    invoke-direct {v0}, Landroid/app/ContextImpl;-><init>()V

    .local v0, c:Landroid/app/ContextImpl;
    and-int/lit8 v2, p2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v0, Landroid/app/ContextImpl;->mRestricted:Z

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v4, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;Landroid/content/res/Resources;)V

    iget-object v2, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_3

    move-object v2, v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .end local v0           #c:Landroid/app/ContextImpl;
    :cond_3
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public databaseList()[Ljava/lang/String;
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDatabasesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, list:[Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/app/ContextImpl;->EMPTY_FILE_LIST:[Ljava/lang/String;

    goto :goto_0
.end method

.method public deleteDatabase(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Landroid/app/ContextImpl;->validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v0           #f:Ljava/io/File;
    :goto_0
    return v1

    :catch_0
    move-exception v1

    move v1, v2

    goto :goto_0
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method public enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "permission"
    .parameter "message"

    .prologue
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    return-void
.end method

.method public enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 7
    .parameter "uri"
    .parameter "modeFlags"
    .parameter "message"

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "permission"
    .parameter "message"

    .prologue
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    return-void
.end method

.method public enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 7
    .parameter "uri"
    .parameter "modeFlags"
    .parameter "message"

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->checkCallingUriPermission(Landroid/net/Uri;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6
    .parameter "permission"
    .parameter "pid"
    .parameter "uid"
    .parameter "message"

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .locals 7
    .parameter "uri"
    .parameter "pid"
    .parameter "uid"
    .parameter "modeFlags"
    .parameter "message"

    .prologue
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v2

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p4

    move v4, p3

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 7
    .parameter "uri"
    .parameter "readPermission"
    .parameter "writePermission"
    .parameter "pid"
    .parameter "uid"
    .parameter "modeFlags"
    .parameter "message"

    .prologue
    invoke-virtual/range {p0 .. p6}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v2

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p6

    move v4, p5

    move-object v5, p1

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public fileList()[Ljava/lang/String;
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, list:[Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/app/ContextImpl;->EMPTY_FILE_LIST:[Ljava/lang/String;

    goto :goto_0
.end method

.method final getActivityToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplication()Landroid/app/Application;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 5

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "cache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    :cond_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ApplicationContext"

    const-string v2, "Unable to create cache directory"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    monitor-exit v0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f9

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    return-object v0
.end method

.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ContextImpl;->validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 3
    .parameter "name"
    .parameter "mode"

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f9

    invoke-static {v1, p2, v2}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    :cond_0
    return-object v0
.end method

.method public getExternalCacheDir()Ljava/io/File;
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mExternalCacheDir:Ljava/io/File;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->getExternalStorageAppCacheDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ContextImpl;->mExternalCacheDir:Ljava/io/File;

    :cond_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mExternalCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageAndroidDataDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".nomedia"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v1, p0, Landroid/app/ContextImpl;->mExternalCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ApplicationContext"

    const-string v2, "Unable to create external cache directory"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    monitor-exit v0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/app/ContextImpl;->mExternalCacheDir:Ljava/io/File;

    monitor-exit v0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .parameter "type"

    .prologue
    const/4 v5, 0x0

    const-string v1, "ApplicationContext"

    iget-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/app/ContextImpl;->mExternalFilesDir:Ljava/io/File;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Environment;->getExternalStorageAppFilesDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ContextImpl;->mExternalFilesDir:Ljava/io/File;

    :cond_0
    iget-object v2, p0, Landroid/app/ContextImpl;->mExternalFilesDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageAndroidDataDir()Ljava/io/File;

    move-result-object v3

    const-string v4, ".nomedia"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v2, p0, Landroid/app/ContextImpl;->mExternalFilesDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ApplicationContext"

    const-string v3, "Unable to create external files directory"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    move-object v1, v5

    :goto_1
    return-object v1

    :cond_1
    if-nez p1, :cond_2

    iget-object v2, p0, Landroid/app/ContextImpl;->mExternalFilesDir:Ljava/io/File;

    monitor-exit v1

    move-object v1, v2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Landroid/app/ContextImpl;->mExternalFilesDir:Ljava/io/File;

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ApplicationContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create external media directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    move-object v1, v5

    goto :goto_1

    :cond_3
    monitor-exit v1

    move-object v1, v0

    goto :goto_1

    .end local v0           #dir:Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "name"

    .prologue
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 5

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Landroid/app/ContextImpl;->getDataDirFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "files"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    :cond_0
    iget-object v1, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ApplicationContext"

    const-string v2, "Unable to create files directory"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    monitor-exit v0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f9

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_2
    iget-object v1, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMainLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method final getOuterContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPackageCodePath()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .local v0, pm:Landroid/content/pm/IPackageManager;
    if-eqz v0, :cond_1

    new-instance v1, Landroid/app/ContextImpl$ApplicationPackageManager;

    invoke-direct {v1, p0, v0}, Landroid/app/ContextImpl$ApplicationPackageManager;-><init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final getReceiverRestrictedContext()Landroid/content/Context;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/app/ReceiverRestrictedContext;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ReceiverRestrictedContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 12
    .parameter "name"
    .parameter "mode"

    .prologue
    const-string v9, "getSharedPreferences"

    const-string v9, "ApplicationContext"

    const/4 v3, 0x0

    .local v3, needInitialLoad:Z
    sget-object v9, Landroid/app/ContextImpl;->sSharedPrefs:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    sget-object v10, Landroid/app/ContextImpl;->sSharedPrefs:Ljava/util/HashMap;

    invoke-virtual {v10, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ContextImpl$SharedPreferencesImpl;

    .local v5, sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/app/ContextImpl$SharedPreferencesImpl;->hasFileChangedUnexpectedly()Z

    move-result v10

    if-nez v10, :cond_0

    monitor-exit v9

    move-object v6, v5

    .end local v5           #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    .local v6, sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    :goto_0
    return-object v6

    .end local v6           #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    .restart local v5       #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .local v4, prefsFile:Ljava/io/File;
    if-nez v5, :cond_1

    new-instance v5, Landroid/app/ContextImpl$SharedPreferencesImpl;

    .end local v5           #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    const/4 v10, 0x0

    invoke-direct {v5, v4, p2, v10}, Landroid/app/ContextImpl$SharedPreferencesImpl;-><init>(Ljava/io/File;ILjava/util/Map;)V

    .restart local v5       #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    sget-object v10, Landroid/app/ContextImpl;->sSharedPrefs:Ljava/util/HashMap;

    invoke-virtual {v10, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    :cond_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-enter v5

    if-eqz v3, :cond_2

    :try_start_1
    invoke-virtual {v5}, Landroid/app/ContextImpl$SharedPreferencesImpl;->isLoaded()Z

    move-result v9

    if-eqz v9, :cond_2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v5

    .end local v5           #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    .restart local v6       #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    goto :goto_0

    .end local v4           #prefsFile:Ljava/io/File;
    .end local v6           #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .restart local v4       #prefsFile:Ljava/io/File;
    .restart local v5       #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    :cond_2
    :try_start_3
    invoke-static {v4}, Landroid/app/ContextImpl;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .local v0, backup:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    invoke-virtual {v0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "ApplicationContext"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Attempt to read preferences file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " without permission"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v2, 0x0

    .local v2, map:Ljava/util/Map;
    new-instance v7, Landroid/os/FileUtils$FileStatus;

    invoke-direct {v7}, Landroid/os/FileUtils$FileStatus;-><init>()V

    .local v7, stat:Landroid/os/FileUtils$FileStatus;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Landroid/os/FileUtils;->getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v9

    if-eqz v9, :cond_5

    :try_start_4
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v8, str:Ljava/io/FileInputStream;
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v8           #str:Ljava/io/FileInputStream;
    :cond_5
    :goto_1
    if-nez v2, :cond_6

    :try_start_5
    invoke-virtual {v5}, Landroid/app/ContextImpl$SharedPreferencesImpl;->isLoaded()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {p0}, Lcom/motorola/flex/OverlayHelper;->readMapXml(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    :cond_6
    invoke-virtual {v5, v2, v7}, Landroid/app/ContextImpl$SharedPreferencesImpl;->replace(Ljava/util/Map;Landroid/os/FileUtils$FileStatus;)V

    monitor-exit v5

    move-object v6, v5

    .end local v5           #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    .restart local v6       #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    goto/16 :goto_0

    .end local v6           #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    .restart local v5       #sp:Landroid/app/ContextImpl$SharedPreferencesImpl;
    :catch_0
    move-exception v9

    move-object v1, v9

    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v9, "ApplicationContext"

    const-string v10, "getSharedPreferences"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0           #backup:Ljava/io/File;
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2           #map:Ljava/util/Map;
    .end local v7           #stat:Landroid/os/FileUtils$FileStatus;
    :catchall_1
    move-exception v9

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v9

    .restart local v0       #backup:Ljava/io/File;
    .restart local v2       #map:Ljava/util/Map;
    .restart local v7       #stat:Landroid/os/FileUtils$FileStatus;
    :catch_1
    move-exception v9

    move-object v1, v9

    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_6
    const-string v9, "ApplicationContext"

    const-string v10, "getSharedPreferences"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v9

    move-object v1, v9

    .local v1, e:Ljava/io/IOException;
    const-string v9, "ApplicationContext"

    const-string v10, "getSharedPreferences"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1
.end method

.method public getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "name"

    .prologue
    invoke-direct {p0}, Landroid/app/ContextImpl;->getPreferencesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "name"

    .prologue
    const-string v2, "window"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "layout_inflater"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mLayoutInflater:Landroid/view/LayoutInflater;

    .local v0, inflater:Landroid/view/LayoutInflater;
    if-eqz v0, :cond_1

    monitor-exit v2

    move-object v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/policy/PolicyManager;->makeNewLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mLayoutInflater:Landroid/view/LayoutInflater;

    monitor-exit v2

    move-object v2, v0

    goto :goto_0

    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    const-string v2, "activity"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Landroid/app/ContextImpl;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v2, "input_method"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    goto :goto_0

    :cond_4
    const-string v2, "alarm"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Landroid/app/ContextImpl;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v2

    goto :goto_0

    :cond_5
    const-string v2, "account"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Landroid/app/ContextImpl;->getAccountManager()Landroid/accounts/AccountManager;

    move-result-object v2

    goto :goto_0

    :cond_6
    const-string v2, "power"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Landroid/app/ContextImpl;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v2

    goto :goto_0

    :cond_7
    const-string v2, "connectivity"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0}, Landroid/app/ContextImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v2

    goto :goto_0

    :cond_8
    const-string v2, "throttle"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0}, Landroid/app/ContextImpl;->getThrottleManager()Landroid/net/ThrottleManager;

    move-result-object v2

    goto :goto_0

    :cond_9
    const-string v2, "wifi"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {p0}, Landroid/app/ContextImpl;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v2

    goto/16 :goto_0

    :cond_a
    const-string v2, "notification"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0}, Landroid/app/ContextImpl;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v2

    goto/16 :goto_0

    :cond_b
    const-string v2, "keyguard"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Landroid/app/KeyguardManager;

    invoke-direct {v2}, Landroid/app/KeyguardManager;-><init>()V

    goto/16 :goto_0

    :cond_c
    const-string v2, "accessibility"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    goto/16 :goto_0

    :cond_d
    const-string v2, "location"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-direct {p0}, Landroid/app/ContextImpl;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v2

    goto/16 :goto_0

    :cond_e
    const-string v2, "locationproxy"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-direct {p0}, Landroid/app/ContextImpl;->getLocationProxy()Lcom/motorola/android/locationproxy/LocationProxy;

    move-result-object v2

    goto/16 :goto_0

    :cond_f
    const-string v2, "VZW_LOCATION_SERVICE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-direct {p0}, Landroid/app/ContextImpl;->getVzwLocationManager()Lcom/vzw/location/VzwLocationManager;

    move-result-object v2

    goto/16 :goto_0

    :cond_10
    const-string v2, "vzwconnectivity"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-direct {p0}, Landroid/app/ContextImpl;->getVzwConnectivityManager()Landroid/net/VzwConnectivityManager;

    move-result-object v2

    goto/16 :goto_0

    :cond_11
    const-string v2, "search"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-direct {p0}, Landroid/app/ContextImpl;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v2

    goto/16 :goto_0

    :cond_12
    const-string v2, "sensor"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-direct {p0}, Landroid/app/ContextImpl;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v2

    goto/16 :goto_0

    :cond_13
    const-string v2, "storage"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-direct {p0}, Landroid/app/ContextImpl;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v2

    goto/16 :goto_0

    :cond_14
    const-string v2, "usb"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-direct {p0}, Landroid/app/ContextImpl;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v2

    goto/16 :goto_0

    :cond_15
    const-string v2, "vibrator"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-direct {p0}, Landroid/app/ContextImpl;->getVibrator()Landroid/os/Vibrator;

    move-result-object v2

    goto/16 :goto_0

    :cond_16
    const-string v2, "statusbar"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Landroid/app/ContextImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v3, :cond_17

    new-instance v3, Landroid/app/StatusBarManager;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/StatusBarManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/app/ContextImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_17
    iget-object v3, p0, Landroid/app/ContextImpl;->mStatusBarManager:Landroid/app/StatusBarManager;

    monitor-exit v2

    move-object v2, v3

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    :cond_18
    const-string v2, "audio"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-direct {p0}, Landroid/app/ContextImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    goto/16 :goto_0

    :cond_19
    const-string v2, "phone"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-direct {p0}, Landroid/app/ContextImpl;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    goto/16 :goto_0

    :cond_1a
    const-string v2, "clipboard"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-direct {p0}, Landroid/app/ContextImpl;->getClipboardManager()Landroid/text/ClipboardManager;

    move-result-object v2

    goto/16 :goto_0

    :cond_1b
    const-string v2, "wallpaper"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v2

    goto/16 :goto_0

    :cond_1c
    const-string v2, "dropbox"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-direct {p0}, Landroid/app/ContextImpl;->getDropBoxManager()Landroid/os/DropBoxManager;

    move-result-object v2

    goto/16 :goto_0

    :cond_1d
    const-string v2, "device_policy"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-direct {p0}, Landroid/app/ContextImpl;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    goto/16 :goto_0

    :cond_1e
    const-string v2, "uimode"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-direct {p0}, Landroid/app/ContextImpl;->getUiModeManager()Landroid/app/UiModeManager;

    move-result-object v2

    goto/16 :goto_0

    :cond_1f
    const-string v2, "deepsleep_manager"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, "ro.mot.deep.sleep.supported"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, isDeepSleepSupported:Z
    if-eqz v1, :cond_21

    iget-object v2, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-object v3, p0, Landroid/app/ContextImpl;->mDeepSleepManager:Lcom/motorola/android/os/DeepSleepManager;

    if-nez v3, :cond_20

    new-instance v3, Lcom/motorola/android/os/DeepSleepManager;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/motorola/android/os/DeepSleepManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/app/ContextImpl;->mDeepSleepManager:Lcom/motorola/android/os/DeepSleepManager;

    :cond_20
    iget-object v3, p0, Landroid/app/ContextImpl;->mDeepSleepManager:Lcom/motorola/android/os/DeepSleepManager;

    monitor-exit v2

    move-object v2, v3

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v3

    :cond_21
    const-string v2, "ApplicationContext"

    const-string v3, "System service DeepSleepManager is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #isDeepSleepSupported:Z
    :cond_22
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_23
    const-string v2, "download"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-direct {p0}, Landroid/app/ContextImpl;->getDownloadManager()Landroid/app/DownloadManager;

    move-result-object v2

    goto/16 :goto_0

    :cond_24
    const-string v2, "nfc"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-direct {p0}, Landroid/app/ContextImpl;->getNfcManager()Landroid/nfc/NfcManager;

    move-result-object v2

    goto/16 :goto_0

    :cond_25
    sget-object v2, Lcom/motorola/android/simauth/SimAuthenticationManagerFactory;->SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-direct {p0}, Landroid/app/ContextImpl;->getAuthenticationManager()Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 3

    .prologue
    const v2, 0x1030005

    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_1

    iget v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x10e002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    iput v2, p0, Landroid/app/ContextImpl;->mThemeResource:I

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    iget v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_1
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    return-object v0

    :cond_2
    iput v2, p0, Landroid/app/ContextImpl;->mThemeResource:I

    goto :goto_0
.end method

.method public getThemeResourceId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    return v0
.end method

.method public getWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperDesiredMinimumHeight()I
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getWallpaperDesiredMinimumWidth()I
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v0

    return v0
.end method

.method public grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 2
    .parameter "toPackage"
    .parameter "uri"
    .parameter "modeFlags"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/app/IActivityManager;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V
    .locals 1
    .parameter "packageInfo"
    .parameter "activityToken"
    .parameter "mainThread"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;Landroid/content/res/Resources;)V

    return-void
.end method

.method final init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;Landroid/content/res/Resources;)V
    .locals 2
    .parameter "packageInfo"
    .parameter "activityToken"
    .parameter "mainThread"
    .parameter "container"

    .prologue
    iput-object p1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0, p3}, Landroid/app/LoadedApk;->getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget-object v1, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->copy()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    :cond_0
    iput-object p3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    new-instance v0, Landroid/app/ContextImpl$ApplicationContentResolver;

    invoke-direct {v0, p0, p3}, Landroid/app/ContextImpl$ApplicationContentResolver;-><init>(Landroid/content/Context;Landroid/app/ActivityThread;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    invoke-virtual {p0, p2}, Landroid/app/ContextImpl;->setActivityToken(Landroid/os/IBinder;)V

    return-void
.end method

.method final init(Landroid/content/res/Resources;Landroid/app/ActivityThread;)V
    .locals 1
    .parameter "resources"
    .parameter "mainThread"

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iput-object p1, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    iput-object p2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    new-instance v0, Landroid/app/ContextImpl$ApplicationContentResolver;

    invoke-direct {v0, p0, p2}, Landroid/app/ContextImpl$ApplicationContentResolver;-><init>(Landroid/content/Context;Landroid/app/ActivityThread;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    return-void
.end method

.method public isRestricted()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/app/ContextImpl;->mRestricted:Z

    return v0
.end method

.method public openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .local v0, f:Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method public openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .locals 8
    .parameter "name"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const v4, 0x8000

    and-int/2addr v4, p2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move v0, v4

    .local v0, append:Z
    :goto_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .local v1, f:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .local v2, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, p2, v5}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v2

    .end local v0           #append:Z
    .end local v1           #f:Ljava/io/File;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :cond_0
    move v0, v6

    goto :goto_0

    .restart local v0       #append:Z
    .restart local v1       #f:Ljava/io/File;
    :catch_0
    move-exception v4

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .local v3, parent:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f9

    invoke-static {v4, v5, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .restart local v2       #fos:Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2, v6}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    goto :goto_1
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 4
    .parameter "name"
    .parameter "mode"
    .parameter "factory"

    .prologue
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/app/ContextImpl;->validateFilePath(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .local v1, f:Ljava/io/File;
    invoke-static {v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p2, v3}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    return-object v0
.end method

.method public peekWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->peekDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method final performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "who"
    .parameter "what"

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/LoadedApk;->removeContextRegistrations(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1
    .parameter "receiver"
    .parameter "filter"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/ContextImpl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 6
    .parameter "receiver"
    .parameter "filter"
    .parameter "broadcastPermission"
    .parameter "scheduler"

    .prologue
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->registerReceiverInternal(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public removeStickyBroadcast(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .local v1, resolvedType:Ljava/lang/String;
    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .end local p1
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-object p1, v0

    .end local v0           #intent:Landroid/content/Intent;
    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Landroid/app/IActivityManager;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public revokeUriPermission(Landroid/net/Uri;I)V
    .locals 2
    .parameter "uri"
    .parameter "modeFlags"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "who"
    .parameter "what"

    .prologue
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p0, p1, p2}, Landroid/app/ActivityThread;->scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .local v3, resolvedType:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 11
    .parameter "intent"
    .parameter "receiverPermission"

    .prologue
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .local v3, resolvedType:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    move-object v8, p2

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 11
    .parameter "intent"
    .parameter "receiverPermission"

    .prologue
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .local v3, resolvedType:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, p1

    move-object v8, p2

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .parameter "intent"
    .parameter "receiverPermission"
    .parameter "resultReceiver"
    .parameter "scheduler"
    .parameter "initialCode"
    .parameter "initialData"
    .parameter "initialExtras"

    .prologue
    const/4 v4, 0x0

    .local v4, rd:Landroid/content/IIntentReceiver;
    if-eqz p3, :cond_1

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_2

    if-nez p4, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p4

    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    .end local v4           #rd:Landroid/content/IIntentReceiver;
    const/4 v5, 0x0

    move-object v1, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v4

    .restart local v4       #rd:Landroid/content/IIntentReceiver;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .local v3, resolvedType:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, p1

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, p2

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    .end local v3           #resolvedType:Ljava/lang/String;
    :cond_2
    if-nez p4, :cond_3

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p4

    :cond_3
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .end local v4           #rd:Landroid/content/IIntentReceiver;
    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v4

    .restart local v4       #rd:Landroid/content/IIntentReceiver;
    goto :goto_0

    .restart local v3       #resolvedType:Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .local v3, resolvedType:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v2, p1

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .parameter "intent"
    .parameter "resultReceiver"
    .parameter "scheduler"
    .parameter "initialCode"
    .parameter "initialData"
    .parameter "initialExtras"

    .prologue
    const/4 v4, 0x0

    .local v4, rd:Landroid/content/IIntentReceiver;
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_2

    if-nez p3, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    .end local v4           #rd:Landroid/content/IIntentReceiver;
    const/4 v5, 0x0

    move-object v1, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v4

    .restart local v4       #rd:Landroid/content/IIntentReceiver;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .local v3, resolvedType:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v2, p1

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    .end local v3           #resolvedType:Ljava/lang/String;
    :cond_2
    if-nez p3, :cond_3

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    :cond_3
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .end local v4           #rd:Landroid/content/IIntentReceiver;
    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v4

    .restart local v4       #rd:Landroid/content/IIntentReceiver;
    goto :goto_0

    .restart local v3       #resolvedType:Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method final setActivityToken(Landroid/os/IBinder;)V
    .locals 0
    .parameter "token"

    .prologue
    iput-object p1, p0, Landroid/app/ContextImpl;->mActivityToken:Landroid/os/IBinder;

    return-void
.end method

.method final setOuterContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    iput-object p1, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    return-void
.end method

.method public setTheme(I)V
    .locals 0
    .parameter "resid"

    .prologue
    iput p1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    return-void
.end method

.method public setWallpaper(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setWallpaper(Ljava/io/InputStream;)V
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Calling startActivity() from outside of an Activity  context requires the FLAG_ACTIVITY_NEW_TASK flag. Is this really what you want?"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    const/4 v6, -0x1

    move-object v4, v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;

    return-void
.end method

.method public startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 7
    .parameter "className"
    .parameter "profileFile"
    .parameter "arguments"

    .prologue
    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v6

    goto :goto_0
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .locals 11
    .parameter "intent"
    .parameter "fillInIntent"
    .parameter "flagsMask"
    .parameter "flagsValues"
    .parameter "extraFlags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .local v4, resolvedType:Ljava/lang/String;
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move v8, p3

    move v9, p4

    invoke-interface/range {v0 .. v9}, Landroid/app/IActivityManager;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;III)I

    move-result v10

    .local v10, result:I
    const/4 v0, -0x6

    if-ne v10, v0, :cond_1

    new-instance v0, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {v0}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    throw v0

    .end local v10           #result:I
    :catch_0
    move-exception v0

    :goto_0
    return-void

    .restart local v10       #result:I
    :cond_1
    const/4 v0, 0x0

    invoke-static {v10, v0}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 5
    .parameter "service"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, p1, v4}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .local v0, cn:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allowed to start service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #cn:Landroid/content/ComponentName;
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    .end local v1           #e:Landroid/os/RemoteException;
    :goto_0
    return-object v2

    .restart local v0       #cn:Landroid/content/ComponentName;
    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method public stopService(Landroid/content/Intent;)Z
    .locals 6
    .parameter "service"

    .prologue
    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, p1, v4}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    .local v1, res:I
    if-gez v1, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allowed to stop service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #res:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    move v2, v5

    .end local v0           #e:Landroid/os/RemoteException;
    :goto_0
    return v2

    .restart local v1       #res:I
    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_0
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 3
    .parameter "conn"

    .prologue
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/app/LoadedApk;->forgetServiceDispatcher(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/app/IServiceConnection;

    move-result-object v0

    .local v0, sd:Landroid/app/IServiceConnection;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->unbindService(Landroid/app/IServiceConnection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .end local v0           #sd:Landroid/app/IServiceConnection;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Not supported in system context"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v0       #sd:Landroid/app/IServiceConnection;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 3
    .parameter "receiver"

    .prologue
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/app/LoadedApk;->forgetReceiverDispatcher(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/IIntentReceiver;

    move-result-object v0

    .local v0, rd:Landroid/content/IIntentReceiver;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .end local v0           #rd:Landroid/content/IIntentReceiver;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Not supported in system context"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v0       #rd:Landroid/content/IIntentReceiver;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
