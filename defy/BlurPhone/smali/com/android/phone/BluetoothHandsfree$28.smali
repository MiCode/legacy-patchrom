.class Lcom/android/phone/BluetoothHandsfree$28;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter

    .prologue
    .line 2482
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$28;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 5
    .parameter "args"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2488
    array-length v1, p1

    if-lt v1, v3, :cond_2

    aget-object v1, p1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2489
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$700()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "set mAudioPossible true"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1900(Ljava/lang/String;)V

    .line 2490
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$28;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$2802(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2491
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$28;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v1

    .line 2492
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$28;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$3900(Lcom/android/phone/BluetoothHandsfree;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 2494
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$28;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$6500()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2498
    :try_start_2
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$28;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->expectVoiceRecognition()V
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$6600(Lcom/android/phone/BluetoothHandsfree;)V

    .line 2500
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2502
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2510
    :goto_0
    return-object v1

    .line 2495
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2496
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_3
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 2500
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2504
    :cond_2
    array-length v1, p1

    if-lt v1, v3, :cond_3

    aget-object v1, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2505
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$28;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static {v1, v4}, Lcom/android/phone/BluetoothHandsfree;->access$2802(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2506
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$28;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$6700()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2508
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 2510
    :cond_3
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .locals 2

    .prologue
    .line 2514
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+BVRA: (0-1)"

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
