.class Lcom/android/settings/vpn/PptpEditor$1;
.super Ljava/lang/Object;
.source "PptpEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/PptpEditor;->createEncryptionPreference(Landroid/content/Context;)Landroid/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/PptpEditor;

.field final synthetic val$profile:Landroid/net/vpn/PptpProfile;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/PptpEditor;Landroid/net/vpn/PptpProfile;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings/vpn/PptpEditor$1;->this$0:Lcom/android/settings/vpn/PptpEditor;

    iput-object p2, p0, Lcom/android/settings/vpn/PptpEditor$1;->val$profile:Landroid/net/vpn/PptpProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 55
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 56
    .local v0, enabled:Z
    iget-object v1, p0, Lcom/android/settings/vpn/PptpEditor$1;->val$profile:Landroid/net/vpn/PptpProfile;

    invoke-virtual {v1, v0}, Landroid/net/vpn/PptpProfile;->setEncryptionEnabled(Z)V

    .line 57
    iget-object v1, p0, Lcom/android/settings/vpn/PptpEditor$1;->this$0:Lcom/android/settings/vpn/PptpEditor;

    iget-object v2, p0, Lcom/android/settings/vpn/PptpEditor$1;->this$0:Lcom/android/settings/vpn/PptpEditor;

    #getter for: Lcom/android/settings/vpn/PptpEditor;->mEncryption:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/vpn/PptpEditor;->access$000(Lcom/android/settings/vpn/PptpEditor;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    #calls: Lcom/android/settings/vpn/PptpEditor;->setEncryptionSummary(Landroid/preference/CheckBoxPreference;Z)V
    invoke-static {v1, v2, v0}, Lcom/android/settings/vpn/PptpEditor;->access$100(Lcom/android/settings/vpn/PptpEditor;Landroid/preference/CheckBoxPreference;Z)V

    .line 58
    const/4 v1, 0x1

    return v1
.end method
