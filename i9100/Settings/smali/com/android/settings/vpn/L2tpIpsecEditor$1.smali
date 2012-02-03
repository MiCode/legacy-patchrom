.class Lcom/android/settings/vpn/L2tpIpsecEditor$1;
.super Ljava/lang/Object;
.source "L2tpIpsecEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/L2tpIpsecEditor;->createUserCertificatePreference(Landroid/content/Context;)Landroid/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/L2tpIpsecEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/L2tpIpsecEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/vpn/L2tpIpsecEditor$1;->this$0:Lcom/android/settings/vpn/L2tpIpsecEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "pref"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    .line 103
    iget-object v1, p0, Lcom/android/settings/vpn/L2tpIpsecEditor$1;->this$0:Lcom/android/settings/vpn/L2tpIpsecEditor;

    #getter for: Lcom/android/settings/vpn/L2tpIpsecEditor;->mProfile:Landroid/net/vpn/L2tpIpsecProfile;
    invoke-static {v1}, Lcom/android/settings/vpn/L2tpIpsecEditor;->access$000(Lcom/android/settings/vpn/L2tpIpsecEditor;)Landroid/net/vpn/L2tpIpsecProfile;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {v2, v1}, Landroid/net/vpn/L2tpIpsecProfile;->setUserCertificate(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/android/settings/vpn/L2tpIpsecEditor$1;->this$0:Lcom/android/settings/vpn/L2tpIpsecEditor;

    const v2, 0x7f0804be

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p1, v2, p2}, Lcom/android/settings/vpn/L2tpIpsecEditor;->setSummary(Landroid/preference/Preference;ILjava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/android/settings/vpn/L2tpIpsecEditor$1;->this$0:Lcom/android/settings/vpn/L2tpIpsecEditor;

    #setter for: Lcom/android/settings/vpn/L2tpIpsecEditor;->Is_UserCert:Z
    invoke-static {v1, v3}, Lcom/android/settings/vpn/L2tpIpsecEditor;->access$102(Lcom/android/settings/vpn/L2tpIpsecEditor;Z)Z

    .line 107
    return v3
.end method
