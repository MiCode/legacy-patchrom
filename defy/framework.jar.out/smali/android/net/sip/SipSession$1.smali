.class Landroid/net/sip/SipSession$1;
.super Landroid/net/sip/ISipSessionListener$Stub;
.source "SipSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/sip/SipSession;->createListener()Landroid/net/sip/ISipSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/sip/SipSession;


# direct methods
.method constructor <init>(Landroid/net/sip/SipSession;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-direct {p0}, Landroid/net/sip/ISipSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBusy(Landroid/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onCallBusy(Landroid/net/sip/SipSession;)V

    :cond_0
    return-void
.end method

.method public onCallChangeFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1, p2, p3}, Landroid/net/sip/SipSession$Listener;->onCallChangeFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCallEnded(Landroid/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onCallEnded(Landroid/net/sip/SipSession;)V

    :cond_0
    return-void
.end method

.method public onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "sessionDescription"

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1, p2}, Landroid/net/sip/SipSession$Listener;->onCallEstablished(Landroid/net/sip/SipSession;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCalling(Landroid/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onCalling(Landroid/net/sip/SipSession;)V

    :cond_0
    return-void
.end method

.method public onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1, p2, p3}, Landroid/net/sip/SipSession$Listener;->onError(Landroid/net/sip/SipSession;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRegistering(Landroid/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onRegistering(Landroid/net/sip/SipSession;)V

    :cond_0
    return-void
.end method

.method public onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .locals 2
    .parameter "session"
    .parameter "duration"

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1, p2}, Landroid/net/sip/SipSession$Listener;->onRegistrationDone(Landroid/net/sip/SipSession;I)V

    :cond_0
    return-void
.end method

.method public onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1, p2, p3}, Landroid/net/sip/SipSession$Listener;->onRegistrationFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onRegistrationTimeout(Landroid/net/sip/SipSession;)V

    :cond_0
    return-void
.end method

.method public onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "caller"
    .parameter "sessionDescription"

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1, p2, p3}, Landroid/net/sip/SipSession$Listener;->onRinging(Landroid/net/sip/SipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRingingBack(Landroid/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    #getter for: Landroid/net/sip/SipSession;->mListener:Landroid/net/sip/SipSession$Listener;
    invoke-static {v0}, Landroid/net/sip/SipSession;->access$000(Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipSession$1;->this$0:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession$Listener;->onRingingBack(Landroid/net/sip/SipSession;)V

    :cond_0
    return-void
.end method
