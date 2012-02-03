.class Lcom/android/settings/wifi/WifiApSettings$4;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$4;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$4;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$200(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApEnabler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApEnabler;->setEnableWifiAP(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$4;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApSettings;->showDisconectProgressDialog()V

    .line 176
    return-void
.end method
