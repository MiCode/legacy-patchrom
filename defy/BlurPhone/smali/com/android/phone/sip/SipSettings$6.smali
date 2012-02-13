.class Lcom/android/phone/sip/SipSettings$6;
.super Ljava/lang/Object;
.source "SipSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/sip/SipSettings;->addPreferenceFor(Landroid/net/sip/SipProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/sip/SipSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/phone/sip/SipSettings$6;->this$0:Lcom/android/phone/sip/SipSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "pref"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$6;->this$0:Lcom/android/phone/sip/SipSettings;

    check-cast p1, Lcom/android/phone/sip/SipSettings$SipPreference;

    .end local p1
    iget-object v1, p1, Lcom/android/phone/sip/SipSettings$SipPreference;->mProfile:Landroid/net/sip/SipProfile;

    #calls: Lcom/android/phone/sip/SipSettings;->handleProfileClick(Landroid/net/sip/SipProfile;)V
    invoke-static {v0, v1}, Lcom/android/phone/sip/SipSettings;->access$900(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V

    .line 335
    const/4 v0, 0x1

    return v0
.end method
