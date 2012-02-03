.class Lcom/android/settings/vpn/L2tpEditor$2;
.super Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;
.source "L2tpEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/L2tpEditor;->createSecretStringPreference(Landroid/content/Context;)Landroid/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/L2tpEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/L2tpEditor;Landroid/content/Context;II)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/vpn/L2tpEditor$2;->this$0:Lcom/android/settings/vpn/L2tpEditor;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method protected getSecretFromProfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/vpn/L2tpEditor$2;->this$0:Lcom/android/settings/vpn/L2tpEditor;

    invoke-virtual {v0}, Lcom/android/settings/vpn/L2tpEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/vpn/L2tpProfile;

    invoke-virtual {p0}, Landroid/net/vpn/L2tpProfile;->getSecretString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected saveSecretToProfile(Ljava/lang/String;)V
    .locals 1
    .parameter "secret"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/vpn/L2tpEditor$2;->this$0:Lcom/android/settings/vpn/L2tpEditor;

    invoke-virtual {v0}, Lcom/android/settings/vpn/L2tpEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/vpn/L2tpProfile;

    invoke-virtual {p0, p1}, Landroid/net/vpn/L2tpProfile;->setSecretString(Ljava/lang/String;)V

    .line 89
    return-void
.end method
