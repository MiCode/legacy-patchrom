.class Lcom/android/settings/vpn/VpnSettings$4;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnSettings;->createSecretNotSetDialog()Landroid/app/Dialog;
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
    .line 273
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings$4;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "w"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings$4;->this$0:Lcom/android/settings/vpn/VpnSettings;

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings$4;->this$0:Lcom/android/settings/vpn/VpnSettings;

    #getter for: Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;
    invoke-static {v1}, Lcom/android/settings/vpn/VpnSettings;->access$300(Lcom/android/settings/vpn/VpnSettings;)Landroid/net/vpn/VpnProfile;

    move-result-object v1

    #calls: Lcom/android/settings/vpn/VpnSettings;->startVpnEditor(Landroid/net/vpn/VpnProfile;)V
    invoke-static {v0, v1}, Lcom/android/settings/vpn/VpnSettings;->access$500(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V

    .line 276
    return-void
.end method
