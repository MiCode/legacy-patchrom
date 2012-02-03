.class Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrintTaskBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)V
    .locals 0
    .parameter

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;Lcom/broadcom/bt/service/bpp/BluetoothPrinter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1011
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    const-wide/16 v4, -0x1

    const-string v9, "NAME"

    const-string v8, "STATUS"

    const-string v6, "JOBID"

    .line 1014
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    #getter for: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$600(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    move-result-object v1

    .line 1015
    .local v1, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-nez v1, :cond_1

    .line 1056
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 1019
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskBroadcastReceiver;->abortBroadcast()V

    .line 1021
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1022
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.broadcom.bt.bpp.action.ON_DOC_CMPL"

    sget v3, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$700(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1023
    const-string v2, "JOBID"

    invoke-virtual {p2, v6, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "STATUS"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterBppDocComplete(JI)V

    goto :goto_0

    .line 1025
    :cond_2
    const-string v2, "com.broadcom.bt.bpp.action.ON_GET_OBJ"

    sget v3, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$800(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1027
    const-string v2, "JOBID"

    invoke-virtual {p2, v6, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "NAME"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterGetObject(JLjava/lang/String;)V

    goto :goto_0

    .line 1029
    :cond_3
    const-string v2, "com.broadcom.bt.bpp.action.ON_JOB_STATUS"

    sget v3, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$900(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1031
    const-string v2, "JOBID"

    invoke-virtual {p2, v6, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "STATUS"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/broadcom/bt/service/bpp/JobStatus;

    invoke-interface {v1, v2, v3, p0}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterJobStatus(JLcom/broadcom/bt/service/bpp/JobStatus;)V

    goto :goto_0

    .line 1033
    .restart local p0
    :cond_4
    const-string v2, "com.broadcom.bt.bpp.action.ON_PART_IMG"

    sget v3, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$1000(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1035
    const-string v2, "JOBID"

    invoke-virtual {p2, v6, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "NAME"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterPartialImage(JLjava/lang/String;)V

    goto :goto_0

    .line 1037
    :cond_5
    const-string v2, "com.broadcom.bt.bpp.action.ON_PROGRESS"

    sget v3, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$1100(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1039
    const-string v2, "JOBID"

    invoke-virtual {p2, v6, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "TOTAL_BYTES"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "BYTES_TRANSFERRED"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterProgress(JII)V

    goto/16 :goto_0

    .line 1042
    :cond_6
    const-string v2, "com.broadcom.bt.bpp.action.ON_CLOSE"

    sget v3, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$1200(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1044
    const-string v2, "JOBID"

    invoke-virtual {p2, v6, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "STATUS"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterTaskClosed(JI)V

    goto/16 :goto_0

    .line 1047
    :cond_7
    const-string v2, "com.broadcom.bt.bpp.action.ON_OPEN"

    sget v3, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$1300(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1049
    const-string v2, "JOBID"

    invoke-virtual {p2, v6, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "SVCID"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterTaskOpen(JI)V

    goto/16 :goto_0

    .line 1051
    :cond_8
    const-string v2, "com.broadcom.bt.bpp.action.ON_THUMBNAIL"

    sget v3, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$1400(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1053
    const-string v2, "JOBID"

    invoke-virtual {p2, v6, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterThumbnail(J)V

    goto/16 :goto_0
.end method
