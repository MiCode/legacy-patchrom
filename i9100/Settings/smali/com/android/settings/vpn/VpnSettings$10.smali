.class Lcom/android/settings/vpn/VpnSettings$10;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnSettings;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/VpnSettings;

.field final synthetic val$profile:Landroid/net/vpn/VpnProfile;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings$10;->this$0:Lcom/android/settings/vpn/VpnSettings;

    iput-object p2, p0, Lcom/android/settings/vpn/VpnSettings$10;->val$profile:Landroid/net/vpn/VpnProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "w"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings$10;->this$0:Lcom/android/settings/vpn/VpnSettings;

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings$10;->val$profile:Landroid/net/vpn/VpnProfile;

    #calls: Lcom/android/settings/vpn/VpnSettings;->startVpnEditor(Landroid/net/vpn/VpnProfile;)V
    invoke-static {v0, v1}, Lcom/android/settings/vpn/VpnSettings;->access$500(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V

    .line 382
    return-void
.end method
