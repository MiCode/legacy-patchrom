.class Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler$1;
.super Ljava/lang/Object;
.source "VpnProfileEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;-><init>(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler$1;->this$0:Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 223
    iget-object v2, p0, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler$1;->this$0:Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {v2, v1}, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;->saveSecretToProfile(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler$1;->this$0:Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;

    check-cast p2, Ljava/lang/String;

    .end local p2
    #calls: Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;->setSecretSummary(Ljava/lang/String;)V
    invoke-static {v1, p2}, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;->access$200(Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;Ljava/lang/String;)V

    .line 225
    const/4 v1, 0x1

    return v1
.end method
