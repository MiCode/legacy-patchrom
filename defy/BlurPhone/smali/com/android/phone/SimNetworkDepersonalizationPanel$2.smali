.class Lcom/android/phone/SimNetworkDepersonalizationPanel$2;
.super Landroid/os/Handler;
.source "SimNetworkDepersonalizationPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimNetworkDepersonalizationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimNetworkDepersonalizationPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/SimNetworkDepersonalizationPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/SimNetworkDepersonalizationPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const-wide/16 v3, 0xbb8

    .line 85
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 86
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 87
    .local v0, res:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/SimNetworkDepersonalizationPanel;

    #calls: Lcom/android/phone/SimNetworkDepersonalizationPanel;->indicateError()V
    invoke-static {v1}, Lcom/android/phone/SimNetworkDepersonalizationPanel;->access$100(Lcom/android/phone/SimNetworkDepersonalizationPanel;)V

    .line 90
    new-instance v1, Lcom/android/phone/SimNetworkDepersonalizationPanel$2$1;

    invoke-direct {v1, p0}, Lcom/android/phone/SimNetworkDepersonalizationPanel$2$1;-><init>(Lcom/android/phone/SimNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/phone/SimNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    .end local v0           #res:Landroid/os/AsyncResult;
    :cond_0
    :goto_0
    return-void

    .line 99
    .restart local v0       #res:Landroid/os/AsyncResult;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/SimNetworkDepersonalizationPanel;

    #calls: Lcom/android/phone/SimNetworkDepersonalizationPanel;->indicateSuccess()V
    invoke-static {v1}, Lcom/android/phone/SimNetworkDepersonalizationPanel;->access$300(Lcom/android/phone/SimNetworkDepersonalizationPanel;)V

    .line 100
    new-instance v1, Lcom/android/phone/SimNetworkDepersonalizationPanel$2$2;

    invoke-direct {v1, p0}, Lcom/android/phone/SimNetworkDepersonalizationPanel$2$2;-><init>(Lcom/android/phone/SimNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/phone/SimNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
