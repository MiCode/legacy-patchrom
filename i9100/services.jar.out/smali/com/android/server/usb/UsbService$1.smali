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
    .line 172
    iput-object p1, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 17
    .parameter "event"

    .prologue
    .line 175
    invoke-static {}, Lcom/android/server/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 176
    invoke-static {}, Lcom/android/server/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "USB UEVENT: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    move-object v13, v0

    #getter for: Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;
    invoke-static {v13}, Lcom/android/server/usb/UsbService;->access$100(Lcom/android/server/usb/UsbService;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 180
    :try_start_0
    const-string v14, "ACTION"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, action:Ljava/lang/String;
    const-string v14, "DEVPATH"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, devPath:Ljava/lang/String;
    const-string v14, "STATE"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 183
    .local v10, state:Ljava/lang/String;
    const-string v14, "SWITCH_NAME"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 184
    .local v9, name:Ljava/lang/String;
    const-string v14, "SWITCH_STATE"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 185
    .local v11, switchState:Ljava/lang/String;
    if-eqz v9, :cond_5

    if-eqz v11, :cond_5

    .line 187
    :try_start_1
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 188
    .local v7, intState:I
    const-string v14, "usb_connected"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 189
    invoke-static {}, Lcom/android/server/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "usb_connected changed"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    move-object v14, v0

    #setter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v14, v7}, Lcom/android/server/usb/UsbService;->access$202(Lcom/android/server/usb/UsbService;I)I

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    move-object v14, v0

    #getter for: Lcom/android/server/usb/UsbService;->mSystemReady:Z
    invoke-static {v14}, Lcom/android/server/usb/UsbService;->access$300(Lcom/android/server/usb/UsbService;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    move-object v15, v0

    #getter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v15}, Lcom/android/server/usb/UsbService;->access$200(Lcom/android/server/usb/UsbService;)I

    move-result v15

    if-nez v15, :cond_2

    const/4 v15, 0x1

    :goto_0
    #calls: Lcom/android/server/usb/UsbService;->update(Z)V
    invoke-static {v14, v15}, Lcom/android/server/usb/UsbService;->access$400(Lcom/android/server/usb/UsbService;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 219
    .end local v7           #intState:I
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    return-void

    .line 193
    .restart local v7       #intState:I
    :cond_2
    const/4 v15, 0x0

    goto :goto_0

    .line 195
    :cond_3
    :try_start_3
    const-string v14, "usb_configuration"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 196
    invoke-static {}, Lcom/android/server/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "usb_configuration changed"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    move-object v14, v0

    #setter for: Lcom/android/server/usb/UsbService;->mConfiguration:I
    invoke-static {v14, v7}, Lcom/android/server/usb/UsbService;->access$502(Lcom/android/server/usb/UsbService;I)I

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    move-object v14, v0

    #getter for: Lcom/android/server/usb/UsbService;->mSystemReady:Z
    invoke-static {v14}, Lcom/android/server/usb/UsbService;->access$300(Lcom/android/server/usb/UsbService;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    move-object v15, v0

    #getter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v15}, Lcom/android/server/usb/UsbService;->access$200(Lcom/android/server/usb/UsbService;)I

    move-result v15

    if-nez v15, :cond_4

    const/4 v15, 0x1

    :goto_2
    #calls: Lcom/android/server/usb/UsbService;->update(Z)V
    invoke-static {v14, v15}, Lcom/android/server/usb/UsbService;->access$400(Lcom/android/server/usb/UsbService;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 203
    .end local v7           #intState:I
    :catch_0
    move-exception v14

    move-object v4, v14

    .line 204
    .local v4, e:Ljava/lang/NumberFormatException;
    :try_start_4
    invoke-static {}, Lcom/android/server/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not parse switch state from event "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 219
    .end local v2           #action:Ljava/lang/String;
    .end local v3           #devPath:Ljava/lang/String;
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #state:Ljava/lang/String;
    .end local v11           #switchState:Ljava/lang/String;
    :catchall_0
    move-exception v14

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v14

    .line 200
    .restart local v2       #action:Ljava/lang/String;
    .restart local v3       #devPath:Ljava/lang/String;
    .restart local v7       #intState:I
    .restart local v9       #name:Ljava/lang/String;
    .restart local v10       #state:Ljava/lang/String;
    .restart local v11       #switchState:Ljava/lang/String;
    :cond_4
    const/4 v15, 0x0

    goto :goto_2

    .line 207
    .end local v7           #intState:I
    :cond_5
    :try_start_5
    const-string v14, "FUNCTION"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 208
    .local v6, function:Ljava/lang/String;
    const-string v14, "ENABLED"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 209
    .local v5, enabledStr:Ljava/lang/String;
    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    .line 212
    const-string v14, "1"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v14, 0x1

    move v12, v14

    .line 214
    .local v12, what:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    move-object v14, v0

    #getter for: Lcom/android/server/usb/UsbService;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/server/usb/UsbService;->access$600(Lcom/android/server/usb/UsbService;)Landroid/os/Handler;

    move-result-object v14

    invoke-static {v14, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    .line 215
    .local v8, msg:Landroid/os/Message;
    iput-object v6, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    move-object v14, v0

    #getter for: Lcom/android/server/usb/UsbService;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/server/usb/UsbService;->access$600(Lcom/android/server/usb/UsbService;)Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 212
    .end local v8           #msg:Landroid/os/Message;
    .end local v12           #what:I
    :cond_6
    const/4 v14, 0x2

    move v12, v14

    goto :goto_3
.end method
