.class public abstract Landroid/content/BroadcastReceiver;
.super Ljava/lang/Object;
.source "BroadcastReceiver.java"


# instance fields
.field private mAbortBroadcast:Z

.field private mDebugUnregister:Z

.field private mInitialStickyHint:Z

.field private mOrderedHint:Z

.field private mResultCode:I

.field private mResultData:Ljava/lang/String;

.field private mResultExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final abortBroadcast()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/BroadcastReceiver;->mAbortBroadcast:Z

    return-void
.end method

.method checkSynchronousHint()V
    .locals 3

    .prologue
    iget-boolean v1, p0, Landroid/content/BroadcastReceiver;->mOrderedHint:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/content/BroadcastReceiver;->mInitialStickyHint:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BroadcastReceiver trying to return result during a non-ordered broadcast"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "BroadcastReceiver"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final clearAbortBroadcast()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/BroadcastReceiver;->mAbortBroadcast:Z

    return-void
.end method

.method public final getAbortBroadcast()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver;->mAbortBroadcast:Z

    return v0
.end method

.method public final getDebugUnregister()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver;->mDebugUnregister:Z

    return v0
.end method

.method public final getResultCode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/content/BroadcastReceiver;->mResultCode:I

    return v0
.end method

.method public final getResultData()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mResultData:Ljava/lang/String;

    return-object v0
.end method

.method public final getResultExtras(Z)Landroid/os/Bundle;
    .locals 2
    .parameter "makeMap"

    .prologue
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mResultExtras:Landroid/os/Bundle;

    .local v0, e:Landroid/os/Bundle;
    if-nez p1, :cond_0

    move-object v1, v0

    .end local v0           #e:Landroid/os/Bundle;
    .local v1, e:Landroid/os/Bundle;
    :goto_0
    return-object v1

    .end local v1           #e:Landroid/os/Bundle;
    .restart local v0       #e:Landroid/os/Bundle;
    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    .end local v0           #e:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0       #e:Landroid/os/Bundle;
    iput-object v0, p0, Landroid/content/BroadcastReceiver;->mResultExtras:Landroid/os/Bundle;

    :cond_1
    move-object v1, v0

    .end local v0           #e:Landroid/os/Bundle;
    .restart local v1       #e:Landroid/os/Bundle;
    goto :goto_0
.end method

.method public final isInitialStickyBroadcast()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver;->mInitialStickyHint:Z

    return v0
.end method

.method public final isOrderedBroadcast()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver;->mOrderedHint:Z

    return v0
.end method

.method public abstract onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public peekService(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "myContext"
    .parameter "service"

    .prologue
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, am:Landroid/app/IActivityManager;
    const/4 v1, 0x0

    .local v1, binder:Landroid/os/IBinder;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Landroid/app/IActivityManager;->peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public final setDebugUnregister(Z)V
    .locals 0
    .parameter "debug"

    .prologue
    iput-boolean p1, p0, Landroid/content/BroadcastReceiver;->mDebugUnregister:Z

    return-void
.end method

.method public final setInitialStickyHint(Z)V
    .locals 0
    .parameter "isInitialSticky"

    .prologue
    iput-boolean p1, p0, Landroid/content/BroadcastReceiver;->mInitialStickyHint:Z

    return-void
.end method

.method public final setOrderedHint(Z)V
    .locals 0
    .parameter "isOrdered"

    .prologue
    iput-boolean p1, p0, Landroid/content/BroadcastReceiver;->mOrderedHint:Z

    return-void
.end method

.method public final setResult(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter "code"
    .parameter "data"
    .parameter "extras"

    .prologue
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    iput p1, p0, Landroid/content/BroadcastReceiver;->mResultCode:I

    iput-object p2, p0, Landroid/content/BroadcastReceiver;->mResultData:Ljava/lang/String;

    iput-object p3, p0, Landroid/content/BroadcastReceiver;->mResultExtras:Landroid/os/Bundle;

    return-void
.end method

.method public final setResultCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    iput p1, p0, Landroid/content/BroadcastReceiver;->mResultCode:I

    return-void
.end method

.method public final setResultData(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    iput-object p1, p0, Landroid/content/BroadcastReceiver;->mResultData:Ljava/lang/String;

    return-void
.end method

.method public final setResultExtras(Landroid/os/Bundle;)V
    .locals 0
    .parameter "extras"

    .prologue
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    iput-object p1, p0, Landroid/content/BroadcastReceiver;->mResultExtras:Landroid/os/Bundle;

    return-void
.end method
