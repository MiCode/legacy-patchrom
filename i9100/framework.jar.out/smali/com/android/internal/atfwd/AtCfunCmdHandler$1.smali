.class Lcom/android/internal/atfwd/AtCfunCmdHandler$1;
.super Ljava/lang/Thread;
.source "AtCfunCmdHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/atfwd/AtCfunCmdHandler;->handleCommand(Lcom/android/internal/atfwd/AtCmd;)Lcom/android/internal/atfwd/AtCmdResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/atfwd/AtCfunCmdHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/atfwd/AtCfunCmdHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/atfwd/AtCfunCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCfunCmdHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 73
    :try_start_0
    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 74
    .local v1, pm:Landroid/os/IPowerManager;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v1           #pm:Landroid/os/IPowerManager;
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 76
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AtCfunCmdHandler"

    const-string v3, "PowerManager service died!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
