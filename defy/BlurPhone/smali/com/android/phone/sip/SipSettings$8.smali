.class Lcom/android/phone/sip/SipSettings$8;
.super Ljava/lang/Object;
.source "SipSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/sip/SipSettings;->unregisterProfile(Landroid/net/sip/SipProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/sip/SipSettings;

.field final synthetic val$p:Landroid/net/sip/SipProfile;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/phone/sip/SipSettings$8;->this$0:Lcom/android/phone/sip/SipSettings;

    iput-object p2, p0, Lcom/android/phone/sip/SipSettings$8;->val$p:Landroid/net/sip/SipProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$8;->this$0:Lcom/android/phone/sip/SipSettings;

    #getter for: Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;
    invoke-static {v1}, Lcom/android/phone/sip/SipSettings;->access$1100(Lcom/android/phone/sip/SipSettings;)Landroid/net/sip/SipManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/sip/SipSettings$8;->val$p:Landroid/net/sip/SipProfile;

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/sip/SipManager;->close(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 367
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SipSettings"

    const-string v2, "unregister failed, SipService died?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
