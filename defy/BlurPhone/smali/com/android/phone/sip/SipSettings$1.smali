.class Lcom/android/phone/sip/SipSettings$1;
.super Ljava/lang/Thread;
.source "SipSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/sip/SipSettings;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/sip/SipSettings;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipSettings;Landroid/content/Intent;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/phone/sip/SipSettings$1;->this$0:Lcom/android/phone/sip/SipSettings;

    iput-object p2, p0, Lcom/android/phone/sip/SipSettings$1;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/phone/sip/SipSettings$1;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-string v5, "SipSettings"

    .line 175
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/sip/SipSettings$1;->this$0:Lcom/android/phone/sip/SipSettings;

    #getter for: Lcom/android/phone/sip/SipSettings;->mProfile:Landroid/net/sip/SipProfile;
    invoke-static {v2}, Lcom/android/phone/sip/SipSettings;->access$300(Lcom/android/phone/sip/SipSettings;)Landroid/net/sip/SipProfile;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 176
    const-string v2, "SipSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed Profile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/sip/SipSettings$1;->this$0:Lcom/android/phone/sip/SipSettings;

    #getter for: Lcom/android/phone/sip/SipSettings;->mProfile:Landroid/net/sip/SipProfile;
    invoke-static {v4}, Lcom/android/phone/sip/SipSettings;->access$300(Lcom/android/phone/sip/SipSettings;)Landroid/net/sip/SipProfile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v2, p0, Lcom/android/phone/sip/SipSettings$1;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v3, p0, Lcom/android/phone/sip/SipSettings$1;->this$0:Lcom/android/phone/sip/SipSettings;

    #getter for: Lcom/android/phone/sip/SipSettings;->mProfile:Landroid/net/sip/SipProfile;
    invoke-static {v3}, Lcom/android/phone/sip/SipSettings;->access$300(Lcom/android/phone/sip/SipSettings;)Landroid/net/sip/SipProfile;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/sip/SipSettings;->deleteProfile(Landroid/net/sip/SipProfile;)V

    .line 180
    :cond_0
    iget-object v2, p0, Lcom/android/phone/sip/SipSettings$1;->val$intent:Landroid/content/Intent;

    const-string v3, "sip_profile"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/sip/SipProfile;

    .line 181
    .local v1, profile:Landroid/net/sip/SipProfile;
    iget v2, p0, Lcom/android/phone/sip/SipSettings$1;->val$resultCode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 182
    const-string v2, "SipSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New Profile Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v2, p0, Lcom/android/phone/sip/SipSettings$1;->this$0:Lcom/android/phone/sip/SipSettings;

    #calls: Lcom/android/phone/sip/SipSettings;->addProfile(Landroid/net/sip/SipProfile;)V
    invoke-static {v2, v1}, Lcom/android/phone/sip/SipSettings;->access$400(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V

    .line 185
    :cond_1
    iget-object v2, p0, Lcom/android/phone/sip/SipSettings$1;->this$0:Lcom/android/phone/sip/SipSettings;

    #calls: Lcom/android/phone/sip/SipSettings;->updateProfilesStatus()V
    invoke-static {v2}, Lcom/android/phone/sip/SipSettings;->access$500(Lcom/android/phone/sip/SipSettings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1           #profile:Landroid/net/sip/SipProfile;
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 187
    .local v0, e:Ljava/io/IOException;
    const-string v2, "SipSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not handle the profile : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
