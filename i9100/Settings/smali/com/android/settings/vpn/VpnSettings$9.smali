.class Lcom/android/settings/vpn/VpnSettings$9;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnSettings;->createCommonDialogBuilder()Landroid/app/AlertDialog$Builder;
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
    .line 294
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings$9;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "w"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings$9;->this$0:Lcom/android/settings/vpn/VpnSettings;

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings$9;->this$0:Lcom/android/settings/vpn/VpnSettings;

    #getter for: Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;
    invoke-static {v1}, Lcom/android/settings/vpn/VpnSettings;->access$300(Lcom/android/settings/vpn/VpnSettings;)Landroid/net/vpn/VpnProfile;

    move-result-object v1

    #calls: Lcom/android/settings/vpn/VpnSettings;->connectOrDisconnect(Landroid/net/vpn/VpnProfile;)V
    invoke-static {v0, v1}, Lcom/android/settings/vpn/VpnSettings;->access$700(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V

    .line 297
    return-void
.end method
