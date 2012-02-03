.class public Lcom/android/internal/policy/impl/PowerOffBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerOffBroadcastReceiver.java"


# static fields
.field public static final POWER_OFF_ACTION:Ljava/lang/String; = "com.android.samsungtest.PowerOff_ACTION"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isShutDownTrue()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 33
    const/4 v1, 0x0

    .line 35
    .local v1, value:I
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PowerOffBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 36
    const-string v2, "PowerOffBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShutdownValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    if-ne v1, v5, :cond_0

    move v2, v5

    .line 44
    :goto_1
    return v2

    .line 37
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 38
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 39
    const/4 v1, 0x0

    goto :goto_0

    .line 44
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/internal/policy/impl/PowerOffBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 26
    const-string v0, "PowerOffBroadcastReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PowerOffBroadcastReceiver;->isShutDownTrue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.PowerOff_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 30
    :cond_0
    return-void
.end method
