.class Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;
.super Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;
.source "FmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmReceiverCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmReceiver;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiver;Lcom/broadcom/bt/service/fm/FmReceiver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1296
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;-><init>(Lcom/broadcom/bt/service/fm/FmReceiver;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onAudioModeEvent(I)V
    .locals 1
    .parameter "audioMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1340
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onAudioModeEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1342
    :cond_0
    monitor-exit p0

    return-void

    .line 1340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onAudioPathEvent(I)V
    .locals 1
    .parameter "audioPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1348
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onAudioPathEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1350
    :cond_0
    monitor-exit p0

    return-void

    .line 1348
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onEstimateNflEvent(I)V
    .locals 1
    .parameter "nfl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1356
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onEstimateNoiseFloorLevelEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1358
    :cond_0
    monitor-exit p0

    return-void

    .line 1356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onLiveAudioQualityEvent(I)V
    .locals 1
    .parameter "rssi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1364
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onLiveAudioQualityEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1366
    :cond_0
    monitor-exit p0

    return-void

    .line 1364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRdsDataEvent(IILjava/lang/String;)V
    .locals 1
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1332
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onRdsDataEvent(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1334
    :cond_0
    monitor-exit p0

    return-void

    .line 1332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRdsModeEvent(II)V
    .locals 1
    .parameter "rdsMode"
    .parameter "alternateFreqHopEnabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1324
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onRdsModeEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1326
    :cond_0
    monitor-exit p0

    return-void

    .line 1324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSeekCompleteEvent(IIZ)V
    .locals 1
    .parameter "freq"
    .parameter "rssi"
    .parameter "seeksuccess"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1316
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onSeekCompleteEvent(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1318
    :cond_0
    monitor-exit p0

    return-void

    .line 1316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStatusEvent(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .parameter "freq"
    .parameter "rssi"
    .parameter "radioIsOn"
    .parameter "rdsProgramType"
    .parameter "rdsProgramService"
    .parameter "rdsRadioText"
    .parameter "rdsProgramTypeName"
    .parameter "isMute"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1305
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onStatusEvent(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1310
    :cond_0
    monitor-exit p0

    return-void

    .line 1305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onVolumeEvent(II)V
    .locals 1
    .parameter "status"
    .parameter "volume"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1379
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onVolumeEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1381
    :cond_0
    monitor-exit p0

    return-void

    .line 1379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onWorldRegionEvent(I)V
    .locals 1
    .parameter "worldRegion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1372
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onWorldRegionEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1374
    :cond_0
    monitor-exit p0

    return-void

    .line 1372
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
