.class Lcom/android/phone/BluetoothHandsfree$31;
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
    .line 2542
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$31;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 5
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2546
    array-length v1, p1

    if-ne v1, v3, :cond_0

    aget-object v1, p1, v4

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 2547
    :cond_0
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2553
    :goto_0
    return-object v1

    .line 2549
    :cond_1
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$31;->this$0:Lcom/android/phone/BluetoothHandsfree;

    aget-object v1, p1, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mScoGain:I
    invoke-static {v2, v1}, Lcom/android/phone/BluetoothHandsfree;->access$6802(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 2550
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$31;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v3

    .line 2552
    .local v0, flag:I
    :goto_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$31;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$31;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mScoGain:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$6800(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2553
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .end local v0           #flag:I
    :cond_2
    move v0, v4

    .line 2550
    goto :goto_1
.end method
