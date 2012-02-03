.class Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothFTP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/ftp/BluetoothFTP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FTPBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)V
    .locals 0
    .parameter

    .prologue
    .line 944
    iput-object p1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/ftp/BluetoothFTP;Lcom/broadcom/bt/service/ftp/BluetoothFTP$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 944
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    const-string v8, "RMT_DEV_ADDR"

    const-string v7, "STATUS"

    const-string v3, "FILEPATH"

    .line 949
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    #getter for: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    move-result-object v0

    .line 950
    .local v0, handler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    if-nez v0, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPBroadcastReceiver;->abortBroadcast()V

    .line 956
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 958
    .local v6, action:Ljava/lang/String;
    const-string v1, "com.broadcom.bt.app.ftp.action.ON_FTS_OPENED"

    sget v2, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v6, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$200(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 960
    const-string v1, "RMT_DEV_ADDR"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerOpened(Ljava/lang/String;)V

    goto :goto_0

    .line 961
    :cond_2
    const-string v1, "com.broadcom.bt.app.ftp.action.ON_FTPS_CLOSED"

    sget v2, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v6, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$300(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 963
    invoke-interface {v0}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerClosed()V

    goto :goto_0

    .line 964
    :cond_3
    const-string v1, "com.broadcom.bt.app.ftp.action.ON_FTS_XFR_PROGRESS"

    sget v2, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v6, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$400(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 966
    const-string v1, "TOTAL_BYTES"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "BYTES_TRANSFERRED"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerFileTransferInProgress(II)V

    goto :goto_0

    .line 969
    :cond_4
    const-string v1, "com.broadcom.bt.app.ftp.action.ON_FTS_GET_COMPLETE"

    sget v2, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v6, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$500(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 971
    const-string v1, "FILEPATH"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "STATUS"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerGetCompleted(Ljava/lang/String;B)V

    goto :goto_0

    .line 974
    :cond_5
    const-string v1, "com.broadcom.bt.app.ftp.action.ON_FTPS_PUT_COMPLETE"

    sget v2, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v6, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$600(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 976
    const-string v1, "FILEPATH"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "STATUS"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerPutCompleted(Ljava/lang/String;B)V

    goto :goto_0

    .line 979
    :cond_6
    const-string v1, "com.broadcom.bt.app.ftp.action.ON_FTS_DEL_COMPLETE"

    sget v2, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v6, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$700(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 981
    const-string v1, "FILEPATH"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "STATUS"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerDelCompleted(Ljava/lang/String;B)V

    goto/16 :goto_0

    .line 984
    :cond_7
    const-string v1, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    sget v2, Lcom/broadcom/bt/service/framework/BluetoothIntent;->BT_ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v6, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$800(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 988
    const-string v1, "FILEPATH"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TOTAL_BYTES"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "RMT_DEV_NAME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "OPERATION"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v4

    const-string v5, "RMT_DEV_ADDR"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerAccessRequested(Ljava/lang/String;ILjava/lang/String;BLjava/lang/String;)V

    goto/16 :goto_0
.end method
