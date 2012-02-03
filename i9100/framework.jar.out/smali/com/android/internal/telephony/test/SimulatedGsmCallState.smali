.class Lcom/android/internal/telephony/test/SimulatedGsmCallState;
.super Landroid/os/Handler;
.source "SimulatedGsmCallState.java"


# static fields
.field static final CONNECTING_PAUSE_MSEC:I = 0x1f4

.field static final EVENT_PROGRESS_CALL_STATE:I = 0x1

.field static final MAX_CALLS:I = 0x7


# instance fields
.field private autoProgressConnecting:Z

.field calls:[Lcom/android/internal/telephony/test/CallInfo;

.field private nextDialFailImmediately:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "looper"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 135
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/telephony/test/CallInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->autoProgressConnecting:Z

    .line 156
    return-void
.end method

.method private countActiveLines()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InvalidStateEx;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v14, "ModelInterpreter"

    const-string v13, "Invalid state"

    .line 766
    const/4 v4, 0x0

    .line 767
    .local v4, hasMpty:Z
    const/4 v3, 0x0

    .line 768
    .local v3, hasHeld:Z
    const/4 v1, 0x0

    .line 769
    .local v1, hasActive:Z
    const/4 v2, 0x0

    .line 770
    .local v2, hasConnecting:Z
    const/4 v5, 0x0

    .line 771
    .local v5, hasRinging:Z
    const/4 v7, 0x0

    .line 773
    .local v7, mptyIsHeld:Z
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v9, v9

    if-ge v6, v9, :cond_7

    .line 774
    iget-object v9, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v9, v6

    .line 776
    .local v0, call:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_1

    .line 777
    if-nez v4, :cond_3

    iget-boolean v9, v0, Lcom/android/internal/telephony/test/CallInfo;->isMpty:Z

    if-eqz v9, :cond_3

    .line 778
    iget-object v9, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v10, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v9, v10, :cond_2

    move v7, v12

    .line 791
    :cond_0
    :goto_1
    iget-boolean v9, v0, Lcom/android/internal/telephony/test/CallInfo;->isMpty:Z

    or-int/2addr v4, v9

    .line 792
    iget-object v9, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v10, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v9, v10, :cond_5

    move v9, v12

    :goto_2
    or-int/2addr v3, v9

    .line 793
    iget-object v9, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v10, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v9, v10, :cond_6

    move v9, v12

    :goto_3
    or-int/2addr v1, v9

    .line 794
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v9

    or-int/2addr v2, v9

    .line 795
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v9

    or-int/2addr v5, v9

    .line 773
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move v7, v11

    .line 778
    goto :goto_1

    .line 779
    :cond_3
    iget-boolean v9, v0, Lcom/android/internal/telephony/test/CallInfo;->isMpty:Z

    if-eqz v9, :cond_4

    if-eqz v7, :cond_4

    iget-object v9, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v10, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v9, v10, :cond_4

    .line 782
    const-string v9, "ModelInterpreter"

    const-string v9, "Invalid state"

    invoke-static {v14, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    new-instance v9, Lcom/android/internal/telephony/test/InvalidStateEx;

    invoke-direct {v9}, Lcom/android/internal/telephony/test/InvalidStateEx;-><init>()V

    throw v9

    .line 784
    :cond_4
    iget-boolean v9, v0, Lcom/android/internal/telephony/test/CallInfo;->isMpty:Z

    if-nez v9, :cond_0

    if-eqz v4, :cond_0

    if-eqz v7, :cond_0

    iget-object v9, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v10, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v9, v10, :cond_0

    .line 787
    const-string v9, "ModelInterpreter"

    const-string v9, "Invalid state"

    invoke-static {v14, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    new-instance v9, Lcom/android/internal/telephony/test/InvalidStateEx;

    invoke-direct {v9}, Lcom/android/internal/telephony/test/InvalidStateEx;-><init>()V

    throw v9

    :cond_5
    move v9, v11

    .line 792
    goto :goto_2

    :cond_6
    move v9, v11

    .line 793
    goto :goto_3

    .line 799
    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_7
    const/4 v8, 0x0

    .line 801
    .local v8, ret:I
    if-eqz v3, :cond_8

    add-int/lit8 v8, v8, 0x1

    .line 802
    :cond_8
    if-eqz v1, :cond_9

    add-int/lit8 v8, v8, 0x1

    .line 803
    :cond_9
    if-eqz v2, :cond_a

    add-int/lit8 v8, v8, 0x1

    .line 804
    :cond_a
    if-eqz v5, :cond_b

    add-int/lit8 v8, v8, 0x1

    .line 806
    :cond_b
    return v8
.end method


# virtual methods
.method public conference()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 607
    const/4 v1, 0x0

    .line 610
    .local v1, countCalls:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 611
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .line 613
    .local v0, c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    .line 614
    add-int/lit8 v1, v1, 0x1

    .line 616
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 617
    const/4 v3, 0x0

    .line 632
    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :goto_1
    return v3

    .line 610
    .restart local v0       #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 621
    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 622
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .line 624
    .restart local v0       #c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_2

    .line 625
    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    .line 626
    if-lez v1, :cond_2

    .line 627
    iput-boolean v4, v0, Lcom/android/internal/telephony/test/CallInfo;->isMpty:Z

    .line 621
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_3
    move v3, v4

    .line 632
    goto :goto_1
.end method

.method public explicitCallTransfer()Z
    .locals 4

    .prologue
    .line 637
    const/4 v1, 0x0

    .line 640
    .local v1, countCalls:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 641
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .line 643
    .local v0, c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    .line 644
    add-int/lit8 v1, v1, 0x1

    .line 646
    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 647
    const/4 v3, 0x0

    .line 653
    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :goto_1
    return v3

    .line 640
    .restart local v0       #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 653
    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupAll()Z

    move-result v3

    goto :goto_1
.end method

.method public getClccLines()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 751
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 753
    .local v2, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 754
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v1

    .line 756
    .local v0, c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    .line 757
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/test/CallInfo;->toCLCCLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 761
    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    return-object v2
.end method

.method public getDriverCalls()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DriverCall;",
            ">;"
        }
    .end annotation

    .prologue
    .line 731
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 733
    .local v3, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 734
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v4, v2

    .line 736
    .local v0, c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    .line 739
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/test/CallInfo;->toDriverCall(I)Lcom/android/internal/telephony/DriverCall;

    move-result-object v1

    .line 740
    .local v1, dc:Lcom/android/internal/telephony/DriverCall;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    .end local v1           #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 744
    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SC< getDriverCalls "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return-object v3
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 167
    :goto_0
    monitor-exit p0

    .line 168
    return-void

    .line 165
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingCallState()V

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnswer()Z
    .locals 4

    .prologue
    .line 358
    monitor-enter p0

    .line 359
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 360
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v2, v1

    .line 362
    .local v0, call:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_1

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->switchActiveAndHeldOrWaiting()Z

    move-result v2

    monitor-exit p0

    .line 371
    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :goto_1
    return v2

    .line 359
    .restart local v0       #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_2
    monitor-exit p0

    .line 371
    const/4 v2, 0x0

    goto :goto_1

    .line 369
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onChld(CC)Z
    .locals 4
    .parameter "c0"
    .parameter "c1"

    .prologue
    .line 393
    const/4 v0, 0x0

    .line 395
    .local v0, callIndex:I
    if-eqz p2, :cond_1

    .line 396
    const/16 v2, 0x31

    sub-int v0, p2, v2

    .line 398
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 399
    :cond_0
    const/4 v2, 0x0

    .line 443
    :goto_0
    return v2

    .line 403
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 439
    const/4 v1, 0x0

    .local v1, ret:Z
    :goto_1
    move v2, v1

    .line 443
    goto :goto_0

    .line 405
    .end local v1           #ret:Z
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->releaseHeldOrUDUB()Z

    move-result v1

    .line 406
    .restart local v1       #ret:Z
    goto :goto_1

    .line 408
    .end local v1           #ret:Z
    :pswitch_1
    if-gtz p2, :cond_2

    .line 409
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->releaseActiveAcceptHeldOrWaiting()Z

    move-result v1

    .restart local v1       #ret:Z
    goto :goto_1

    .line 411
    .end local v1           #ret:Z
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    .line 412
    const/4 v1, 0x0

    .restart local v1       #ret:Z
    goto :goto_1

    .line 414
    .end local v1           #ret:Z
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 415
    const/4 v1, 0x1

    .line 418
    .restart local v1       #ret:Z
    goto :goto_1

    .line 420
    .end local v1           #ret:Z
    :pswitch_2
    if-gtz p2, :cond_4

    .line 421
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->switchActiveAndHeldOrWaiting()Z

    move-result v1

    .restart local v1       #ret:Z
    goto :goto_1

    .line 423
    .end local v1           #ret:Z
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->separateCall(I)Z

    move-result v1

    .line 425
    .restart local v1       #ret:Z
    goto :goto_1

    .line 427
    .end local v1           #ret:Z
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->conference()Z

    move-result v1

    .line 428
    .restart local v1       #ret:Z
    goto :goto_1

    .line 430
    .end local v1           #ret:Z
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->explicitCallTransfer()Z

    move-result v1

    .line 431
    .restart local v1       #ret:Z
    goto :goto_1

    .line 435
    .end local v1           #ret:Z
    :pswitch_5
    const/4 v1, 0x0

    .line 437
    .restart local v1       #ret:Z
    goto :goto_1

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onDial(Ljava/lang/String;)Z
    .locals 10
    .parameter "address"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v9, "SC< dial fail (invalid call state)"

    const-string v7, "GSM"

    .line 659
    const/4 v1, -0x1

    .line 661
    .local v1, freeSlot:I
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SC> dial \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-boolean v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->nextDialFailImmediately:Z

    if-eqz v4, :cond_0

    .line 664
    iput-boolean v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->nextDialFailImmediately:Z

    .line 666
    const-string v4, "GSM"

    const-string v4, "SC< dial fail (per request)"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 726
    :goto_0
    return v4

    .line 670
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 672
    .local v3, phNum:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 673
    const-string v4, "GSM"

    const-string v4, "SC< dial fail (invalid ph num)"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 674
    goto :goto_0

    .line 678
    :cond_1
    const-string v4, "*99"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 679
    const-string v4, "GSM"

    const-string v4, "SC< dial ignored (gprs)"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v8

    .line 680
    goto :goto_0

    .line 686
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->countActiveLines()I

    move-result v4

    if-le v4, v8, :cond_3

    .line 687
    const-string v4, "GSM"

    const-string v5, "SC< dial fail (invalid call state)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/internal/telephony/test/InvalidStateEx; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    .line 688
    goto :goto_0

    .line 690
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 691
    .local v0, ex:Lcom/android/internal/telephony/test/InvalidStateEx;
    const-string v4, "GSM"

    const-string v4, "SC< dial fail (invalid call state)"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 692
    goto :goto_0

    .line 695
    .end local v0           #ex:Lcom/android/internal/telephony/test/InvalidStateEx;
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v2, v4, :cond_7

    .line 696
    if-gez v1, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v2

    if-nez v4, :cond_4

    .line 697
    move v1, v2

    .line 700
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v2

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/test/CallInfo;->isActiveOrHeld()Z

    move-result v4

    if-nez v4, :cond_5

    .line 703
    const-string v4, "GSM"

    const-string v4, "SC< dial fail (invalid call state)"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 704
    goto :goto_0

    .line 705
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v2

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v4, v5, :cond_6

    .line 707
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v2

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v5, v4, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    .line 695
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 711
    :cond_7
    if-gez v1, :cond_8

    .line 712
    const-string v4, "GSM"

    const-string v4, "SC< dial fail (invalid call state)"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 713
    goto/16 :goto_0

    .line 716
    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    invoke-static {v3}, Lcom/android/internal/telephony/test/CallInfo;->createOutgoingCall(Ljava/lang/String;)Lcom/android/internal/telephony/test/CallInfo;

    move-result-object v5

    aput-object v5, v4, v1

    .line 718
    iget-boolean v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->autoProgressConnecting:Z

    if-eqz v4, :cond_9

    .line 719
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v1

    invoke-virtual {p0, v8, v4}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 724
    :cond_9
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SC< dial (slot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v8

    .line 726
    goto/16 :goto_0
.end method

.method public onHangup()Z
    .locals 5

    .prologue
    .line 376
    const/4 v1, 0x0

    .line 378
    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 379
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .line 381
    .local v0, call:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v3, v4, :cond_0

    .line 382
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 383
    const/4 v1, 0x1

    .line 378
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 387
    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    return v1
.end method

.method public progressConnectingCallState()V
    .locals 5

    .prologue
    .line 219
    monitor-enter p0

    .line 220
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v2, v1

    .line 223
    .local v0, call:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_1

    .line 224
    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    .line 226
    iget-boolean v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->autoProgressConnecting:Z

    if-eqz v2, :cond_0

    .line 227
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 239
    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_0
    :goto_1
    monitor-exit p0

    .line 240
    return-void

    .line 232
    .restart local v0       #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_2

    .line 235
    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    goto :goto_1

    .line 239
    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 220
    .restart local v0       #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public progressConnectingToActive()V
    .locals 4

    .prologue
    .line 245
    monitor-enter p0

    .line 246
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v2, v1

    .line 249
    .local v0, call:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v2, v3, :cond_2

    .line 252
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v2, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    .line 256
    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    monitor-exit p0

    .line 257
    return-void

    .line 246
    .restart local v0       #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public releaseActiveAcceptHeldOrWaiting()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 478
    const/4 v2, 0x0

    .line 479
    .local v2, foundHeld:Z
    const/4 v1, 0x0

    .line 481
    .local v1, foundActive:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 482
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v4, v3

    .line 484
    .local v0, c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v4, v5, :cond_0

    .line 485
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v7, v4, v3

    .line 486
    const/4 v1, 0x1

    .line 481
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 490
    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    if-nez v1, :cond_4

    .line 493
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 494
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v4, v3

    .line 496
    .restart local v0       #c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_3

    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v4, v5, :cond_2

    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v4, v5, :cond_3

    .line 500
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v7, v4, v3

    .line 501
    const/4 v1, 0x1

    .line 493
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 506
    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_4
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v3, v4, :cond_6

    .line 507
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v4, v3

    .line 509
    .restart local v0       #c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_5

    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v4, v5, :cond_5

    .line 510
    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    .line 511
    const/4 v2, 0x1

    .line 506
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 515
    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_6
    if-eqz v2, :cond_7

    move v4, v6

    .line 528
    :goto_3
    return v4

    .line 519
    :cond_7
    const/4 v3, 0x0

    :goto_4
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v3, v4, :cond_9

    .line 520
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v4, v3

    .line 522
    .restart local v0       #c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 523
    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    move v4, v6

    .line 524
    goto :goto_3

    .line 519
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_9
    move v4, v6

    .line 528
    goto :goto_3
.end method

.method public releaseHeldOrUDUB()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 448
    const/4 v1, 0x0

    .line 450
    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 451
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .line 453
    .local v0, c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 454
    const/4 v1, 0x1

    .line 455
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v5, v3, v2

    .line 460
    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_0
    if-nez v1, :cond_3

    .line 461
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 462
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .line 464
    .restart local v0       #c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_1

    .line 465
    const/4 v1, 0x1

    .line 466
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aput-object v5, v3, v2

    .line 461
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 450
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method public separateCall(I)Z
    .locals 10
    .parameter "index"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 569
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v6, p1

    .line 571
    .local v0, c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isConnecting()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->countActiveLines()I

    move-result v6

    if-eq v6, v9, :cond_1

    :cond_0
    move v6, v8

    .line 599
    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :goto_0
    return v6

    .line 575
    .restart local v0       #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v6, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    .line 576
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/internal/telephony/test/CallInfo;->isMpty:Z

    .line 578
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v6, v6

    if-ge v4, v6, :cond_4

    .line 579
    const/4 v2, 0x0

    .local v2, countHeld:I
    const/4 v5, 0x0

    .line 581
    .local v5, lastHeld:I
    if-eq v4, p1, :cond_2

    .line 582
    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v1, v6, v4

    .line 584
    .local v1, cb:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v1, :cond_2

    iget-object v6, v1, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v7, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v6, v7, :cond_2

    .line 585
    sget-object v6, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v6, v1, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    .line 586
    add-int/lit8 v2, v2, 0x1

    .line 587
    move v5, v4

    .line 591
    .end local v1           #cb:Lcom/android/internal/telephony/test/CallInfo;
    :cond_2
    if-ne v2, v9, :cond_3

    .line 593
    iget-object v6, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v6, v6, v5

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/internal/telephony/test/CallInfo;->isMpty:Z
    :try_end_0
    .catch Lcom/android/internal/telephony/test/InvalidStateEx; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2           #countHeld:I
    .end local v5           #lastHeld:I
    :cond_4
    move v6, v9

    .line 597
    goto :goto_0

    .line 598
    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    .end local v4           #i:I
    :catch_0
    move-exception v6

    move-object v3, v6

    .local v3, ex:Lcom/android/internal/telephony/test/InvalidStateEx;
    move v6, v8

    .line 599
    goto :goto_0
.end method

.method public setAutoProgressConnectingCall(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 264
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->autoProgressConnecting:Z

    .line 265
    return-void
.end method

.method public setNextDialFailImmediately(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->nextDialFailImmediately:Z

    .line 270
    return-void
.end method

.method public switchActiveAndHeldOrWaiting()Z
    .locals 5

    .prologue
    .line 533
    const/4 v1, 0x0

    .line 536
    .local v1, hasHeld:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 537
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .line 539
    .local v0, c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_2

    .line 540
    const/4 v1, 0x1

    .line 546
    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 547
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .line 549
    .restart local v0       #c:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_1

    .line 550
    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_3

    .line 551
    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    .line 546
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 536
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    :cond_3
    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_4

    .line 553
    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    goto :goto_2

    .line 554
    :cond_4
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/CallInfo;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 555
    sget-object v3, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    goto :goto_2

    .line 560
    .end local v0           #c:Lcom/android/internal/telephony/test/CallInfo;
    :cond_5
    const/4 v3, 0x1

    return v3
.end method

.method public triggerHangupAll()Z
    .locals 5

    .prologue
    .line 339
    monitor-enter p0

    .line 340
    const/4 v1, 0x0

    .line 342
    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 343
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .line 345
    .local v0, call:Lcom/android/internal/telephony/test/CallInfo;
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 346
    const/4 v1, 0x1

    .line 349
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 352
    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    monitor-exit p0

    return v1

    .line 353
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public triggerHangupBackground()Z
    .locals 5

    .prologue
    .line 317
    monitor-enter p0

    .line 318
    const/4 v1, 0x0

    .line 320
    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 321
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .line 323
    .local v0, call:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_0

    .line 324
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 325
    const/4 v1, 0x1

    .line 320
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_1
    monitor-exit p0

    return v1

    .line 330
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public triggerHangupForeground()Z
    .locals 5

    .prologue
    .line 278
    monitor-enter p0

    .line 281
    const/4 v1, 0x0

    .line 283
    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 284
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .line 286
    .local v0, call:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v3, v4, :cond_0

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_1

    .line 290
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 291
    const/4 v1, 0x1

    .line 283
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 296
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v3, v2

    .line 298
    .restart local v0       #call:Lcom/android/internal/telephony/test/CallInfo;
    if-eqz v0, :cond_4

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v3, v4, :cond_3

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v3, v4, :cond_3

    iget-object v3, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v4, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v3, v4, :cond_4

    .line 303
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 304
    const/4 v1, 0x1

    .line 295
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 307
    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_5
    monitor-exit p0

    return v1

    .line 308
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public triggerRing(Ljava/lang/String;)Z
    .locals 7
    .parameter "number"

    .prologue
    const/4 v6, 0x0

    const-string v4, "ModelInterpreter"

    .line 178
    monitor-enter p0

    .line 179
    const/4 v1, -0x1

    .line 180
    .local v1, empty:I
    const/4 v3, 0x0

    .line 183
    .local v3, isCallWaiting:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    array-length v4, v4

    if-ge v2, v4, :cond_4

    .line 184
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v0, v4, v2

    .line 186
    .local v0, call:Lcom/android/internal/telephony/test/CallInfo;
    if-nez v0, :cond_1

    if-gez v1, :cond_1

    .line 187
    move v1, v2

    .line 183
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    :cond_1
    if-eqz v0, :cond_3

    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-eq v4, v5, :cond_2

    iget-object v4, v0, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    if-ne v4, v5, :cond_3

    .line 192
    :cond_2
    const-string v4, "ModelInterpreter"

    const-string/jumbo v5, "triggerRing failed; phone already ringing"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    monitor-exit p0

    move v4, v6

    .line 213
    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :goto_2
    return v4

    .line 195
    .restart local v0       #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_3
    if-eqz v0, :cond_0

    .line 196
    const/4 v3, 0x1

    goto :goto_1

    .line 200
    .end local v0           #call:Lcom/android/internal/telephony/test/CallInfo;
    :cond_4
    if-gez v1, :cond_5

    .line 201
    const-string v4, "ModelInterpreter"

    const-string/jumbo v5, "triggerRing failed; all full"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    monitor-exit p0

    move v4, v6

    goto :goto_2

    .line 205
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/test/CallInfo;->createIncomingCall(Ljava/lang/String;)Lcom/android/internal/telephony/test/CallInfo;

    move-result-object v5

    aput-object v5, v4, v1

    .line 208
    if-eqz v3, :cond_6

    .line 209
    iget-object v4, p0, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->calls:[Lcom/android/internal/telephony/test/CallInfo;

    aget-object v4, v4, v1

    sget-object v5, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    iput-object v5, v4, Lcom/android/internal/telephony/test/CallInfo;->state:Lcom/android/internal/telephony/test/CallInfo$State;

    .line 212
    :cond_6
    monitor-exit p0

    .line 213
    const/4 v4, 0x1

    goto :goto_2

    .line 212
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
