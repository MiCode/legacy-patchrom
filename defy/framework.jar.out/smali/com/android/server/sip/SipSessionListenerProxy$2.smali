.class Lcom/android/server/sip/SipSessionListenerProxy$2;
.super Ljava/lang/Object;
.source "SipSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipSessionListenerProxy;->onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sip/SipSessionListenerProxy;

.field final synthetic val$caller:Landroid/net/sip/SipProfile;

.field final synthetic val$session:Landroid/net/sip/ISipSession;

.field final synthetic val$sessionDescription:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    iput-object p2, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->val$session:Landroid/net/sip/ISipSession;

    iput-object p3, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->val$caller:Landroid/net/sip/SipProfile;

    iput-object p4, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->val$sessionDescription:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    #getter for: Lcom/android/server/sip/SipSessionListenerProxy;->mListener:Landroid/net/sip/ISipSessionListener;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionListenerProxy;->access$000(Lcom/android/server/sip/SipSessionListenerProxy;)Landroid/net/sip/ISipSessionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->val$session:Landroid/net/sip/ISipSession;

    iget-object v3, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->val$caller:Landroid/net/sip/SipProfile;

    iget-object v4, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->val$sessionDescription:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Landroid/net/sip/ISipSessionListener;->onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, t:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    const-string v2, "onRinging()"

    #calls: Lcom/android/server/sip/SipSessionListenerProxy;->handle(Ljava/lang/Throwable;Ljava/lang/String;)V
    invoke-static {v1, v0, v2}, Lcom/android/server/sip/SipSessionListenerProxy;->access$100(Lcom/android/server/sip/SipSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
