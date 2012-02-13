.class Lcom/android/phone/BluetoothAtSms$7;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothAtSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothAtSms;->register(Landroid/bluetooth/AtParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothAtSms;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothAtSms;)V
    .locals 0
    .parameter

    .prologue
    .line 1876
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$7;->this$0:Lcom/android/phone/BluetoothAtSms;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 4
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    .line 1880
    iget-object v2, p0, Lcom/android/phone/BluetoothAtSms$7;->this$0:Lcom/android/phone/BluetoothAtSms;

    #calls: Lcom/android/phone/BluetoothAtSms;->parseAtCmgl([Ljava/lang/Object;)Lcom/android/phone/BluetoothAtSms$SmsStatus;
    invoke-static {v2, p1}, Lcom/android/phone/BluetoothAtSms;->access$1800(Lcom/android/phone/BluetoothAtSms;[Ljava/lang/Object;)Lcom/android/phone/BluetoothAtSms$SmsStatus;

    move-result-object v1

    .line 1881
    .local v1, stat:Lcom/android/phone/BluetoothAtSms$SmsStatus;
    iget-object v2, p0, Lcom/android/phone/BluetoothAtSms$7;->this$0:Lcom/android/phone/BluetoothAtSms;

    #calls: Lcom/android/phone/BluetoothAtSms;->getSmsMessageStorageName(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothAtSms;->access$900(Lcom/android/phone/BluetoothAtSms;I)Ljava/lang/String;

    move-result-object v0

    .line 1882
    .local v0, mem1:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1883
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1890
    :goto_0
    return-object v2

    .line 1884
    :cond_0
    iget-object v2, p0, Lcom/android/phone/BluetoothAtSms$7;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I
    invoke-static {v2}, Lcom/android/phone/BluetoothAtSms;->access$300(Lcom/android/phone/BluetoothAtSms;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1890
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 1886
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/BluetoothAtSms$7;->this$0:Lcom/android/phone/BluetoothAtSms;

    #calls: Lcom/android/phone/BluetoothAtSms;->handleAtCmglSetCmdPduMode(Lcom/android/phone/BluetoothAtSms$SmsStatus;Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    invoke-static {v2, v1, v0}, Lcom/android/phone/BluetoothAtSms;->access$1900(Lcom/android/phone/BluetoothAtSms;Lcom/android/phone/BluetoothAtSms$SmsStatus;Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v2

    goto :goto_0

    .line 1888
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/BluetoothAtSms$7;->this$0:Lcom/android/phone/BluetoothAtSms;

    #calls: Lcom/android/phone/BluetoothAtSms;->handleAtCmglSetCmdTextMode(Lcom/android/phone/BluetoothAtSms$SmsStatus;Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    invoke-static {v2, v1, v0}, Lcom/android/phone/BluetoothAtSms;->access$2000(Lcom/android/phone/BluetoothAtSms;Lcom/android/phone/BluetoothAtSms$SmsStatus;Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v2

    goto :goto_0

    .line 1884
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .locals 3

    .prologue
    .line 1895
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1896
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms$7;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I
    invoke-static {v1}, Lcom/android/phone/BluetoothAtSms;->access$300(Lcom/android/phone/BluetoothAtSms;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1904
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    .line 1907
    :goto_0
    return-object v0

    .line 1898
    :pswitch_0
    const-string v1, "+CMGL: (0,1,2,3,4)"

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 1901
    :pswitch_1
    const-string v1, "+CMGL: (\"REC UNREAD\",\"REC READ\",\"STO UNSENT\",\"STO SENT\",\"ALL\")"

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 1896
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
