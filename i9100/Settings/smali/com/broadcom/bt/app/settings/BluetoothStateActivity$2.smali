.class Lcom/broadcom/bt/app/settings/BluetoothStateActivity$2;
.super Ljava/lang/Object;
.source "BluetoothStateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/settings/BluetoothStateActivity;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/settings/BluetoothStateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/broadcom/bt/app/settings/BluetoothStateActivity$2;->this$0:Lcom/broadcom/bt/app/settings/BluetoothStateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothStateActivity$2;->this$0:Lcom/broadcom/bt/app/settings/BluetoothStateActivity;

    #getter for: Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static {v0}, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->access$000(Lcom/broadcom/bt/app/settings/BluetoothStateActivity;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setBluetoothEnabled(Z)V

    .line 65
    return-void
.end method
