.class Lcom/broadcom/bt/app/settings/BluetoothStateActivity$1;
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
    .line 67
    iput-object p1, p0, Lcom/broadcom/bt/app/settings/BluetoothStateActivity$1;->this$0:Lcom/broadcom/bt/app/settings/BluetoothStateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothStateActivity$1;->this$0:Lcom/broadcom/bt/app/settings/BluetoothStateActivity;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/settings/BluetoothStateActivity;->finish()V

    .line 70
    return-void
.end method
