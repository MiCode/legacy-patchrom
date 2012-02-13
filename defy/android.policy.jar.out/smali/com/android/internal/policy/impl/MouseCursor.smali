.class Lcom/android/internal/policy/impl/MouseCursor;
.super Ljava/lang/Object;
.source "MouseCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;
    }
.end annotation


# static fields
.field private static final DISPLAY_POINTER_DELAY:I = 0x1388

.field private static TAG:Ljava/lang/String;

.field private static localLog:Z

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static mMouseCursorInputChannel:Landroid/view/InputChannel;

.field private static mMouseCursorSingleton:Lcom/android/internal/policy/impl/MouseCursor;

.field private static mMouseCursorView:Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;

.field private static mMouseCursorViewAdded:Z


# instance fields
.field private final mDismissDisplayMouseCurosr:Ljava/lang/Runnable;

.field final mLock:Ljava/lang/Object;

.field private final mMouseCursorInputHandler:Landroid/view/InputHandler;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "MouseCursor"

    sput-object v0, Lcom/android/internal/policy/impl/MouseCursor;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/android/internal/policy/impl/MouseCursor;->mHandler:Landroid/os/Handler;

    sput-object v1, Lcom/android/internal/policy/impl/MouseCursor;->mContext:Landroid/content/Context;

    sput-object v1, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorView:Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorViewAdded:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/MouseCursor;->localLog:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MouseCursor;->mWindowManager:Landroid/view/IWindowManager;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MouseCursor;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/policy/impl/MouseCursor$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MouseCursor$1;-><init>(Lcom/android/internal/policy/impl/MouseCursor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorInputHandler:Landroid/view/InputHandler;

    new-instance v0, Lcom/android/internal/policy/impl/MouseCursor$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MouseCursor$2;-><init>(Lcom/android/internal/policy/impl/MouseCursor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MouseCursor;->mDismissDisplayMouseCurosr:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorView:Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MouseCursor;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MouseCursor;->hide()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MouseCursor;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MouseCursor;->scheduleHideMouseCurosr()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/MouseCursor;->localLog:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/MouseCursor;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MouseCursor;->show()V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/policy/impl/MouseCursor;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorSingleton:Lcom/android/internal/policy/impl/MouseCursor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/MouseCursor;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/MouseCursor;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorSingleton:Lcom/android/internal/policy/impl/MouseCursor;

    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorSingleton:Lcom/android/internal/policy/impl/MouseCursor;

    return-object v0
.end method

.method private hide()V
    .locals 3

    .prologue
    sget-boolean v1, Lcom/android/internal/policy/impl/MouseCursor;->localLog:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/policy/impl/MouseCursor;->TAG:Ljava/lang/String;

    const-string v2, "hide mouse cursor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorView:Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorViewAdded:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/internal/policy/impl/MouseCursor;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerImpl;

    .local v0, wm:Landroid/view/WindowManagerImpl;
    sget-object v1, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorView:Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorViewAdded:Z

    .end local v0           #wm:Landroid/view/WindowManagerImpl;
    :cond_1
    return-void
.end method

.method private scheduleHideMouseCurosr()V
    .locals 4

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/MouseCursor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MouseCursor;->mDismissDisplayMouseCurosr:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/internal/policy/impl/MouseCursor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MouseCursor;->mDismissDisplayMouseCurosr:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private show()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    sget-object v2, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorView:Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorViewAdded:Z

    if-nez v2, :cond_0

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7df

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x118

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const-string v2, "MouseCursor"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/android/internal/policy/impl/MouseCursor;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerImpl;

    .local v1, wm:Landroid/view/WindowManagerImpl;
    sget-object v2, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorView:Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorViewAdded:Z

    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #wm:Landroid/view/WindowManagerImpl;
    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/android/internal/policy/impl/MouseCursor;->TAG:Ljava/lang/String;

    const-string v3, "Not show, mMouseCursorView is still null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public end()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MouseCursor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorInputChannel:Landroid/view/InputChannel;

    invoke-static {v1}, Landroid/view/InputQueue;->unregisterInputChannel(Landroid/view/InputChannel;)V

    sget-object v1, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorInputChannel:Landroid/view/InputChannel;

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MouseCursor;->hide()V

    sget-object v1, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorView:Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorViewAdded:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorView:Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .parameter "context"
    .parameter "handler"

    .prologue
    sput-object p1, Lcom/android/internal/policy/impl/MouseCursor;->mContext:Landroid/content/Context;

    sput-object p2, Lcom/android/internal/policy/impl/MouseCursor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MouseCursor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorView:Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/internal/policy/impl/MouseCursor;->localLog:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/policy/impl/MouseCursor;->TAG:Ljava/lang/String;

    const-string v3, "createMouseCursorView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;-><init>(Lcom/android/internal/policy/impl/MouseCursor;Landroid/content/Context;)V

    sput-object v2, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorView:Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MouseCursor;->show()V

    sget-object v2, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorInputChannel:Landroid/view/InputChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/MouseCursor;->mWindowManager:Landroid/view/IWindowManager;

    const-string v3, "MouseCursorView"

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorInputChannel:Landroid/view/InputChannel;

    sget-object v2, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorInputChannel:Landroid/view/InputChannel;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MouseCursor;->mMouseCursorInputHandler:Landroid/view/InputHandler;

    sget-object v4, Lcom/android/internal/policy/impl/MouseCursor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/view/InputQueue;->registerInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/internal/policy/impl/MouseCursor;->TAG:Ljava/lang/String;

    const-string v3, "Could not set up input monitoring channel for MouseCursor."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
