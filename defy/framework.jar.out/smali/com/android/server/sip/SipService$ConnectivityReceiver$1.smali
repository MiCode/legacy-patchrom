.class Lcom/android/server/sip/SipService$ConnectivityReceiver$1;
.super Ljava/lang/Object;
.source "SipService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipService$ConnectivityReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipService$ConnectivityReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    iput-object p2, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;->val$intent:Landroid/content/Intent;

    #calls: Lcom/android/server/sip/SipService$ConnectivityReceiver;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/sip/SipService$ConnectivityReceiver;->access$1300(Lcom/android/server/sip/SipService$ConnectivityReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
