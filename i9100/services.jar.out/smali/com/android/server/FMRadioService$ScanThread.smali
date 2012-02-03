.class Lcom/android/server/FMRadioService$ScanThread;
.super Ljava/lang/Thread;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanThread"
.end annotation


# instance fields
.field private scanCount:I

.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 1429
    iput-object p1, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private doScan()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xf

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v8, "scan with 0 1 1"

    .line 1444
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mBand:I
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$2000(Lcom/android/server/FMRadioService;)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1445
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1300(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;

    move-result-object v2

    const-wide/32 v3, 0x155cc

    invoke-virtual {v2, v3, v4}, Lcom/android/server/FMPlayerNative;->tune(J)V

    .line 1449
    :goto_0
    iget v2, p0, Lcom/android/server/FMRadioService$ScanThread;->scanCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/FMRadioService$ScanThread;->scanCount:I

    .line 1452
    :goto_1
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanProgress:Z
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1500(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1454
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->searchUp()J

    move-result-wide v0

    .line 1455
    .local v0, freq:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found channel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1456
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate channel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1447
    .end local v0           #freq:J
    :cond_0
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1300(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;

    move-result-object v2

    const-wide/32 v3, 0x128e0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/FMPlayerNative;->tune(J)V

    goto :goto_0

    .line 1465
    .restart local v0       #freq:J
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 1468
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1469
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    goto :goto_1

    .line 1480
    :cond_2
    const-string v2, "GT-I9100"

    const-string v3, "GT-I9103"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1482
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v7, :cond_5

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mIsOn:Z
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$400(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanProgress:Z
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1500(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1485
    iget v2, p0, Lcom/android/server/FMRadioService$ScanThread;->scanCount:I

    if-ne v2, v5, :cond_5

    .line 1486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1. N1 Total channel is found is less than 15 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1487
    invoke-direct {p0, v6, v5, v5}, Lcom/android/server/FMRadioService$ScanThread;->setSignalSetting(III)V

    .line 1488
    const-string v2, "scan with 0 1 1"

    invoke-static {v8}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1489
    invoke-direct {p0}, Lcom/android/server/FMRadioService$ScanThread;->doScan()V

    .line 1538
    .end local v0           #freq:J
    :cond_3
    :goto_2
    return-void

    .line 1507
    .restart local v0       #freq:J
    :cond_4
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v7, :cond_5

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mIsOn:Z
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$400(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanProgress:Z
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1500(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1510
    iget v2, p0, Lcom/android/server/FMRadioService$ScanThread;->scanCount:I

    if-ne v2, v5, :cond_5

    .line 1511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1. U1 Total channel is found is less than 15 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1512
    invoke-direct {p0, v6, v5, v5}, Lcom/android/server/FMRadioService$ScanThread;->setSignalSetting(III)V

    .line 1513
    const-string v2, "scan with 0 1 1"

    invoke-static {v8}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1514
    invoke-direct {p0}, Lcom/android/server/FMRadioService$ScanThread;->doScan()V

    goto :goto_2

    .line 1532
    :cond_5
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 1534
    const-wide/16 v2, 0x14

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2
.end method

.method private setSignalSetting(III)V
    .locals 1
    .parameter "rssi"
    .parameter "snr"
    .parameter "cnt"

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mIsOn:Z
    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$400(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1440
    :goto_0
    return-void

    .line 1437
    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;
    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$1300(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNative;->setRSSI_th(I)V

    .line 1438
    iget-object v0, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;
    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$1300(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/FMPlayerNative;->setSNR_th(I)V

    .line 1439
    iget-object v0, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;
    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$1300(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/FMPlayerNative;->setCnt_th(I)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    const-string v9, "Scan thread released the dimmed screen lock"

    const-string v8, "Scan Thread resuming volume :"

    .line 1541
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    #setter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v2, v3}, Lcom/android/server/FMRadioService;->access$2102(Lcom/android/server/FMRadioService;I)I

    .line 1543
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$2200(Lcom/android/server/FMRadioService;)Landroid/os/PowerManager;

    move-result-object v2

    const v3, 0x20000006

    const-string v4, "FMRadio Service Scan Thread"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 1544
    .local v1, wakelock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1545
    const-string v2, "Scan thread gets the dimmed screen lock"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1547
    :try_start_0
    const-string v2, "Scanning Thread started..."

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1548
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 1550
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1300(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FMPlayerNative;->muteOn()V

    .line 1551
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1560
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 1563
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v3}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v3

    #setter for: Lcom/android/server/FMRadioService;->mScanFreq:J
    invoke-static {v2, v3, v4}, Lcom/android/server/FMRadioService;->access$1702(Lcom/android/server/FMRadioService;J)J

    .line 1565
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1566
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/android/server/FMRadioService;->access$1602(Lcom/android/server/FMRadioService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1571
    :goto_0
    const-string v2, "GT-I9100"

    const-string v3, "GT-I9103"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1573
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/FMRadioService$ScanThread;->setSignalSetting(III)V

    .line 1574
    const-string v2, "N1 first scan with 0 1 3 "

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1583
    :goto_1
    invoke-direct {p0}, Lcom/android/server/FMRadioService$ScanThread;->doScan()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1589
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #setter for: Lcom/android/server/FMRadioService;->mScanProgress:Z
    invoke-static {v2, v6}, Lcom/android/server/FMRadioService;->access$1502(Lcom/android/server/FMRadioService;Z)Z

    .line 1591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scan Thread resuming volume :"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$2100(Lcom/android/server/FMRadioService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1592
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$2100(Lcom/android/server/FMRadioService;)I

    move-result v3

    invoke-virtual {v2, v7, v3, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1596
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1597
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1598
    const-string v2, "Scan thread released the dimmed screen lock"

    invoke-static {v9}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1601
    :cond_0
    :goto_2
    const-string v2, "Scanning Thread work is done..."

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1603
    return-void

    .line 1568
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1585
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1587
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1589
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #setter for: Lcom/android/server/FMRadioService;->mScanProgress:Z
    invoke-static {v2, v6}, Lcom/android/server/FMRadioService;->access$1502(Lcom/android/server/FMRadioService;Z)Z

    .line 1591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scan Thread resuming volume :"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$2100(Lcom/android/server/FMRadioService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1592
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$2100(Lcom/android/server/FMRadioService;)I

    move-result v3

    invoke-virtual {v2, v7, v3, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1596
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1597
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1598
    const-string v2, "Scan thread released the dimmed screen lock"

    invoke-static {v9}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1579
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    :try_start_3
    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/FMRadioService$ScanThread;->setSignalSetting(III)V

    .line 1580
    const-string v2, "U1 first scan no block channel with 0 2 1"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 1589
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #setter for: Lcom/android/server/FMRadioService;->mScanProgress:Z
    invoke-static {v3, v6}, Lcom/android/server/FMRadioService;->access$1502(Lcom/android/server/FMRadioService;Z)Z

    .line 1591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scan Thread resuming volume :"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$2100(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1592
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$2100(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v3, v7, v4, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1596
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1597
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1598
    const-string v3, "Scan thread released the dimmed screen lock"

    invoke-static {v9}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_3
    throw v2
.end method
