.class public Lcom/samsung/ThemeService;
.super Lcom/samsung/ITheme$Stub;
.source "ThemeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ThemeService$ThemePackageInfo;
    }
.end annotation


# instance fields
.field private final APP_LEVEL_THEMEING_ENABLED:Z

.field private final ASSETS_PATH_IN_APK:Ljava/lang/String;

.field private final CHECK_CERT_ON_APPLY:Z

.field private final CHECK_CERT_ON_INSTALL:Z

.field private final CONTINUOUS_SHORT_REBOOT_THRESHOLD:I

.field private final DEFAULT_THEMEABLE_SET_ENABLED:Z

.field private final DEFAULT_THEME_PACKAGE:Ljava/lang/String;

.field private final DISABLED_PACKAGE_SET_ENABLED:Z

.field private final EXTENDED_THEME_PACKAGE_MAX:I

.field private final FRAMEWORK_PACKAGE_NAME:Ljava/lang/String;

.field private final KEY_CONTINUOUS_SHORT_REBOOT_COUNT:Ljava/lang/String;

.field private final KEY_CURRENT_THEME:Ljava/lang/String;

.field private final KEY_LAST_BOOT_COMPLETED_TIME:Ljava/lang/String;

.field private final KEY_SKIN_SETTINGS:Ljava/lang/String;

.field private final LOGD_THEME:Z

.field private final LOGI_THEME:Z

.field private final LOGV_THEME:Z

.field private final LOGV_THEME_L2:Z

.field private final MSG_SET_CURRENT_THEME:I

.field private final MSG_SET_SKIN:I

.field private final MSG_UPDATE_CONFIGURATION:I

.field private final READ_LOCK_TIMEOUT_SEC:J

.field private final SHORT_REBOOT_MIN:I

.field private final SORT_DEFAULT_THEME:Z

.field private final TAG:Ljava/lang/String;

.field private final THEME_CERT_ENABLED:Z

.field private final THEME_CERT_FILE_PATH:Ljava/lang/String;

.field private final THEME_RES_PACKAGE_PREFIX:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentLocale:Ljava/lang/Object;

.field private final mCurrentSkinMapping:Ljava/util/HashMap;
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

.field private mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

.field private final mDefaultThemeablePackageSet:Ljava/util/HashSet;

.field private final mDefaultThemeablePackageSetArray:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private final mInstalledThemeLabels:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInstalledThemeListAvailable:Z

.field private final mInstalledThemeListLock:Ljava/lang/Object;

.field private final mInstalledThemeNames:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRunnable_loadInstalledThemeList:Ljava/lang/Runnable;

.field private mRunnable_updateThemeToActivityManager:Ljava/lang/Runnable;

.field private final mSkinPackageInfoMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/ThemeService$ThemePackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemResPackages:[Ljava/lang/String;

.field private mThemeCertsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final mThemeDisabledPackageSet:Ljava/util/HashSet;

.field private final mThemeDisabledPackageSetArray:[Ljava/lang/String;

.field private mThemeInstallReceiver:Landroid/content/BroadcastReceiver;

.field private final rLock:Ljava/util/concurrent/locks/Lock;

.field private final rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private sDefaultThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

.field private final wLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x5

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "android"

    .line 147
    invoke-direct {p0}, Lcom/samsung/ITheme$Stub;-><init>()V

    .line 71
    const-string v1, "ThemeService"

    iput-object v1, p0, Lcom/samsung/ThemeService;->TAG:Ljava/lang/String;

    .line 72
    iput-boolean v4, p0, Lcom/samsung/ThemeService;->LOGI_THEME:Z

    .line 73
    iput-boolean v3, p0, Lcom/samsung/ThemeService;->LOGD_THEME:Z

    .line 74
    iput-boolean v3, p0, Lcom/samsung/ThemeService;->LOGV_THEME:Z

    .line 75
    iput-boolean v3, p0, Lcom/samsung/ThemeService;->LOGV_THEME_L2:Z

    .line 81
    iput-boolean v4, p0, Lcom/samsung/ThemeService;->APP_LEVEL_THEMEING_ENABLED:Z

    .line 82
    iput-boolean v3, p0, Lcom/samsung/ThemeService;->DISABLED_PACKAGE_SET_ENABLED:Z

    .line 83
    iput-boolean v3, p0, Lcom/samsung/ThemeService;->DEFAULT_THEMEABLE_SET_ENABLED:Z

    .line 86
    iput-boolean v4, p0, Lcom/samsung/ThemeService;->THEME_CERT_ENABLED:Z

    .line 87
    iput-boolean v4, p0, Lcom/samsung/ThemeService;->CHECK_CERT_ON_INSTALL:Z

    .line 88
    iput-boolean v4, p0, Lcom/samsung/ThemeService;->CHECK_CERT_ON_APPLY:Z

    .line 90
    const-string v1, "/system/etc/security/themecerts.zip"

    iput-object v1, p0, Lcom/samsung/ThemeService;->THEME_CERT_FILE_PATH:Ljava/lang/String;

    .line 93
    iput v2, p0, Lcom/samsung/ThemeService;->SHORT_REBOOT_MIN:I

    .line 94
    iput v2, p0, Lcom/samsung/ThemeService;->CONTINUOUS_SHORT_REBOOT_THRESHOLD:I

    .line 95
    const/16 v1, 0xa

    iput v1, p0, Lcom/samsung/ThemeService;->EXTENDED_THEME_PACKAGE_MAX:I

    .line 96
    const-string v1, "."

    iput-object v1, p0, Lcom/samsung/ThemeService;->DEFAULT_THEME_PACKAGE:Ljava/lang/String;

    .line 97
    const-string v1, "com.theme.samsung."

    iput-object v1, p0, Lcom/samsung/ThemeService;->THEME_RES_PACKAGE_PREFIX:Ljava/lang/String;

    .line 98
    const-string v1, "android"

    iput-object v5, p0, Lcom/samsung/ThemeService;->FRAMEWORK_PACKAGE_NAME:Ljava/lang/String;

    .line 99
    const-string/jumbo v1, "samsung.current_theme"

    iput-object v1, p0, Lcom/samsung/ThemeService;->KEY_CURRENT_THEME:Ljava/lang/String;

    .line 100
    const-string/jumbo v1, "samsung.skin_settings"

    iput-object v1, p0, Lcom/samsung/ThemeService;->KEY_SKIN_SETTINGS:Ljava/lang/String;

    .line 101
    const-string/jumbo v1, "samsung.last_boot_completed_time"

    iput-object v1, p0, Lcom/samsung/ThemeService;->KEY_LAST_BOOT_COMPLETED_TIME:Ljava/lang/String;

    .line 102
    const-string/jumbo v1, "samsung.continuous_short_reboot_count"

    iput-object v1, p0, Lcom/samsung/ThemeService;->KEY_CONTINUOUS_SHORT_REBOOT_COUNT:Ljava/lang/String;

    .line 103
    const-string/jumbo v1, "theme"

    iput-object v1, p0, Lcom/samsung/ThemeService;->ASSETS_PATH_IN_APK:Ljava/lang/String;

    .line 104
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android"

    aput-object v5, v1, v3

    const-string/jumbo v2, "touchwiz"

    aput-object v2, v1, v4

    const-string v2, "com.android.systemui"

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/samsung/ThemeService;->mSystemResPackages:[Ljava/lang/String;

    .line 115
    iput-boolean v3, p0, Lcom/samsung/ThemeService;->SORT_DEFAULT_THEME:Z

    .line 116
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/ThemeService;->mInstalledThemeListLock:Ljava/lang/Object;

    .line 117
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/samsung/ThemeService;->mInstalledThemeNames:Ljava/util/LinkedList;

    .line 118
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/samsung/ThemeService;->mInstalledThemeLabels:Ljava/util/LinkedList;

    .line 119
    iput-boolean v3, p0, Lcom/samsung/ThemeService;->mInstalledThemeListAvailable:Z

    .line 122
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Lcom/samsung/ThemeService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 123
    iget-object v1, p0, Lcom/samsung/ThemeService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    .line 124
    iget-object v1, p0, Lcom/samsung/ThemeService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/ThemeService;->wLock:Ljava/util/concurrent/locks/Lock;

    .line 125
    const-wide/16 v1, 0x5

    iput-wide v1, p0, Lcom/samsung/ThemeService;->READ_LOCK_TIMEOUT_SEC:J

    .line 128
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/ThemeService;->mThemeDisabledPackageSet:Ljava/util/HashSet;

    .line 129
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/ThemeService;->mDefaultThemeablePackageSet:Ljava/util/HashSet;

    .line 130
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/ThemeService;->mThemeDisabledPackageSetArray:[Ljava/lang/String;

    .line 131
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/ThemeService;->mDefaultThemeablePackageSetArray:[Ljava/lang/String;

    .line 134
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/ThemeService;->mCurrentSkinMapping:Ljava/util/HashMap;

    .line 135
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/ThemeService;->mSkinPackageInfoMapping:Ljava/util/HashMap;

    .line 618
    new-instance v1, Lcom/samsung/ThemeService$1;

    invoke-direct {v1, p0}, Lcom/samsung/ThemeService$1;-><init>(Lcom/samsung/ThemeService;)V

    iput-object v1, p0, Lcom/samsung/ThemeService;->mRunnable_updateThemeToActivityManager:Ljava/lang/Runnable;

    .line 1404
    new-instance v1, Lcom/samsung/ThemeService$2;

    invoke-direct {v1, p0}, Lcom/samsung/ThemeService$2;-><init>(Lcom/samsung/ThemeService;)V

    iput-object v1, p0, Lcom/samsung/ThemeService;->mRunnable_loadInstalledThemeList:Ljava/lang/Runnable;

    .line 1415
    new-instance v1, Lcom/samsung/ThemeService$3;

    invoke-direct {v1, p0}, Lcom/samsung/ThemeService$3;-><init>(Lcom/samsung/ThemeService;)V

    iput-object v1, p0, Lcom/samsung/ThemeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1447
    new-instance v1, Lcom/samsung/ThemeService$4;

    invoke-direct {v1, p0}, Lcom/samsung/ThemeService$4;-><init>(Lcom/samsung/ThemeService;)V

    iput-object v1, p0, Lcom/samsung/ThemeService;->mThemeInstallReceiver:Landroid/content/BroadcastReceiver;

    .line 1576
    iput v3, p0, Lcom/samsung/ThemeService;->MSG_UPDATE_CONFIGURATION:I

    .line 1577
    iput v4, p0, Lcom/samsung/ThemeService;->MSG_SET_CURRENT_THEME:I

    .line 1578
    iput v6, p0, Lcom/samsung/ThemeService;->MSG_SET_SKIN:I

    .line 1580
    new-instance v1, Lcom/samsung/ThemeService$5;

    invoke-direct {v1, p0}, Lcom/samsung/ThemeService$5;-><init>(Lcom/samsung/ThemeService;)V

    iput-object v1, p0, Lcom/samsung/ThemeService;->mHandler:Landroid/os/Handler;

    .line 150
    iput-object p1, p0, Lcom/samsung/ThemeService;->mContext:Landroid/content/Context;

    .line 151
    iget-object v1, p0, Lcom/samsung/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/ThemeService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 154
    const-string v1, "android"

    invoke-direct {p0, v5}, Lcom/samsung/ThemeService;->getThemePackageInfo(Ljava/lang/String;)Lcom/samsung/ThemeService$ThemePackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/ThemeService;->sDefaultThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    .line 155
    iget-object v1, p0, Lcom/samsung/ThemeService;->sDefaultThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    iget-object v2, p0, Lcom/samsung/ThemeService;->sDefaultThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    const-string v3, "."

    iput-object v3, v2, Lcom/samsung/ThemeService$ThemePackageInfo;->path:Ljava/lang/String;

    iput-object v3, v1, Lcom/samsung/ThemeService$ThemePackageInfo;->packageName:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/samsung/ThemeService;->sDefaultThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    iput-object v1, p0, Lcom/samsung/ThemeService;->mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/samsung/ThemeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/ThemeService;->mThemeInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    iget-object v1, p0, Lcom/samsung/ThemeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/ThemeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lcom/samsung/ThemeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/ThemeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    invoke-direct {p0}, Lcom/samsung/ThemeService;->loadPredefinedThemeTargets()V

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/ThemeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/samsung/ThemeService;->updateThemeToActivityManager()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/ThemeService;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/ThemeService;Ljava/util/concurrent/locks/Lock;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->tryLock(Ljava/util/concurrent/locks/Lock;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/ThemeService;)Lcom/samsung/ThemeService$ThemePackageInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/ThemeService;->mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/ThemeService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/ThemeService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/ThemeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->getLeaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/ThemeService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->removeInstalledThemeLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/ThemeService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->isValidThemePackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/ThemeService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->addInstalledThemeLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/ThemeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/samsung/ThemeService;->updateThemeToPersistentStorage()V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/ThemeService;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/ThemeService;->wLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/ThemeService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/ThemeService;->mInstalledThemeListLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/ThemeService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->setCurrentThemePackageLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/ThemeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/samsung/ThemeService;->loadInstalledThemeListLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/ThemeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/samsung/ThemeService;->setToLastSelectedTheme()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/ThemeService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/ThemeService;->mRunnable_loadInstalledThemeList:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/ThemeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/samsung/ThemeService;->mInstalledThemeListAvailable:Z

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/ThemeService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/ThemeService;->mCurrentLocale:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/ThemeService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/ThemeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/ThemeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/samsung/ThemeService;->clearInstalledThemeListLocked()V

    return-void
.end method

.method private addInstalledThemeLocked(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 1157
    :try_start_0
    iget-object v3, p0, Lcom/samsung/ThemeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1158
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/samsung/ThemeService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1159
    .local v2, label:Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lcom/samsung/ThemeService;->addInstalledThemeLocked(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1163
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #label:Ljava/lang/String;
    :goto_0
    return-void

    .line 1160
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1161
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private addInstalledThemeLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"
    .parameter "label"

    .prologue
    .line 1173
    :try_start_0
    iget-object v2, p0, Lcom/samsung/ThemeService;->mInstalledThemeNames:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1175
    iget-object v2, p0, Lcom/samsung/ThemeService;->mInstalledThemeNames:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1176
    iget-object v2, p0, Lcom/samsung/ThemeService;->mInstalledThemeLabels:Ljava/util/LinkedList;

    invoke-virtual {v2, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1196
    :goto_0
    return-void

    .line 1180
    :cond_0
    iget-object v2, p0, Lcom/samsung/ThemeService;->mInstalledThemeNames:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 1181
    const-string v2, "ThemeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Theme] Duplicated theme package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->getLeaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1193
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1194
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    .line 1186
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/samsung/ThemeService;->mInstalledThemeLabels:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1187
    iget-object v2, p0, Lcom/samsung/ThemeService;->mInstalledThemeLabels:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    .line 1191
    :cond_2
    iget-object v2, p0, Lcom/samsung/ThemeService;->mInstalledThemeLabels:Ljava/util/LinkedList;

    invoke-virtual {v2, v1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 1192
    iget-object v2, p0, Lcom/samsung/ThemeService;->mInstalledThemeNames:Ljava/util/LinkedList;

    invoke-virtual {v2, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1186
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private clearInstalledThemeListLocked()V
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/samsung/ThemeService;->mInstalledThemeNames:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1200
    iget-object v0, p0, Lcom/samsung/ThemeService;->mInstalledThemeLabels:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ThemeService;->mInstalledThemeListAvailable:Z

    .line 1202
    return-void
.end method

.method private getAvailableResourcePackagesLocked(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 10
    .parameter "remoteContext"

    .prologue
    .line 1057
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1058
    .local v7, set:Ljava/util/HashSet;
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1059
    .local v0, am:Landroid/content/res/AssetManager;
    const/4 v2, 0x0

    .line 1061
    .local v2, assets:[Ljava/lang/String;
    :try_start_0
    const-string/jumbo v8, "theme"

    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1067
    move-object v1, v2

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v1, v4

    .line 1068
    .local v6, name:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .line 1067
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1062
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #name:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 1063
    .local v3, e:Ljava/io/IOException;
    const-string v8, "ThemeService"

    const-string v9, "[Theme] Cannot read assets."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1065
    const/4 v8, 0x0

    .line 1074
    .end local v3           #e:Ljava/io/IOException;
    :goto_2
    return-object v8

    .line 1072
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #name:Ljava/lang/String;
    :cond_0
    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v6           #name:Ljava/lang/String;
    :cond_1
    move-object v8, v7

    .line 1074
    goto :goto_2
.end method

.method private getColorCacheFromXmlLocked(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 12
    .parameter "remoteContext"
    .parameter "packageName"

    .prologue
    const/4 v11, 0x0

    const-string v8, "ThemeService"

    .line 1083
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1085
    .local v0, colorCache:Ljava/util/HashMap;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "theme_colors"

    const-string/jumbo v10, "xml"

    invoke-virtual {v8, v9, v10, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1087
    .local v6, resid:I
    if-nez v6, :cond_0

    move-object v8, v0

    .line 1129
    .end local v0           #colorCache:Ljava/util/HashMap;
    .end local v6           #resid:I
    :goto_0
    return-object v8

    .line 1091
    .restart local v0       #colorCache:Ljava/util/HashMap;
    .restart local v6       #resid:I
    :cond_0
    iget-object v8, p0, Lcom/samsung/ThemeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v9, 0x0

    invoke-virtual {v8, p2, v6, v9}, Landroid/content/pm/PackageManager;->getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 1092
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v8, "colors"

    invoke-static {v4, v8}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1096
    :goto_1
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1098
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1099
    .local v3, name:Ljava/lang/String;
    if-nez v3, :cond_1

    move-object v8, v0

    .line 1126
    goto :goto_0

    .line 1104
    :cond_1
    const-string v8, "color"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1105
    const-string v8, "ThemeService"

    const-string v9, "[Theme] Incorrect tag name for color."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v11

    .line 1106
    goto :goto_0

    .line 1109
    :cond_2
    const/4 v8, 0x0

    const-string/jumbo v9, "package"

    invoke-interface {v4, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1110
    .local v5, resPackageName:Ljava/lang/String;
    if-nez v5, :cond_3

    .line 1111
    const-string v8, "ThemeService"

    const-string v9, "[Theme] Missing package name for color."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v11

    .line 1112
    goto :goto_0

    .line 1115
    :cond_3
    const/4 v8, 0x0

    const-string/jumbo v9, "name"

    invoke-interface {v4, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1116
    .local v2, entryName:Ljava/lang/String;
    if-nez v2, :cond_4

    .line 1117
    const-string v8, "ThemeService"

    const-string v9, "[Theme] Missing entry name for color."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v11

    .line 1118
    goto :goto_0

    .line 1121
    :cond_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 1123
    .local v7, value:Ljava/lang/String;
    invoke-direct {p0, v0, v5, v2, v7}, Lcom/samsung/ThemeService;->setColorCacheLocked(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1127
    .end local v0           #colorCache:Ljava/util/HashMap;
    .end local v2           #entryName:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #resPackageName:Ljava/lang/String;
    .end local v6           #resid:I
    .end local v7           #value:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 1128
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v8, v11

    .line 1129
    goto :goto_0
.end method

.method private getExtendedPackagesLocked(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashSet;
    .locals 11
    .parameter "remoteContext"
    .parameter "themePackage"

    .prologue
    const/4 v10, 0x0

    const-string v7, "ThemeService"

    .line 960
    :try_start_0
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 962
    .local v6, set:Ljava/util/HashSet;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v8, "theme_extended_packages"

    const-string/jumbo v9, "xml"

    invoke-virtual {v7, v8, v9, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 964
    .local v5, resid:I
    if-nez v5, :cond_0

    move-object v7, v6

    .line 1002
    .end local v5           #resid:I
    .end local v6           #set:Ljava/util/HashSet;
    :goto_0
    return-object v7

    .line 968
    .restart local v5       #resid:I
    .restart local v6       #set:Ljava/util/HashSet;
    :cond_0
    iget-object v7, p0, Lcom/samsung/ThemeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, p2, v5, v8}, Landroid/content/pm/PackageManager;->getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 969
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v7, "packages"

    invoke-static {v4, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 971
    const/4 v0, 0x0

    .line 974
    .local v0, count:I
    :goto_1
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 976
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 977
    .local v3, name:Ljava/lang/String;
    if-nez v3, :cond_1

    :goto_2
    move-object v7, v6

    .line 999
    goto :goto_0

    .line 982
    :cond_1
    const-string/jumbo v7, "package"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 983
    const-string v7, "ThemeService"

    const-string v8, "[Theme] Incorrect tag name for package."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v10

    .line 984
    goto :goto_0

    .line 987
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 988
    const/16 v7, 0xa

    if-le v0, v7, :cond_3

    .line 989
    const-string v7, "ThemeService"

    const-string v8, "[Theme] Maximum extended theme packages reached (10)."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1000
    .end local v0           #count:I
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #resid:I
    .end local v6           #set:Ljava/util/HashSet;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 1001
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v10

    .line 1002
    goto :goto_0

    .line 993
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #count:I
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #resid:I
    .restart local v6       #set:Ljava/util/HashSet;
    :cond_3
    :try_start_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 996
    .local v2, extendedPackage:Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getLastSelectedTheme()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1388
    iget-object v2, p0, Lcom/samsung/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1389
    .local v0, cr:Landroid/content/ContentResolver;
    const-string/jumbo v2, "samsung.current_theme"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1391
    .local v1, theme:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1393
    const-string v1, "."

    .line 1397
    :cond_0
    return-object v1
.end method

.method private getLastSkinSettings()Ljava/util/Set;
    .locals 9

    .prologue
    .line 1261
    iget-object v8, p0, Lcom/samsung/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1262
    .local v1, cr:Landroid/content/ContentResolver;
    const-string/jumbo v8, "samsung.skin_settings"

    invoke-static {v1, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1263
    .local v7, skinSettings:Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1265
    :cond_0
    const/4 v8, 0x0

    .line 1277
    :goto_0
    return-object v8

    .line 1269
    :cond_1
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1270
    .local v6, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 1272
    .local v2, eachSkinSetting:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    const-string v8, "[=,]"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1274
    .local v5, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1270
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2           #eachSkinSetting:Ljava/lang/String;
    .end local v5           #packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    move-object v8, v6

    .line 1277
    goto :goto_0
.end method

.method private getLeaf(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 1615
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1616
    .local v0, i:I
    if-gez v0, :cond_0

    .line 1617
    const/4 v0, 0x0

    .line 1618
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPathForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const-string v1, "."

    .line 950
    if-nez p1, :cond_0

    .line 951
    const/4 v0, 0x0

    .line 955
    :goto_0
    return-object v0

    .line 952
    :cond_0
    const-string v0, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 953
    const-string v0, "."

    move-object v0, v1

    goto :goto_0

    .line 955
    :cond_1
    iget-object v0, p0, Lcom/samsung/ThemeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    goto :goto_0
.end method

.method private getReducedSkinPackageInfo(Lcom/samsung/ThemeService$ThemePackageInfo;Ljava/util/List;)Lcom/samsung/ThemeService$ThemePackageInfo;
    .locals 8
    .parameter "sourceInfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/ThemeService$ThemePackageInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/ThemeService$ThemePackageInfo;"
        }
    .end annotation

    .prologue
    .line 841
    .local p2, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Lcom/samsung/ThemeService$ThemePackageInfo;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/samsung/ThemeService$ThemePackageInfo;-><init>(Lcom/samsung/ThemeService;Lcom/samsung/ThemeService$1;)V

    .line 842
    .local v4, skinInfo:Lcom/samsung/ThemeService$ThemePackageInfo;
    new-instance v5, Ljava/lang/String;

    iget-object v6, p1, Lcom/samsung/ThemeService$ThemePackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v5, v4, Lcom/samsung/ThemeService$ThemePackageInfo;->packageName:Ljava/lang/String;

    .line 843
    new-instance v5, Ljava/lang/String;

    iget-object v6, p1, Lcom/samsung/ThemeService$ThemePackageInfo;->path:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v5, v4, Lcom/samsung/ThemeService$ThemePackageInfo;->path:Ljava/lang/String;

    .line 844
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, v4, Lcom/samsung/ThemeService$ThemePackageInfo;->targetPackageSet:Ljava/util/HashSet;

    .line 845
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, v4, Lcom/samsung/ThemeService$ThemePackageInfo;->extendedPackageSet:Ljava/util/HashSet;

    .line 846
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/samsung/ThemeService$ThemePackageInfo;->colorCacheMapping:Ljava/util/HashMap;

    .line 847
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/samsung/ThemeService$ThemePackageInfo;->resPackagePathMapping:Ljava/util/HashMap;

    .line 849
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/samsung/ThemeService;->mSystemResPackages:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 850
    iget-object v5, p1, Lcom/samsung/ThemeService$ThemePackageInfo;->colorCacheMapping:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/samsung/ThemeService;->mSystemResPackages:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 851
    .local v2, map:Ljava/util/Map;
    if-eqz v2, :cond_0

    .line 852
    iget-object v5, v4, Lcom/samsung/ThemeService$ThemePackageInfo;->colorCacheMapping:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/samsung/ThemeService;->mSystemResPackages:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    :cond_0
    iget-object v5, p1, Lcom/samsung/ThemeService$ThemePackageInfo;->resPackagePathMapping:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/samsung/ThemeService;->mSystemResPackages:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 855
    iget-object v5, v4, Lcom/samsung/ThemeService$ThemePackageInfo;->resPackagePathMapping:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/samsung/ThemeService;->mSystemResPackages:[Ljava/lang/String;

    aget-object v6, v6, v0

    iget-object v7, v4, Lcom/samsung/ThemeService$ThemePackageInfo;->path:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 858
    .end local v2           #map:Ljava/util/Map;
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 859
    .local v3, packageName:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/samsung/ThemeService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 865
    iget-object v5, p1, Lcom/samsung/ThemeService$ThemePackageInfo;->targetPackageSet:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 866
    iget-object v5, v4, Lcom/samsung/ThemeService$ThemePackageInfo;->targetPackageSet:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 868
    :cond_4
    iget-object v5, p1, Lcom/samsung/ThemeService$ThemePackageInfo;->extendedPackageSet:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 869
    iget-object v5, v4, Lcom/samsung/ThemeService$ThemePackageInfo;->extendedPackageSet:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 871
    :cond_5
    iget-object v5, p1, Lcom/samsung/ThemeService$ThemePackageInfo;->colorCacheMapping:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 872
    .restart local v2       #map:Ljava/util/Map;
    if-eqz v2, :cond_6

    .line 873
    iget-object v5, v4, Lcom/samsung/ThemeService$ThemePackageInfo;->colorCacheMapping:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    :cond_6
    iget-object v5, p1, Lcom/samsung/ThemeService$ThemePackageInfo;->resPackagePathMapping:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 876
    iget-object v5, v4, Lcom/samsung/ThemeService$ThemePackageInfo;->resPackagePathMapping:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/samsung/ThemeService$ThemePackageInfo;->path:Ljava/lang/String;

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 879
    .end local v2           #map:Ljava/util/Map;
    .end local v3           #packageName:Ljava/lang/String;
    :cond_7
    return-object v4
.end method

.method private getThemeCerts(Ljava/io/File;)Ljava/util/HashSet;
    .locals 8
    .parameter "file"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 596
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 597
    .local v1, certs:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 599
    .local v5, zip:Ljava/util/zip/ZipFile;
    :try_start_0
    const-string v6, "X.509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 600
    .local v2, cf:Ljava/security/cert/CertificateFactory;
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 601
    .local v3, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 602
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 603
    .local v4, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v5, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 604
    .local v0, cert:Ljava/security/cert/Certificate;
    new-instance v6, Landroid/content/pm/Signature;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/pm/Signature;-><init>([B)V

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 607
    .end local v0           #cert:Ljava/security/cert/Certificate;
    .end local v2           #cf:Ljava/security/cert/CertificateFactory;
    .end local v3           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v4           #entry:Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    throw v6

    .restart local v2       #cf:Ljava/security/cert/CertificateFactory;
    .restart local v3       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 610
    return-object v1
.end method

.method private getThemePackageInfo(Ljava/lang/String;)Lcom/samsung/ThemeService$ThemePackageInfo;
    .locals 10
    .parameter "themePackageName"

    .prologue
    const/4 v8, 0x0

    const-string v9, "ThemeService"

    .line 798
    :try_start_0
    new-instance v2, Lcom/samsung/ThemeService$ThemePackageInfo;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Lcom/samsung/ThemeService$ThemePackageInfo;-><init>(Lcom/samsung/ThemeService;Lcom/samsung/ThemeService$1;)V

    .line 799
    .local v2, info:Lcom/samsung/ThemeService$ThemePackageInfo;
    iput-object p1, v2, Lcom/samsung/ThemeService$ThemePackageInfo;->packageName:Ljava/lang/String;

    .line 800
    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->getPathForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/samsung/ThemeService$ThemePackageInfo;->path:Ljava/lang/String;

    .line 802
    iget-object v6, p0, Lcom/samsung/ThemeService;->mContext:Landroid/content/Context;

    const/4 v7, 0x4

    invoke-virtual {v6, p1, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 804
    .local v5, remoteContext:Landroid/content/Context;
    invoke-direct {p0, v5, p1}, Lcom/samsung/ThemeService;->getThemeTargetPackageSet(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v6

    iput-object v6, v2, Lcom/samsung/ThemeService$ThemePackageInfo;->targetPackageSet:Ljava/util/HashSet;

    .line 805
    iget-object v6, v2, Lcom/samsung/ThemeService$ThemePackageInfo;->targetPackageSet:Ljava/util/HashSet;

    if-nez v6, :cond_0

    .line 806
    const-string v6, "ThemeService"

    const-string v7, "[Theme] Error parsing target packages"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 835
    .end local v2           #info:Lcom/samsung/ThemeService$ThemePackageInfo;
    .end local v5           #remoteContext:Landroid/content/Context;
    :goto_0
    return-object v6

    .line 810
    .restart local v2       #info:Lcom/samsung/ThemeService$ThemePackageInfo;
    .restart local v5       #remoteContext:Landroid/content/Context;
    :cond_0
    invoke-direct {p0, v5, p1}, Lcom/samsung/ThemeService;->getExtendedPackagesLocked(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v6

    iput-object v6, v2, Lcom/samsung/ThemeService$ThemePackageInfo;->extendedPackageSet:Ljava/util/HashSet;

    .line 811
    iget-object v6, v2, Lcom/samsung/ThemeService$ThemePackageInfo;->extendedPackageSet:Ljava/util/HashSet;

    if-nez v6, :cond_1

    .line 812
    const-string v6, "ThemeService"

    const-string v7, "[Theme] Error parsing extended packages"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 813
    goto :goto_0

    .line 816
    :cond_1
    invoke-direct {p0, v5, p1}, Lcom/samsung/ThemeService;->getColorCacheFromXmlLocked(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, v2, Lcom/samsung/ThemeService$ThemePackageInfo;->colorCacheMapping:Ljava/util/HashMap;

    .line 817
    iget-object v6, v2, Lcom/samsung/ThemeService$ThemePackageInfo;->colorCacheMapping:Ljava/util/HashMap;

    if-nez v6, :cond_2

    .line 818
    const-string v6, "ThemeService"

    const-string v7, "[Theme] Error parsing colors"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 819
    goto :goto_0

    .line 822
    :cond_2
    invoke-direct {p0, v5}, Lcom/samsung/ThemeService;->getAvailableResourcePackagesLocked(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v3

    .line 823
    .local v3, packageList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v3, :cond_3

    .line 824
    const-string v6, "ThemeService"

    const-string v7, "[Theme] Error getting available resource packages"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 825
    goto :goto_0

    .line 827
    :cond_3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v2, Lcom/samsung/ThemeService$ThemePackageInfo;->resPackagePathMapping:Ljava/util/HashMap;

    .line 828
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 829
    .local v4, packageName:Ljava/lang/String;
    iget-object v6, v2, Lcom/samsung/ThemeService$ThemePackageInfo;->resPackagePathMapping:Ljava/util/HashMap;

    iget-object v7, v2, Lcom/samsung/ThemeService$ThemePackageInfo;->path:Ljava/lang/String;

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 833
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Lcom/samsung/ThemeService$ThemePackageInfo;
    .end local v3           #packageList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #remoteContext:Landroid/content/Context;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 834
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "ThemeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Theme] Package not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->getLeaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 835
    goto :goto_0

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #info:Lcom/samsung/ThemeService$ThemePackageInfo;
    .restart local v3       #packageList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5       #remoteContext:Landroid/content/Context;
    :cond_4
    move-object v6, v2

    .line 831
    goto :goto_0
.end method

.method private getThemeTargetPackageSet(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashSet;
    .locals 10
    .parameter "remoteContext"
    .parameter "themePackage"

    .prologue
    const/4 v9, 0x0

    .line 1008
    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1014
    .local v4, set:Ljava/util/HashSet;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string/jumbo v7, "theme_target_packages"

    const-string/jumbo v8, "xml"

    invoke-virtual {v6, v7, v8, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1016
    .local v3, resid:I
    if-nez v3, :cond_0

    move-object v6, v4

    .line 1047
    .end local v3           #resid:I
    .end local v4           #set:Ljava/util/HashSet;
    :goto_0
    return-object v6

    .line 1020
    .restart local v3       #resid:I
    .restart local v4       #set:Ljava/util/HashSet;
    :cond_0
    iget-object v6, p0, Lcom/samsung/ThemeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, p2, v3, v7}, Landroid/content/pm/PackageManager;->getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 1021
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v6, "packages"

    invoke-static {v2, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1025
    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1027
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1028
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_1

    move-object v6, v4

    .line 1044
    goto :goto_0

    .line 1033
    :cond_1
    const-string/jumbo v6, "package"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1034
    const-string v6, "ThemeService"

    const-string v7, "[Theme] Incorrect tag name for package."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 1035
    goto :goto_0

    .line 1038
    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 1041
    .local v5, targetPackage:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1045
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v3           #resid:I
    .end local v4           #set:Ljava/util/HashSet;
    .end local v5           #targetPackage:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 1046
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v6, v9

    .line 1047
    goto :goto_0
.end method

.method private isAppIconThemed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "packageName"
    .parameter "themePackageName"

    .prologue
    .line 742
    :try_start_0
    iget-object v10, p0, Lcom/samsung/ThemeService;->mContext:Landroid/content/Context;

    const/4 v11, 0x4

    invoke-virtual {v10, p1, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 745
    .local v6, remoteContext:Landroid/content/Context;
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 746
    .local v5, intent:Landroid/content/Intent;
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    iget-object v10, p0, Lcom/samsung/ThemeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v5, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 748
    .local v7, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 749
    :cond_0
    const-string v10, "ThemeService"

    const-string v11, "[Theme] Unable to load ResolveInfo."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v10, 0x0

    .line 791
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #remoteContext:Landroid/content/Context;
    .end local v7           #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return v10

    .line 753
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v6       #remoteContext:Landroid/content/Context;
    .restart local v7       #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 754
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 757
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v3

    .line 758
    .local v3, iconRes:I
    if-nez v3, :cond_3

    .line 760
    const/4 v10, 0x0

    goto :goto_0

    .line 763
    :cond_3
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 765
    const/4 v10, 0x0

    goto :goto_0

    .line 768
    :cond_4
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 769
    .local v9, value:Landroid/util/TypedValue;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v3, v9, v11}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 770
    iget-object v10, v9, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 771
    .local v2, iconPath:Ljava/lang/String;
    if-eqz v2, :cond_5

    const-string v10, ""

    if-ne v2, v10, :cond_6

    .line 773
    :cond_5
    const/4 v10, 0x0

    goto :goto_0

    .line 776
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "theme/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 779
    .local v8, themeIconPath:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    if-eqz v10, :cond_2

    .line 781
    const/4 v10, 0x1

    goto :goto_0

    .line 788
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #iconPath:Ljava/lang/String;
    .end local v3           #iconRes:I
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #remoteContext:Landroid/content/Context;
    .end local v7           #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8           #themeIconPath:Ljava/lang/String;
    .end local v9           #value:Landroid/util/TypedValue;
    :catch_0
    move-exception v10

    move-object v0, v10

    .line 789
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "ThemeService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[Theme] Package not found: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->getLeaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 783
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #iconPath:Ljava/lang/String;
    .restart local v3       #iconRes:I
    .restart local v4       #info:Landroid/content/pm/ResolveInfo;
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v6       #remoteContext:Landroid/content/Context;
    .restart local v7       #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v8       #themeIconPath:Ljava/lang/String;
    .restart local v9       #value:Landroid/util/TypedValue;
    :catch_1
    move-exception v10

    goto/16 :goto_1
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 942
    :try_start_0
    iget-object v1, p0, Lcom/samsung/ThemeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 943
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    move v1, v3

    .line 944
    goto :goto_0
.end method

.method private isPackageThemeableLocked(Ljava/lang/String;)Z
    .locals 7
    .parameter "packageName"

    .prologue
    .line 373
    if-nez p1, :cond_0

    .line 374
    const-string v5, "ThemeService"

    const-string v6, "[Theme] Checking themeable package: null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v5, 0x1

    .line 419
    :goto_0
    return v5

    .line 379
    :cond_0
    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 380
    .local v1, i:I
    if-lez v1, :cond_1

    .line 382
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .line 389
    :cond_1
    :goto_1
    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 390
    .local v2, lastDot:I
    if-gez v2, :cond_2

    .line 391
    const-string v3, "*"

    .line 405
    .local v3, packageSet:Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/samsung/ThemeService;->mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    iget-object v5, v5, Lcom/samsung/ThemeService$ThemePackageInfo;->targetPackageSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 406
    iget-object v5, p0, Lcom/samsung/ThemeService;->mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    iget-object v5, v5, Lcom/samsung/ThemeService$ThemePackageInfo;->targetPackageSet:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .local v4, ret:Z
    :goto_3
    move v5, v4

    .line 419
    goto :goto_0

    .line 394
    .end local v3           #packageSet:Ljava/lang/String;
    .end local v4           #ret:Z
    :cond_2
    const/4 v5, 0x0

    add-int/lit8 v6, v2, 0x1

    :try_start_1
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .restart local v3       #packageSet:Ljava/lang/String;
    goto :goto_2

    .line 395
    .end local v3           #packageSet:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 396
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "*"

    .restart local v3       #packageSet:Ljava/lang/String;
    goto :goto_2

    .line 413
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v4, 0x1

    .restart local v4       #ret:Z
    goto :goto_3

    .line 383
    .end local v2           #lastDot:I
    .end local v3           #packageSet:Ljava/lang/String;
    .end local v4           #ret:Z
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private isShortRebootInterval()Z
    .locals 14

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    const-string/jumbo v13, "samsung.continuous_short_reboot_count"

    const-string v12, "[Theme] Database error: cannot write value"

    const-string v11, "ThemeService"

    .line 1345
    iget-object v7, p0, Lcom/samsung/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1346
    .local v1, cr:Landroid/content/ContentResolver;
    const-string/jumbo v7, "samsung.last_boot_completed_time"

    invoke-static {v1, v7, v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1347
    .local v4, lastBootCompletedTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1349
    .local v2, currentTime:J
    const-string/jumbo v7, "samsung.last_boot_completed_time"

    invoke-static {v1, v7, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1350
    const-string v7, "ThemeService"

    const-string v7, "[Theme] Database error: cannot write value"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    const/4 v7, 0x1

    .line 1381
    :goto_0
    return v7

    .line 1358
    :cond_0
    cmp-long v7, v4, v9

    if-nez v7, :cond_1

    move v7, v8

    .line 1359
    goto :goto_0

    .line 1362
    :cond_1
    const-string/jumbo v7, "samsung.continuous_short_reboot_count"

    invoke-static {v1, v13, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    add-int/lit8 v0, v7, 0x1

    .line 1364
    .local v0, abnormalRebootCount:I
    sub-long v7, v2, v4

    const-wide/32 v9, 0x493e0

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    .line 1366
    const/4 v6, 0x0

    .line 1367
    .local v6, ret:Z
    const/4 v0, 0x0

    .line 1377
    :goto_1
    if-lez v0, :cond_2

    .line 1379
    :cond_2
    const-string/jumbo v7, "samsung.continuous_short_reboot_count"

    invoke-static {v1, v13, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1380
    const-string v7, "ThemeService"

    const-string v7, "[Theme] Database error: cannot write value"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v7, v6

    .line 1381
    goto :goto_0

    .line 1368
    .end local v6           #ret:Z
    :cond_4
    const/4 v7, 0x5

    if-ge v0, v7, :cond_5

    .line 1370
    const/4 v6, 0x0

    .restart local v6       #ret:Z
    goto :goto_1

    .line 1373
    .end local v6           #ret:Z
    :cond_5
    const/4 v6, 0x1

    .line 1374
    .restart local v6       #ret:Z
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private isValidThemePackage(Ljava/lang/String;)Z
    .locals 8
    .parameter "packageName"

    .prologue
    const/4 v6, 0x0

    const-string v7, "ThemeService"

    .line 633
    if-nez p1, :cond_0

    .line 634
    const-string v3, "ThemeService"

    const-string v3, "[Theme] Invalid theme package name: null"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 666
    :goto_0
    return v3

    .line 638
    :cond_0
    const-string v3, "com.theme.samsung."

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v6

    .line 639
    goto :goto_0

    .line 643
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/ThemeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0xf

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 646
    .local v2, pi:Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-nez v3, :cond_2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v3, :cond_3

    .line 647
    :cond_2
    const-string v3, "ThemeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Theme] Theme package may be malicious (Error code: 0x1009): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->getLeaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 648
    goto :goto_0

    .line 651
    :cond_3
    iget-object v3, p0, Lcom/samsung/ThemeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 652
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v3, :cond_4

    .line 653
    const-string v3, "ThemeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Theme] Theme package may be malicious (Error code: 0x100A): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->getLeaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 654
    goto :goto_0

    .line 656
    :cond_4
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    .line 657
    const-string v3, "ThemeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Theme] Theme package may be malicious (Error code: 0x100B): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->getLeaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    .line 658
    goto/16 :goto_0

    .line 661
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 662
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ThemeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Theme] Package not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->getLeaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 663
    goto/16 :goto_0

    .line 666
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #pi:Landroid/content/pm/PackageInfo;
    :cond_5
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method private loadInstalledThemeListLocked()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1209
    iget-boolean v3, p0, Lcom/samsung/ThemeService;->mInstalledThemeListAvailable:Z

    if-eqz v3, :cond_0

    .line 1210
    const/4 v3, 0x0

    .line 1232
    :goto_0
    return v3

    .line 1212
    :cond_0
    iget-object v3, p0, Lcom/samsung/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/ThemeService;->mCurrentLocale:Ljava/lang/Object;

    .line 1217
    const-string v3, "."

    iget-object v4, p0, Lcom/samsung/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10404b0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/ThemeService;->addInstalledThemeLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    iget-object v3, p0, Lcom/samsung/ThemeService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 1220
    .local v1, packageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1221
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1226
    .local v2, packageName:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/samsung/ThemeService;->isValidThemePackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/samsung/ThemeService;->isThemePackageCertified(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1228
    invoke-direct {p0, v2}, Lcom/samsung/ThemeService;->addInstalledThemeLocked(Ljava/lang/String;)V

    .line 1220
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1231
    .end local v2           #packageName:Ljava/lang/String;
    :cond_2
    iput-boolean v6, p0, Lcom/samsung/ThemeService;->mInstalledThemeListAvailable:Z

    move v3, v6

    .line 1232
    goto :goto_0
.end method

.method private loadPredefinedThemeTargets()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method private removeInstalledThemeLocked(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1137
    iget-object v2, p0, Lcom/samsung/ThemeService;->mInstalledThemeNames:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1138
    .local v1, i:I
    if-gez v1, :cond_0

    .line 1149
    :goto_0
    return-void

    .line 1144
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/ThemeService;->mInstalledThemeNames:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 1145
    iget-object v2, p0, Lcom/samsung/ThemeService;->mInstalledThemeLabels:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1146
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1147
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method private setColorCacheLocked(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter
    .parameter "resPackageName"
    .parameter "entryName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1506
    .local p1, colorCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Map;>;"
    const-string v6, "android"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1507
    iget-object v6, p0, Lcom/samsung/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "color"

    invoke-virtual {v6, p3, v7, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1508
    .local v1, id:I
    if-nez v1, :cond_0

    .line 1510
    const/4 v6, 0x0

    .line 1546
    .end local v1           #id:I
    :goto_0
    return v6

    .line 1514
    .restart local v1       #id:I
    :cond_0
    const-string v6, "@"

    invoke-virtual {p4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1515
    iget-object v6, p0, Lcom/samsung/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1516
    .local v4, refId:I
    if-nez v4, :cond_1

    .line 1517
    const-string v6, "ThemeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Theme] Invalid color reference: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    const/4 v6, 0x0

    goto :goto_0

    .line 1521
    :cond_1
    move v5, v4

    .line 1531
    .end local v4           #refId:I
    .local v5, targetValue:I
    :goto_1
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1532
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v2, :cond_2

    .line 1533
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1534
    .restart local v2       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {p1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    .end local v1           #id:I
    .end local v2           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5           #targetValue:I
    :goto_2
    const/4 v6, 0x1

    goto :goto_0

    .line 1524
    .restart local v1       #id:I
    :cond_3
    :try_start_0
    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .restart local v5       #targetValue:I
    goto :goto_1

    .line 1525
    .end local v5           #targetValue:I
    :catch_0
    move-exception v0

    .line 1526
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v6, "ThemeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Theme] Invalid color string: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    const/4 v6, 0x0

    goto :goto_0

    .line 1538
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v1           #id:I
    :cond_4
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1539
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v3, :cond_5

    .line 1540
    new-instance v3, Ljava/util/HashMap;

    .end local v3           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1541
    .restart local v3       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    :cond_5
    invoke-interface {v3, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private setCurrentThemePackageLocked(Ljava/lang/String;)V
    .locals 9
    .parameter "themePackageName"

    .prologue
    const-string v8, "ThemeService"

    .line 676
    const-string v6, "ThemeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Theme] Setting current theme to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->getLeaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const-string v6, "."

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 679
    iget-object v6, p0, Lcom/samsung/ThemeService;->sDefaultThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    iput-object v6, p0, Lcom/samsung/ThemeService;->mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    .line 735
    :goto_0
    return-void

    .line 683
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->isValidThemePackage(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 684
    const-string v6, "ThemeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Theme] Applying an invalid theme package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->getLeaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v6, p0, Lcom/samsung/ThemeService;->sDefaultThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    iput-object v6, p0, Lcom/samsung/ThemeService;->mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    goto :goto_0

    .line 689
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/ThemeService;->isThemePackageCertified(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 690
    const-string v6, "ThemeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Theme] Applying an uncertified theme package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->getLeaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v6, p0, Lcom/samsung/ThemeService;->sDefaultThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    iput-object v6, p0, Lcom/samsung/ThemeService;->mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    goto :goto_0

    .line 696
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->getThemePackageInfo(Ljava/lang/String;)Lcom/samsung/ThemeService$ThemePackageInfo;

    move-result-object v2

    .line 697
    .local v2, info:Lcom/samsung/ThemeService$ThemePackageInfo;
    if-nez v2, :cond_3

    .line 698
    const-string v6, "ThemeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Theme] Unable to load theme package info: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->getLeaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v6, p0, Lcom/samsung/ThemeService;->sDefaultThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    iput-object v6, p0, Lcom/samsung/ThemeService;->mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    goto :goto_0

    .line 704
    :cond_3
    iget-object v6, v2, Lcom/samsung/ThemeService$ThemePackageInfo;->extendedPackageSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 705
    .local v4, packageName:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/samsung/ThemeService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 710
    invoke-direct {p0, v4}, Lcom/samsung/ThemeService;->getThemePackageInfo(Ljava/lang/String;)Lcom/samsung/ThemeService$ThemePackageInfo;

    move-result-object v0

    .line 711
    .local v0, extendedInfo:Lcom/samsung/ThemeService$ThemePackageInfo;
    if-eqz v0, :cond_4

    .line 714
    iget-object v6, v0, Lcom/samsung/ThemeService$ThemePackageInfo;->colorCacheMapping:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 715
    .local v3, map:Ljava/util/Map;
    if-eqz v3, :cond_5

    .line 716
    iget-object v6, v2, Lcom/samsung/ThemeService$ThemePackageInfo;->colorCacheMapping:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    :cond_5
    iget-object v6, v0, Lcom/samsung/ThemeService$ThemePackageInfo;->resPackagePathMapping:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 721
    .local v5, path:Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 722
    iget-object v6, v2, Lcom/samsung/ThemeService$ThemePackageInfo;->resPackagePathMapping:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    :cond_6
    iget-object v6, v2, Lcom/samsung/ThemeService$ThemePackageInfo;->targetPackageSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 727
    iget-object v6, v2, Lcom/samsung/ThemeService$ThemePackageInfo;->targetPackageSet:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 732
    .end local v0           #extendedInfo:Lcom/samsung/ThemeService$ThemePackageInfo;
    .end local v3           #map:Ljava/util/Map;
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #path:Ljava/lang/String;
    :cond_7
    iput-object v2, p0, Lcom/samsung/ThemeService;->mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    .line 733
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_0
.end method

.method private setSkinPackageLocked(Ljava/lang/String;Ljava/util/List;)Z
    .locals 10
    .parameter "skinPackageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    const-string v9, "ThemeService"

    .line 883
    const-string v6, "ThemeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Theme] Setting skin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->getLeaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const-string v6, "."

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 887
    iget-object v5, p0, Lcom/samsung/ThemeService;->sDefaultThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    .line 906
    .local v5, themeInfo:Lcom/samsung/ThemeService$ThemePackageInfo;
    :cond_0
    invoke-direct {p0, v5, p2}, Lcom/samsung/ThemeService;->getReducedSkinPackageInfo(Lcom/samsung/ThemeService$ThemePackageInfo;Ljava/util/List;)Lcom/samsung/ThemeService$ThemePackageInfo;

    move-result-object v4

    .line 909
    .local v4, skinInfo:Lcom/samsung/ThemeService$ThemePackageInfo;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 910
    .local v2, packageName:Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/ThemeService;->mCurrentSkinMapping:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 912
    iget-object v6, p0, Lcom/samsung/ThemeService;->mCurrentSkinMapping:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 914
    .local v3, previousSkinPackage:Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/ThemeService;->mSkinPackageInfoMapping:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ThemeService$ThemePackageInfo;

    .line 915
    .local v1, info:Lcom/samsung/ThemeService$ThemePackageInfo;
    iget-object v6, v1, Lcom/samsung/ThemeService$ThemePackageInfo;->targetPackageSet:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 916
    iget-object v6, v1, Lcom/samsung/ThemeService$ThemePackageInfo;->extendedPackageSet:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 917
    iget-object v6, v1, Lcom/samsung/ThemeService$ThemePackageInfo;->colorCacheMapping:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    iget-object v6, v1, Lcom/samsung/ThemeService$ThemePackageInfo;->resPackagePathMapping:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    iget-object v6, v1, Lcom/samsung/ThemeService$ThemePackageInfo;->targetPackageSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 922
    iget-object v6, p0, Lcom/samsung/ThemeService;->mSkinPackageInfoMapping:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    .end local v1           #info:Lcom/samsung/ThemeService$ThemePackageInfo;
    .end local v3           #previousSkinPackage:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v2}, Lcom/samsung/ThemeService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 930
    iget-object v6, p0, Lcom/samsung/ThemeService;->mCurrentSkinMapping:Ljava/util/HashMap;

    invoke-virtual {v6, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 890
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #packageName:Ljava/lang/String;
    .end local v4           #skinInfo:Lcom/samsung/ThemeService$ThemePackageInfo;
    .end local v5           #themeInfo:Lcom/samsung/ThemeService$ThemePackageInfo;
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->isValidThemePackage(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 891
    const-string v6, "ThemeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Theme] Applying an invalid theme package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->getLeaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 937
    :goto_1
    return v6

    .line 895
    :cond_4
    invoke-virtual {p0, p1}, Lcom/samsung/ThemeService;->isThemePackageCertified(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 896
    const-string v6, "ThemeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Theme] Applying an uncertified theme package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->getLeaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 897
    goto :goto_1

    .line 901
    :cond_5
    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->getThemePackageInfo(Ljava/lang/String;)Lcom/samsung/ThemeService$ThemePackageInfo;

    move-result-object v5

    .line 902
    .restart local v5       #themeInfo:Lcom/samsung/ThemeService$ThemePackageInfo;
    if-nez v5, :cond_0

    move v6, v8

    .line 903
    goto :goto_1

    .line 934
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v4       #skinInfo:Lcom/samsung/ThemeService$ThemePackageInfo;
    :cond_6
    iget-object v6, p0, Lcom/samsung/ThemeService;->mSkinPackageInfoMapping:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 937
    const/4 v6, 0x1

    goto :goto_1
.end method

.method private setToLastSelectedTheme()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1311
    invoke-direct {p0}, Lcom/samsung/ThemeService;->isShortRebootInterval()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1313
    const-string v5, "ThemeService"

    const-string v6, "[Theme] Frequent reboot detected (5 times), theme is set to default."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    invoke-direct {p0}, Lcom/samsung/ThemeService;->updateThemeToPersistentStorage()V

    move v5, v8

    .line 1336
    :goto_0
    return v5

    .line 1318
    :cond_0
    invoke-direct {p0}, Lcom/samsung/ThemeService;->getLastSelectedTheme()Ljava/lang/String;

    move-result-object v1

    .line 1319
    .local v1, lastSelectedTheme:Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/ThemeService;->getLastSkinSettings()Ljava/util/Set;

    move-result-object v4

    .line 1321
    .local v4, skinSettings:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v5, p0, Lcom/samsung/ThemeService;->mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    iget-object v5, v5, Lcom/samsung/ThemeService$ThemePackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v4, :cond_1

    move v5, v7

    .line 1322
    goto :goto_0

    .line 1324
    :cond_1
    iget-object v5, p0, Lcom/samsung/ThemeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1325
    .local v2, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/samsung/ThemeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1327
    if-eqz v4, :cond_2

    .line 1328
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1329
    .local v3, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/samsung/ThemeService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1330
    iget-object v5, p0, Lcom/samsung/ThemeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1334
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-object v5, p0, Lcom/samsung/ThemeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v5, v7

    .line 1336
    goto :goto_0
.end method

.method private tryLock(Ljava/util/concurrent/locks/Lock;)Z
    .locals 4
    .parameter "lock"

    .prologue
    .line 424
    const-wide/16 v1, 0x5

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v1, v2, v3}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 427
    :goto_0
    return v1

    .line 425
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 426
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 427
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateThemeToActivityManager()Z
    .locals 6

    .prologue
    .line 1288
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1289
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1290
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v5, p0, Lcom/samsung/ThemeService;->mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    iget-object v5, v5, Lcom/samsung/ThemeService$ThemePackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/res/Configuration;->setThemePackage(Ljava/lang/String;)V

    .line 1292
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1293
    .local v3, origId:J
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 1294
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1301
    const/4 v5, 0x1

    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    .end local v3           #origId:J
    :goto_0
    return v5

    .line 1297
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 1298
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1299
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private updateThemeToPersistentStorage()V
    .locals 10

    .prologue
    .line 1240
    iget-object v8, p0, Lcom/samsung/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1241
    .local v0, cr:Landroid/content/ContentResolver;
    const-string/jumbo v8, "samsung.current_theme"

    iget-object v9, p0, Lcom/samsung/ThemeService;->mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    iget-object v9, v9, Lcom/samsung/ThemeService$ThemePackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1244
    const-string v7, ""

    .line 1245
    .local v7, skinSettings:Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/ThemeService;->mSkinPackageInfoMapping:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1246
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ThemeService$ThemePackageInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1247
    .local v6, skinPackage:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/ThemeService$ThemePackageInfo;

    .line 1248
    .local v5, skinInfo:Lcom/samsung/ThemeService$ThemePackageInfo;
    iget-object v8, v5, Lcom/samsung/ThemeService$ThemePackageInfo;->targetPackageSet:Ljava/util/HashSet;

    if-eqz v8, :cond_0

    iget-object v8, v5, Lcom/samsung/ThemeService$ThemePackageInfo;->targetPackageSet:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1250
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1251
    iget-object v8, v5, Lcom/samsung/ThemeService$ThemePackageInfo;->targetPackageSet:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1252
    .local v4, packageName:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1253
    .end local v4           #packageName:Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1254
    goto :goto_0

    .line 1256
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ThemeService$ThemePackageInfo;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #skinInfo:Lcom/samsung/ThemeService$ThemePackageInfo;
    .end local v6           #skinPackage:Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "samsung.skin_settings"

    invoke-static {v0, v8, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1257
    const-string v8, "ThemeService"

    const-string v9, "[Theme] Unable to write skin settings."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_3
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const-string v2, "android.permission.DUMP"

    .line 1551
    iget-object v0, p0, Lcom/samsung/ThemeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump ThemeService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1574
    :goto_0
    return-void

    .line 1561
    :cond_0
    const-string v0, "Current theme:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/ThemeService;->mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    iget-object v1, v1, Lcom/samsung/ThemeService$ThemePackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/ThemeService;->getLeaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1563
    const-string v0, "Theme settings:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1564
    const-string v0, "  * Certificate"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1565
    const-string v0, "    ENABLED=true"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1566
    const-string v0, "    ON_INSTALL=true"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1567
    const-string v0, "    ON_APPLY=true"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1568
    const-string v0, "  * App-level themeing"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1569
    const-string v0, "    APP_LEVEL_THEMEING_ENABLED=true"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1570
    const-string v0, "    DISABLED_PACKAGE=false"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1571
    const-string v0, "    DEFAULT_SET=false"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1572
    const-string v0, "  * Mutex"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    ReadWriteLock queue length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/ThemeService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getQueueLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getColorCache(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 10
    .parameter "appPackageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .prologue
    .local p2, resourcePackageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    const-string v9, "ThemeService"

    .line 221
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 222
    :cond_0
    const-string v7, "ThemeService"

    const-string v7, "[Theme] Invalid input for getColorCache: null"

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 262
    :goto_0
    return-object v7

    .line 226
    :cond_1
    iget-object v7, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    invoke-direct {p0, v7}, Lcom/samsung/ThemeService;->tryLock(Ljava/util/concurrent/locks/Lock;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 227
    const-string v7, "ThemeService"

    const-string v7, "[Theme] Timeout: getting color cache."

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 228
    goto :goto_0

    .line 232
    :cond_2
    :try_start_0
    iget-object v7, p0, Lcom/samsung/ThemeService;->mCurrentSkinMapping:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 233
    iget-object v7, p0, Lcom/samsung/ThemeService;->mSkinPackageInfoMapping:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/samsung/ThemeService;->mCurrentSkinMapping:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/ThemeService$ThemePackageInfo;

    .line 244
    .local v6, sourceInfo:Lcom/samsung/ThemeService$ThemePackageInfo;
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 245
    .local v0, colorCache:Ljava/util/Map;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 246
    .local v5, pathMap:Ljava/util/Map;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 247
    .local v3, packageName:Ljava/lang/String;
    iget-object v7, v6, Lcom/samsung/ThemeService$ThemePackageInfo;->colorCacheMapping:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 248
    .local v2, map:Ljava/util/Map;
    if-eqz v2, :cond_3

    .line 250
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_3
    iget-object v7, v6, Lcom/samsung/ThemeService$ThemePackageInfo;->resPackagePathMapping:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 255
    .local v4, path:Ljava/lang/String;
    if-nez v4, :cond_4

    .line 256
    const-string v4, "."

    .line 257
    :cond_4
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 264
    .end local v0           #colorCache:Ljava/util/Map;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #map:Ljava/util/Map;
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #pathMap:Ljava/util/Map;
    .end local v6           #sourceInfo:Lcom/samsung/ThemeService$ThemePackageInfo;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v7

    .line 235
    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/samsung/ThemeService;->mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    iget-object v8, p0, Lcom/samsung/ThemeService;->sDefaultThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    if-eq v7, v8, :cond_6

    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->isPackageThemeableLocked(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 237
    :cond_6
    iget-object v6, p0, Lcom/samsung/ThemeService;->sDefaultThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    .restart local v6       #sourceInfo:Lcom/samsung/ThemeService$ThemePackageInfo;
    goto :goto_1

    .line 240
    .end local v6           #sourceInfo:Lcom/samsung/ThemeService$ThemePackageInfo;
    :cond_7
    iget-object v6, p0, Lcom/samsung/ThemeService;->mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    .restart local v6       #sourceInfo:Lcom/samsung/ThemeService$ThemePackageInfo;
    goto :goto_1

    .line 260
    .restart local v0       #colorCache:Ljava/util/Map;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v5       #pathMap:Ljava/util/Map;
    :cond_8
    const-string v7, "#"

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    iget-object v7, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v7, v0

    .line 262
    goto/16 :goto_0
.end method

.method public getCurrentThemePackage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/samsung/ThemeService;->mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    iget-object v0, v0, Lcom/samsung/ThemeService$ThemePackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    iget-object v1, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 279
    return-object v0

    .line 280
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getCurrentThemePackagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "packageName"

    .prologue
    const-string v3, "."

    .line 437
    iget-object v1, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    invoke-direct {p0, v1}, Lcom/samsung/ThemeService;->tryLock(Ljava/util/concurrent/locks/Lock;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 438
    const-string v1, "ThemeService"

    const-string v2, "[Theme] Timeout: getting current theme package path."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v1, "."

    move-object v1, v3

    .line 457
    :goto_0
    return-object v1

    .line 444
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/ThemeService;->mCurrentSkinMapping:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    iget-object v1, p0, Lcom/samsung/ThemeService;->mCurrentSkinMapping:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 447
    .local v0, skinPackage:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/ThemeService;->mSkinPackageInfoMapping:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ThemeService$ThemePackageInfo;

    iget-object v1, v1, Lcom/samsung/ThemeService$ThemePackageInfo;->path:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    iget-object v2, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    .end local v0           #skinPackage:Ljava/lang/String;
    :goto_1
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 451
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/ThemeService;->mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    iget-object v2, p0, Lcom/samsung/ThemeService;->sDefaultThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    if-ne v1, v2, :cond_2

    .line 452
    const-string v1, "."
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    iget-object v1, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v1, v3

    .line 452
    goto :goto_0

    .line 454
    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->isPackageThemeableLocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 455
    iget-object v1, p0, Lcom/samsung/ThemeService;->mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    iget-object v1, v1, Lcom/samsung/ThemeService$ThemePackageInfo;->path:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 462
    iget-object v2, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    goto :goto_1

    .line 457
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/samsung/ThemeService;->sDefaultThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    iget-object v1, v1, Lcom/samsung/ThemeService$ThemePackageInfo;->path:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 462
    iget-object v2, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public getCurrentThemeTitle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 353
    iget-object v2, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 355
    :try_start_0
    iget-object v2, p0, Lcom/samsung/ThemeService;->mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    iget-object v3, p0, Lcom/samsung/ThemeService;->sDefaultThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    if-ne v2, v3, :cond_0

    .line 356
    iget-object v2, p0, Lcom/samsung/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10404b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 366
    iget-object v3, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    :goto_0
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 364
    return-object v2

    .line 358
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/ThemeService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/samsung/ThemeService;->mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;

    iget-object v3, v3, Lcom/samsung/ThemeService$ThemePackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 359
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/samsung/ThemeService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 366
    iget-object v3, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    goto :goto_0

    .line 362
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 363
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 364
    const-string v2, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 366
    iget-object v3, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    goto :goto_0

    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public getInstalledThemePackageList()Ljava/util/List;
    .locals 4

    .prologue
    .line 470
    iget-object v1, p0, Lcom/samsung/ThemeService;->mInstalledThemeListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 471
    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/ThemeService;->mInstalledThemeListAvailable:Z

    if-nez v2, :cond_0

    .line 472
    invoke-direct {p0}, Lcom/samsung/ThemeService;->loadInstalledThemeListLocked()Z

    .line 474
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v0, l:Ljava/util/List;
    iget-object v2, p0, Lcom/samsung/ThemeService;->mInstalledThemeNames:Ljava/util/LinkedList;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    iget-object v2, p0, Lcom/samsung/ThemeService;->mInstalledThemeLabels:Ljava/util/LinkedList;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    monitor-exit v1

    return-object v0

    .line 478
    .end local v0           #l:Ljava/util/List;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getSkinSettings(Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .parameter "skinPackageName"

    .prologue
    const/4 v11, 0x0

    const-string v8, "[Theme] Error parsing target packages"

    const-string v8, "ThemeService"

    .line 284
    iget-object v8, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 286
    const/4 v7, 0x0

    .line 287
    .local v7, targetPackageSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 289
    .local v0, availableResPackageSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_0
    const-string v8, "."

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 290
    iget-object v8, p0, Lcom/samsung/ThemeService;->mContext:Landroid/content/Context;

    const-string v9, "android"

    invoke-direct {p0, v8, v9}, Lcom/samsung/ThemeService;->getThemeTargetPackageSet(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v7

    .line 291
    if-nez v7, :cond_0

    .line 292
    const-string v8, "ThemeService"

    const-string v9, "[Theme] Error parsing target packages"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    iget-object v8, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v8, v11

    .line 347
    :goto_0
    return-object v8

    .line 296
    :cond_0
    :try_start_1
    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v8, :cond_5

    .line 349
    iget-object v8, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v8, v11

    .line 297
    goto :goto_0

    .line 300
    :cond_1
    :try_start_2
    iget-object v8, p0, Lcom/samsung/ThemeService;->mSkinPackageInfoMapping:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 301
    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->isValidThemePackage(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 302
    const-string v8, "ThemeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Theme] Applying an invalid theme package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->getLeaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 349
    iget-object v8, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v8, v11

    .line 303
    goto :goto_0

    .line 306
    :cond_2
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/samsung/ThemeService;->isThemePackageCertified(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 307
    const-string v8, "ThemeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Theme] Applying an uncertified theme package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->getLeaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 349
    iget-object v8, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v8, v11

    .line 308
    goto :goto_0

    .line 315
    :cond_3
    :try_start_4
    iget-object v8, p0, Lcom/samsung/ThemeService;->mContext:Landroid/content/Context;

    const/4 v9, 0x4

    invoke-virtual {v8, p1, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 317
    .local v6, remoteContext:Landroid/content/Context;
    invoke-direct {p0, v6, p1}, Lcom/samsung/ThemeService;->getThemeTargetPackageSet(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v7

    .line 318
    if-nez v7, :cond_4

    .line 319
    const-string v8, "ThemeService"

    const-string v9, "[Theme] Error parsing target packages"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 349
    iget-object v8, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v8, v11

    .line 320
    goto/16 :goto_0

    .line 323
    :cond_4
    :try_start_5
    invoke-direct {p0, v6}, Lcom/samsung/ThemeService;->getAvailableResourcePackagesLocked(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v0

    .line 324
    if-nez v0, :cond_5

    .line 325
    const-string v8, "ThemeService"

    const-string v9, "[Theme] Error getting available resource packages"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 349
    iget-object v8, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v8, v11

    .line 326
    goto/16 :goto_0

    .line 329
    .end local v6           #remoteContext:Landroid/content/Context;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 330
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    const-string v8, "ThemeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Theme] Package not found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->getLeaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 349
    iget-object v8, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v8, v11

    .line 331
    goto/16 :goto_0

    .line 335
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    :try_start_7
    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 336
    move-object v7, v0

    .line 339
    :cond_6
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v8, p0, Lcom/samsung/ThemeService;->mSystemResPackages:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_7

    .line 340
    iget-object v8, p0, Lcom/samsung/ThemeService;->mSystemResPackages:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 342
    :cond_7
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 343
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 344
    .local v5, packageName:Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/ThemeService;->mCurrentSkinMapping:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v4, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 349
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v5           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v8

    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_8
    iget-object v8, p0, Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v8, v4

    .line 347
    goto/16 :goto_0
.end method

.method public isThemePackageCertified(Ljava/lang/String;)Z
    .locals 19
    .parameter "packageName"

    .prologue
    .line 520
    if-nez p1, :cond_0

    .line 521
    const-string v16, "ThemeService"

    const-string v17, "[Theme] Invalid theme package name: null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/16 v16, 0x0

    .line 589
    :goto_0
    return v16

    .line 525
    :cond_0
    const-string v16, "."

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 526
    const/16 v16, 0x1

    goto :goto_0

    .line 528
    :cond_1
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 530
    .local v11, packageCertsSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ThemeService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v16, v0

    const/16 v17, 0x40

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 532
    .local v12, pi:Landroid/content/pm/PackageInfo;
    move-object v0, v12

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_2

    .line 534
    const/16 v16, 0x1

    goto :goto_0

    .line 537
    :cond_2
    iget-object v3, v12, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v3, arr$:[Landroid/content/pm/Signature;
    array-length v9, v3

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v9, :cond_3

    aget-object v14, v3, v7

    .line 538
    .local v14, sig:Landroid/content/pm/Signature;
    invoke-virtual {v11, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 537
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 541
    .end local v14           #sig:Landroid/content/pm/Signature;
    :cond_3
    invoke-virtual {v11}, Ljava/util/HashSet;->isEmpty()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v16

    if-eqz v16, :cond_4

    .line 542
    const/16 v16, 0x0

    goto :goto_0

    .line 544
    .end local v3           #arr$:[Landroid/content/pm/Signature;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v12           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v16

    move-object/from16 v4, v16

    .line 545
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v16, "ThemeService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[Theme] Unable to load package: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-direct/range {p0 .. p1}, Lcom/samsung/ThemeService;->getLeaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/16 v16, 0x0

    goto :goto_0

    .line 547
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v16

    move-object/from16 v4, v16

    .line 548
    .local v4, e:Ljava/lang/Exception;
    const-string v16, "ThemeService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[Theme] Error loading theme package: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-direct/range {p0 .. p1}, Lcom/samsung/ThemeService;->getLeaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 552
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v3       #arr$:[Landroid/content/pm/Signature;
    .restart local v7       #i$:I
    .restart local v9       #len$:I
    .restart local v12       #pi:Landroid/content/pm/PackageInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ThemeService;->mThemeCertsSet:Ljava/util/HashSet;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ThemeService;->mThemeCertsSet:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 553
    :cond_5
    new-instance v5, Ljava/io/File;

    const-string v16, "/system/etc/security/themecerts.zip"

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 554
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_6

    .line 555
    const-string v16, "ThemeService"

    const-string v17, "[Theme] Theme certificate not found."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 560
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/samsung/ThemeService;->getThemeCerts(Ljava/io/File;)Ljava/util/HashSet;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/ThemeService;->mThemeCertsSet:Ljava/util/HashSet;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ThemeService;->mThemeCertsSet:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 567
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 561
    :catch_2
    move-exception v16

    move-object/from16 v4, v16

    .line 562
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v16, "ThemeService"

    const-string v17, "[Theme] Error loading theme certificate."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 572
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #file:Ljava/io/File;
    :cond_7
    const/4 v13, 0x1

    .line 573
    .local v13, ret:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ThemeService;->mThemeCertsSet:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v7           #i$:I
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/Signature;

    .line 574
    .local v15, themeCert:Landroid/content/pm/Signature;
    const/4 v6, 0x0

    .line 575
    .local v6, found:Z
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/Signature;

    .line 576
    .local v10, packageCert:Landroid/content/pm/Signature;
    invoke-virtual {v15, v10}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 577
    const/4 v6, 0x1

    .line 581
    .end local v10           #packageCert:Landroid/content/pm/Signature;
    :cond_a
    if-nez v6, :cond_8

    .line 582
    const/4 v13, 0x0

    .end local v6           #found:Z
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v15           #themeCert:Landroid/content/pm/Signature;
    :cond_b
    move/from16 v16, v13

    .line 589
    goto/16 :goto_0
.end method

.method public reportBadThemePackage(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    const-string v3, "ThemeService"

    .line 486
    if-nez p1, :cond_0

    .line 487
    const-string v1, "ThemeService"

    const-string v1, "[Theme] Invalid theme package name: null"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :goto_0
    return-void

    .line 491
    :cond_0
    const-string v1, "ThemeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Theme] Corrupted theme package detected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/ThemeService;->getLeaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v1, p0, Lcom/samsung/ThemeService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 493
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/ThemeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 494
    iget-object v1, p0, Lcom/samsung/ThemeService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setCurrentThemePackage(Ljava/lang/String;Ljava/util/List;)Z
    .locals 5
    .parameter "themePackageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 196
    if-nez p1, :cond_0

    .line 197
    const-string v1, "ThemeService"

    const-string v2, "[Theme] Invalid theme package name: null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 210
    :goto_0
    return v1

    .line 202
    :cond_0
    if-nez p2, :cond_1

    .line 203
    iget-object v1, p0, Lcom/samsung/ThemeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 208
    .local v0, msg:Landroid/os/Message;
    :goto_1
    iget-object v1, p0, Lcom/samsung/ThemeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 209
    iget-object v1, p0, Lcom/samsung/ThemeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v1, v4

    .line 210
    goto :goto_0

    .line 205
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    invoke-interface {p2, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 206
    iget-object v1, p0, Lcom/samsung/ThemeService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_1
.end method

.method public setDefaultTheme(Ljava/lang/String;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 503
    const-string v1, "Set_To_DEFAULT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 509
    :goto_0
    return-void

    .line 506
    :cond_0
    iget-object v1, p0, Lcom/samsung/ThemeService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 507
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/ThemeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 508
    iget-object v1, p0, Lcom/samsung/ThemeService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
