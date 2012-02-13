.class Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;
.super Ljava/lang/Object;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallRingbackTonePlayer"
.end annotation


# instance fields
.field private mToneGenerator:Landroid/media/ToneGenerator;

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;)V
    .locals 1
    .parameter

    .prologue
    .line 3387
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 3389
    return-void
.end method

.method static synthetic access$2300(Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3381
    invoke-direct {p0}, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->start()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3381
    invoke-direct {p0}, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->stop()V

    return-void
.end method

.method private start()V
    .locals 5

    .prologue
    .line 3395
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1300()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v3, "InCallRingbackTonePlayer.start()"

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3399
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3400
    iget-object v2, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x6

    move v1, v2

    .line 3405
    .local v1, stream:I
    :goto_0
    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, v1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v2, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3415
    .end local v1           #stream:I
    :goto_1
    iget-object v2, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v2, :cond_1

    .line 3416
    iget-object v2, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 3417
    iget-object v2, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/CallNotifier;->mCurrentRingbackToneState:I
    invoke-static {v2, v3}, Lcom/android/phone/CallNotifier;->access$2402(Lcom/android/phone/CallNotifier;I)I

    .line 3419
    :cond_1
    return-void

    .line 3400
    :cond_2
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 3403
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #stream:I
    goto :goto_0

    .line 3407
    .end local v1           #stream:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 3410
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "CallNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InCallRingbackTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_1
.end method

.method private stop()V
    .locals 2

    .prologue
    .line 3425
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v1, "InCallRingbackTonePlayer.stop()"

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3427
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    .line 3428
    iget-object v0, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 3429
    iget-object v0, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 3430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 3433
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier$InCallRingbackTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const/4 v1, 0x2

    #setter for: Lcom/android/phone/CallNotifier;->mCurrentRingbackToneState:I
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$2402(Lcom/android/phone/CallNotifier;I)I

    .line 3434
    return-void
.end method
