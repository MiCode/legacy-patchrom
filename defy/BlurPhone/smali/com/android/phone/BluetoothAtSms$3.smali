.class Lcom/android/phone/BluetoothAtSms$3;
.super Landroid/bluetooth/AtCommandConcomitantHandler;
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
    .line 1638
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$3;->this$0:Lcom/android/phone/BluetoothAtSms;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandConcomitantHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleCommand(Ljava/lang/String;)Z
    .locals 4
    .parameter "arg"

    .prologue
    const/4 v3, 0x1

    const-string v1, "AtCmgsConcomitant"

    .line 1641
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms$3;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mInputMode:I
    invoke-static {v0}, Lcom/android/phone/BluetoothAtSms;->access$700(Lcom/android/phone/BluetoothAtSms;)I

    move-result v0

    if-ne v3, v0, :cond_0

    .line 1642
    const-string v0, "AtCmgsConcomitant"

    const-string v0, "INPUT_MODE_MESSAGE_SEND"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms$3;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms$3;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/BluetoothAtSms;->access$000(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothAtSms$3;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v2}, Lcom/android/phone/BluetoothAtSms;->access$100(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    #calls: Lcom/android/phone/BluetoothAtSms;->process(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, p1}, Lcom/android/phone/BluetoothAtSms;->access$800(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    move v0, v3

    .line 1647
    :goto_0
    return v0

    .line 1646
    :cond_0
    const-string v0, "AtCmgsConcomitant"

    const-string v0, "INPUT_MODE_NORMAL"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    const/4 v0, 0x0

    goto :goto_0
.end method
