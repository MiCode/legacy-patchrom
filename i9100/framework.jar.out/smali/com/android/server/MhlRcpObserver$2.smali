.class Lcom/android/server/MhlRcpObserver$2;
.super Ljava/lang/Object;
.source "MhlRcpObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MhlRcpObserver;->SendKeyEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MhlRcpObserver;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcom/android/server/MhlRcpObserver;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/server/MhlRcpObserver$2;->this$0:Lcom/android/server/MhlRcpObserver;

    iput p2, p0, Lcom/android/server/MhlRcpObserver$2;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 390
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 391
    .local v2, now:J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/MhlRcpObserver$2;->val$event:I

    move v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x3

    move-wide v4, v2

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 392
    .local v1, down:Landroid/view/KeyEvent;
    new-instance v4, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/MhlRcpObserver$2;->val$event:I

    move v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x3

    move-wide v5, v2

    move-wide v7, v2

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 393
    .local v4, up:Landroid/view/KeyEvent;
    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    .line 397
    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    .end local v1           #down:Landroid/view/KeyEvent;
    .end local v2           #now:J
    .end local v4           #up:Landroid/view/KeyEvent;
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v5

    move-object/from16 v16, v5

    .line 401
    .local v16, e:Landroid/os/RemoteException;
    const-string v5, "Input"

    const-string v6, "DeadOjbectException"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
