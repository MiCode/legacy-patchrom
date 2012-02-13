.class Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;
.super Lcom/motorola/CameraF/ImageManager$BaseCancelable;
.source "ImageManager.java"

# interfaces
.implements Lcom/motorola/CameraF/ImageManager$IGetBoolean_cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CameraF/ImageManager;->saveImageToFile([BLandroid/net/Uri;Landroid/content/ContentResolver;)Lcom/motorola/CameraF/ImageManager$IGetBoolean_cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompressImageToFile"
.end annotation


# instance fields
.field mOutputStream:Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;

.field final synthetic this$0:Lcom/motorola/CameraF/ImageManager;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$jpegData:[B

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/ImageManager;Landroid/content/ContentResolver;Landroid/net/Uri;[B)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 298
    iput-object p1, p0, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->this$0:Lcom/motorola/CameraF/ImageManager;

    iput-object p2, p0, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->val$uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->val$jpegData:[B

    invoke-direct {p0, p1}, Lcom/motorola/CameraF/ImageManager$BaseCancelable;-><init>(Lcom/motorola/CameraF/ImageManager;)V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;

    return-void
.end method


# virtual methods
.method public doCancelWork()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;

    if-eqz v0, :cond_0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v0}, Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    const/4 v0, 0x1

    .line 311
    :goto_0
    return v0

    .line 307
    :catch_0
    move-exception v0

    .line 311
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 316
    :try_start_0
    iget-object v6, p0, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->val$cr:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->val$uri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 318
    .local v0, delegate:Ljava/io/OutputStream;
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/CameraF/ImageManager$CanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 319
    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->checkCanceled()V

    .line 320
    new-instance v6, Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;

    invoke-direct {v6, v0}, Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v6, p0, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;

    .line 321
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 323
    .local v2, x1:J
    iget-object v6, p0, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;

    iget-object v7, p0, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->val$jpegData:[B

    invoke-virtual {v6, v7}, Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;->write([B)V

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 325
    .local v4, x2:J
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_0

    .line 326
    const-string v6, "ImageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CompressImageToFile:get:done writing... "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->val$jpegData:[B

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes took "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v4, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/motorola/CameraF/ImageManager$CanceledException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 328
    :cond_0
    const/4 v6, 0x1

    .line 336
    iget-object v7, p0, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;

    if-eqz v7, :cond_1

    .line 338
    :try_start_3
    iget-object v7, p0, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v7}, Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 343
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->acknowledgeCancel()V

    .end local v0           #delegate:Ljava/io/OutputStream;
    .end local v2           #x1:J
    .end local v4           #x2:J
    :goto_1
    return v6

    .line 321
    .restart local v0       #delegate:Ljava/io/OutputStream;
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/motorola/CameraF/ImageManager$CanceledException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 329
    .end local v0           #delegate:Ljava/io/OutputStream;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 336
    .local v1, ex:Ljava/io/FileNotFoundException;
    iget-object v6, p0, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;

    if-eqz v6, :cond_2

    .line 338
    :try_start_6
    iget-object v6, p0, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v6}, Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 343
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->acknowledgeCancel()V

    move v6, v10

    goto :goto_1

    .line 331
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 336
    .local v1, ex:Lcom/motorola/CameraF/ImageManager$CanceledException;
    iget-object v6, p0, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;

    if-eqz v6, :cond_3

    .line 338
    :try_start_7
    iget-object v6, p0, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v6}, Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 343
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->acknowledgeCancel()V

    move v6, v10

    goto :goto_1

    .line 333
    .end local v1           #ex:Lcom/motorola/CameraF/ImageManager$CanceledException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 336
    .local v1, ex:Ljava/io/IOException;
    iget-object v6, p0, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;

    if-eqz v6, :cond_4

    .line 338
    :try_start_8
    iget-object v6, p0, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v6}, Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 343
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->acknowledgeCancel()V

    move v6, v10

    goto :goto_1

    .line 336
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;

    if-eqz v7, :cond_5

    .line 338
    :try_start_9
    iget-object v7, p0, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->mOutputStream:Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v7}, Lcom/motorola/CameraF/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 343
    :cond_5
    :goto_5
    invoke-virtual {p0}, Lcom/motorola/CameraF/ImageManager$1CompressImageToFile;->acknowledgeCancel()V

    throw v6

    .line 339
    :catch_3
    move-exception v7

    goto :goto_5

    .restart local v1       #ex:Ljava/io/IOException;
    :catch_4
    move-exception v6

    goto :goto_4

    .local v1, ex:Lcom/motorola/CameraF/ImageManager$CanceledException;
    :catch_5
    move-exception v6

    goto :goto_3

    .local v1, ex:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v6

    goto :goto_2

    .end local v1           #ex:Ljava/io/FileNotFoundException;
    .restart local v0       #delegate:Ljava/io/OutputStream;
    .restart local v2       #x1:J
    .restart local v4       #x2:J
    :catch_7
    move-exception v7

    goto :goto_0
.end method
