.class Lcom/android/phone/Ringer$HeadsetRingtonePlayer;
.super Ljava/lang/Thread;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Ringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetRingtonePlayer"
.end annotation


# instance fields
.field private mToneGenerator:Landroid/media/ToneGenerator;

.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method private constructor <init>(Lcom/android/phone/Ringer;)V
    .locals 1
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;-><init>(Lcom/android/phone/Ringer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-string v4, "Ringer"

    .line 463
    const-string v1, "Ringer"

    const-string v1, "HeadsetRingtonePlayer..."

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :try_start_0
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v2, 0x9

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    iget-object v1, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 473
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 467
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Ringer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HeadsetRingtonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0
.end method

.method public stopRingtone()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 478
    iget-object v0, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 481
    :cond_0
    return-void
.end method
