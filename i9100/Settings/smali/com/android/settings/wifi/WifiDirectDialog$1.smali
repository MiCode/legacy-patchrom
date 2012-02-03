.class Lcom/android/settings/wifi/WifiDirectDialog$1;
.super Ljava/lang/Object;
.source "WifiDirectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiDirectDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiDirectDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiDirectDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDirectDialog$1;->this$0:Lcom/android/settings/wifi/WifiDirectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog$1;->this$0:Lcom/android/settings/wifi/WifiDirectDialog;

    #getter for: Lcom/android/settings/wifi/WifiDirectDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectDialog;->access$000(Lcom/android/settings/wifi/WifiDirectDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog$1;->this$0:Lcom/android/settings/wifi/WifiDirectDialog;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/wifi/WifiDirectDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiDirectDialog;->access$002(Lcom/android/settings/wifi/WifiDirectDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 132
    :cond_0
    return-void
.end method
