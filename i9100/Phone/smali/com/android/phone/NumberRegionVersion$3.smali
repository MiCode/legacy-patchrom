.class Lcom/android/phone/NumberRegionVersion$3;
.super Ljava/lang/Object;
.source "NumberRegionVersion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NumberRegionVersion;->startCopyThread()V
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
    .line 410
    iput-object p1, p0, Lcom/android/phone/NumberRegionVersion$3;->this$0:Lcom/android/phone/NumberRegionVersion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 413
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NumberRegionVersion$3;->this$0:Lcom/android/phone/NumberRegionVersion;

    sget-object v2, Lcom/android/phone/NumberRegionVersion;->VERSION_ORIG_DEFAULT_DIR:Ljava/lang/String;

    sget-object v3, Lcom/android/phone/NumberRegionVersion;->VERSION_DEFAULT_DIR:Ljava/lang/String;

    #calls: Lcom/android/phone/NumberRegionVersion;->CopyFile(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v2, v3}, Lcom/android/phone/NumberRegionVersion;->access$800(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;Ljava/lang/String;)Z

    .line 414
    iget-object v1, p0, Lcom/android/phone/NumberRegionVersion$3;->this$0:Lcom/android/phone/NumberRegionVersion;

    sget-object v2, Lcom/android/phone/NumberRegionVersion;->BIN_ORIG_DEFAULT_DIR:Ljava/lang/String;

    sget-object v3, Lcom/android/phone/NumberRegionVersion;->BIN_DEFAULT_DIR:Ljava/lang/String;

    #calls: Lcom/android/phone/NumberRegionVersion;->CopyFile(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v2, v3}, Lcom/android/phone/NumberRegionVersion;->access$800(Lcom/android/phone/NumberRegionVersion;Ljava/lang/String;Ljava/lang/String;)Z

    .line 415
    iget-object v1, p0, Lcom/android/phone/NumberRegionVersion$3;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/NumberRegionVersion;->access$700(Lcom/android/phone/NumberRegionVersion;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_0
    return-void

    .line 416
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 417
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 418
    const-string v1, "NumberRegionVersion"

    const-string v2, "EVENT_FILE_EXCEPTION = 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v1, p0, Lcom/android/phone/NumberRegionVersion$3;->this$0:Lcom/android/phone/NumberRegionVersion;

    #getter for: Lcom/android/phone/NumberRegionVersion;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/NumberRegionVersion;->access$700(Lcom/android/phone/NumberRegionVersion;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
