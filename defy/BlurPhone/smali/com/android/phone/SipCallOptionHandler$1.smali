.class Lcom/android/phone/SipCallOptionHandler$1;
.super Ljava/lang/Object;
.source "SipCallOptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SipCallOptionHandler;


# direct methods
.method constructor <init>(Lcom/android/phone/SipCallOptionHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;
    invoke-static {v0}, Lcom/android/phone/SipCallOptionHandler;->access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #calls: Lcom/android/phone/SipCallOptionHandler;->isNetworkConnected()Z
    invoke-static {v0}, Lcom/android/phone/SipCallOptionHandler;->access$100(Lcom/android/phone/SipCallOptionHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/phone/SipCallOptionHandler;->showDialog(I)V

    .line 341
    :goto_0
    return-void

    .line 324
    :cond_0
    const-string v0, "SipCallOptionHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "primary SIP URI is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;
    invoke-static {v2}, Lcom/android/phone/SipCallOptionHandler;->access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;
    invoke-static {v1}, Lcom/android/phone/SipCallOptionHandler;->access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;

    move-result-object v1

    #calls: Lcom/android/phone/SipCallOptionHandler;->createSipPhoneIfNeeded(Landroid/net/sip/SipProfile;)V
    invoke-static {v0, v1}, Lcom/android/phone/SipCallOptionHandler;->access$200(Lcom/android/phone/SipCallOptionHandler;Landroid/net/sip/SipProfile;)V

    .line 327
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/phone/SipCallOptionHandler;->access$300(Lcom/android/phone/SipCallOptionHandler;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.phone.extra.SIP_PHONE_URI"

    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;
    invoke-static {v2}, Lcom/android/phone/SipCallOptionHandler;->access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mMakePrimary:Z
    invoke-static {v0}, Lcom/android/phone/SipCallOptionHandler;->access$400(Lcom/android/phone/SipCallOptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;
    invoke-static {v0}, Lcom/android/phone/SipCallOptionHandler;->access$500(Lcom/android/phone/SipCallOptionHandler;)Lcom/android/phone/sip/SipSharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;
    invoke-static {v1}, Lcom/android/phone/SipCallOptionHandler;->access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/sip/SipSharedPreferences;->setPrimaryAccount(Ljava/lang/String;)V

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z
    invoke-static {v0}, Lcom/android/phone/SipCallOptionHandler;->access$600(Lcom/android/phone/SipCallOptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;
    invoke-static {v0}, Lcom/android/phone/SipCallOptionHandler;->access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;

    move-result-object v0

    if-nez v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/phone/SipCallOptionHandler;->showDialog(I)V

    goto :goto_0

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #getter for: Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/phone/SipCallOptionHandler;->access$300(Lcom/android/phone/SipCallOptionHandler;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/SipCallOptionHandler;->startActivity(Landroid/content/Intent;)V

    .line 340
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler$1;->this$0:Lcom/android/phone/SipCallOptionHandler;

    invoke-virtual {v0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    goto/16 :goto_0
.end method
