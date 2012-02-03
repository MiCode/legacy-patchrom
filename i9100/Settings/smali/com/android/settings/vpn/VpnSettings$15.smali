.class Lcom/android/settings/vpn/VpnSettings$15;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnSettings;->onClick(Landroid/content/DialogInterface;I)V
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
    .line 460
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings$15;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings$15;->this$0:Lcom/android/settings/vpn/VpnSettings;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn/VpnSettings;->showDialog(I)V

    .line 463
    return-void
.end method
