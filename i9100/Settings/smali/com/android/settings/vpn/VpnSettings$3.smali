.class Lcom/android/settings/vpn/VpnSettings$3;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnSettings;->createConnectDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/VpnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/VpnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings$3;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings$3;->this$0:Lcom/android/settings/vpn/VpnSettings;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn/VpnSettings;->removeDialog(I)V

    .line 217
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings$3;->this$0:Lcom/android/settings/vpn/VpnSettings;

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings$3;->this$0:Lcom/android/settings/vpn/VpnSettings;

    #getter for: Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;
    invoke-static {v1}, Lcom/android/settings/vpn/VpnSettings;->access$300(Lcom/android/settings/vpn/VpnSettings;)Landroid/net/vpn/VpnProfile;

    move-result-object v1

    sget-object v2, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    #calls: Lcom/android/settings/vpn/VpnSettings;->changeState(Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/vpn/VpnSettings;->access$400(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V

    .line 218
    return-void
.end method
