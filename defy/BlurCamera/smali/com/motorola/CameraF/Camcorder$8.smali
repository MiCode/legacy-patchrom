.class Lcom/motorola/CameraF/Camcorder$8;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CameraF/Camcorder;->stopVideoRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/Camcorder;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 3647
    iput-object p1, p0, Lcom/motorola/CameraF/Camcorder$8;->this$0:Lcom/motorola/CameraF/Camcorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-string v11, "Failed to Close File"

    const-string v10, "Closing File Handle"

    const-string v9, "MotoCamcorder"

    .line 3649
    const/4 v3, 0x0

    .line 3651
    .local v3, file:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/motorola/CameraF/Camcorder$8;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;
    invoke-static {v7}, Lcom/motorola/CameraF/Camcorder;->access$1900(Lcom/motorola/CameraF/Camcorder;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, "r"

    invoke-direct {v4, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #file:Ljava/io/RandomAccessFile;
    .local v4, file:Ljava/io/RandomAccessFile;
    move-object v3, v4

    .line 3656
    .end local v4           #file:Ljava/io/RandomAccessFile;
    .restart local v3       #file:Ljava/io/RandomAccessFile;
    :goto_0
    const/4 v0, 0x0

    .line 3657
    .local v0, buffer:B
    if-eqz v3, :cond_1

    .line 3660
    const-wide/16 v6, 0x0

    :try_start_1
    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 3661
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    .line 3663
    :goto_1
    if-nez v0, :cond_0

    iget-object v6, p0, Lcom/motorola/CameraF/Camcorder$8;->this$0:Lcom/motorola/CameraF/Camcorder;

    iget-object v6, v6, Lcom/motorola/CameraF/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3665
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 3666
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v0

    goto :goto_1

    .line 3652
    .end local v0           #buffer:B
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 3654
    .local v2, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3669
    .end local v2           #e1:Ljava/io/FileNotFoundException;
    .restart local v0       #buffer:B
    :cond_0
    :goto_2
    if-eqz v0, :cond_2

    .line 3671
    const-wide/16 v6, 0x0

    :try_start_2
    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 3672
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    .line 3673
    iget-object v6, p0, Lcom/motorola/CameraF/Camcorder$8;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x72

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v0, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 3674
    .local v5, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/motorola/CameraF/Camcorder$8;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3675
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_2

    .line 3679
    .end local v5           #msg:Landroid/os/Message;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 3681
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3689
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 3694
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_3
    const/4 v3, 0x0

    .line 3695
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_1

    const-string v6, "MotoCamcorder"

    const-string v6, "Closing File Handle"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3698
    :cond_1
    :goto_4
    return-void

    .line 3689
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 3694
    :goto_5
    const/4 v3, 0x0

    .line 3695
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_1

    const-string v6, "MotoCamcorder"

    const-string v6, "Closing File Handle"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3690
    :catch_2
    move-exception v1

    .line 3691
    .local v1, e:Ljava/io/IOException;
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_3

    const-string v6, "MotoCamcorder"

    const-string v6, "Failed to Close File"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    :cond_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 3690
    .local v1, e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v1

    .line 3691
    .local v1, e:Ljava/io/IOException;
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_4

    const-string v6, "MotoCamcorder"

    const-string v6, "Failed to Close File"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    :cond_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 3682
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v6

    move-object v1, v6

    .line 3683
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3689
    :try_start_7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 3694
    :goto_6
    const/4 v3, 0x0

    .line 3695
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_1

    const-string v6, "MotoCamcorder"

    const-string v6, "Closing File Handle"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3690
    :catch_5
    move-exception v1

    .line 3691
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_5

    const-string v6, "MotoCamcorder"

    const-string v6, "Failed to Close File"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    :cond_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 3684
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v6

    move-object v1, v6

    .line 3686
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3689
    :try_start_9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 3694
    .end local v1           #e:Ljava/lang/InterruptedException;
    :goto_7
    const/4 v3, 0x0

    .line 3695
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_1

    const-string v6, "MotoCamcorder"

    const-string v6, "Closing File Handle"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3690
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :catch_7
    move-exception v1

    .line 3691
    .local v1, e:Ljava/io/IOException;
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_6

    const-string v6, "MotoCamcorder"

    const-string v6, "Failed to Close File"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    :cond_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 3688
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 3689
    :try_start_a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 3694
    :goto_8
    const/4 v3, 0x0

    .line 3695
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_7

    const-string v7, "MotoCamcorder"

    const-string v7, "Closing File Handle"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    throw v6

    .line 3690
    :catch_8
    move-exception v1

    .line 3691
    .restart local v1       #e:Ljava/io/IOException;
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_8

    const-string v7, "MotoCamcorder"

    const-string v7, "Failed to Close File"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    :cond_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8
.end method
