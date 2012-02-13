.class public Lcom/android/providers/media/MotMediaScannerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MotMediaScannerReceiver.java"


# static fields
.field private static final DEF_MODE:[Ljava/lang/String; = null

.field public static final FALSE_VALUE:Ljava/lang/String; = "false"

.field public static final SHARE_MODE:I = 0x0

.field public static final SHUTDOWN_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MotMediaScannerReceiver"

.field public static final TRUE_VALUE:Ljava/lang/String; = "true"

.field private static eMMCEnabled:Z = false

.field public static mPrefs:Landroid/content/SharedPreferences; = null

.field private static final modeNames:[Ljava/lang/String; = null

.field public static final prefname:Ljava/lang/String; = "ModeValues"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v5, "false"

    .line 44
    const-string v0, "ro.mot.internalsdcard"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/android/providers/media/MotMediaScannerReceiver;->eMMCEnabled:Z

    .line 51
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "false"

    aput-object v5, v0, v2

    const-string v1, "false"

    aput-object v5, v0, v3

    sput-object v0, Lcom/android/providers/media/MotMediaScannerReceiver;->DEF_MODE:[Ljava/lang/String;

    .line 54
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "share"

    aput-object v1, v0, v2

    const-string v1, "shutdown"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/media/MotMediaScannerReceiver;->modeNames:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 44
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getMode(I)Ljava/lang/String;
    .locals 4
    .parameter "mode"

    .prologue
    .line 80
    sget-object v1, Lcom/android/providers/media/MotMediaScannerReceiver;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/android/providers/media/MotMediaScannerReceiver;->modeNames:[Ljava/lang/String;

    aget-object v2, v2, p0

    sget-object v3, Lcom/android/providers/media/MotMediaScannerReceiver;->DEF_MODE:[Ljava/lang/String;

    aget-object v3, v3, p0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, val:Ljava/lang/String;
    const-string v1, "MotMediaScannerReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/providers/media/MotMediaScannerReceiver;->modeNames:[Ljava/lang/String;

    aget-object v3, v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-object v0
.end method

.method private scan(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "path"

    .prologue
    const-string v4, "false"

    .line 86
    const-string v1, "false"

    .line 87
    .local v1, isShared:Ljava/lang/String;
    const-string v2, "false"

    .line 88
    .local v2, isShutdown:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/providers/media/MotMediaScannerReceiver;->getMode(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/providers/media/MotMediaScannerReceiver;->getMode(I)Ljava/lang/String;

    move-result-object v2

    .line 90
    if-eqz v1, :cond_0

    if-nez v2, :cond_2

    .line 91
    :cond_0
    const-string v3, "MotMediaScannerReceiver"

    const-string v4, "Unexpected: no mode info can be found!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    :goto_0
    return-void

    .line 94
    :cond_2
    const-string v3, "false"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "volume"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/providers/media/MediaScannerService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static setMode(ILjava/lang/String;)V
    .locals 4
    .parameter "mode"
    .parameter "val"

    .prologue
    .line 74
    const-string v1, "MotMediaScannerReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/providers/media/MotMediaScannerReceiver;->modeNames:[Ljava/lang/String;

    aget-object v3, v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v1, Lcom/android/providers/media/MotMediaScannerReceiver;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/android/providers/media/MotMediaScannerReceiver;->modeNames:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const-string v4, "false"

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, action:Ljava/lang/String;
    const/4 v1, 0x0

    .line 61
    .local v1, path:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 63
    :cond_0
    const-string v2, "ModeValues"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/android/providers/media/MotMediaScannerReceiver;->mPrefs:Landroid/content/SharedPreferences;

    .line 64
    sget-boolean v2, Lcom/android/providers/media/MotMediaScannerReceiver;->eMMCEnabled:Z

    if-eqz v2, :cond_1

    .line 65
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    const-string v2, "false"

    invoke-static {v3, v4}, Lcom/android/providers/media/MotMediaScannerReceiver;->setMode(ILjava/lang/String;)V

    .line 67
    const/4 v2, 0x1

    const-string v3, "false"

    invoke-static {v2, v4}, Lcom/android/providers/media/MotMediaScannerReceiver;->setMode(ILjava/lang/String;)V

    .line 72
    :cond_1
    :goto_0
    return-void

    .line 68
    :cond_2
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    invoke-direct {p0, p1, v1}, Lcom/android/providers/media/MotMediaScannerReceiver;->scan(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
