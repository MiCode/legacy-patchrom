.class Lcom/android/server/sip/SipSessionListenerProxy$5;
.super Ljava/lang/Object;
.source "SipSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipSessionListenerProxy;->onCallEnded(Landroid/net/sip/ISipSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sip/SipSessionListenerProxy;

.field final synthetic val$session:Landroid/net/sip/ISipSession;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/sip/SipSessionListenerProxy$5;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    iput-object p2, p0, Lcom/android/server/sip/SipSessionListenerProxy$5;->val$session:Landroid/net/sip/ISipSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionListenerProxy$5;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    #getter for: Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionListenerProxy;->access$000(Lcom/android/server/sip/SipSessionListenerProxy;)Landroid/net/sip/ISipSessionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipSessionListenerProxy$5;->val$session:Landroid/net/sip/ISipSession;

    invoke-interface {v1, v2}, Landroid/net/sip/ISipSessionListener;->onCallEnded(Landroid/net/sip/ISipSession;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionListenerProxy$5;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    const-string v2, "onCallEnded()"

    #calls: Lcom/android/server/sip/SipSessionListenerProxy;->handle(Ljava/lang/Throwable;Ljava/lang/String;)V
    invoke-static {v1, v0, v2}, Lcom/android/server/sip/SipSessionListenerProxy;->access$100(Lcom/android/server/sip/SipSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
