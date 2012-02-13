.class final Landroid/app/LoadedApk$ReceiverDispatcher$Args;
.super Ljava/lang/Object;
.source "LoadedApk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ReceiverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Args"
.end annotation


# instance fields
.field private mCurCode:I

.field private mCurData:Ljava/lang/String;

.field private mCurIntent:Landroid/content/Intent;

.field private mCurMap:Landroid/os/Bundle;

.field private mCurOrdered:Z

.field private mCurSticky:Z

.field final synthetic this$0:Landroid/app/LoadedApk$ReceiverDispatcher;


# direct methods
.method constructor <init>(Landroid/app/LoadedApk$ReceiverDispatcher;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$102(Landroid/app/LoadedApk$ReceiverDispatcher$Args;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$200(Landroid/app/LoadedApk$ReceiverDispatcher$Args;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurCode:I

    return v0
.end method

.method static synthetic access$202(Landroid/app/LoadedApk$ReceiverDispatcher$Args;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurCode:I

    return p1
.end method

.method static synthetic access$300(Landroid/app/LoadedApk$ReceiverDispatcher$Args;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Landroid/app/LoadedApk$ReceiverDispatcher$Args;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Landroid/app/LoadedApk$ReceiverDispatcher$Args;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurMap:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/LoadedApk$ReceiverDispatcher$Args;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurMap:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$502(Landroid/app/LoadedApk$ReceiverDispatcher$Args;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurOrdered:Z

    return p1
.end method

.method static synthetic access$602(Landroid/app/LoadedApk$ReceiverDispatcher$Args;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurSticky:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v9, v1, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .local v9, receiver:Landroid/content/BroadcastReceiver;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, mgr:Landroid/app/IActivityManager;
    iget-object v8, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .local v8, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    if-nez v9, :cond_1

    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v1, v1, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurOrdered:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v1, v1, Landroid/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    iget v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurCode:I

    iget-object v3, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurData:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurMap:Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v1, v1, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .local v6, cl:Ljava/lang/ClassLoader;
    invoke-virtual {v8, v6}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurMap:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurMap:Landroid/os/Bundle;

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/content/BroadcastReceiver;->setOrderedHint(Z)V

    iget v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurCode:I

    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurData:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurMap:Landroid/os/Bundle;

    invoke-virtual {v9, v1, v2, v3}, Landroid/content/BroadcastReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v9}, Landroid/content/BroadcastReceiver;->clearAbortBroadcast()V

    iget-boolean v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurOrdered:Z

    invoke-virtual {v9, v1}, Landroid/content/BroadcastReceiver;->setOrderedHint(Z)V

    iget-boolean v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurSticky:Z

    invoke-virtual {v9, v1}, Landroid/content/BroadcastReceiver;->setInitialStickyHint(Z)V

    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v1, v1, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v1, v8}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v6           #cl:Ljava/lang/ClassLoader;
    :cond_3
    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v1, v1, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurOrdered:Z

    if-eqz v1, :cond_0

    :try_start_2
    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v1, v1, Landroid/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    invoke-virtual {v9}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v2

    invoke-virtual {v9}, Landroid/content/BroadcastReceiver;->getResultData()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v9}, Landroid/content/BroadcastReceiver;->getAbortBroadcast()Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v7, v1

    .local v7, e:Ljava/lang/Exception;
    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v1, v1, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurOrdered:Z

    if-eqz v1, :cond_4

    :try_start_3
    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v1, v1, Landroid/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    iget v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurCode:I

    iget-object v3, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurData:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurMap:Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_1
    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v1, v1, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v1, v1, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v2, v2, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v7}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error receiving broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v3, v3, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v1

    goto :goto_1

    .end local v7           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    goto/16 :goto_0
.end method
