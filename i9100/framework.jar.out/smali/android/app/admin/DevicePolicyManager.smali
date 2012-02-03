.class public Landroid/app/admin/DevicePolicyManager;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DevicePolicyManager$1;,
        Landroid/app/admin/DevicePolicyManager$MiscPolicy;,
        Landroid/app/admin/DevicePolicyManager$NetworkPolicy;,
        Landroid/app/admin/DevicePolicyManager$DeviceInventory;,
        Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;,
        Landroid/app/admin/DevicePolicyManager$RoamingPolicy;,
        Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;,
        Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;,
        Landroid/app/admin/DevicePolicyManager$VpnPolicy;,
        Landroid/app/admin/DevicePolicyManager$WiFiPolicy;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_DEVICE_ADMIN:Ljava/lang/String; = "android.app.action.ADD_DEVICE_ADMIN"

.field public static final ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

.field public static final ACTION_SET_NEW_PASSWORD:Ljava/lang/String; = "android.app.action.SET_NEW_PASSWORD"

.field private static DEBUG:Z = false

.field public static final EXTRA_ADD_EXPLANATION:Ljava/lang/String; = "android.app.extra.ADD_EXPLANATION"

.field public static final EXTRA_DEVICE_ADMIN:Ljava/lang/String; = "android.app.extra.DEVICE_ADMIN"

.field public static final PASSWORD_QUALITY_ALPHABETIC:I = 0x40000

.field public static final PASSWORD_QUALITY_ALPHANUMERIC:I = 0x50000

.field public static final PASSWORD_QUALITY_NUMERIC:I = 0x20000

.field public static final PASSWORD_QUALITY_SOMETHING:I = 0x10000

.field public static final PASSWORD_QUALITY_UNSPECIFIED:I = 0x0

.field public static final RESET_PASSWORD_REQUIRE_ENTRY:I = 0x1

.field private static TAG:Ljava/lang/String; = null

.field public static final WIPE_EXTERNAL_STORAGE:I = 0x1

.field private static localLOGV:Z


# instance fields
.field private mApplicationPolicy:Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;

.field private final mContext:Landroid/content/Context;

.field private mDeviceInventory:Landroid/app/admin/DevicePolicyManager$DeviceInventory;

.field private mEasAccountPolicy:Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;

.field private mEmailAccountPolicy:Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;

.field private final mHandler:Landroid/os/Handler;

.field private mMiscPolicy:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

.field private mNetworkPolicy:Landroid/app/admin/DevicePolicyManager$NetworkPolicy;

.field private mRoamingPolicy:Landroid/app/admin/DevicePolicyManager$RoamingPolicy;

.field private final mService:Landroid/app/admin/IDevicePolicyManager;

.field private final mSync:Ljava/lang/Object;

.field private mVpnPolicy:Landroid/app/admin/DevicePolicyManager$VpnPolicy;

.field private mWiFiPolicy:Landroid/app/admin/DevicePolicyManager$WiFiPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    const-string v0, "DevicePolicyManager"

    sput-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    .line 68
    sput-boolean v1, Landroid/app/admin/DevicePolicyManager;->DEBUG:Z

    .line 69
    sget-boolean v0, Landroid/app/admin/DevicePolicyManager;->DEBUG:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/app/admin/DevicePolicyManager;->localLOGV:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1401
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mSync:Ljava/lang/Object;

    .line 77
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Landroid/app/admin/DevicePolicyManager;->mHandler:Landroid/os/Handler;

    .line 79
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 81
    return-void
.end method

.method static synthetic access$1000(Landroid/app/admin/DevicePolicyManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;)Landroid/app/admin/DevicePolicyManager;
    .locals 2
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 85
    new-instance v0, Landroid/app/admin/DevicePolicyManager;

    invoke-direct {v0, p0, p1}, Landroid/app/admin/DevicePolicyManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 86
    .local v0, me:Landroid/app/admin/DevicePolicyManager;
    iget-object v1, v0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public generateRecoveryPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3
    .parameter "who"

    .prologue
    .line 4438
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 4440
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->generateRecoveryPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4445
    :goto_0
    return-object v1

    .line 4441
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4442
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4445
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveAdmins()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 166
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 171
    :goto_0
    return-object v1

    .line 167
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 168
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAdminInfo(Landroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;
    .locals 8
    .parameter "cn"

    .prologue
    const/4 v6, 0x0

    const-string v7, "Unable to parse device policy "

    .line 1238
    :try_start_0
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1245
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1246
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    iput-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1249
    :try_start_1
    new-instance v3, Landroid/app/admin/DeviceAdminInfo;

    iget-object v4, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1255
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #ri:Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v3

    .line 1240
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1241
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to retrieve device policy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v6

    .line 1242
    goto :goto_0

    .line 1250
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v2       #ri:Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 1251
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse device policy "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v6

    .line 1252
    goto :goto_0

    .line 1253
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 1254
    .local v1, e:Ljava/io/IOException;
    sget-object v3, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse device policy "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v6

    .line 1255
    goto :goto_0
.end method

.method public getAllowBluetoothMode(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "admin"

    .prologue
    .line 848
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 850
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 855
    :goto_0
    return v1

    .line 851
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 852
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 855
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getAllowBrowser(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "admin"

    .prologue
    .line 785
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 787
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowBrowser(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 792
    :goto_0
    return v1

    .line 788
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 789
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 792
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAllowCamera(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "admin"

    .prologue
    .line 680
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 682
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 687
    :goto_0
    return v1

    .line 683
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 684
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 687
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAllowDesktopSync(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "admin"

    .prologue
    .line 1100
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1102
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowDesktopSync(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1107
    :goto_0
    return v1

    .line 1103
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1104
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1107
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAllowHTMLEmail(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "admin"

    .prologue
    .line 764
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 766
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowHTMLEmail(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 771
    :goto_0
    return v1

    .line 767
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 768
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 771
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAllowInternetSharing(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "admin"

    .prologue
    .line 806
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 808
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 813
    :goto_0
    return v1

    .line 809
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 810
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 813
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAllowIrDA(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "admin"

    .prologue
    .line 1121
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1123
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowIrDA(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1128
    :goto_0
    return v1

    .line 1124
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1125
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1128
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "admin"

    .prologue
    .line 743
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 745
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 750
    :goto_0
    return v1

    .line 746
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 747
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 750
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAllowSMIMEEncryptionAlgorithmNegotiation(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "admin"

    .prologue
    .line 1058
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1060
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowSMIMEEncryptionAlgorithmNegotiation(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1065
    :goto_0
    return v1

    .line 1061
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1062
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1065
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAllowSMIMESoftCerts(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "admin"

    .prologue
    .line 1079
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1081
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowSMIMESoftCerts(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1086
    :goto_0
    return v1

    .line 1082
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1083
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1086
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAllowStorageCard(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "admin"

    .prologue
    .line 657
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 659
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowStorageCard(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 664
    :goto_0
    return v1

    .line 660
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 661
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAllowTextMessaging(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "admin"

    .prologue
    .line 722
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 724
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 729
    :goto_0
    return v1

    .line 725
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 726
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 729
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAllowWifi(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "admin"

    .prologue
    .line 701
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 703
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 708
    :goto_0
    return v1

    .line 704
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 705
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 708
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getApplicationPolicy()Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;
    .locals 3

    .prologue
    .line 1414
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1415
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mApplicationPolicy:Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;

    if-nez v1, :cond_0

    .line 1416
    new-instance v1, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V

    iput-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mApplicationPolicy:Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;

    .line 1417
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1418
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mApplicationPolicy:Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;

    return-object v0

    .line 1417
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getAttachmentsEnabled(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "admin"

    .prologue
    .line 613
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 615
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAttachmentsEnabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 620
    :goto_0
    return v1

    .line 616
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 617
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 620
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCurrentFailedPasswordAttempts()I
    .locals 3

    .prologue
    .line 402
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 404
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getCurrentFailedPasswordAttempts()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 409
    :goto_0
    return v1

    .line 405
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 406
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getDeviceInventory()Landroid/app/admin/DevicePolicyManager$DeviceInventory;
    .locals 3

    .prologue
    .line 1446
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1447
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mDeviceInventory:Landroid/app/admin/DevicePolicyManager$DeviceInventory;

    if-nez v1, :cond_0

    .line 1448
    new-instance v1, Landroid/app/admin/DevicePolicyManager$DeviceInventory;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/admin/DevicePolicyManager$DeviceInventory;-><init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V

    iput-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mDeviceInventory:Landroid/app/admin/DevicePolicyManager$DeviceInventory;

    .line 1449
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1450
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mDeviceInventory:Landroid/app/admin/DevicePolicyManager$DeviceInventory;

    return-object v0

    .line 1449
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getEmailAccountPolicy()Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;
    .locals 3

    .prologue
    .line 1438
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1439
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mEmailAccountPolicy:Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;

    if-nez v1, :cond_0

    .line 1440
    new-instance v1, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V

    iput-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mEmailAccountPolicy:Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;

    .line 1441
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1442
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mEmailAccountPolicy:Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;

    return-object v0

    .line 1441
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getExchangeAccountPolicy()Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;
    .locals 3

    .prologue
    .line 1422
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1423
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mEasAccountPolicy:Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;

    if-nez v1, :cond_0

    .line 1424
    new-instance v1, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V

    iput-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mEasAccountPolicy:Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;

    .line 1425
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1426
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mEasAccountPolicy:Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;

    return-object v0

    .line 1425
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getMaxAttachmentSize(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "admin"

    .prologue
    .line 634
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 636
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getMaxAttachmentSize(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 641
    :goto_0
    return v1

    .line 637
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 638
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 641
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaxCalendarAge(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "admin"

    .prologue
    .line 890
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 892
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getMaxCalendarAge(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 897
    :goto_0
    return v1

    .line 893
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 894
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 897
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaxEmailAge(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "admin"

    .prologue
    .line 911
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 913
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getMaxEmailAge(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 918
    :goto_0
    return v1

    .line 914
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 915
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 918
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaxEmailBodyTruncSize(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "admin"

    .prologue
    .line 932
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 934
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getMaxEmailBodyTruncSize(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 939
    :goto_0
    return v1

    .line 935
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 936
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 939
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "admin"

    .prologue
    .line 953
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 955
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 960
    :goto_0
    return v1

    .line 956
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 957
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 960
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "admin"

    .prologue
    .line 449
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 451
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 456
    :goto_0
    return v1

    .line 452
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 453
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;)J
    .locals 3
    .parameter "admin"

    .prologue
    .line 528
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 530
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 535
    :goto_0
    return-wide v1

    .line 531
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 532
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getMinPasswordComplexChars(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "admin"

    .prologue
    .line 869
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 871
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 876
    :goto_0
    return v1

    .line 872
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 873
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 876
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMiscPolicy()Landroid/app/admin/DevicePolicyManager$MiscPolicy;
    .locals 3

    .prologue
    .line 1462
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1463
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mMiscPolicy:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    if-nez v1, :cond_0

    .line 1464
    new-instance v1, Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V

    iput-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mMiscPolicy:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    .line 1465
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1466
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mMiscPolicy:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    return-object v0

    .line 1465
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getNetworkPolicy()Landroid/app/admin/DevicePolicyManager$NetworkPolicy;
    .locals 3

    .prologue
    .line 1454
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1455
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mNetworkPolicy:Landroid/app/admin/DevicePolicyManager$NetworkPolicy;

    if-nez v1, :cond_0

    .line 1456
    new-instance v1, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V

    iput-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mNetworkPolicy:Landroid/app/admin/DevicePolicyManager$NetworkPolicy;

    .line 1457
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1458
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mNetworkPolicy:Landroid/app/admin/DevicePolicyManager$NetworkPolicy;

    return-object v0

    .line 1457
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3
    .parameter "admin"

    .prologue
    .line 1378
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1380
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1385
    :goto_0
    return-object v1

    .line 1381
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1382
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1385
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordExpires(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "admin"

    .prologue
    .line 571
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 573
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpires(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 578
    :goto_0
    return v1

    .line 574
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 575
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 578
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordHistory(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "admin"

    .prologue
    .line 592
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 594
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordHistory(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 599
    :goto_0
    return v1

    .line 595
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 596
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordMaximumLength(I)I
    .locals 1
    .parameter "quality"

    .prologue
    .line 348
    const/16 v0, 0x10

    return v0
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "admin"

    .prologue
    .line 330
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 332
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 337
    :goto_0
    return v1

    .line 333
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 334
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "admin"

    .prologue
    .line 282
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 284
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 289
    :goto_0
    return v1

    .line 285
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 286
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordRecoverable(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "admin"

    .prologue
    .line 550
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 552
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordRecoverable(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 557
    :goto_0
    return v1

    .line 553
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 554
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 3
    .parameter "admin"
    .parameter "result"

    .prologue
    .line 1263
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1265
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1270
    :cond_0
    :goto_0
    return-void

    .line 1266
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1267
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getRequireDeviceEncryption(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "admin"

    .prologue
    .line 1142
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1144
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getRequireDeviceEncryption(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1149
    :goto_0
    return v1

    .line 1145
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1146
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1149
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRequireEncryptedSMIMEMessages(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "admin"

    .prologue
    .line 995
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 997
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getRequireEncryptedSMIMEMessages(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1002
    :goto_0
    return v1

    .line 998
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 999
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1002
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRequireEncryptionSMIMEAlgorithm(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "admin"

    .prologue
    .line 1037
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1039
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getRequireEncryptionSMIMEAlgorithm(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1044
    :goto_0
    return v1

    .line 1040
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1041
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1044
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRequireManualSyncRoaming(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "admin"

    .prologue
    .line 827
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 829
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getRequireManualSyncRoaming(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 834
    :goto_0
    return v1

    .line 830
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 831
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 834
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRequireSignedSMIMEAlgorithm(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "admin"

    .prologue
    .line 1016
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1018
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getRequireSignedSMIMEAlgorithm(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1023
    :goto_0
    return v1

    .line 1019
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1020
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1023
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRequireSignedSMIMEMessages(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "admin"

    .prologue
    .line 974
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 976
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getRequireSignedSMIMEMessages(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 981
    :goto_0
    return v1

    .line 977
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 978
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 981
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "admin"

    .prologue
    .line 1163
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1165
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1170
    :goto_0
    return v1

    .line 1166
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1167
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1170
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRoamingPolicy()Landroid/app/admin/DevicePolicyManager$RoamingPolicy;
    .locals 3

    .prologue
    .line 1430
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1431
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mRoamingPolicy:Landroid/app/admin/DevicePolicyManager$RoamingPolicy;

    if-nez v1, :cond_0

    .line 1432
    new-instance v1, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V

    iput-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mRoamingPolicy:Landroid/app/admin/DevicePolicyManager$RoamingPolicy;

    .line 1433
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1434
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mRoamingPolicy:Landroid/app/admin/DevicePolicyManager$RoamingPolicy;

    return-object v0

    .line 1433
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getVpnPolicy()Landroid/app/admin/DevicePolicyManager$VpnPolicy;
    .locals 3

    .prologue
    .line 1478
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1479
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mVpnPolicy:Landroid/app/admin/DevicePolicyManager$VpnPolicy;

    if-nez v1, :cond_0

    .line 1480
    new-instance v1, Landroid/app/admin/DevicePolicyManager$VpnPolicy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/admin/DevicePolicyManager$VpnPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V

    iput-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mVpnPolicy:Landroid/app/admin/DevicePolicyManager$VpnPolicy;

    .line 1481
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1482
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mVpnPolicy:Landroid/app/admin/DevicePolicyManager$VpnPolicy;

    return-object v0

    .line 1481
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getWiFiPolicy()Landroid/app/admin/DevicePolicyManager$WiFiPolicy;
    .locals 3

    .prologue
    .line 1470
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1471
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mWiFiPolicy:Landroid/app/admin/DevicePolicyManager$WiFiPolicy;

    if-nez v1, :cond_0

    .line 1472
    new-instance v1, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/app/admin/DevicePolicyManager$WiFiPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V

    iput-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mWiFiPolicy:Landroid/app/admin/DevicePolicyManager$WiFiPolicy;

    .line 1473
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1474
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mWiFiPolicy:Landroid/app/admin/DevicePolicyManager$WiFiPolicy;

    return-object v0

    .line 1473
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isActivePasswordExpired()Z
    .locals 3

    .prologue
    .line 382
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 384
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->isActivePasswordExpired()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 389
    :goto_0
    return v1

    .line 385
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 386
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActivePasswordSufficient()Z
    .locals 3

    .prologue
    .line 364
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 366
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->isActivePasswordSufficient()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 371
    :goto_0
    return v1

    .line 367
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 368
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "who"

    .prologue
    .line 148
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 150
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 155
    :goto_0
    return v1

    .line 151
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 152
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public lockNow()V
    .locals 3

    .prologue
    .line 1183
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1185
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->lockNow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    :cond_0
    :goto_0
    return-void

    .line 1186
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1187
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyChanges(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "admin"
    .parameter "notifyChanges"

    .prologue
    .line 1358
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1360
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->notifyChanges(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1365
    :cond_0
    :goto_0
    return-void

    .line 1361
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1362
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 178
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 180
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 185
    :goto_0
    return v1

    .line 181
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 182
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 1392
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1394
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1399
    :cond_0
    :goto_0
    return-void

    .line 1395
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1396
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public recoverPassword()V
    .locals 3

    .prologue
    .line 1289
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1291
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->recoverPassword()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1296
    :cond_0
    :goto_0
    return-void

    .line 1292
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1293
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "who"

    .prologue
    .line 195
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 197
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 199
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reportFailedPasswordAttempt()V
    .locals 3

    .prologue
    .line 1331
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1333
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->reportFailedPasswordAttempt()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1338
    :cond_0
    :goto_0
    return-void

    .line 1334
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1335
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reportSuccessfulPasswordAttempt()V
    .locals 3

    .prologue
    .line 1344
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1346
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->reportSuccessfulPasswordAttempt()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1351
    :cond_0
    :goto_0
    return-void

    .line 1347
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1348
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetPassword(Ljava/lang/String;I)Z
    .locals 3
    .parameter "password"
    .parameter "flags"

    .prologue
    .line 488
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 490
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 495
    :goto_0
    return v1

    .line 491
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 492
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "policyReceiver"

    .prologue
    .line 1223
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1225
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1230
    :cond_0
    :goto_0
    return-void

    .line 1226
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1227
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActivePasswordState(IIIZZ)V
    .locals 7
    .parameter "quality"
    .parameter "length"
    .parameter "countComplex"
    .parameter "hasSymbol"
    .parameter "notifyChanges"

    .prologue
    .line 1316
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 1319
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/admin/IDevicePolicyManager;->setActivePasswordState(IIIZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1321
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 1322
    .local v6, e:Landroid/os/RemoteException;
    sget-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with device policy service"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAdminPermissions(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "policyReceiver"

    .prologue
    .line 1274
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1276
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->setAdminPermissions(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1281
    :cond_0
    :goto_0
    return-void

    .line 1277
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1278
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAllowBluetoothMode(Landroid/content/ComponentName;I)V
    .locals 3
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 838
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 840
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowBluetoothMode(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 841
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 842
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAllowBrowser(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 775
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 777
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowBrowser(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :cond_0
    :goto_0
    return-void

    .line 778
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 779
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAllowCamera(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 668
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 670
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowCamera(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 671
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 672
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 673
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 674
    .local v0, e:Ljava/lang/SecurityException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "SecurityException occurred"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAllowDesktopSync(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 1090
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1092
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowDesktopSync(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    :cond_0
    :goto_0
    return-void

    .line 1093
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1094
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAllowHTMLEmail(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 754
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 756
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowHTMLEmail(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 757
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 758
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAllowInternetSharing(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 796
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 798
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowInternetSharing(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    :cond_0
    :goto_0
    return-void

    .line 799
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 800
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAllowIrDA(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 1111
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1113
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowIrDA(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    :cond_0
    :goto_0
    return-void

    .line 1114
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1115
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAllowPOPIMAPEmail(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 733
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 735
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowPOPIMAPEmail(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 736
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 737
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAllowSMIMEEncryptionAlgorithmNegotiation(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 1048
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1050
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowSMIMEEncryptionAlgorithmNegotiation(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    :cond_0
    :goto_0
    return-void

    .line 1051
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1052
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAllowSMIMESoftCerts(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 1069
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1071
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowSMIMESoftCerts(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 1072
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1073
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAllowStorageCard(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 647
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 649
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowStorageCard(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 650
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 651
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAllowTextMessaging(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 712
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 714
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowTextMessaging(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 715
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 716
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAllowWifi(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 691
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 693
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAllowWifi(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 694
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 695
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAttachmentsEnabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 603
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 605
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAttachmentsEnabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 606
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 607
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setEncryptionPolicyWithEncryptApp(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 4449
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 4451
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->setEncryptionPolicyWithEncryptApp(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4456
    :goto_0
    return v1

    .line 4452
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4453
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4456
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMaxAttachmentSize(Landroid/content/ComponentName;I)V
    .locals 3
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 624
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 626
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaxAttachmentSize(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 627
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 628
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMaxCalendarAge(Landroid/content/ComponentName;I)V
    .locals 3
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 880
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 882
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaxCalendarAge(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 883
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 884
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMaxEmailAge(Landroid/content/ComponentName;I)V
    .locals 3
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 901
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 903
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaxEmailAge(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 904
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 905
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMaxEmailBodyTruncSize(Landroid/content/ComponentName;I)V
    .locals 3
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 922
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 924
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaxEmailBodyTruncSize(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 925
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 926
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;I)V
    .locals 3
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 943
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 945
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    :cond_0
    :goto_0
    return-void

    .line 946
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 947
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V
    .locals 3
    .parameter "admin"
    .parameter "num"

    .prologue
    .line 432
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 434
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 436
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;J)V
    .locals 3
    .parameter "admin"
    .parameter "timeMs"

    .prologue
    .line 512
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 514
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 515
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 516
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMinPasswordComplexChars(Landroid/content/ComponentName;I)V
    .locals 3
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 859
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 861
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMinPasswordComplexChars(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 862
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 863
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPasswordExpires(Landroid/content/ComponentName;I)V
    .locals 3
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 561
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 563
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordExpires(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 564
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 565
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPasswordHistory(Landroid/content/ComponentName;I)V
    .locals 3
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 582
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 584
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordHistory(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 585
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 586
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    .locals 3
    .parameter "admin"
    .parameter "length"

    .prologue
    .line 314
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 316
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 318
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;I)V
    .locals 3
    .parameter "admin"
    .parameter "quality"

    .prologue
    .line 266
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 268
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 270
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPasswordRecoverable(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 540
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 542
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordRecoverable(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 544
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRecoveryPasswordState(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "who"
    .parameter "value"

    .prologue
    .line 1300
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1302
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRecoveryPasswordState(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    :cond_0
    :goto_0
    return-void

    .line 1303
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1304
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRequireDeviceEncryption(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 1132
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1134
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRequireDeviceEncryption(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    :cond_0
    :goto_0
    return-void

    .line 1135
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1136
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRequireEncryptedSMIMEMessages(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 985
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 987
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRequireEncryptedSMIMEMessages(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 988
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 989
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRequireEncryptionSMIMEAlgorithm(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 1027
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1029
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRequireEncryptionSMIMEAlgorithm(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    :cond_0
    :goto_0
    return-void

    .line 1030
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1031
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRequireManualSyncRoaming(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 817
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 819
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRequireManualSyncRoaming(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 820
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 821
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRequireSignedSMIMEAlgorithm(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 1006
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1008
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRequireSignedSMIMEAlgorithm(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    :cond_0
    :goto_0
    return-void

    .line 1009
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1010
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRequireSignedSMIMEMessages(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 964
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 966
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRequireSignedSMIMEMessages(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 967
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 968
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 1153
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1155
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    :cond_0
    :goto_0
    return-void

    .line 1156
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1157
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public wipeData(I)V
    .locals 3
    .parameter "flags"

    .prologue
    .line 1210
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1212
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->wipeData(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1217
    :cond_0
    :goto_0
    return-void

    .line 1213
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1214
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
