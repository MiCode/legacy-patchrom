.class Landroid/webkit/WebSettings$EventHandler;
.super Ljava/lang/Object;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field static final PRIORITY:I = 0x1

.field static final SET_DOUBLE_TAP_TOAST_COUNT:I = 0x2

.field static final SYNC:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/webkit/WebSettings;


# direct methods
.method private constructor <init>(Landroid/webkit/WebSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebSettings;Landroid/webkit/WebSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings$EventHandler;-><init>(Landroid/webkit/WebSettings;)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/WebSettings$EventHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebSettings$EventHandler;->setRenderPriority()V

    return-void
.end method

.method static synthetic access$800(Landroid/webkit/WebSettings$EventHandler;Landroid/os/Message;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/webkit/WebSettings$EventHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebSettings$EventHandler;->createHandler()V

    return-void
.end method

.method private declared-synchronized createHandler()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/webkit/WebSettings$EventHandler;->setRenderPriority()V

    new-instance v0, Landroid/webkit/WebSettings$EventHandler$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebSettings$EventHandler$1;-><init>(Landroid/webkit/WebSettings$EventHandler;)V

    iput-object v0, p0, Landroid/webkit/WebSettings$EventHandler;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized sendMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings$EventHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebSettings$EventHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setRenderPriority()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    #getter for: Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;
    invoke-static {v1}, Landroid/webkit/WebSettings;->access$600(Landroid/webkit/WebSettings;)Landroid/webkit/WebSettings$RenderPriority;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    #getter for: Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;
    invoke-static {v1}, Landroid/webkit/WebSettings;->access$600(Landroid/webkit/WebSettings;)Landroid/webkit/WebSettings$RenderPriority;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    if-ne v1, v2, :cond_2

    const/4 v1, -0x1

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    #getter for: Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;
    invoke-static {v1}, Landroid/webkit/WebSettings;->access$600(Landroid/webkit/WebSettings;)Landroid/webkit/WebSettings$RenderPriority;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->LOW:Landroid/webkit/WebSettings$RenderPriority;

    if-ne v1, v2, :cond_0

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
