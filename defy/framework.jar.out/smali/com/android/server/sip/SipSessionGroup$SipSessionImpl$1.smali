.class Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->doCommandAsync(Ljava/util/EventObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field final synthetic val$command:Ljava/util/EventObject;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iput-object p2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->val$command:Ljava/util/EventObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->val$command:Ljava/util/EventObject;

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->processCommand(Ljava/util/EventObject;)V
    invoke-static {v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$1500(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "SipSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->val$command:Ljava/util/EventObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V
    invoke-static {v1, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$100(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
