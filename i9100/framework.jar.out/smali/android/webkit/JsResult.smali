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
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/webkit/JsResult;->mProxy:Landroid/webkit/CallbackProxy;

    .line 55
    iput-boolean p2, p0, Landroid/webkit/JsResult;->mDefaultValue:Z

    .line 56
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/JsResult;->mResult:Z

    .line 42
    invoke-virtual {p0}, Landroid/webkit/JsResult;->wakeUp()V

    .line 43
    return-void
.end method

.method public final confirm()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/JsResult;->mResult:Z

    .line 50
    invoke-virtual {p0}, Landroid/webkit/JsResult;->wakeUp()V

    .line 51
    return-void
.end method

.method final getResult()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Landroid/webkit/JsResult;->mResult:Z

    return v0
.end method

.method handleDefault()V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/webkit/JsResult;->setReady()V

    .line 71
    iget-boolean v0, p0, Landroid/webkit/JsResult;->mDefaultValue:Z

    iput-boolean v0, p0, Landroid/webkit/JsResult;->mResult:Z

    .line 72
    invoke-virtual {p0}, Landroid/webkit/JsResult;->wakeUp()V

    .line 73
    return-void
.end method

.method final setReady()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/JsResult;->mReady:Z

    .line 64
    iget-boolean v0, p0, Landroid/webkit/JsResult;->mTriedToNotifyBeforeReady:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/webkit/JsResult;->wakeUp()V

    .line 67
    :cond_0
    return-void
.end method

.method protected final wakeUp()V
    .locals 2

    .prologue
    .line 77
    iget-boolean v0, p0, Landroid/webkit/JsResult;->mReady:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Landroid/webkit/JsResult;->mProxy:Landroid/webkit/CallbackProxy;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Landroid/webkit/JsResult;->mProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 80
    monitor-exit v0

    .line 84
    :goto_0
    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 82
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/JsResult;->mTriedToNotifyBeforeReady:Z

    goto :goto_0
.end method
