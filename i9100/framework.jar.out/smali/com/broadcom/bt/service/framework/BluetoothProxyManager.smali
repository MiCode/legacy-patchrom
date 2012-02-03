.class public final Lcom/broadcom/bt/service/framework/BluetoothProxyManager;
.super Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;
.source "BluetoothProxyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothProxyManager"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;-><init>()V

    return-void
.end method

.method public static getProxy(Ljava/lang/String;Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .locals 5
    .parameter "name"
    .parameter "ctx"
    .parameter "cb"

    .prologue
    const/4 v2, 0x0

    const-string v4, "Unable to get service proxy for "

    const-string v3, "BluetoothProxyManager"

    .line 80
    if-nez p0, :cond_0

    .line 81
    const-string v0, "BluetoothProxyManager"

    const-string v0, "Unable to get service proxy. Invalid name"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 110
    :goto_0
    return v0

    .line 86
    :cond_0
    invoke-static {p1, p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    const-string v0, "BluetoothProxyManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to get service proxy for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Service is not enabled..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 89
    goto :goto_0

    .line 92
    :cond_1
    const-string v0, "bluetooth_bpp_service"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    invoke-static {p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    move-result v0

    goto :goto_0

    .line 94
    :cond_2
    const-string v0, "bluetooth_dun"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    invoke-static {p1, p2}, Lcom/broadcom/bt/service/dun/BluetoothDUN;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    move-result v0

    goto :goto_0

    .line 96
    :cond_3
    const-string v0, "bluetooth_ftp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    invoke-static {p1, p2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    move-result v0

    goto :goto_0

    .line 98
    :cond_4
    const-string v0, "bluetooth_fm_receiver_service"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 99
    invoke-static {p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    move-result v0

    goto :goto_0

    .line 100
    :cond_5
    const-string v0, "bluetooth_opp_service"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 101
    invoke-static {p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    move-result v0

    goto :goto_0

    .line 102
    :cond_6
    const-string v0, "bluetooth_pbap"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 103
    invoke-static {p1, p2}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    move-result v0

    goto :goto_0

    .line 104
    :cond_7
    const-string v0, "bluetooth_sap"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 105
    invoke-static {p1, p2}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    move-result v0

    goto/16 :goto_0

    .line 106
    :cond_8
    const-string v0, "bluetooth_test"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 107
    invoke-static {p1, p2}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    move-result v0

    goto/16 :goto_0

    .line 109
    :cond_9
    const-string v0, "BluetoothProxyManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to get service proxy for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 110
    goto/16 :goto_0
.end method
