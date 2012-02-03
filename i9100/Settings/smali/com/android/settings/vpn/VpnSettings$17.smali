.class Lcom/android/settings/vpn/VpnSettings$17;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnSettings;->addPreferenceFor(Landroid/net/vpn/VpnProfile;Z)Lcom/android/settings/vpn/VpnSettings$VpnPreference;
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
    .line 580
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings$17;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "pref"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings$17;->this$0:Lcom/android/settings/vpn/VpnSettings;

    check-cast p1, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    .end local p1
    iget-object v1, p1, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->mProfile:Landroid/net/vpn/VpnProfile;

    #calls: Lcom/android/settings/vpn/VpnSettings;->connectOrDisconnect(Landroid/net/vpn/VpnProfile;)V
    invoke-static {v0, v1}, Lcom/android/settings/vpn/VpnSettings;->access$700(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V

    .line 583
    const/4 v0, 0x1

    return v0
.end method
