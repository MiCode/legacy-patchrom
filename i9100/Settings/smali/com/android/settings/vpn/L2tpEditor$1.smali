.class Lcom/android/settings/vpn/L2tpEditor$1;
.super Ljava/lang/Object;
.source "L2tpEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/L2tpEditor;->createSecretPreference(Landroid/content/Context;)Landroid/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/L2tpEditor;

.field final synthetic val$profile:Landroid/net/vpn/L2tpProfile;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/L2tpEditor;Landroid/net/vpn/L2tpProfile;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/vpn/L2tpEditor$1;->this$0:Lcom/android/settings/vpn/L2tpEditor;

    iput-object p2, p0, Lcom/android/settings/vpn/L2tpEditor$1;->val$profile:Landroid/net/vpn/L2tpProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 67
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 68
    .local v0, enabled:Z
    iget-object v1, p0, Lcom/android/settings/vpn/L2tpEditor$1;->val$profile:Landroid/net/vpn/L2tpProfile;

    invoke-virtual {v1, v0}, Landroid/net/vpn/L2tpProfile;->setSecretEnabled(Z)V

    .line 69
    iget-object v1, p0, Lcom/android/settings/vpn/L2tpEditor$1;->this$0:Lcom/android/settings/vpn/L2tpEditor;

    #getter for: Lcom/android/settings/vpn/L2tpEditor;->mSecretHandler:Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;
    invoke-static {v1}, Lcom/android/settings/vpn/L2tpEditor;->access$000(Lcom/android/settings/vpn/L2tpEditor;)Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;->getPreference()Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 70
    iget-object v1, p0, Lcom/android/settings/vpn/L2tpEditor$1;->this$0:Lcom/android/settings/vpn/L2tpEditor;

    iget-object v2, p0, Lcom/android/settings/vpn/L2tpEditor$1;->this$0:Lcom/android/settings/vpn/L2tpEditor;

    #getter for: Lcom/android/settings/vpn/L2tpEditor;->mSecret:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/vpn/L2tpEditor;->access$100(Lcom/android/settings/vpn/L2tpEditor;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    #calls: Lcom/android/settings/vpn/L2tpEditor;->setSecretSummary(Landroid/preference/CheckBoxPreference;Z)V
    invoke-static {v1, v2, v0}, Lcom/android/settings/vpn/L2tpEditor;->access$200(Lcom/android/settings/vpn/L2tpEditor;Landroid/preference/CheckBoxPreference;Z)V

    .line 71
    const/4 v1, 0x1

    return v1
.end method
