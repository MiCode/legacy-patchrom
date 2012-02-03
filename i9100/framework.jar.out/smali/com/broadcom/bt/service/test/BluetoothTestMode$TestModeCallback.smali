.class Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;
.super Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;
.source "BluetoothTestMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/test/BluetoothTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/test/BluetoothTestMode;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    invoke-direct {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/test/BluetoothTestMode;Lcom/broadcom/bt/service/test/BluetoothTestMode$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;-><init>(Lcom/broadcom/bt/service/test/BluetoothTestMode;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onBtldApiCmdInd(II[B)V
    .locals 6
    .parameter "cmd"
    .parameter "len"
    .parameter "payload"

    .prologue
    .line 575
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothTestMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onBtldApiCmdInd( cmd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 578
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 579
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 580
    .local v2, instance:I
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 582
    .local v0, callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onBtldApiCmdInd(II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 575
    .end local v0           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2           #instance:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 584
    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onEnableBtSnoop(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 486
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothTestMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onEnableBtSnoop( state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 489
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 490
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 491
    .local v2, instance:I
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 493
    .local v0, callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onEnableBtSnoop(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 486
    .end local v0           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2           #instance:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 495
    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onEnterDUTMode(I)V
    .locals 6
    .parameter "status"

    .prologue
    .line 537
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothTestMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onEnterDUTMode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 539
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 540
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 541
    .local v2, instance:I
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 543
    .local v0, callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onEnterDUTMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 537
    .end local v0           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2           #instance:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 545
    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onEnterTestMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    .line 512
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothTestMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onEnterTestMode( mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 515
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 516
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 517
    .local v2, instance:I
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 519
    .local v0, callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onSetTestMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 512
    .end local v0           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2           #instance:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 521
    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onExitDUTMode(I)V
    .locals 6
    .parameter "status"

    .prologue
    .line 549
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothTestMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onExitDUTMode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 551
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 552
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 553
    .local v2, instance:I
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 555
    .local v0, callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onExitDUTMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 549
    .end local v0           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2           #instance:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 557
    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onExitTestMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    .line 525
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothTestMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onExitTestMode(mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 528
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 530
    .local v2, instance:I
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 532
    .local v0, callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onSetTestMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 525
    .end local v0           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2           #instance:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 534
    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onGetBtSnoopState(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 499
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothTestMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGetBtSnoopState( state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 502
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 503
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 504
    .local v2, instance:I
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 506
    .local v0, callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onGetBtSnoopState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 499
    .end local v0           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2           #instance:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 508
    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onGetTestMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    .line 473
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothTestMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGetTestMode( mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 476
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 477
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 478
    .local v2, instance:I
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 480
    .local v0, callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onSetTestMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 473
    .end local v0           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2           #instance:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 482
    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onSetTestMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    .line 460
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothTestMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSetTestMode( mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 463
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 464
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 465
    .local v2, instance:I
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 467
    .local v0, callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onSetTestMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 460
    .end local v0           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2           #instance:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 469
    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onTx_Rx_Test(II)V
    .locals 6
    .parameter "mode"
    .parameter "status"

    .prologue
    .line 561
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothTestMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTx_Rx_Test( mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 564
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 565
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 566
    .local v2, instance:I
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 568
    .local v0, callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onTx_Rx_Test(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 561
    .end local v0           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2           #instance:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 570
    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method
