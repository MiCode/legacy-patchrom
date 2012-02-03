.class Lcom/android/phone/IccNetworkDepersonalizationPanel$2;
.super Landroid/os/Handler;
.source "IccNetworkDepersonalizationPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IccNetworkDepersonalizationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const-wide/16 v3, 0xbb8

    .line 86
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 87
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 88
    .local v0, res:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #calls: Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateError()V
    invoke-static {v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$100(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    .line 91
    new-instance v1, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$1;

    invoke-direct {v1, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$1;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    .end local v0           #res:Landroid/os/AsyncResult;
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local v0       #res:Landroid/os/AsyncResult;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #calls: Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateSuccess()V
    invoke-static {v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$300(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    .line 101
    new-instance v1, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;

    invoke-direct {v1, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
