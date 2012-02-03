.class public Lcom/android/internal/policy/impl/MTPhLockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MTPhLockReceiver.java"


# static fields
.field public static final DEACT_LOCK_ACTION:Ljava/lang/String; = "com.samsung.MT.DEACT_PHLOCK_ACTION"

.field public static final LOCK_ACTION:Ljava/lang/String; = "com.samsung.MT.PHLOCK_ACTION"

.field private static final TAG:Ljava/lang/String; = "MTPhLockReceiver"

.field private static mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLockUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MTPhLockReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static init(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "pwm"

    .prologue
    .line 33
    sput-object p0, Lcom/android/internal/policy/impl/MTPhLockReceiver;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 34
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v2, "MTPhLockReceiver"

    .line 39
    const-string v0, "MTPhLockReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive-Intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MTPhLockReceiver;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 43
    const-string v0, "com.samsung.MT.PHLOCK_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    const-string v0, "MTPhLockReceiver"

    const-string v0, "onReceive-MT.PHLOCK_ACTION"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-object v0, Lcom/android/internal/policy/impl/MTPhLockReceiver;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurnedOff(I)V

    .line 47
    sget-object v0, Lcom/android/internal/policy/impl/MTPhLockReceiver;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->enableKeyguard(Z)V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string v0, "com.samsung.MT.DEACT_PHLOCK_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "MTPhLockReceiver"

    const-string v0, "onReceive-MT.DEACT_PHLOCK_ACTION"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v0, Lcom/android/internal/policy/impl/MTPhLockReceiver;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->enableKeyguard(Z)V

    goto :goto_0
.end method
