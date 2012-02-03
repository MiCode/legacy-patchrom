.class Lcom/android/server/FMRadioService$8;
.super Landroid/telephony/PhoneStateListener;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 7
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v6, 0x1

    .line 365
    if-eq p1, v6, :cond_0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 367
    :cond_0
    iget-object v2, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 370
    :try_start_0
    iget-object v2, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanProgress:Z
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1500(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 372
    iget-object v2, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 373
    iget-object v3, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    iget-object v2, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    #setter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v3, v4, v5}, Lcom/android/server/FMRadioService;->access$902(Lcom/android/server/FMRadioService;J)J

    .line 377
    :goto_0
    iget-object v2, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->cancelScan()Z

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "it was scanning - cancel it and got the freq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$900(Lcom/android/server/FMRadioService;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 382
    :goto_1
    iget-object v2, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v3

    #setter for: Lcom/android/server/FMRadioService;->mIsSpeakerOn:Z
    invoke-static {v2, v3}, Lcom/android/server/FMRadioService;->access$1802(Lcom/android/server/FMRadioService;Z)Z

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storing speaker status :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mIsSpeakerOn:Z
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$1800(Lcom/android/server/FMRadioService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 388
    const-string v2, "Turning off FM player. Active call found"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 390
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.app.fm.auto.off"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$300(Lcom/android/server/FMRadioService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 392
    iget-object v2, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    #calls: Lcom/android/server/FMRadioService;->offInternal(ZIZ)Z
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/FMRadioService;->access$500(Lcom/android/server/FMRadioService;ZIZ)Z

    .line 403
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    :goto_2
    return-void

    .line 375
    :cond_2
    iget-object v2, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanFreq:J
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$1700(Lcom/android/server/FMRadioService;)J

    move-result-wide v3

    #setter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v2, v3, v4}, Lcom/android/server/FMRadioService;->access$902(Lcom/android/server/FMRadioService;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 393
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 395
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 380
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v3}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v3

    #setter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v2, v3, v4}, Lcom/android/server/FMRadioService;->access$902(Lcom/android/server/FMRadioService;J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 399
    :cond_4
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$900(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 400
    const-string v2, "Need to resume waiting for com.android.phone.COMPLETE_AUDIO_RESET_AFTER_CALL_END to come"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 401
    iget-object v2, p0, Lcom/android/server/FMRadioService$8;->this$0:Lcom/android/server/FMRadioService;

    #setter for: Lcom/android/server/FMRadioService;->mIsphoneCall:Z
    invoke-static {v2, v6}, Lcom/android/server/FMRadioService;->access$1002(Lcom/android/server/FMRadioService;Z)Z

    goto :goto_2
.end method
