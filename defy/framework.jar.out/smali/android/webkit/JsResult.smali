.class public Landroid/webkit/JsResult;
.super Ljava/lang/Object;
.source "JsResult.java"


# instance fields
.field private final mDefaultValue:Z

.field protected final mProxy:Landroid/webkit/CallbackProxy;

.field private mReady:Z

.field protected mResult:Z

.field private mTriedToNotifyBeforeReady:Z


# direct methods
.method constructor <init>(Landroid/webkit/CallbackProxy;Z)V
    .locals 0
    .parameter "proxy"
    .parameter "defaultVal"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkit/JsResult;->mProxy:Landroid/webkit/CallbackProxy;

    iput-boolean p2, p0, Landroid/webkit/JsResult;->mDefaultValue:Z

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/JsResult;->mResult:Z

    invoke-virtual {p0}, Landroid/webkit/JsResult;->wakeUp()V

    return-void
.end method

.method public final confirm()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/JsResult;->mResult:Z

    invoke-virtual {p0}, Landroid/webkit/JsResult;->wakeUp()V

    return-void
.end method

.method final getResult()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/JsResult;->mResult:Z

    return v0
.end method

.method handleDefault()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/webkit/JsResult;->setReady()V

    iget-boolean v0, p0, Landroid/webkit/JsResult;->mDefaultValue:Z

    iput-boolean v0, p0, Landroid/webkit/JsResult;->mResult:Z

    invoke-virtual {p0}, Landroid/webkit/JsResult;->wakeUp()V

    return-void
.end method

.method final setReady()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/JsResult;->mReady:Z

    iget-boolean v0, p0, Landroid/webkit/JsResult;->mTriedToNotifyBeforeReady:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/JsResult;->wakeUp()V

    :cond_0
    return-void
.end method

.method protected final wakeUp()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/webkit/JsResult;->mReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/JsResult;->mProxy:Landroid/webkit/CallbackProxy;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/webkit/JsResult;->mProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/JsResult;->mTriedToNotifyBeforeReady:Z

    goto :goto_0
.end method
