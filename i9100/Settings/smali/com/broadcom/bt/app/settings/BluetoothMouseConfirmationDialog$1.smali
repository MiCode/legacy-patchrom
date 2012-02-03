.class Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog$1;
.super Ljava/lang/Object;
.source "BluetoothMouseConfirmationDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog$1;->this$0:Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 107
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog$1;->this$0:Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;

    iget v2, v1, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->mTimeout:I

    sub-int/2addr v2, v7

    iput v2, v1, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->mTimeout:I

    .line 108
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog$1;->this$0:Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;

    iget v1, v1, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->mTimeout:I

    if-nez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog$1;->this$0:Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;

    #calls: Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->disconnect()V
    invoke-static {v1}, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->access$000(Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;)V

    .line 110
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog$1;->this$0:Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;

    .line 111
    .local v0, context:Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationBroadcastReceiver;->setLastConnectedMouseAddress(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog$1;->this$0:Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->finish()V

    .line 120
    .end local v0           #context:Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog$1;->this$0:Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;

    iget-object v1, v1, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->messageView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog$1;->this$0:Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;

    const v3, 0x7f080758

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog$1;->this$0:Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;

    #getter for: Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->access$100(Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog$1;->this$0:Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;

    const v6, 0x7f08038b

    invoke-virtual {v5, v6}, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog$1;->this$0:Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;

    iget v6, v6, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->mTimeout:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog$1;->this$0:Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;

    iget-object v1, v1, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog$1;->this$0:Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;

    #getter for: Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->mUpdateTimeTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;->access$200(Lcom/broadcom/bt/app/settings/BluetoothMouseConfirmationDialog;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
