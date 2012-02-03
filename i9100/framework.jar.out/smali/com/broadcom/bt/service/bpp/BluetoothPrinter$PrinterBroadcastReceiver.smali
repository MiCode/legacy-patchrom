.class Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrinterBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrinterBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)V
    .locals 0
    .parameter

    .prologue
    .line 900
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrinterBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;Lcom/broadcom/bt/service/bpp/BluetoothPrinter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 900
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrinterBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, -0x1

    .line 905
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrinterBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    #getter for: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mEventHandler:Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$200(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;

    move-result-object v0

    .line 906
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;
    if-nez v0, :cond_1

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 910
    :cond_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrinterBroadcastReceiver;->abortBroadcast()V

    .line 912
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 913
    .local v7, action:Ljava/lang/String;
    const-string v1, "com.broadcom.bt.bpp.action.ON_PRINTER_OPEN"

    sget v2, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v7, v2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$300(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 914
    invoke-interface {v0}, Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;->onPrinterSessionOpen()V

    goto :goto_0

    .line 915
    :cond_2
    const-string v1, "com.broadcom.bt.bpp.action.ON_AUTH_PRTR"

    sget v2, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v7, v2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$400(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 917
    const-string v1, "REALM_INDEX"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "REALM_LNGTH"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "REALM_CHARSET"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "REQD"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;->onAuthorizePrinter(IIIZ)V

    goto :goto_0

    .line 922
    :cond_3
    const-string v1, "com.broadcom.bt.bpp.action.ON_GET_PRTR_CAP"

    sget v2, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v7, v2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->access$500(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 924
    const-string v1, "SVC"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "BPP_FEAT"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "OPP_FEAT"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "BIP_FEAT"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "BIPCAP"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/bpp/BipCapabilities;

    const-string v6, "BPPATTR"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/broadcom/bt/service/bpp/BppAttributes;

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;->onGetPrinterCapabilities(IIIILcom/broadcom/bt/service/bpp/BipCapabilities;Lcom/broadcom/bt/service/bpp/BppAttributes;)V

    goto :goto_0
.end method
