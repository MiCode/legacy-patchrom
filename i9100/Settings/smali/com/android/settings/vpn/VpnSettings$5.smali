.class Lcom/android/settings/vpn/VpnSettings$5;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnSettings;->createCommonEditDialogBuilder()Landroid/app/AlertDialog$Builder;
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
    .line 282
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings$5;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "w"

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings$5;->this$0:Lcom/android/settings/vpn/VpnSettings;

    #getter for: Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;
    invoke-static {v1}, Lcom/android/settings/vpn/VpnSettings;->access$300(Lcom/android/settings/vpn/VpnSettings;)Landroid/net/vpn/VpnProfile;

    move-result-object v0

    .line 285
    .local v0, p:Landroid/net/vpn/VpnProfile;
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings$5;->this$0:Lcom/android/settings/vpn/VpnSettings;

    #calls: Lcom/android/settings/vpn/VpnSettings;->onIdle()V
    invoke-static {v1}, Lcom/android/settings/vpn/VpnSettings;->access$600(Lcom/android/settings/vpn/VpnSettings;)V

    .line 286
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings$5;->this$0:Lcom/android/settings/vpn/VpnSettings;

    #calls: Lcom/android/settings/vpn/VpnSettings;->startVpnEditor(Landroid/net/vpn/VpnProfile;)V
    invoke-static {v1, v0}, Lcom/android/settings/vpn/VpnSettings;->access$500(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V

    .line 287
    return-void
.end method
