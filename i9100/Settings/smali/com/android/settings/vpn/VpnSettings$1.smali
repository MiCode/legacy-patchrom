.class Lcom/android/settings/vpn/VpnSettings$1;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnSettings;->onCreate(Landroid/os/Bundle;)V
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
    .line 156
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings$1;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings$1;->this$0:Lcom/android/settings/vpn/VpnSettings;

    #calls: Lcom/android/settings/vpn/VpnSettings;->startVpnTypeSelection()V
    invoke-static {v0}, Lcom/android/settings/vpn/VpnSettings;->access$200(Lcom/android/settings/vpn/VpnSettings;)V

    .line 159
    const/4 v0, 0x1

    return v0
.end method
