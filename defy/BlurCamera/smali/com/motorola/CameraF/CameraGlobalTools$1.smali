.class Lcom/motorola/CameraF/CameraGlobalTools$1;
.super Ljava/lang/Object;
.source "CameraGlobalTools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CameraF/CameraGlobalTools;->calcVideoTimeRemaining(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field bitrate:I

.field second:I

.field tempHandler:Landroid/os/Handler;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/motorola/CameraF/CameraGlobalTools$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalTools$1;->second:I

    .line 198
    const v0, 0x2ee00

    iput v0, p0, Lcom/motorola/CameraF/CameraGlobalTools$1;->bitrate:I

    .line 200
    iget-object v0, p0, Lcom/motorola/CameraF/CameraGlobalTools$1;->val$handler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/motorola/CameraF/CameraGlobalTools$1;->tempHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 202
    sget-boolean v8, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v8, :cond_0

    const-string v8, "MotoCameraGlobalTools"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "calcVideoTimeRemaining  handler "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/CameraF/CameraGlobalTools$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/motorola/CameraF/CameraGlobalTools;->hasStorage()Z

    move-result v8

    if-nez v8, :cond_1

    .line 207
    const/4 v8, -0x1

    iput v8, p0, Lcom/motorola/CameraF/CameraGlobalTools$1;->second:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    iget-object v8, p0, Lcom/motorola/CameraF/CameraGlobalTools$1;->tempHandler:Landroid/os/Handler;

    const/16 v9, 0x36

    iget v10, p0, Lcom/motorola/CameraF/CameraGlobalTools$1;->second:I

    invoke-virtual {v8, v9, v10, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 235
    .local v5, msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/motorola/CameraF/CameraGlobalTools$1;->tempHandler:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 236
    return-void

    .line 211
    .end local v5           #msg:Landroid/os/Message;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    .line 212
    .local v7, storageDirectory:Ljava/lang/String;
    new-instance v6, Landroid/os/StatFs;

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 213
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v10, v10

    mul-long v2, v8, v10

    .line 214
    .local v2, availSpace:J
    const-wide/32 v0, 0x6400000

    .line 215
    .local v0, RESERVE_SPACE:J
    cmp-long v8, v2, v0

    if-gez v8, :cond_2

    .line 216
    const/4 v8, 0x0

    iput v8, p0, Lcom/motorola/CameraF/CameraGlobalTools$1;->second:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 227
    .end local v0           #RESERVE_SPACE:J
    .end local v2           #availSpace:J
    .end local v6           #stat:Landroid/os/StatFs;
    .end local v7           #storageDirectory:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 232
    .local v4, ex:Ljava/lang/Exception;
    const/4 v8, -0x2

    iput v8, p0, Lcom/motorola/CameraF/CameraGlobalTools$1;->second:I

    goto :goto_0

    .line 220
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v0       #RESERVE_SPACE:J
    .restart local v2       #availSpace:J
    .restart local v6       #stat:Landroid/os/StatFs;
    .restart local v7       #storageDirectory:Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v8

    invoke-virtual {v8}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getVideoBitrate()I

    move-result v8

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v9

    invoke-virtual {v9}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getAudioBitrate()I

    move-result v9

    add-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x3

    iput v8, p0, Lcom/motorola/CameraF/CameraGlobalTools$1;->bitrate:I

    .line 221
    sub-long v8, v2, v0

    iget v10, p0, Lcom/motorola/CameraF/CameraGlobalTools$1;->bitrate:I

    int-to-long v10, v10

    div-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, p0, Lcom/motorola/CameraF/CameraGlobalTools$1;->second:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
