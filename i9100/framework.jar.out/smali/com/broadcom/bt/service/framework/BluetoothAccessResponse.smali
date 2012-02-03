.class public Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;
.super Ljava/lang/Object;
.source "BluetoothAccessResponse.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothAccessResponse"


# instance fields
.field private mAllow:Z

.field private mFileName:Ljava/lang/String;

.field private mOpCode:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 6
    .parameter "proxyObject"

    .prologue
    const/4 v5, 0x0

    .line 77
    move-object v0, p1

    check-cast v0, Lcom/broadcom/bt/service/framework/BaseProxy;

    move-object v1, v0

    .line 81
    .local v1, proxy:Lcom/broadcom/bt/service/framework/BaseProxy;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/broadcom/bt/service/framework/BaseProxy;->requiresAccessProcessing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    iget-byte v2, p0, Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;->mOpCode:B

    iget-boolean v3, p0, Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;->mAllow:Z

    iget-object v4, p0, Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/broadcom/bt/service/framework/BaseProxy;->setAccess(IZLjava/lang/Object;)V

    .line 84
    :cond_0
    iput-byte v5, p0, Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;->mOpCode:B

    .line 85
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;->mFileName:Ljava/lang/String;

    .line 86
    iput-boolean v5, p0, Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;->mAllow:Z

    .line 87
    invoke-virtual {v1}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V

    .line 88
    return-void
.end method

.method public process(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 4
    .parameter "ctx"
    .parameter "intent"
    .parameter "allow"

    .prologue
    .line 61
    const-string v1, "SVC_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, serviceName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 65
    const-string v1, "OPERATION"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;->mOpCode:B

    .line 67
    const-string v1, "FILEPATH"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;->mFileName:Ljava/lang/String;

    .line 68
    iput-boolean p3, p0, Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;->mAllow:Z

    .line 69
    invoke-static {v0, p1, p0}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager;->getProxy(Ljava/lang/String;Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    const-string v1, "BluetoothAccessResponse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get proxy to Bluetooth service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    return-void
.end method
