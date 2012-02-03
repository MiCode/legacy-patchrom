.class public Lcom/android/server/TvOutService;
.super Landroid/os/ITvOutService$Stub;
.source "TvOutService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TvOutService$SettingsObserver;
    }
.end annotation


# static fields
.field static final ANALOG_DEFAULT_TVSYSTEM:I = 0x2

.field static final ANALOG_TVSYSTEM_NTSC:I = 0x1

.field static final ANALOG_TVSYSTEM_PAL:I = 0x2

.field private static final HDMI_CONNECT:I = 0x1

.field private static final HDMI_NOT_CONNECT:I = 0x0

.field private static HDMI_SUBTITLE_HEIGHT:I = 0x0

.field static final HDMI_SUBTITLE_MAX_HEIGHT:I = 0x130

.field static final HDMI_SUBTITLE_MAX_WIDTH:I = 0x740

.field private static HDMI_SUBTITLE_WIDTH:I = 0x0

.field public static final LOCALE_CHANGE_ACTION:Ljava/lang/String; = "android.intent.action.locale.changed"

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "TvOut-Observer"

.field private static mAnalogCableConnected:Z

.field private static mHdmiCableConnected:Z

.field private static mIsAnalogSuspend:Z

.field private static mIsAnalogWaitResume:Z

.field private static mIsHdmiSuspend:Z

.field private static mIsHdmiWaitResume:Z

.field private static sRotation:I

.field private static sWindowManager:Landroid/view/IWindowManager;


# instance fields
.field private bitmap_subtitle:Landroid/graphics/Bitmap;

.field private canvas_subtile:Landroid/graphics/Canvas;

.field private mAnalogTvSystem:I

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mIsForced:Z

.field final mLock:Ljava/lang/Object;

.field private mPrevSubtitle:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private tvout:Landroid/hardware/TvOut;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    sput v0, Lcom/android/server/TvOutService;->sRotation:I

    .line 84
    sput-boolean v0, Lcom/android/server/TvOutService;->mAnalogCableConnected:Z

    .line 85
    sput-boolean v0, Lcom/android/server/TvOutService;->mHdmiCableConnected:Z

    .line 86
    sput-boolean v0, Lcom/android/server/TvOutService;->mIsAnalogSuspend:Z

    .line 87
    sput-boolean v0, Lcom/android/server/TvOutService;->mIsAnalogWaitResume:Z

    .line 88
    sput-boolean v0, Lcom/android/server/TvOutService;->mIsHdmiSuspend:Z

    .line 89
    sput-boolean v0, Lcom/android/server/TvOutService;->mIsHdmiWaitResume:Z

    .line 102
    sput v0, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_WIDTH:I

    .line 103
    sput v0, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Landroid/os/ITvOutService$Stub;-><init>()V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/TvOutService;->mAnalogTvSystem:I

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/TvOutService;->mIsForced:Z

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/TvOutService;->mLock:Ljava/lang/Object;

    .line 91
    iput-object v1, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 106
    iput-object v1, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    .line 107
    iput-object v1, p0, Lcom/android/server/TvOutService;->canvas_subtile:Landroid/graphics/Canvas;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/TvOutService;->mPrevSubtitle:Ljava/lang/String;

    .line 1265
    new-instance v0, Lcom/android/server/TvOutService$2;

    invoke-direct {v0, p0}, Lcom/android/server/TvOutService$2;-><init>(Lcom/android/server/TvOutService;)V

    iput-object v0, p0, Lcom/android/server/TvOutService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    const-string v0, "TvOut-Observer"

    const-string v1, "TvOutService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iput-object p1, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    .line 162
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->init()V

    .line 163
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/TvOutService;->sWindowManager:Landroid/view/IWindowManager;

    .line 165
    sget-object v0, Lcom/android/server/TvOutService;->sWindowManager:Landroid/view/IWindowManager;

    if-eqz v0, :cond_0

    .line 171
    :try_start_0
    sget-object v0, Lcom/android/server/TvOutService;->sWindowManager:Landroid/view/IWindowManager;

    new-instance v1, Lcom/android/server/TvOutService$1;

    invoke-direct {v1, p0}, Lcom/android/server/TvOutService$1;-><init>(Lcom/android/server/TvOutService;)V

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v0

    sput v0, Lcom/android/server/TvOutService;->sRotation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private TvoutAnalogSetSuspendString()V
    .locals 4

    .prologue
    .line 633
    iget-object v1, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    const v2, 0x10403e2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, text:Ljava/lang/String;
    const-string v1, "TvOut-Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TvoutAnalogSetSuspendString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1, v0}, Landroid/hardware/TvOut;->TvOutSetImageString(Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method private TvoutAnalogSetTvSystem()V
    .locals 2

    .prologue
    .line 614
    const-string v0, "TvOut-Observer"

    const-string v1, "TvoutAnalogSetTvSystem"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    iget v1, p0, Lcom/android/server/TvOutService;->mAnalogTvSystem:I

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->SetTvSystem(I)V

    .line 617
    return-void
.end method

.method private TvoutHDMIGetYPosForHeight(I)I
    .locals 2
    .parameter "hdmiheight"

    .prologue
    .line 1008
    const/4 v0, 0x0

    .line 1010
    .local v0, y:I
    sparse-switch p1, :sswitch_data_0

    .line 1027
    sget v1, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    div-int/lit8 v0, v1, 0x3

    .line 1030
    :goto_0
    return v0

    .line 1013
    :sswitch_0
    const/4 v0, 0x0

    .line 1014
    goto :goto_0

    .line 1016
    :sswitch_1
    sget v1, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    div-int/lit8 v0, v1, 0x2

    .line 1018
    goto :goto_0

    .line 1020
    :sswitch_2
    sget v1, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    div-int/lit8 v0, v1, 0x3

    .line 1022
    goto :goto_0

    .line 1024
    :sswitch_3
    sget v1, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    div-int/lit8 v0, v1, 0x3

    .line 1025
    goto :goto_0

    .line 1010
    :sswitch_data_0
    .sparse-switch
        0x1e0 -> :sswitch_0
        0x240 -> :sswitch_1
        0x2d0 -> :sswitch_2
        0x438 -> :sswitch_3
    .end sparse-switch
.end method

.method private TvoutStayAwake(Z)V
    .locals 2
    .parameter "awake"

    .prologue
    const-string v1, "TvOut-Observer"

    .line 396
    iget-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 397
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    const-string v0, "TvOut-Observer"

    const-string/jumbo v0, "stayAwake Accuring the lock SCREEN_ON_DEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const-string v0, "TvOut-Observer"

    const-string/jumbo v0, "stayAwake relesing the lock SCREEN_ON_DEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 407
    :cond_2
    const-string v0, "TvOut-Observer"

    const-string/jumbo v0, "stayAwake mWakeLock is null SCREEN_ON_DEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/TvOutService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TvOutService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/server/TvOutService;->mAnalogTvSystem:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/TvOutService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/server/TvOutService;->mAnalogTvSystem:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/TvOutService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/TvOutService;->TvoutAnalogSetTvSystem()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/TvOutService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/TvOutService;->TvoutAnalogSetSuspendString()V

    return-void
.end method

.method public static onRotationChanged(I)V
    .locals 7
    .parameter "rotation"

    .prologue
    const-string v6, "TvOut-Observer"

    .line 911
    const-string v0, "OnRotationChanged"

    .line 912
    .local v0, CCS_TAG:Ljava/lang/String;
    const-string/jumbo v3, "tvoutservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ITvOutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ITvOutService;

    move-result-object v2

    .line 913
    .local v2, tvoutService:Landroid/os/ITvOutService;
    if-nez v2, :cond_1

    .line 914
    const-string v3, "TvOut-Observer"

    const-string v3, " setTvoutOrientation TvOutService Not running"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 918
    :cond_1
    sget v3, Lcom/android/server/TvOutService;->sRotation:I

    if-eq v3, p0, :cond_0

    .line 920
    sput p0, Lcom/android/server/TvOutService;->sRotation:I

    .line 922
    :try_start_0
    const-string v3, "TvOut-Observer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setTvoutOrientation rotation =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-interface {v2, p0}, Landroid/os/ITvOutService;->TvoutSetOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 925
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 926
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "TvOut-Observer"

    const-string/jumbo v3, "setTvoutOrientation   "

    invoke-static {v6, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private textSizeForHdmiHeight(I)I
    .locals 4
    .parameter "textsize"

    .prologue
    .line 971
    const/4 v0, 0x0

    .line 974
    .local v0, hdmisubtitletextsize:I
    sget v1, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    sparse-switch v1, :sswitch_data_0

    .line 991
    move v0, p1

    .line 995
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 997
    const/16 v0, 0x8

    .line 1000
    :cond_0
    const-string v1, "TvOut-Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "textSizeForHdmiHeight  hdmisubtitletextsize =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    return v0

    .line 977
    :sswitch_0
    const/16 v0, 0x10

    .line 978
    goto :goto_0

    .line 980
    :sswitch_1
    const/16 v0, 0x14

    .line 982
    goto :goto_0

    .line 984
    :sswitch_2
    const/16 v0, 0x19

    .line 986
    goto :goto_0

    .line 988
    :sswitch_3
    const/16 v0, 0x25

    .line 989
    goto :goto_0

    .line 974
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0x90 -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public GetSuspendString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1248
    const-string v1, "TvOut-Observer"

    const-string v2, "GetSuspendString"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1}, Landroid/hardware/TvOut;->GetSuspendString()Ljava/lang/String;

    move-result-object v0

    .line 1250
    .local v0, suspendText:Ljava/lang/String;
    return-object v0
.end method

.method public TvoutAnalogDisable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 334
    const-string v0, "TvOut-Observer"

    const-string v1, "DisableTvOut"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->DisableTvOut()V

    .line 336
    invoke-direct {p0, v2}, Lcom/android/server/TvOutService;->TvoutStayAwake(Z)V

    .line 337
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsAnalogSuspend:Z

    .line 338
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsAnalogWaitResume:Z

    .line 339
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsHdmiWaitResume:Z

    .line 340
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsHdmiSuspend:Z

    .line 341
    return-void
.end method

.method public TvoutAnalogDisableForce()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "TvOut-Observer"

    .line 303
    const-string v1, "TvOut-Observer"

    const-string v1, "DisableTvOut"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TVOUT_PLUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, intent1:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 307
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    const-string/jumbo v1, "name"

    const-string v2, "h2w"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string/jumbo v1, "microphone"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 311
    const-string v1, "TvOut-Observer"

    const-string v1, "Forced : ACTION_TVOUT_PLUG : disable"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1}, Landroid/hardware/TvOut;->DisableTvOut()V

    .line 314
    invoke-direct {p0, v3}, Lcom/android/server/TvOutService;->TvoutStayAwake(Z)V

    .line 315
    sput-boolean v3, Lcom/android/server/TvOutService;->mIsAnalogSuspend:Z

    .line 316
    sput-boolean v3, Lcom/android/server/TvOutService;->mIsAnalogWaitResume:Z

    .line 317
    sput-boolean v3, Lcom/android/server/TvOutService;->mIsHdmiWaitResume:Z

    .line 318
    sput-boolean v3, Lcom/android/server/TvOutService;->mIsHdmiSuspend:Z

    .line 319
    iput-boolean v3, p0, Lcom/android/server/TvOutService;->mIsForced:Z

    .line 320
    return-void
.end method

.method public TvoutAnalogEnable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 268
    const-string v0, "TvOut-Observer"

    const-string v1, "EnableTvOut"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-direct {p0}, Lcom/android/server/TvOutService;->TvoutAnalogSetSuspendString()V

    .line 271
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    sget v1, Lcom/android/server/TvOutService;->sRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->SetOrientation(I)V

    .line 272
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->TvoutAnalogDisable()V

    .line 276
    :cond_0
    sget-boolean v0, Lcom/android/server/TvOutService;->mAnalogCableConnected:Z

    if-ne v0, v2, :cond_1

    .line 278
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->EnableTvOut()V

    .line 279
    invoke-direct {p0, v2}, Lcom/android/server/TvOutService;->TvoutStayAwake(Z)V

    .line 281
    :cond_1
    return-void
.end method

.method public TvoutAnalogEnableForce()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const-string v4, "TvOut-Observer"

    .line 284
    const-string v1, "TvOut-Observer"

    const-string v1, "EnableTvOut"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TVOUT_PLUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, intent2:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 289
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const-string/jumbo v1, "name"

    const-string v2, "h2w"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string/jumbo v1, "microphone"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 293
    const-string v1, "TvOut-Observer"

    const-string v1, "Forced : ACTION_TVOUT_PLUG : enable"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    sget v2, Lcom/android/server/TvOutService;->sRotation:I

    invoke-virtual {v1, v2}, Landroid/hardware/TvOut;->SetOrientation(I)V

    .line 296
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1}, Landroid/hardware/TvOut;->EnableTvOut()V

    .line 297
    invoke-direct {p0, v3}, Lcom/android/server/TvOutService;->TvoutStayAwake(Z)V

    .line 298
    iput-boolean v3, p0, Lcom/android/server/TvOutService;->mIsForced:Z

    .line 299
    return-void
.end method

.method public TvoutAnalogIsCableConnected()Z
    .locals 2

    .prologue
    .line 706
    const-string v0, "TvOut-Observer"

    const-string v1, "TvoutAnalogIsCableConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isTvoutCableConnected()Z

    move-result v0

    return v0
.end method

.method public TvoutAnalogIsEnabled()Z
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public TvoutAnalogIsSuspended()Z
    .locals 2

    .prologue
    .line 670
    const-string v0, "TvOut-Observer"

    const-string v1, "TvoutAnalogIsSuspended"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isSuspended()Z

    move-result v0

    return v0
.end method

.method public TvoutAnalogSetCableStatus(I)V
    .locals 2
    .parameter "tvoutCableConnected"

    .prologue
    .line 745
    const-string v0, "TvOut-Observer"

    const-string v1, "TvoutAnalogSetCableStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0, p1}, Landroid/hardware/TvOut;->setTvoutCableConnected(I)V

    .line 747
    return-void
.end method

.method public TvoutAnalogSetSuspendImage(I)V
    .locals 2
    .parameter "paddr"

    .prologue
    .line 589
    const-string v0, "TvOut-Observer"

    const-string v1, "TvoutAnalogSetSuspendImage"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    :cond_0
    return-void
.end method

.method public TvoutAnalogSuspend(Ljava/lang/String;)V
    .locals 3
    .parameter "tvText"

    .prologue
    const/4 v2, 0x1

    const-string v1, "TvOut-Observer"

    .line 461
    const-string v0, "TvOut-Observer"

    const-string v0, "TvoutAnalogSuspend"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/TvOutService;->mIsAnalogWaitResume:Z

    if-ne v0, v2, :cond_2

    .line 464
    :cond_0
    sget-boolean v0, Lcom/android/server/TvOutService;->mIsAnalogSuspend:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/TvOutService;->mIsAnalogWaitResume:Z

    if-ne v0, v2, :cond_2

    .line 466
    :cond_1
    const-string v0, "TvOut-Observer"

    const-string v0, "Call Suspend"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    iget-object v1, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/TvOut;->TvOutSuspend(Landroid/content/Context;Ljava/lang/String;)V

    .line 468
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsAnalogSuspend:Z

    .line 469
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/TvOutService;->mIsAnalogWaitResume:Z

    .line 473
    :cond_2
    return-void
.end method

.method public TvoutAnalogUpdateCableStatus(Z)V
    .locals 4
    .parameter "Connected"

    .prologue
    const/4 v3, 0x1

    const-string v2, "TvOut-Observer"

    .line 211
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TvoutAnalogSetStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sput-boolean p1, Lcom/android/server/TvOutService;->mAnalogCableConnected:Z

    .line 214
    if-ne p1, v3, :cond_0

    .line 216
    invoke-virtual {p0, v3}, Lcom/android/server/TvOutService;->TvoutAnalogSetCableStatus(I)V

    .line 223
    :goto_0
    sget-boolean v0, Lcom/android/server/TvOutService;->mAnalogCableConnected:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/TvOutService;->mIsForced:Z

    if-nez v0, :cond_1

    .line 225
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CableConnected off   mAnalogCableConnected :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mAnalogCableConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->TvoutAnalogDisable()V

    .line 252
    :goto_1
    return-void

    .line 220
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/TvOutService;->TvoutAnalogSetCableStatus(I)V

    goto :goto_0

    .line 230
    :cond_1
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CableConnected  on  mAnalogCableConnected :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mAnalogCableConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/TvOutService;->mAnalogCableConnected:Z

    if-ne v0, v3, :cond_3

    .line 234
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CableConnected enable tvout    mAnalogCableConnected :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mAnalogCableConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-boolean v0, p0, Lcom/android/server/TvOutService;->mIsForced:Z

    if-eq v0, v3, :cond_2

    .line 237
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->TvoutAnalogEnable()V

    goto :goto_1

    .line 241
    :cond_2
    const-string v0, "TvOut-Observer"

    const-string v0, "CableConnected  but can\'t enable tvout"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 247
    :cond_3
    const-string v0, "TvOut-Observer"

    const-string v0, "TvoutAnalogSetTvSystem system shuldnot come here... error in tvout values"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public TvoutHDMIDisableSubtitleOn(I)V
    .locals 2
    .parameter "mSubTitleOn"

    .prologue
    .line 1162
    const-string v0, "TvOut-Observer"

    const-string v1, "TvoutHDMIDisableSubtitleOn"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->TvoutHDMIIsSubtitleOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1166
    :goto_0
    return-void

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0, p1}, Landroid/hardware/TvOut;->TvOutDisableHDMISubtitleOn(I)V

    goto :goto_0
.end method

.method public TvoutHDMIGetSubtitleHeight()I
    .locals 2

    .prologue
    .line 1242
    const-string v0, "TvOut-Observer"

    const-string v1, "TvoutHDMIGetSubtitleHeight"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->getSubtitleHDMIHeight()I

    move-result v0

    return v0
.end method

.method public TvoutHDMIGetSubtitleWidth()I
    .locals 2

    .prologue
    .line 1223
    const-string v0, "TvOut-Observer"

    const-string v1, "TvoutHDMIGetSubtitleWidth"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->getSubtitleHDMIWidth()I

    move-result v0

    return v0
.end method

.method public TvoutHDMIIsCableConnected()Z
    .locals 2

    .prologue
    .line 724
    const-string v0, "TvOut-Observer"

    const-string v1, "TvoutHDMIIsCableConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isHdmiCableConnected()Z

    move-result v0

    return v0
.end method

.method public TvoutHDMIIsDualDisplayEnabled()Z
    .locals 2

    .prologue
    .line 1183
    const-string v0, "TvOut-Observer"

    const-string v1, "TvoutHDMIIsDualDisplayEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isHdmiDualEnabled()Z

    move-result v0

    return v0
.end method

.method public TvoutHDMIIsEnabled()Z
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isHdmiEnabled()Z

    move-result v0

    return v0
.end method

.method public TvoutHDMIIsSubtitleOn()Z
    .locals 3

    .prologue
    .line 1141
    const-string v1, "TvOut-Observer"

    const-string v2, "TvoutHDMIIsSubtitleOn "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1}, Landroid/hardware/TvOut;->isHDMISubtitleOn()Z

    move-result v0

    .line 1144
    .local v0, subtitleOn:Z
    return v0
.end method

.method public TvoutHDMIIsSuspended()Z
    .locals 2

    .prologue
    .line 686
    const-string v0, "TvOut-Observer"

    const-string v1, "TvoutHDMIIsSuspended"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isHdmiSuspended()Z

    move-result v0

    return v0
.end method

.method public TvoutHDMIPostBitmap(Landroid/graphics/Bitmap;I)V
    .locals 8
    .parameter "bitmap"
    .parameter "chroma_key"

    .prologue
    .line 1106
    const/4 v1, 0x0

    .local v1, width:I
    const/4 v0, 0x0

    .local v0, height:I
    const/4 v2, 0x0

    .local v2, x:I
    const/4 v3, 0x0

    .line 1107
    .local v3, y:I
    const-string v4, "TvOut-Observer"

    const-string v5, "TvoutHDMIPostBitmap"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->TvoutHDMIIsSubtitleOn()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 1124
    :cond_0
    :goto_0
    return-void

    .line 1110
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1111
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1112
    if-ltz v1, :cond_0

    if-ltz v0, :cond_0

    .line 1115
    sget v4, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_WIDTH:I

    if-ge v1, v4, :cond_0

    sget v4, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    if-ge v0, v4, :cond_0

    .line 1117
    sget v4, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v1, 0x2

    sub-int v2, v4, v5

    .line 1118
    const/4 v3, 0x0

    .line 1120
    iget-object v4, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    invoke-virtual {v4, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1121
    iget-object v4, p0, Lcom/android/server/TvOutService;->canvas_subtile:Landroid/graphics/Canvas;

    int-to-float v5, v2

    int-to-float v6, v3

    const/4 v7, 0x0

    invoke-virtual {v4, p1, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1122
    iget-object v4, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    iget-object v5, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, p2}, Landroid/hardware/TvOut;->TvOutPostHDMIBitmap(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public TvoutHDMIPostSubtitle(Ljava/lang/String;I)V
    .locals 13
    .parameter "mSubTitleText"
    .parameter "textsize"

    .prologue
    const/4 v12, 0x0

    const/high16 v11, -0x100

    const-string v9, "TvOut-Observer"

    .line 1048
    const-string v7, "TvOut-Observer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TvoutHDMIPostSubtitle  textsize =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const/4 v4, 0x0

    .local v4, width:I
    const/4 v0, 0x0

    .local v0, height:I
    const/4 v5, 0x0

    .local v5, x:I
    const/4 v6, 0x0

    .line 1052
    .local v6, y:I
    invoke-direct {p0, p2}, Lcom/android/server/TvOutService;->textSizeForHdmiHeight(I)I

    move-result v3

    .line 1054
    .local v3, textsizehdmi:I
    iget-object v7, p0, Lcom/android/server/TvOutService;->mPrevSubtitle:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1088
    :goto_0
    return-void

    .line 1060
    :cond_0
    new-instance v1, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1062
    .local v1, mTvoutSubtitleText:Landroid/widget/TextView;
    const/high16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setDrawingCacheQuality(I)V

    .line 1063
    const/16 v7, 0x11

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 1064
    int-to-float v7, v3

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1065
    sget v7, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_WIDTH:I

    sget v8, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    invoke-virtual {v1, v12, v12, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 1066
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setDrawingCacheBackgroundColor(I)V

    .line 1067
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 1069
    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 1070
    invoke-virtual {v1}, Landroid/widget/TextView;->buildDrawingCache()V

    .line 1071
    invoke-virtual {v1}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1073
    .local v2, sBitmap:Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    .line 1075
    const-string v7, "TvOut-Observer"

    const-string v7, "TvoutHDMIPostSubtitle bitmap is null "

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1079
    :cond_1
    const/4 v6, 0x0

    .line 1080
    iget-object v7, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v11}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1081
    iget-object v7, p0, Lcom/android/server/TvOutService;->canvas_subtile:Landroid/graphics/Canvas;

    int-to-float v8, v5

    int-to-float v9, v6

    const/4 v10, 0x0

    invoke-virtual {v7, v2, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1082
    iget-object v7, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    iget-object v8, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8, v11}, Landroid/hardware/TvOut;->TvOutPostHDMIBitmap(Landroid/graphics/Bitmap;I)V

    .line 1084
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 1086
    iput-object p1, p0, Lcom/android/server/TvOutService;->mPrevSubtitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public TvoutHDMISetCableStatus(I)V
    .locals 3
    .parameter "hdmiCableConnected"

    .prologue
    .line 764
    const-string v0, "TvOut-Observer"

    const-string v1, "TvoutHDMISetCableStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0, p1}, Landroid/hardware/TvOut;->setHdmiCableConnected(I)V

    .line 767
    const-string v0, "MyTag1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HDMI_CAMERA_VIDEO_CALL hdmiCableConnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    return-void
.end method

.method public TvoutHDMISetDualDisplayStatus(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 1202
    const-string v0, "TvOut-Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TvoutHDMISetDualDisplayStatus: value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0, p1}, Landroid/hardware/TvOut;->SetTvoutHdmiDualStatus(I)V

    .line 1205
    return-void
.end method

.method public TvoutHDMISetStatus(I)Z
    .locals 6
    .parameter "status"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string v5, "TvoutHDMISetStatus temp1 "

    const-string v3, "TvOut-Observer"

    .line 786
    const-string v1, "TvOut-Observer"

    const-string v1, "TvoutHDMISetStatus"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/4 v0, 0x0

    .line 788
    .local v0, hStatus:Z
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1}, Landroid/hardware/TvOut;->isHdmiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/TvOutService;->mHdmiCableConnected:Z

    if-nez v1, :cond_1

    .line 790
    const-string v1, "TvOut-Observer"

    const-string v1, "TvoutHDMISetStatus temp1 "

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsAnalogSuspend:Z

    .line 792
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsAnalogWaitResume:Z

    .line 793
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsHdmiWaitResume:Z

    .line 794
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsHdmiSuspend:Z

    .line 795
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1, v2}, Landroid/hardware/TvOut;->SetTvoutHdmiStatus(I)Z

    move-result v0

    .line 841
    :cond_0
    :goto_0
    return v0

    .line 798
    :cond_1
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1}, Landroid/hardware/TvOut;->isHdmiSuspended()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/TvOutService;->mHdmiCableConnected:Z

    if-nez v1, :cond_2

    .line 800
    const-string v1, "TvOut-Observer"

    const-string v1, "TvoutHDMISetStatus temp1 "

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsAnalogSuspend:Z

    .line 802
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsAnalogWaitResume:Z

    .line 803
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsHdmiWaitResume:Z

    .line 804
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsHdmiSuspend:Z

    .line 805
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1, v2}, Landroid/hardware/TvOut;->SetTvoutHdmiStatus(I)Z

    move-result v0

    goto :goto_0

    .line 808
    :cond_2
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1}, Landroid/hardware/TvOut;->isHdmiSuspended()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 810
    const-string v1, "TvOut-Observer"

    const-string v1, "TvoutHDMISetStatus temp2 "

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->TvoutResume()V

    .line 812
    if-ne p1, v4, :cond_0

    sget-boolean v1, Lcom/android/server/TvOutService;->mHdmiCableConnected:Z

    if-ne v1, v4, :cond_0

    .line 814
    const-string v1, "TvOut-Observer"

    const-string v1, "TvoutHDMISetStatus temp5 "

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-direct {p0}, Lcom/android/server/TvOutService;->TvoutAnalogSetSuspendString()V

    .line 816
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    sget v2, Lcom/android/server/TvOutService;->sRotation:I

    invoke-virtual {v1, v2}, Landroid/hardware/TvOut;->SetOrientation(I)V

    .line 817
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1, v4}, Landroid/hardware/TvOut;->SetTvoutHdmiStatus(I)Z

    move-result v0

    goto :goto_0

    .line 820
    :cond_3
    if-ne p1, v4, :cond_4

    sget-boolean v1, Lcom/android/server/TvOutService;->mHdmiCableConnected:Z

    if-ne v1, v4, :cond_4

    .line 822
    const-string v1, "TvOut-Observer"

    const-string v1, "TvoutHDMISetStatus temp3 "

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-direct {p0}, Lcom/android/server/TvOutService;->TvoutAnalogSetSuspendString()V

    .line 824
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    sget v2, Lcom/android/server/TvOutService;->sRotation:I

    invoke-virtual {v1, v2}, Landroid/hardware/TvOut;->SetOrientation(I)V

    .line 825
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1, v4}, Landroid/hardware/TvOut;->SetTvoutHdmiStatus(I)Z

    move-result v0

    goto :goto_0

    .line 831
    :cond_4
    const-string v1, "TvOut-Observer"

    const-string v1, "TvoutHDMISetStatus temp4 "

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsAnalogSuspend:Z

    .line 833
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsAnalogWaitResume:Z

    .line 834
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsHdmiWaitResume:Z

    .line 835
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsHdmiSuspend:Z

    .line 837
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1, v2}, Landroid/hardware/TvOut;->SetTvoutHdmiStatus(I)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public TvoutHDMISetSubtitleStatus(I)Z
    .locals 4
    .parameter "mSubTitleOn"

    .prologue
    const/4 v3, 0x0

    .line 949
    const-string v0, "TvOut-Observer"

    const-string v1, "TvoutHDMISetSubtitleStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    if-lez p1, :cond_0

    .line 952
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->TvoutHDMIIsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->TvoutHDMIIsSuspended()Z

    move-result v0

    if-nez v0, :cond_1

    .line 954
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->TvoutHDMIGetSubtitleWidth()I

    move-result v0

    sput v0, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_WIDTH:I

    .line 955
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->TvoutHDMIGetSubtitleHeight()I

    move-result v0

    sput v0, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    .line 956
    sget v0, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_WIDTH:I

    sget v1, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    .line 957
    iget-object v0, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 958
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/server/TvOutService;->canvas_subtile:Landroid/graphics/Canvas;

    .line 959
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0, p1}, Landroid/hardware/TvOut;->TvOutEnableHDMISubtitleOn(I)Z

    move-result v0

    .line 967
    :goto_0
    return v0

    .line 964
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/TvOutService;->TvoutHDMIDisableSubtitleOn(I)V

    .line 965
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 967
    goto :goto_0
.end method

.method public TvoutHDMISuspend(Ljava/lang/String;)V
    .locals 3
    .parameter "tvText"

    .prologue
    const/4 v1, 0x1

    const-string v2, "TvOut-Observer"

    .line 520
    const-string v0, "TvOut-Observer"

    const-string v0, "TvoutHDMISuspend"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    sget-boolean v0, Lcom/android/server/TvOutService;->mIsHdmiSuspend:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/TvOutService;->mIsHdmiWaitResume:Z

    if-ne v0, v1, :cond_1

    .line 524
    :cond_0
    const-string v0, "TvOut-Observer"

    const-string v0, "Call Suspend"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    sput-boolean v1, Lcom/android/server/TvOutService;->mIsHdmiSuspend:Z

    .line 526
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/TvOutService;->mIsHdmiWaitResume:Z

    .line 527
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    iget-object v1, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/TvOut;->TvOutHdmiSuspend(Landroid/content/Context;Ljava/lang/String;)V

    .line 529
    :cond_1
    return-void
.end method

.method public TvoutHDMIUpdateCableStatus(I)Z
    .locals 6
    .parameter "hdmicableconnected"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const-string v4, "TvOut-Observer"

    .line 860
    const-string v1, "TvOut-Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TvoutHDMIUpdateCableStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const/4 v0, 0x0

    .line 862
    .local v0, ret:Z
    if-ne p1, v3, :cond_2

    .line 864
    invoke-virtual {p0, v3}, Lcom/android/server/TvOutService;->TvoutHDMISetCableStatus(I)V

    .line 865
    sput-boolean v3, Lcom/android/server/TvOutService;->mHdmiCableConnected:Z

    .line 866
    invoke-direct {p0, v3}, Lcom/android/server/TvOutService;->TvoutStayAwake(Z)V

    .line 872
    :goto_0
    sget-boolean v1, Lcom/android/server/TvOutService;->mHdmiCableConnected:Z

    if-nez v1, :cond_3

    .line 874
    const-string v1, "TvOut-Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TvoutHDMIUpdateCableStatus   off  mHdmiCableConnected :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/TvOutService;->mHdmiCableConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-virtual {p0, p1}, Lcom/android/server/TvOutService;->TvoutHDMISetStatus(I)Z

    move-result v0

    .line 889
    :cond_0
    :goto_1
    if-nez p1, :cond_1

    .line 891
    invoke-virtual {p0, v5}, Lcom/android/server/TvOutService;->TvoutHDMISetCableStatus(I)V

    .line 892
    invoke-direct {p0, v5}, Lcom/android/server/TvOutService;->TvoutStayAwake(Z)V

    .line 894
    :cond_1
    return v0

    .line 870
    :cond_2
    sput-boolean v5, Lcom/android/server/TvOutService;->mHdmiCableConnected:Z

    goto :goto_0

    .line 879
    :cond_3
    const-string v1, "TvOut-Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TvoutHDMIUpdateCableStatus   on  mHdmiCableConnected :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/TvOutService;->mHdmiCableConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1}, Landroid/hardware/TvOut;->isHdmiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/TvOutService;->mHdmiCableConnected:Z

    if-ne v1, v3, :cond_0

    .line 883
    const-string v1, "TvOut-Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TvoutHDMIUpdateCableStatus enable tvout    mHdmiCableConnected :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/TvOutService;->mHdmiCableConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-virtual {p0, p1}, Lcom/android/server/TvOutService;->TvoutHDMISetStatus(I)Z

    move-result v0

    goto :goto_1
.end method

.method public TvoutResume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const-string v5, "Call HDMI resume"

    const-string v3, "TvOut-Observer"

    .line 546
    const-string v0, "TvOut-Observer"

    const-string v0, "TvoutResume"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    sget-boolean v0, Lcom/android/server/TvOutService;->mIsAnalogSuspend:Z

    if-eq v0, v2, :cond_0

    sget-boolean v0, Lcom/android/server/TvOutService;->mIsHdmiSuspend:Z

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->TvoutHDMIIsSuspended()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/TvOutService;->mIsAnalogSuspend:Z

    if-ne v0, v2, :cond_1

    .line 550
    const-string v0, "TvOut-Observer"

    const-string v0, "Call Tvout resume"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    sget v1, Lcom/android/server/TvOutService;->sRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->SetOrientation(I)V

    .line 552
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->TvOutResume(I)V

    .line 553
    sput-boolean v4, Lcom/android/server/TvOutService;->mIsAnalogSuspend:Z

    .line 554
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsAnalogWaitResume:Z

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isHdmiEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/TvOutService;->mIsHdmiSuspend:Z

    if-ne v0, v2, :cond_3

    .line 557
    const-string v0, "TvOut-Observer"

    const-string v0, "Call HDMI resume"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    sput-boolean v4, Lcom/android/server/TvOutService;->mIsHdmiSuspend:Z

    .line 559
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsHdmiWaitResume:Z

    .line 560
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    sget v1, Lcom/android/server/TvOutService;->sRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->SetOrientation(I)V

    .line 561
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0, v2}, Landroid/hardware/TvOut;->TvOutResume(I)V

    .line 562
    sget-boolean v0, Lcom/android/server/TvOutService;->mHdmiCableConnected:Z

    if-nez v0, :cond_2

    .line 564
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0, v4}, Landroid/hardware/TvOut;->SetTvoutHdmiStatus(I)Z

    .line 585
    :cond_2
    :goto_0
    return-void

    .line 568
    :cond_3
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isHdmiEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->TvoutHDMIIsSuspended()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    const-string v0, "TvOut-Observer"

    const-string v0, "Call HDMI resume"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    sput-boolean v4, Lcom/android/server/TvOutService;->mIsHdmiSuspend:Z

    .line 571
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsHdmiWaitResume:Z

    .line 572
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    sget v1, Lcom/android/server/TvOutService;->sRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->SetOrientation(I)V

    .line 573
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0, v2}, Landroid/hardware/TvOut;->TvOutResume(I)V

    .line 574
    sget-boolean v0, Lcom/android/server/TvOutService;->mHdmiCableConnected:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 583
    :cond_4
    const-string v0, "TvOut-Observer"

    const-string v0, "TvoutResume not need"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TvoutSetOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 443
    const-string v0, "TvOut-Observer"

    const-string v1, "TvoutSetOrientation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0, p1}, Landroid/hardware/TvOut;->SetOrientation(I)V

    .line 445
    return-void
.end method

.method public TvoutSetWakeMode(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "mode"

    .prologue
    const-string v4, "TvOut-Observer"

    .line 357
    const/4 v1, 0x0

    .line 358
    .local v1, washeld:Z
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 359
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    const/4 v1, 0x1

    .line 361
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 363
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 365
    :cond_1
    const-string v2, "TvOut-Observer"

    const-string v2, "TvoutSetWakeMode is called  SCREEN_ON_DEBUG"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 368
    .local v0, pm:Landroid/os/PowerManager;
    const/high16 v2, 0x2000

    or-int/2addr v2, p2

    const-string v3, "TvOut-Observer"

    invoke-virtual {v0, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 369
    const-string v2, "TvOut-Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TvoutSetWakeMode setting the mode SCREEN_ON_DEBUG mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_2

    .line 373
    const-string v2, "TvOut-Observer"

    const-string v2, "TvoutSetWakeMode mWakeLock is null SCREEN_ON_DEBUG"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_2
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 376
    if-eqz v1, :cond_3

    .line 377
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 379
    :cond_3
    return-void
.end method

.method public TvoutSuspend(Ljava/lang/String;)V
    .locals 2
    .parameter "tvText"

    .prologue
    .line 489
    const/4 v0, 0x0

    .line 491
    .local v0, tvouthdmisuspendInit:Z
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1}, Landroid/hardware/TvOut;->isSuspended()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 493
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/TvOutService;->TvoutAnalogSuspend(Ljava/lang/String;)V

    .line 500
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1}, Landroid/hardware/TvOut;->isHdmiSuspended()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 502
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/TvOutService;->TvoutHDMISuspend(Ljava/lang/String;)V

    .line 503
    const/4 v0, 0x0

    .line 505
    :cond_3
    return-void

    .line 495
    :cond_4
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1}, Landroid/hardware/TvOut;->isHdmiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 598
    const-string v0, "android.intent.action.locale.changed"

    return-object v0
.end method

.method init()V
    .locals 3

    .prologue
    .line 186
    new-instance v1, Landroid/hardware/TvOut;

    invoke-direct {v1}, Landroid/hardware/TvOut;-><init>()V

    iput-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    .line 187
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/TvOutService;->mHandler:Landroid/os/Handler;

    .line 195
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 196
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.locale.changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v1, "android.intent.action.HDMI_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TvOutService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    iget-object v1, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, Lcom/android/server/TvOutService;->TvoutSetWakeMode(Landroid/content/Context;I)V

    .line 201
    return-void
.end method

.method public setVideoScaleType(I)V
    .locals 3
    .parameter "scaleType"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "TvOut-Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoScaleType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0, p1}, Landroid/hardware/TvOut;->setVideoScaleType(I)V

    .line 208
    :cond_0
    return-void
.end method
