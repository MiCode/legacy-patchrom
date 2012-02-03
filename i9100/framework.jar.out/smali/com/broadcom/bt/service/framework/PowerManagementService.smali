.class public Lcom/broadcom/bt/service/framework/PowerManagementService;
.super Lcom/broadcom/bt/service/framework/IPowerManager$Stub;
.source "PowerManagementService.java"


# static fields
.field private static final BTOFF_FMOFF:I = 0x0

.field private static final BTOFF_FMON:I = 0x2

.field private static final BTON_FMOFF:I = 0x1

.field private static final BTON_FMON:I = 0x3

.field private static final DBG:Z = true

.field private static final MESSAGE_BT_BOOTUP:I = 0x5

.field public static final SERVICE_NAME:Ljava/lang/String; = "bt_fm_radio"

.field private static final TAG:Ljava/lang/String; = "PowerManagmentService"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 29
    invoke-static {}, Lcom/broadcom/bt/service/framework/PowerManagementService;->classInitNative()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/IPowerManager$Stub;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/PowerManagementService;->mContext:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->initializeNativeDataNative()V

    .line 35
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native disableBtNative()I
.end method

.method private native disableFmNative()I
.end method

.method private native enableBtNative()I
.end method

.method private native enableFmNative()I
.end method

.method private native getCurrentStateNative()I
.end method

.method private native initializeNativeDataNative()V
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 97
    const-string v0, "PowerManagmentService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method


# virtual methods
.method public disableBt()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 66
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->disableBtNative()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    .line 70
    :goto_0
    return v1

    .line 66
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "PowerManagmentService"

    const-string v2, "Unable to disable BT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 70
    goto :goto_0
.end method

.method public disableFm()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->disableFmNative()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    .line 52
    :goto_0
    return v1

    .line 48
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "PowerManagmentService"

    const-string v2, "Unable to disable FM"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 52
    goto :goto_0
.end method

.method public enableBt()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->enableBtNative()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    .line 61
    :goto_0
    return v1

    .line 57
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "PowerManagmentService"

    const-string v2, "Unable to enbale BT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 61
    goto :goto_0
.end method

.method public enableFm()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->enableFmNative()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    .line 42
    :goto_0
    return v1

    .line 39
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "PowerManagmentService"

    const-string v2, "Unable to enable FM"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 42
    goto :goto_0
.end method

.method public isBtEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 86
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->getCurrentStateNative()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 87
    .local v0, mCurrentState:I
    if-eq v0, v3, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    move v2, v3

    .line 92
    .end local v0           #mCurrentState:I
    :goto_0
    return v2

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "PowerManagmentService"

    const-string v3, "Unable to get current BT state"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isfmEnabled()Z
    .locals 4

    .prologue
    .line 75
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->getCurrentStateNative()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 76
    .local v0, mCurrentState:I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 77
    :cond_0
    const/4 v2, 0x1

    .line 81
    .end local v0           #mCurrentState:I
    :goto_0
    return v2

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "PowerManagmentService"

    const-string/jumbo v3, "unable to get current FM state"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
