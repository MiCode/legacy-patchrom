.class Lcom/android/phone/BluetoothAtSms$6;
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
    .line 1859
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$6;->this$0:Lcom/android/phone/BluetoothAtSms;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 2
    .parameter "args"

    .prologue
    const/4 v1, 0x1

    .line 1862
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms$6;->this$0:Lcom/android/phone/BluetoothAtSms;

    #calls: Lcom/android/phone/BluetoothAtSms;->parseAtCmgs([Ljava/lang/Object;)Z
    invoke-static {v0, p1}, Lcom/android/phone/BluetoothAtSms;->access$1500(Lcom/android/phone/BluetoothAtSms;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1863
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1872
    :goto_0
    return-object v0

    .line 1865
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms$6;->this$0:Lcom/android/phone/BluetoothAtSms;

    #setter for: Lcom/android/phone/BluetoothAtSms;->mInputMode:I
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothAtSms;->access$702(Lcom/android/phone/BluetoothAtSms;I)I

    .line 1866
    const-string v0, ""

    invoke-static {v0}, Lcom/android/phone/BluetoothAtSms;->access$1602(Ljava/lang/String;)Ljava/lang/String;

    .line 1867
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms$6;->this$0:Lcom/android/phone/BluetoothAtSms;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/BluetoothAtSms;->mCanDeleteNumber:I
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothAtSms;->access$1702(Lcom/android/phone/BluetoothAtSms;I)I

    .line 1869
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms$6;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v0}, Lcom/android/phone/BluetoothAtSms;->access$100(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    const-string v1, "\r\n> "

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 1871
    const-string v0, "+CMGS"

    const-string v1, "wait sms input"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0
.end method
