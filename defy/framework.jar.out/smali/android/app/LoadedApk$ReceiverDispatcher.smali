.class final Landroid/app/LoadedApk$ReceiverDispatcher;
.super Ljava/lang/Object;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReceiverDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LoadedApk$ReceiverDispatcher$Args;,
        Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;
    }
.end annotation


# instance fields
.field final mActivityThread:Landroid/os/Handler;

.field final mContext:Landroid/content/Context;

.field final mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

.field final mInstrumentation:Landroid/app/Instrumentation;

.field final mLocation:Landroid/app/IntentReceiverLeaked;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field final mRegistered:Z

.field mUnregisterLocation:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V
    .locals 2
    .parameter "receiver"
    .parameter "context"
    .parameter "activityThread"
    .parameter "instrumentation"
    .parameter "registered"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Handler must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;

    if-nez p5, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, p0, v1}, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;-><init>(Landroid/app/LoadedApk$ReceiverDispatcher;Z)V

    iput-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    iput-object p3, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mActivityThread:Landroid/os/Handler;

    iput-object p4, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    iput-boolean p5, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    new-instance v0, Landroid/app/IntentReceiverLeaked;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/IntentReceiverLeaked;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mLocation:Landroid/app/IntentReceiverLeaked;

    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mLocation:Landroid/app/IntentReceiverLeaked;

    invoke-virtual {v0}, Landroid/app/IntentReceiverLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method getIIntentReceiver()Landroid/content/IIntentReceiver;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    return-object v0
.end method

.method getIntentReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method getLocation()Landroid/app/IntentReceiverLeaked;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mLocation:Landroid/app/IntentReceiverLeaked;

    return-object v0
.end method

.method getUnregisterLocation()Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mUnregisterLocation:Ljava/lang/RuntimeException;

    return-object v0
.end method

.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 7
    .parameter "intent"
    .parameter "resultCode"
    .parameter "data"
    .parameter "extras"
    .parameter "ordered"
    .parameter "sticky"

    .prologue
    new-instance v6, Landroid/app/LoadedApk$ReceiverDispatcher$Args;

    invoke-direct {v6, p0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;-><init>(Landroid/app/LoadedApk$ReceiverDispatcher;)V

    .local v6, args:Landroid/app/LoadedApk$ReceiverDispatcher$Args;
    #setter for: Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;
    invoke-static {v6, p1}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->access$102(Landroid/app/LoadedApk$ReceiverDispatcher$Args;Landroid/content/Intent;)Landroid/content/Intent;

    #setter for: Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurCode:I
    invoke-static {v6, p2}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->access$202(Landroid/app/LoadedApk$ReceiverDispatcher$Args;I)I

    #setter for: Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurData:Ljava/lang/String;
    invoke-static {v6, p3}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->access$302(Landroid/app/LoadedApk$ReceiverDispatcher$Args;Ljava/lang/String;)Ljava/lang/String;

    #setter for: Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurMap:Landroid/os/Bundle;
    invoke-static {v6, p4}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->access$402(Landroid/app/LoadedApk$ReceiverDispatcher$Args;Landroid/os/Bundle;)Landroid/os/Bundle;

    #setter for: Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurOrdered:Z
    invoke-static {v6, p5}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->access$502(Landroid/app/LoadedApk$ReceiverDispatcher$Args;Z)Z

    #setter for: Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurSticky:Z
    invoke-static {v6, p6}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->access$602(Landroid/app/LoadedApk$ReceiverDispatcher$Args;Z)Z

    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mActivityThread:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v1, :cond_0

    if-eqz p5, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, mgr:Landroid/app/IActivityManager;
    :try_start_0
    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    #getter for: Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurCode:I
    invoke-static {v6}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->access$200(Landroid/app/LoadedApk$ReceiverDispatcher$Args;)I

    move-result v2

    #getter for: Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurData:Ljava/lang/String;
    invoke-static {v6}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->access$300(Landroid/app/LoadedApk$ReceiverDispatcher$Args;)Ljava/lang/String;

    move-result-object v3

    #getter for: Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurMap:Landroid/os/Bundle;
    invoke-static {v6}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->access$400(Landroid/app/LoadedApk$ReceiverDispatcher$Args;)Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #mgr:Landroid/app/IActivityManager;
    :cond_0
    :goto_0
    return-void

    .restart local v0       #mgr:Landroid/app/IActivityManager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method setUnregisterLocation(Ljava/lang/RuntimeException;)V
    .locals 0
    .parameter "ex"

    .prologue
    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mUnregisterLocation:Ljava/lang/RuntimeException;

    return-void
.end method

.method validate(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6
    .parameter "context"
    .parameter "activityThread"

    .prologue
    const-string v5, "Receiver "

    const-string v4, ")"

    const-string v3, " now "

    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered with differing Context (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mActivityThread:Landroid/os/Handler;

    if-eq v0, p2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered with differing handler (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mActivityThread:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method
