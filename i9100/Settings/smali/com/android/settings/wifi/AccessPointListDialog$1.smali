.class Lcom/android/settings/wifi/AccessPointListDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "AccessPointListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AccessPointListDialog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AccessPointListDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AccessPointListDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointListDialog$1;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$1;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    #calls: Lcom/android/settings/wifi/AccessPointListDialog;->handleEvent(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/android/settings/wifi/AccessPointListDialog;->access$000(Lcom/android/settings/wifi/AccessPointListDialog;Landroid/content/Intent;)V

    .line 144
    return-void
.end method
