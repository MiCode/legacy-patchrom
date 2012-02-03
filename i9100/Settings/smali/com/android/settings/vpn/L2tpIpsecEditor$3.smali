.class Lcom/android/settings/vpn/L2tpIpsecEditor$3;
.super Ljava/lang/Object;
.source "L2tpIpsecEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/L2tpIpsecEditor;->createNoCertificatePreference(Landroid/content/Context;II)Landroid/preference/Preference;
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
    .line 139
    iput-object p1, p0, Lcom/android/settings/vpn/L2tpIpsecEditor$3;->this$0:Lcom/android/settings/vpn/L2tpIpsecEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 142
    const-string v0, "VPN"

    const-string v1, "onPreferenceClick : createNoUserCertificatePreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/android/settings/vpn/L2tpIpsecEditor$3;->this$0:Lcom/android/settings/vpn/L2tpIpsecEditor;

    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/settings/vpn/L2tpIpsecEditor;->NoCertificatePopup(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/settings/vpn/L2tpIpsecEditor;->access$300(Lcom/android/settings/vpn/L2tpIpsecEditor;Landroid/content/Context;)V

    .line 144
    const/4 v0, 0x0

    return v0
.end method
