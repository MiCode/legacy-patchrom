.class Lcom/android/settings/vpn/VpnProfileEditor$1;
.super Ljava/lang/Object;
.source "VpnProfileEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnProfileEditor;->loadPreferencesTo(Landroid/preference/PreferenceGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/VpnProfileEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/VpnProfileEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings/vpn/VpnProfileEditor$1;->this$0:Lcom/android/settings/vpn/VpnProfileEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/vpn/VpnProfileEditor$1;->this$0:Lcom/android/settings/vpn/VpnProfileEditor;

    check-cast p2, Ljava/lang/String;

    .end local p2
    #calls: Lcom/android/settings/vpn/VpnProfileEditor;->setName(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/android/settings/vpn/VpnProfileEditor;->access$000(Lcom/android/settings/vpn/VpnProfileEditor;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x1

    return v0
.end method
