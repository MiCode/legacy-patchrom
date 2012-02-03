.class Lcom/android/settings/vpn/VpnSettings$16;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnSettings;->deleteProfile(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/VpnSettings;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/VpnSettings;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings$16;->this$0:Lcom/android/settings/vpn/VpnSettings;

    iput p2, p0, Lcom/android/settings/vpn/VpnSettings$16;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 525
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 526
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 527
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings$16;->this$0:Lcom/android/settings/vpn/VpnSettings;

    #getter for: Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings/vpn/VpnSettings;->access$800(Lcom/android/settings/vpn/VpnSettings;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/vpn/VpnSettings$16;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/vpn/VpnProfile;

    .line 528
    .local v0, p:Landroid/net/vpn/VpnProfile;
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings$16;->this$0:Lcom/android/settings/vpn/VpnSettings;

    #getter for: Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/settings/vpn/VpnSettings;->access$900(Lcom/android/settings/vpn/VpnSettings;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    .line 529
    .local v1, pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings$16;->this$0:Lcom/android/settings/vpn/VpnSettings;

    #getter for: Lcom/android/settings/vpn/VpnSettings;->mVpnListContainer:Landroid/preference/PreferenceCategory;
    invoke-static {v2}, Lcom/android/settings/vpn/VpnSettings;->access$1000(Lcom/android/settings/vpn/VpnSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 530
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings$16;->this$0:Lcom/android/settings/vpn/VpnSettings;

    #calls: Lcom/android/settings/vpn/VpnSettings;->removeProfileFromStorage(Landroid/net/vpn/VpnProfile;)V
    invoke-static {v2, v0}, Lcom/android/settings/vpn/VpnSettings;->access$1100(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V

    .line 532
    .end local v0           #p:Landroid/net/vpn/VpnProfile;
    .end local v1           #pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    :cond_0
    return-void
.end method
