.class Lcom/android/server/usb/UsbService$1;
.super Landroid/os/UEventObserver;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbService;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 14
    .parameter "event"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    invoke-static {}, Lcom/android/server/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/android/server/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USB UEVENT: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v8, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/usb/UsbService;->access$100(Lcom/android/server/usb/UsbService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    :try_start_0
    const-string v9, "SWITCH_NAME"

    invoke-virtual {p1, v9}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, name:Ljava/lang/String;
    const-string v9, "SWITCH_STATE"

    invoke-virtual {p1, v9}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .local v6, state:Ljava/lang/String;
    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, intState:I
    const-string v9, "usb_connected"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #setter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v9, v3}, Lcom/android/server/usb/UsbService;->access$202(Lcom/android/server/usb/UsbService;I)I

    iget-object v9, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mSystemReady:Z
    invoke-static {v9}, Lcom/android/server/usb/UsbService;->access$300(Lcom/android/server/usb/UsbService;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    iget-object v10, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v10}, Lcom/android/server/usb/UsbService;->access$200(Lcom/android/server/usb/UsbService;)I

    move-result v10

    if-nez v10, :cond_2

    move v10, v11

    :goto_0
    #calls: Lcom/android/server/usb/UsbService;->update(Z)V
    invoke-static {v9, v10}, Lcom/android/server/usb/UsbService;->access$400(Lcom/android/server/usb/UsbService;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3           #intState:I
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .restart local v3       #intState:I
    :cond_2
    move v10, v12

    goto :goto_0

    :cond_3
    :try_start_3
    const-string v9, "usb_configuration"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #setter for: Lcom/android/server/usb/UsbService;->mConfiguration:I
    invoke-static {v9, v3}, Lcom/android/server/usb/UsbService;->access$502(Lcom/android/server/usb/UsbService;I)I

    iget-object v9, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mSystemReady:Z
    invoke-static {v9}, Lcom/android/server/usb/UsbService;->access$300(Lcom/android/server/usb/UsbService;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    iget-object v10, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v10}, Lcom/android/server/usb/UsbService;->access$200(Lcom/android/server/usb/UsbService;)I

    move-result v10

    if-nez v10, :cond_4

    move v10, v11

    :goto_2
    #calls: Lcom/android/server/usb/UsbService;->update(Z)V
    invoke-static {v9, v10}, Lcom/android/server/usb/UsbService;->access$400(Lcom/android/server/usb/UsbService;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .end local v3           #intState:I
    :catch_0
    move-exception v9

    move-object v0, v9

    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_4
    invoke-static {}, Lcom/android/server/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not parse switch state from event "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #state:Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v9

    .restart local v3       #intState:I
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #state:Ljava/lang/String;
    :cond_4
    move v10, v12

    goto :goto_2

    .end local v3           #intState:I
    :cond_5
    :try_start_5
    const-string v9, "FUNCTION"

    invoke-virtual {p1, v9}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, function:Ljava/lang/String;
    const-string v9, "ENABLED"

    invoke-virtual {p1, v9}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, enabledStr:Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    const-string v9, "1"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v7, v11

    .local v7, what:I
    :goto_3
    iget-object v9, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/usb/UsbService;->access$600(Lcom/android/server/usb/UsbService;)Landroid/os/Handler;

    move-result-object v9

    invoke-static {v9, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .local v4, msg:Landroid/os/Message;
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/usb/UsbService;->access$600(Lcom/android/server/usb/UsbService;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .end local v4           #msg:Landroid/os/Message;
    .end local v7           #what:I
    :cond_6
    move v7, v13

    goto :goto_3
.end method
