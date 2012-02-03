.class public Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothSAPDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;


# instance fields
.field protected mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 72
    const-string v2, "BluetoothSAPDialog"

    const-string v3, "createView"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 75
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    .local v0, messageView1:Landroid/widget/TextView;
    const v2, 0x7f080762

    invoke-virtual {p0, v2}, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 96
    const-string v0, "BluetoothSAPDialog"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    packed-switch p2, :pswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 99
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->onDisconnect()V

    goto :goto_0

    .line 103
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->finish()V

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const-string v5, "BluetoothSAPDialog"

    .line 45
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const-string v3, "BluetoothSAPDialog"

    const-string v3, "onCreate"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "SVC_NAME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, service_name:Ljava/lang/String;
    const-string v3, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "bluetooth_sap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 53
    :cond_0
    const-string v3, "BluetoothSAPDialog"

    const-string v3, "Not BT_SERVICE_CONNECTION_ACTION, SERVICE_NAME"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->finish()V

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 58
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x10801eb

    iput v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 60
    const v3, 0x7f080760

    invoke-virtual {p0, v3}, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->createView()Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 64
    const v3, 0x7f0806d1

    invoke-virtual {p0, v3}, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 65
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 66
    const v3, 0x7f0806d2

    invoke-virtual {p0, v3}, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 67
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->setupAlert()V

    .line 69
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 109
    const-string v0, "BluetoothSAPDialog"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->finish()V

    .line 113
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 114
    return-void
.end method

.method public onDisconnect()V
    .locals 3

    .prologue
    const-string v2, "bluetooth_sap"

    .line 88
    const-string v0, "BluetoothSAPDialog"

    const-string v1, "onDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v0, "bluetooth_sap"

    invoke-static {v2}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager;->isServiceSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "bluetooth_sap"

    invoke-static {v2, p0, p0}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager;->getProxy(Ljava/lang/String;Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    .line 93
    :cond_0
    return-void
.end method

.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 2
    .parameter "ProxyObject"

    .prologue
    .line 81
    check-cast p1, Lcom/broadcom/bt/service/sap/BluetoothSAP;

    .end local p1
    iput-object p1, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    .line 82
    const-string v0, "BluetoothSAPDialog"

    const-string v1, "onProxyAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/samsung/android/bt/app/sap/BluetoothSAPDialog;->mSAPProxy:Lcom/broadcom/bt/service/sap/BluetoothSAP;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->disconnect(B)V

    .line 85
    :cond_0
    return-void
.end method
