.class Lcom/android/settings/vpn/VpnSettings$18;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnSettings;->connect(Landroid/net/vpn/VpnProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/VpnSettings;

.field final synthetic val$p:Landroid/net/vpn/VpnProfile;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 670
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings$18;->this$0:Lcom/android/settings/vpn/VpnSettings;

    iput-object p2, p0, Lcom/android/settings/vpn/VpnSettings$18;->val$p:Landroid/net/vpn/VpnProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings$18;->this$0:Lcom/android/settings/vpn/VpnSettings;

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings$18;->val$p:Landroid/net/vpn/VpnProfile;

    #calls: Lcom/android/settings/vpn/VpnSettings;->connect(Landroid/net/vpn/VpnProfile;)V
    invoke-static {v0, v1}, Lcom/android/settings/vpn/VpnSettings;->access$1200(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V

    .line 673
    return-void
.end method
