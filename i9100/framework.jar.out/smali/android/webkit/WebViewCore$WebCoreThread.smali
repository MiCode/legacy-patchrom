.class Landroid/webkit/WebViewCore$WebCoreThread;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebCoreThread"
.end annotation


# static fields
.field private static final INITIALIZE:I = 0x0

.field private static final REDUCE_PRIORITY:I = 0x1

.field private static final RESUME_PRIORITY:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewCore$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 704
    invoke-direct {p0}, Landroid/webkit/WebViewCore$WebCoreThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-class v1, Landroid/webkit/WebViewCore;

    .line 711
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 712
    invoke-static {}, Landroid/webkit/WebViewCore;->access$400()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertNull(Ljava/lang/Object;)V

    .line 713
    const-class v0, Landroid/webkit/WebViewCore;

    monitor-enter v1

    .line 714
    :try_start_0
    new-instance v1, Landroid/webkit/WebViewCore$WebCoreThread$1;

    invoke-direct {v1, p0}, Landroid/webkit/WebViewCore$WebCoreThread$1;-><init>(Landroid/webkit/WebViewCore$WebCoreThread;)V

    invoke-static {v1}, Landroid/webkit/WebViewCore;->access$402(Landroid/os/Handler;)Landroid/os/Handler;

    .line 737
    const-class v1, Landroid/webkit/WebViewCore;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 738
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 740
    return-void

    .line 738
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
