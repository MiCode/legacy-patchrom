.class public Landroid/os/PowerManager;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManager$WakeLock;
    }
.end annotation


# static fields
.field public static final ACQUIRE_CAUSES_WAKEUP:I = 0x10000000

.field public static final FULL_WAKE_LOCK:I = 0x1a

.field private static final LOCK_MASK:I = 0x3f

.field public static final ON_AFTER_RELEASE:I = 0x20000000

.field public static final PARTIAL_WAKE_LOCK:I = 0x1

.field public static final PROXIMITY_SCREEN_OFF_WAKE_LOCK:I = 0x20

.field public static final SCREEN_BRIGHT_WAKE_LOCK:I = 0xa

.field public static final SCREEN_DIM_WAKE_LOCK:I = 0x6

.field private static final SKT_DM_LOCK_MODE:Ljava/lang/String; = "persist.sys.lock_mode"

.field private static final SKT_DM_LOCK_MSG:Ljava/lang/String; = "persist.sys.lock_mode_msg"

.field private static final SKT_DM_LOCK_MSG_MAX:I = 0x5b

.field private static final TAG:Ljava/lang/String; = "PowerManager"

.field public static final WAIT_FOR_PROXIMITY_NEGATIVE:I = 0x1

.field private static final WAKE_BIT_CPU_STRONG:I = 0x1

.field private static final WAKE_BIT_CPU_WEAK:I = 0x2

.field private static final WAKE_BIT_KEYBOARD_BRIGHT:I = 0x10

.field private static final WAKE_BIT_PROXIMITY_SCREEN_OFF:I = 0x20

.field private static final WAKE_BIT_SCREEN_BRIGHT:I = 0x8

.field private static final WAKE_BIT_SCREEN_DIM:I = 0x4


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Landroid/os/IPowerManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    return-void
.end method

.method public constructor <init>(Landroid/os/IPowerManager;Landroid/os/Handler;)V
    .locals 0
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput-object p1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    .line 560
    iput-object p2, p0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    .line 561
    return-void
.end method


# virtual methods
.method public acquireDVFSlock(II)I
    .locals 2
    .parameter "level"
    .parameter "timeMS"

    .prologue
    .line 447
    const/4 v0, -0x1

    .line 449
    .local v0, ret:I
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPowerManager;->acquireDVFSlock(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 454
    :goto_0
    return v0

    .line 451
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getLockState()Z
    .locals 2

    .prologue
    .line 612
    const-string/jumbo v0, "persist.sys.lock_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPlugType()I
    .locals 2

    .prologue
    .line 431
    const/4 v0, 0x0

    .line 433
    .local v0, plugType:I
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->getPlugType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 438
    :goto_0
    return v0

    .line 435
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSupportedWakeLockFlags()I
    .locals 2

    .prologue
    .line 508
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->getSupportedWakeLockFlags()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 510
    :goto_0
    return v1

    .line 509
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 510
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public goToSleep(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 468
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->goToSleep(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :goto_0
    return-void

    .line 469
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public hideLocked()V
    .locals 2

    .prologue
    .line 601
    const-string/jumbo v0, "persist.sys.lock_mode"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string/jumbo v0, "persist.sys.lock_mode_msg"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 605
    return-void
.end method

.method public isScreenOn()Z
    .locals 2

    .prologue
    .line 528
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isScreenOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 530
    :goto_0
    return v1

    .line 529
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 530
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .locals 2
    .parameter "flags"
    .parameter "tag"

    .prologue
    .line 397
    if-nez p2, :cond_0

    .line 398
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag is null in PowerManager.newWakeLock"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_0
    new-instance v0, Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/PowerManager$WakeLock;-><init>(Landroid/os/PowerManager;ILjava/lang/String;)V

    return-object v0
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 545
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :goto_0
    return-void

    .line 546
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public rebootWithIntent()V
    .locals 3

    .prologue
    const-string v2, "PowerManager"

    .line 617
    const-string v1, "PowerManager"

    const-string v1, " Connect to Powermanagerservice"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->rebootWithIntent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :goto_0
    return-void

    .line 620
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 621
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PowerManager"

    const-string v1, "RemoteException during connecting to Powermanagerservice"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBacklightBrightness(I)V
    .locals 1
    .parameter "brightness"

    .prologue
    .line 483
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    return-void

    .line 484
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showLocked(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 3
    .parameter "enableUserUnlock"
    .parameter "userMsg"

    .prologue
    const-string/jumbo v2, "persist.sys.lock_mode_msg"

    .line 582
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 583
    const-string/jumbo v0, "persist.sys.lock_mode"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x5b

    if-ge v0, v1, :cond_0

    .line 586
    const-string/jumbo v0, "persist.sys.lock_mode_msg"

    invoke-static {v2, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :goto_0
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 595
    return-void

    .line 588
    :cond_0
    const-string/jumbo v0, "persist.sys.lock_mode_msg"

    const-string v0, "Maximum length limit exceeded"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 591
    :cond_1
    invoke-virtual {p0}, Landroid/os/PowerManager;->hideLocked()V

    goto :goto_0
.end method

.method public systemFotaReboot(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 645
    const-string v0, "PowerManager"

    const-string v1, " Connect to Powermanagerservice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->systemFotaReboot(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :goto_0
    return-void

    .line 648
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public systemPowerOff()V
    .locals 2

    .prologue
    .line 636
    const-string v0, "PowerManager"

    const-string v1, " Connect to Powermanagerservice"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->systemPowerOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    :goto_0
    return-void

    .line 639
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public systemReboot()V
    .locals 2

    .prologue
    .line 626
    const-string v0, "PowerManager"

    const-string v1, " Connect to Powermanagerservice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->systemReboot()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_0
    return-void

    .line 630
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public systemReboot_Fota()V
    .locals 1

    .prologue
    .line 570
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->systemReboot_Fota()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :goto_0
    return-void

    .line 571
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public userActivity(JZ)V
    .locals 1
    .parameter "when"
    .parameter "noChangeLights"

    .prologue
    .line 421
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IPowerManager;->userActivity(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v0

    goto :goto_0
.end method
