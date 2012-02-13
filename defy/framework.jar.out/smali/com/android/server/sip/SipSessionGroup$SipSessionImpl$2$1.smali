.class Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2$1;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Lgov/nist/javax/sip/clientauthutils/UserCredentials;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;->getCredentials(Ljavax/sip/ClientTransaction;Ljava/lang/String;)Lgov/nist/javax/sip/clientauthutils/UserCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mPassword:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$2000(Lcom/android/server/sip/SipSessionGroup;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSipDomain()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v0, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup;->access$1400(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;

    iget-object v1, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->access$1400(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getAuthUserName()Ljava/lang/String;

    move-result-object v0

    .local v0, username:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;

    iget-object v1, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$2;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v1, v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/android/server/sip/SipSessionGroup;

    #getter for: Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->access$1400(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
