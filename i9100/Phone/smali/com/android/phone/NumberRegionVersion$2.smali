.class Lcom/android/phone/NumberRegionVersion$2;
.super Ljava/lang/Object;
.source "NumberRegionVersion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NumberRegionVersion;->startDownloadThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NumberRegionVersion;


# direct methods
.method constructor <init>(Lcom/android/phone/NumberRegionVersion;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 284
    :try_start_0
    const-string v6, "http://xiazai.samsungmobile.com.cn/number_region/NumberRegionVersion_CEK.bin"

    .line 285
    .local v6, numberRegionVersionUrl:Ljava/lang/String;
    const/4 v3, 0x0

    .line 286
    .local v3, fileName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 287
    .local v7, versionInfo:Lcom/android/phone/VersionInfo;
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/phone/NumberRegionVersion;->access$300(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 288
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    iget-object v9, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/phone/NumberRegionVersion;->access$300(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/NumberRegionVersion;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/NumberRegionVersion;->access$400(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)V

    .line 289
    :cond_0
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mBinTmpFile:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/phone/NumberRegionVersion;->access$500(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 290
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    iget-object v9, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mBinTmpFile:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/phone/NumberRegionVersion;->access$500(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/NumberRegionVersion;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/NumberRegionVersion;->access$400(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)V

    .line 292
    :cond_1
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #calls: Lcom/android/phone/NumberRegionVersion;->downloadFileByWebkit(Ljava/lang/String;)Lcom/android/phone/DownloadFileInfo;
    invoke-static {v8, v6}, Lcom/android/phone/NumberRegionVersion;->access$600(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)Lcom/android/phone/DownloadFileInfo;

    move-result-object v2

    .line 293
    .local v2, fileInfo:Lcom/android/phone/DownloadFileInfo;
    if-nez v2, :cond_3

    .line 392
    .end local v2           #fileInfo:Lcom/android/phone/DownloadFileInfo;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v6           #numberRegionVersionUrl:Ljava/lang/String;
    .end local v7           #versionInfo:Lcom/android/phone/VersionInfo;
    :cond_2
    :goto_0
    return-void

    .line 295
    .restart local v2       #fileInfo:Lcom/android/phone/DownloadFileInfo;
    .restart local v3       #fileName:Ljava/lang/String;
    .restart local v6       #numberRegionVersionUrl:Ljava/lang/String;
    .restart local v7       #versionInfo:Lcom/android/phone/VersionInfo;
    :cond_3
    const/4 v0, 0x1

    .line 296
    .local v0, downloadCount:I
    :goto_1
    iget-wide v8, v2, Lcom/android/phone/DownloadFileInfo;->fileSize:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    const/4 v8, 0x4

    if-ge v0, v8, :cond_5

    .line 297
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #calls: Lcom/android/phone/NumberRegionVersion;->downloadFileByWebkit(Ljava/lang/String;)Lcom/android/phone/DownloadFileInfo;
    invoke-static {v8, v6}, Lcom/android/phone/NumberRegionVersion;->access$600(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)Lcom/android/phone/DownloadFileInfo;

    move-result-object v2

    .line 298
    if-eqz v2, :cond_2

    .line 300
    const-string v8, "NumberRegionVersion"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fileInfo.fileSize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v2, Lcom/android/phone/DownloadFileInfo;->fileSize:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-wide v8, v2, Lcom/android/phone/DownloadFileInfo;->fileSize:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    .line 302
    const-string v8, "NumberRegionVersion"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fail to download, fileInfo.fileSize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v2, Lcom/android/phone/DownloadFileInfo;->fileSize:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #calls: Lcom/android/phone/NumberRegionVersion;->downloadFileByWebkit(Ljava/lang/String;)Lcom/android/phone/DownloadFileInfo;
    invoke-static {v8, v6}, Lcom/android/phone/NumberRegionVersion;->access$600(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)Lcom/android/phone/DownloadFileInfo;

    move-result-object v2

    .line 304
    if-eqz v2, :cond_2

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 307
    :cond_4
    const-string v8, "NumberRegionVersion"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ready download, fileInfo.fileSize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v2, Lcom/android/phone/DownloadFileInfo;->fileSize:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_5
    const/4 v4, 0x1

    .line 313
    .local v4, isCorrectFile:Z
    iget-wide v8, v2, Lcom/android/phone/DownloadFileInfo;->fileSize:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    .line 314
    const/4 v4, 0x0

    .line 316
    :cond_6
    if-eqz v4, :cond_a

    .line 317
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    iget-object v3, v2, Lcom/android/phone/DownloadFileInfo;->fileName:Ljava/lang/String;

    #setter for: Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;
    invoke-static {v8, v3}, Lcom/android/phone/NumberRegionVersion;->access$302(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    const-string v8, "NumberRegionVersion"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fileInfo1 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    if-eqz v3, :cond_9

    .line 321
    :try_start_1
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    invoke-virtual {v8, v3}, Lcom/android/phone/NumberRegionVersion;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/VersionInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 325
    :goto_2
    :try_start_2
    const-string v8, "NumberRegionVersion"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "versionInfo1 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v8, "NumberRegionVersion"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mVersionInfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    iget-object v10, v10, Lcom/android/phone/NumberRegionVersion;->mVersionInfo:Lcom/android/phone/VersionInfo;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    if-eqz v7, :cond_9

    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    iget-object v8, v8, Lcom/android/phone/NumberRegionVersion;->mVersionInfo:Lcom/android/phone/VersionInfo;

    if-eqz v8, :cond_9

    iget-object v8, v7, Lcom/android/phone/VersionInfo;->version:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    iget-object v9, v9, Lcom/android/phone/NumberRegionVersion;->mVersionInfo:Lcom/android/phone/VersionInfo;

    iget-object v9, v9, Lcom/android/phone/VersionInfo;->version:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v7, Lcom/android/phone/VersionInfo;->lastUpdate:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    iget-object v9, v9, Lcom/android/phone/NumberRegionVersion;->mVersionInfo:Lcom/android/phone/VersionInfo;

    iget-object v9, v9, Lcom/android/phone/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 331
    const-string v8, "NumberRegionVersion"

    const-string v9, "EVENT_VERSION_SAME = 4"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/NumberRegionVersion;->access$700(Lcom/android/phone/NumberRegionVersion;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 333
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/phone/NumberRegionVersion;->access$300(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 334
    const-string v8, "NumberRegionVersion"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Delete mVersionTmpFile = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/phone/NumberRegionVersion;->access$300(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    iget-object v9, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/phone/NumberRegionVersion;->access$300(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/NumberRegionVersion;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/NumberRegionVersion;->access$400(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 381
    .end local v0           #downloadCount:I
    .end local v2           #fileInfo:Lcom/android/phone/DownloadFileInfo;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #isCorrectFile:Z
    .end local v6           #numberRegionVersionUrl:Ljava/lang/String;
    .end local v7           #versionInfo:Lcom/android/phone/VersionInfo;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 382
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 383
    const-string v8, "NumberRegionVersion"

    const-string v9, "EVENT_HTTP_EXCEPTION1 = 2"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/phone/NumberRegionVersion;->access$300(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 385
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    iget-object v9, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/phone/NumberRegionVersion;->access$300(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/NumberRegionVersion;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/NumberRegionVersion;->access$400(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)V

    .line 386
    :cond_7
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    const/4 v9, 0x0

    #setter for: Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/phone/NumberRegionVersion;->access$302(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)Ljava/lang/String;

    .line 387
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mBinTmpFile:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/phone/NumberRegionVersion;->access$500(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 388
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    iget-object v9, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mBinTmpFile:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/phone/NumberRegionVersion;->access$500(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/NumberRegionVersion;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/NumberRegionVersion;->access$400(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)V

    .line 389
    :cond_8
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    const/4 v9, 0x0

    #setter for: Lcom/android/phone/NumberRegionVersion;->mBinTmpFile:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/phone/NumberRegionVersion;->access$502(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)Ljava/lang/String;

    .line 390
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/NumberRegionVersion;->access$700(Lcom/android/phone/NumberRegionVersion;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 322
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #downloadCount:I
    .restart local v2       #fileInfo:Lcom/android/phone/DownloadFileInfo;
    .restart local v3       #fileName:Ljava/lang/String;
    .restart local v4       #isCorrectFile:Z
    .restart local v6       #numberRegionVersionUrl:Ljava/lang/String;
    .restart local v7       #versionInfo:Lcom/android/phone/VersionInfo;
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 323
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 340
    .end local v1           #e:Ljava/lang/Exception;
    :cond_9
    const-string v5, "http://xiazai.samsungmobile.com.cn/number_region/NumberRegionDB_CEK.bin"

    .line 341
    .local v5, numberRegionUrl:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #calls: Lcom/android/phone/NumberRegionVersion;->downloadFileByWebkit(Ljava/lang/String;)Lcom/android/phone/DownloadFileInfo;
    invoke-static {v8, v5}, Lcom/android/phone/NumberRegionVersion;->access$600(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)Lcom/android/phone/DownloadFileInfo;

    move-result-object v2

    .line 342
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    iget-object v3, v2, Lcom/android/phone/DownloadFileInfo;->fileName:Ljava/lang/String;

    #setter for: Lcom/android/phone/NumberRegionVersion;->mBinTmpFile:Ljava/lang/String;
    invoke-static {v8, v3}, Lcom/android/phone/NumberRegionVersion;->access$502(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    const-string v8, "NumberRegionVersion"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fileInfo2 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .end local v5           #numberRegionUrl:Ljava/lang/String;
    :cond_a
    iget-wide v8, v7, Lcom/android/phone/VersionInfo;->dbSize:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_b

    iget-wide v8, v7, Lcom/android/phone/VersionInfo;->dbSize:J

    iget-wide v10, v2, Lcom/android/phone/DownloadFileInfo;->fileSize:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_c

    .line 350
    :cond_b
    const/4 v4, 0x0

    .line 351
    :cond_c
    iget-wide v8, v2, Lcom/android/phone/DownloadFileInfo;->startmarker:J

    iget-wide v10, v2, Lcom/android/phone/DownloadFileInfo;->endmarker:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_d

    .line 352
    const/4 v4, 0x0

    .line 356
    :cond_d
    const-string v8, "NumberRegionVersion"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isCorrectFile = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    if-eqz v4, :cond_10

    .line 359
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    iget-object v9, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/phone/NumberRegionVersion;->access$300(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/phone/NumberRegionVersion;->VERSION_DEFAULT_DIR:Ljava/lang/String;

    #calls: Lcom/android/phone/NumberRegionVersion;->CopyFile(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v8, v9, v10}, Lcom/android/phone/NumberRegionVersion;->access$800(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;Ljava/lang/String;)Z

    .line 360
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    iget-object v9, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mBinTmpFile:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/phone/NumberRegionVersion;->access$500(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/phone/NumberRegionVersion;->BIN_DEFAULT_DIR:Ljava/lang/String;

    #calls: Lcom/android/phone/NumberRegionVersion;->CopyFile(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v8, v9, v10}, Lcom/android/phone/NumberRegionVersion;->access$800(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;Ljava/lang/String;)Z

    .line 362
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/phone/NumberRegionVersion;->access$300(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 363
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    iget-object v9, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/phone/NumberRegionVersion;->access$300(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/NumberRegionVersion;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/NumberRegionVersion;->access$400(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)V

    .line 364
    :cond_e
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    const/4 v9, 0x0

    #setter for: Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/phone/NumberRegionVersion;->access$302(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mBinTmpFile:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/phone/NumberRegionVersion;->access$500(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 366
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    iget-object v9, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mBinTmpFile:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/phone/NumberRegionVersion;->access$500(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/NumberRegionVersion;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/NumberRegionVersion;->access$400(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)V

    .line 367
    :cond_f
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    const/4 v9, 0x0

    #setter for: Lcom/android/phone/NumberRegionVersion;->mBinTmpFile:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/phone/NumberRegionVersion;->access$502(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)Ljava/lang/String;

    .line 368
    const-string v8, "NumberRegionVersion"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fileInfo2 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/NumberRegionVersion;->access$700(Lcom/android/phone/NumberRegionVersion;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 372
    :cond_10
    const-string v8, "NumberRegionVersion"

    const-string v9, "EVENT_HTTP_EXCEPTION = 2"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/phone/NumberRegionVersion;->access$300(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_11

    .line 374
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    iget-object v9, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/phone/NumberRegionVersion;->access$300(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/NumberRegionVersion;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/NumberRegionVersion;->access$400(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)V

    .line 375
    :cond_11
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    const/4 v9, 0x0

    #setter for: Lcom/android/phone/NumberRegionVersion;->mVersionTmpFile:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/phone/NumberRegionVersion;->access$302(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)Ljava/lang/String;

    .line 376
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mBinTmpFile:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/phone/NumberRegionVersion;->access$500(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_12

    .line 377
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    iget-object v9, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mBinTmpFile:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/phone/NumberRegionVersion;->access$500(Lcom/android/phone/NumberRegionVersion;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/NumberRegionVersion;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/NumberRegionVersion;->access$400(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)V

    .line 378
    :cond_12
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    const/4 v9, 0x0

    #setter for: Lcom/android/phone/NumberRegionVersion;->mBinTmpFile:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/phone/NumberRegionVersion;->access$502(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;)Ljava/lang/String;

    .line 379
    iget-object v8, p0, Lcom/android/phone/NumberRegionVersion$2;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/NumberRegionVersion;->access$700(Lcom/android/phone/NumberRegionVersion;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
