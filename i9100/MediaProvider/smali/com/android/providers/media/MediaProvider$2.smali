.class Lcom/android/providers/media/MediaProvider$2;
.super Landroid/content/BroadcastReceiver;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    const-class v8, Lcom/android/providers/media/MediaScannerService;

    const-string v7, "volume"

    .line 449
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 450
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUnmountReceiver - Intent.getAction : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", path["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryUsbHost()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mUnmountReceiver - USB OTG. Start MediaScanner for USB OTG storage area"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    sget v1, Landroid/media/MediaScanner;->generation:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/media/MediaScanner;->generation:I

    .line 486
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    const/4 v2, 0x4

    #calls: Lcom/android/providers/media/MediaProvider;->stopMediaScanner(Ljava/lang/String;I)V
    invoke-static {v1, v0, v2}, Lcom/android/providers/media/MediaProvider;->access$200(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;I)V

    .line 488
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 489
    const-string v2, "volume"

    const-string v2, "usb_otg"

    invoke-virtual {v1, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v2, "usbStorageDynamicPath"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/providers/media/MediaScannerService;

    invoke-direct {v0, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    sget-object v1, Lcom/android/providers/media/MediaProvider;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 498
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 499
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    #calls: Lcom/android/providers/media/MediaProvider;->stopMediaScanner(Ljava/lang/String;I)V
    invoke-static {v1, v0, v5}, Lcom/android/providers/media/MediaProvider;->access$200(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;I)V

    .line 500
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_THUMBWORKER_SUSPEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 501
    invoke-static {v4}, Landroid/media/MiniThumbFile;->reset(I)V

    .line 504
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mSdSerial:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/providers/media/MediaProvider;->access$300(Lcom/android/providers/media/MediaProvider;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 505
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    const-string v1, "external"

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mSdSerial:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->access$300(Lcom/android/providers/media/MediaProvider;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->saveExternalSdDatabase(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    #setter for: Lcom/android/providers/media/MediaProvider;->mSdSerial:Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/android/providers/media/MediaProvider;->access$302(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 507
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$100()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    #calls: Lcom/android/providers/media/MediaProvider;->isUsbMassStorageEnabled()Z
    invoke-static {v0}, Lcom/android/providers/media/MediaProvider;->access$400(Lcom/android/providers/media/MediaProvider;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    #calls: Lcom/android/providers/media/MediaProvider;->removeMediaDBData()V
    invoke-static {v0}, Lcom/android/providers/media/MediaProvider;->access$500(Lcom/android/providers/media/MediaProvider;)V

    .line 508
    :cond_2
    invoke-static {v4}, Landroid/media/MiniThumbFile;->reset(I)V

    .line 511
    :cond_3
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$100()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    #calls: Lcom/android/providers/media/MediaProvider;->isUsbMassStorageEnabled()Z
    invoke-static {v0}, Lcom/android/providers/media/MediaProvider;->access$400(Lcom/android/providers/media/MediaProvider;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 512
    :cond_4
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mUnmountReceiver - Suspend Thumbworker & Skip this intent!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_THUMBWORKER_SUSPEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 514
    invoke-static {v4}, Landroid/media/MiniThumbFile;->reset(I)V

    goto/16 :goto_0

    .line 518
    :cond_5
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$600()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 519
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bIsBadRemoved : true -> false; Remove External SD DB! & Start MediaScanner"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    sget v0, Landroid/media/MediaScanner;->generation:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/media/MediaScanner;->generation:I

    .line 521
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/providers/media/MediaProvider;->access$602(Z)Z

    .line 523
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 524
    const-string v1, "volume"

    const-string v1, "external/sd"

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/providers/media/MediaScannerService;

    invoke-direct {v1, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 528
    :cond_6
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bIsWaitingUnmountIntent : false -> true;"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$702(Z)Z

    goto/16 :goto_0

    .line 531
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 532
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bIsBadRemoved : false -> true;"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$602(Z)Z

    goto/16 :goto_0

    .line 535
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$100()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    #calls: Lcom/android/providers/media/MediaProvider;->isUsbMassStorageEnabled()Z
    invoke-static {v1}, Lcom/android/providers/media/MediaProvider;->access$400(Lcom/android/providers/media/MediaProvider;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 537
    :cond_9
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mUnmountReceiver - Stop MediaScanner & Skip this intent!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    #calls: Lcom/android/providers/media/MediaProvider;->stopMediaScanner(Ljava/lang/String;I)V
    invoke-static {v1, v0, v4}, Lcom/android/providers/media/MediaProvider;->access$200(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 542
    :cond_a
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$700()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 544
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    #calls: Lcom/android/providers/media/MediaProvider;->stopMediaScanner(Ljava/lang/String;I)V
    invoke-static {v1, v0, v4}, Lcom/android/providers/media/MediaProvider;->access$200(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;I)V

    .line 545
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnmountIntent : Remove External SD DB if necessary!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mSdSerial:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/providers/media/MediaProvider;->access$300(Lcom/android/providers/media/MediaProvider;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 548
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    const-string v1, "external"

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mSdSerial:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->access$300(Lcom/android/providers/media/MediaProvider;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->saveExternalSdDatabase(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    #setter for: Lcom/android/providers/media/MediaProvider;->mSdSerial:Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/android/providers/media/MediaProvider;->access$302(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 550
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    #calls: Lcom/android/providers/media/MediaProvider;->removeMediaDBData()V
    invoke-static {v0}, Lcom/android/providers/media/MediaProvider;->access$500(Lcom/android/providers/media/MediaProvider;)V

    .line 551
    invoke-static {v4}, Landroid/media/MiniThumbFile;->reset(I)V

    .line 554
    :cond_b
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bIsWaitingUnmountIntent : true -> false; Start MediaScanner"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    sget v0, Landroid/media/MediaScanner;->generation:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/media/MediaScanner;->generation:I

    .line 556
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/providers/media/MediaProvider;->access$702(Z)Z

    .line 558
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 559
    const-string v1, "volume"

    const-string v1, "external/sd"

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/providers/media/MediaScannerService;

    invoke-direct {v1, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 564
    :cond_c
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bIsWaitingUnmountIntent : false. Skip this intent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 570
    :cond_d
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->INTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    sget v1, Landroid/media/MediaScanner;->generation:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/media/MediaScanner;->generation:I

    .line 573
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    const/4 v2, 0x3

    #calls: Lcom/android/providers/media/MediaProvider;->stopMediaScanner(Ljava/lang/String;I)V
    invoke-static {v1, v0, v2}, Lcom/android/providers/media/MediaProvider;->access$200(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;I)V

    .line 574
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    #setter for: Lcom/android/providers/media/MediaProvider;->mSdSerial:Ljava/lang/String;
    invoke-static {v1, v6}, Lcom/android/providers/media/MediaProvider;->access$302(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 575
    sget-object v1, Lcom/android/providers/media/MediaProvider;->INTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 576
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mUnmountReceiver - Internal_SD, /sdcard -> only do detachVolume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    const-string v1, "content://media/external"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    #calls: Lcom/android/providers/media/MediaProvider;->detachVolume(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider;->access$800(Lcom/android/providers/media/MediaProvider;Landroid/net/Uri;)V

    .line 578
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$900()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 580
    :cond_e
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    goto/16 :goto_0
.end method
