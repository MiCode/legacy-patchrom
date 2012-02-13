.class Lcom/android/phone/sip/SipSettings$9;
.super Ljava/lang/Object;
.source "SipSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/sip/SipSettings;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$profileUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/phone/sip/SipSettings$9;->this$0:Lcom/android/phone/sip/SipSettings;

    iput-object p2, p0, Lcom/android/phone/sip/SipSettings$9;->val$profileUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/sip/SipSettings$9;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 401
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$9;->this$0:Lcom/android/phone/sip/SipSettings;

    #getter for: Lcom/android/phone/sip/SipSettings;->mSipPreferenceMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/phone/sip/SipSettings;->access$1200(Lcom/android/phone/sip/SipSettings;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/sip/SipSettings$9;->val$profileUri:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/sip/SipSettings$SipPreference;

    .line 402
    .local v0, pref:Lcom/android/phone/sip/SipSettings$SipPreference;
    if-eqz v0, :cond_0

    .line 403
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$9;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/sip/SipSettings$SipPreference;->updateSummary(Ljava/lang/String;)V

    .line 405
    :cond_0
    return-void
.end method
