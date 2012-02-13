.class Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;
.super Landroid/os/Handler;
.source "WifiWatchdogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiWatchdogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiWatchdogHandler"
.end annotation


# static fields
.field static final ACTION_BACKGROUND_CHECK_AP:I = 0x3

.field static final ACTION_CHECK_AP:I = 0x1

.field static final ACTION_IDLE:I = 0x2

.field static final MESSAGE_DISABLE_WATCHDOG:I = 0x66

.field static final MESSAGE_DISCONNECTED:I = 0x68

.field static final MESSAGE_NETWORK_CHANGED:I = 0x67

.field static final MESSAGE_RESET:I = 0x69

.field static final MESSAGE_SLEEP:I = 0x65


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiWatchdogService;


# direct methods
.method private constructor <init>(Lcom/android/server/WifiWatchdogService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;-><init>(Lcom/android/server/WifiWatchdogService;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V

    return-void
.end method

.method private removeAllActions()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeMessages(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeMessages(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method backgroundCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .locals 3
    .parameter "ap"

    .prologue
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    #calls: Lcom/android/server/WifiWatchdogService;->isBackgroundCheckEnabled()Z
    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->access$600(Lcom/android/server/WifiWatchdogService;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    #calls: Lcom/android/server/WifiWatchdogService;->getBackgroundCheckDelayMs()I
    invoke-static {v1}, Lcom/android/server/WifiWatchdogService;->access$700(Lcom/android/server/WifiWatchdogService;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method checkAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .locals 1
    .parameter "ap"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method disableWatchdog()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method dispatchDisconnected()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V

    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method dispatchNetworkChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "ssid"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V

    const/16 v0, 0x67

    invoke-virtual {p0, v0, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .end local p0
    :goto_0
    return-void

    .restart local p0
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    #calls: Lcom/android/server/WifiWatchdogService;->handleNetworkChanged(Ljava/lang/String;)V
    invoke-static {v0, p0}, Lcom/android/server/WifiWatchdogService;->access$800(Lcom/android/server/WifiWatchdogService;Ljava/lang/String;)V

    goto :goto_0

    .restart local p0
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/server/WifiWatchdogService$AccessPoint;

    #calls: Lcom/android/server/WifiWatchdogService;->handleCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    invoke-static {v0, p0}, Lcom/android/server/WifiWatchdogService;->access$900(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_0

    .restart local p0
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/server/WifiWatchdogService$AccessPoint;

    #calls: Lcom/android/server/WifiWatchdogService;->handleBackgroundCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    invoke-static {v0, p0}, Lcom/android/server/WifiWatchdogService;->access$1000(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_0

    .restart local p0
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    #calls: Lcom/android/server/WifiWatchdogService;->handleSleep(Ljava/lang/String;)V
    invoke-static {v0, p0}, Lcom/android/server/WifiWatchdogService;->access$1100(Lcom/android/server/WifiWatchdogService;Ljava/lang/String;)V

    goto :goto_0

    .restart local p0
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    #calls: Lcom/android/server/WifiWatchdogService;->handleIdle()V
    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->access$1200(Lcom/android/server/WifiWatchdogService;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    #calls: Lcom/android/server/WifiWatchdogService;->handleIdle()V
    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->access$1200(Lcom/android/server/WifiWatchdogService;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    #calls: Lcom/android/server/WifiWatchdogService;->handleDisconnected()V
    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->access$1300(Lcom/android/server/WifiWatchdogService;)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    #calls: Lcom/android/server/WifiWatchdogService;->handleReset()V
    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->access$1400(Lcom/android/server/WifiWatchdogService;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0x3 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_5
        0x67 -> :sswitch_0
        0x68 -> :sswitch_6
        0x69 -> :sswitch_7
    .end sparse-switch
.end method

.method idle()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V

    const/16 v0, 0x69

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sleep(Ljava/lang/String;)V
    .locals 1
    .parameter "ssid"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V

    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
