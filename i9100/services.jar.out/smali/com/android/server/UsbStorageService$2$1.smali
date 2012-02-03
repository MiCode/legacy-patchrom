.class Lcom/android/server/UsbStorageService$2$1;
.super Ljava/lang/Thread;
.source "UsbStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/UsbStorageService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/UsbStorageService$2;


# direct methods
.method constructor <init>(Lcom/android/server/UsbStorageService$2;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/UsbStorageService$2$1;->this$1:Lcom/android/server/UsbStorageService$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 130
    const/4 v3, 0x0

    .line 132
    .local v3, bfind:Z
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->isUsbHostStorageInsalled()Z

    move-result v14

    if-nez v14, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const/16 v10, 0xc

    .local v10, retries:I
    :goto_1
    if-lez v10, :cond_3

    .line 135
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryUsbHost()Ljava/io/File;

    move-result-object v11

    .line 136
    .local v11, tmpFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-nez v14, :cond_2

    .line 138
    const-wide/16 v14, 0x3e8

    invoke-static {v14, v15}, Landroid/os/SystemClock;->sleep(J)V

    .line 134
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 140
    :cond_2
    const-string v14, "UsbStorageService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mBroadcastReceiver :: \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' find "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v3, 0x1

    .line 146
    .end local v11           #tmpFile:Ljava/io/File;
    :cond_3
    if-eqz v3, :cond_0

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UsbStorageService$2$1;->this$1:Lcom/android/server/UsbStorageService$2;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/server/UsbStorageService$2;->this$0:Lcom/android/server/UsbStorageService;

    #calls: Lcom/android/server/UsbStorageService;->waitForReady()V
    invoke-static {v14}, Lcom/android/server/UsbStorageService;->access$200(Lcom/android/server/UsbStorageService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UsbStorageService$2$1;->this$1:Lcom/android/server/UsbStorageService$2;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/server/UsbStorageService$2;->this$0:Lcom/android/server/UsbStorageService;

    #getter for: Lcom/android/server/UsbStorageService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v14}, Lcom/android/server/UsbStorageService;->access$300(Lcom/android/server/UsbStorageService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v14

    const-string v15, "volume list disk"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x6e

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 159
    .local v1, Disks:[Ljava/lang/String;
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    :try_start_2
    array-length v8, v2

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_2
    if-ge v7, v8, :cond_0

    aget-object v13, v2, v7

    .line 160
    .local v13, volstr:Ljava/lang/String;
    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 161
    .local v12, tok:[Ljava/lang/String;
    const/4 v14, 0x0

    aget-object v4, v12, v14

    .line 162
    .local v4, diskLabel:Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v14, v12, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 164
    .local v9, nParti:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UsbStorageService$2$1;->this$1:Lcom/android/server/UsbStorageService$2;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/server/UsbStorageService$2;->this$0:Lcom/android/server/UsbStorageService;

    #calls: Lcom/android/server/UsbStorageService;->updatePartitionsList(Ljava/lang/String;)V
    invoke-static {v14, v4}, Lcom/android/server/UsbStorageService;->access$400(Lcom/android/server/UsbStorageService;Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UsbStorageService$2$1;->this$1:Lcom/android/server/UsbStorageService$2;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/server/UsbStorageService$2;->this$0:Lcom/android/server/UsbStorageService;

    const-string v15, "disk"

    #calls: Lcom/android/server/UsbStorageService;->doMountVolume(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v14, v4, v15}, Lcom/android/server/UsbStorageService;->access$500(Lcom/android/server/UsbStorageService;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 159
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 153
    .end local v1           #Disks:[Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #diskLabel:Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #nParti:I
    .end local v12           #tok:[Ljava/lang/String;
    .end local v13           #volstr:Ljava/lang/String;
    :catch_0
    move-exception v14

    move-object v5, v14

    .line 154
    .local v5, e:Lcom/android/server/NativeDaemonConnectorException;
    :try_start_3
    const-string v14, "UsbStorageService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mBroadcastReceiver :: NativeDaemonConnectorException "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 170
    .end local v5           #e:Lcom/android/server/NativeDaemonConnectorException;
    .end local v10           #retries:I
    :catch_1
    move-exception v14

    move-object v6, v14

    .line 171
    .local v6, ex:Ljava/lang/Exception;
    const-string v14, "UsbStorageService"

    const-string v15, "Boot-time usbStorage exception"

    invoke-static {v14, v15, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 167
    .end local v6           #ex:Ljava/lang/Exception;
    .restart local v1       #Disks:[Ljava/lang/String;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v10       #retries:I
    :catch_2
    move-exception v14

    move-object v5, v14

    .line 168
    .local v5, e:Ljava/lang/Exception;
    :try_start_4
    const-string v14, "UsbStorageService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mBroadcastReceiver ::  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0
.end method
