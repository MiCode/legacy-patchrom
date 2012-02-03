.class Lcom/android/settings/vpn/VpnSettings$VpnPreference;
.super Landroid/preference/Preference;
.source "VpnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VpnPreference"
.end annotation


# instance fields
.field mProfile:Landroid/net/vpn/VpnProfile;

.field final synthetic this$0:Lcom/android/settings/vpn/VpnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/VpnSettings;Landroid/content/Context;Landroid/net/vpn/VpnProfile;)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "p"

    .prologue
    .line 959
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->this$0:Lcom/android/settings/vpn/VpnSettings;

    .line 960
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 961
    invoke-virtual {p0, p3}, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->setProfile(Landroid/net/vpn/VpnProfile;)V

    .line 962
    return-void
.end method


# virtual methods
.method setProfile(Landroid/net/vpn/VpnProfile;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 965
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->mProfile:Landroid/net/vpn/VpnProfile;

    .line 966
    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 967
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->this$0:Lcom/android/settings/vpn/VpnSettings;

    #calls: Lcom/android/settings/vpn/VpnSettings;->getProfileSummaryString(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/settings/vpn/VpnSettings;->access$1400(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 968
    return-void
.end method
