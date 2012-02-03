.class Lcom/android/settings/vpn/VpnSettings$11;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$requestCode:I

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/VpnSettings;IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings$11;->this$0:Lcom/android/settings/vpn/VpnSettings;

    iput p2, p0, Lcom/android/settings/vpn/VpnSettings$11;->val$requestCode:I

    iput p3, p0, Lcom/android/settings/vpn/VpnSettings$11;->val$resultCode:I

    iput-object p4, p0, Lcom/android/settings/vpn/VpnSettings$11;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings$11;->this$0:Lcom/android/settings/vpn/VpnSettings;

    iget v1, p0, Lcom/android/settings/vpn/VpnSettings$11;->val$requestCode:I

    iget v2, p0, Lcom/android/settings/vpn/VpnSettings$11;->val$resultCode:I

    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings$11;->val$data:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/vpn/VpnSettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 390
    return-void
.end method
