.class Lcom/android/phone/SimNetworkDepersonalizationPanel$2$1;
.super Ljava/lang/Object;
.source "SimNetworkDepersonalizationPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SimNetworkDepersonalizationPanel$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/SimNetworkDepersonalizationPanel$2;


# direct methods
.method constructor <init>(Lcom/android/phone/SimNetworkDepersonalizationPanel$2;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel$2$1;->this$1:Lcom/android/phone/SimNetworkDepersonalizationPanel$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel$2$1;->this$1:Lcom/android/phone/SimNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/SimNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/SimNetworkDepersonalizationPanel;

    #calls: Lcom/android/phone/SimNetworkDepersonalizationPanel;->hideAlert()V
    invoke-static {v0}, Lcom/android/phone/SimNetworkDepersonalizationPanel;->access$200(Lcom/android/phone/SimNetworkDepersonalizationPanel;)V

    .line 93
    iget-object v0, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel$2$1;->this$1:Lcom/android/phone/SimNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/SimNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/SimNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/SimNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/SimNetworkDepersonalizationPanel;->access$000(Lcom/android/phone/SimNetworkDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 94
    iget-object v0, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel$2$1;->this$1:Lcom/android/phone/SimNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/SimNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/SimNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/SimNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/SimNetworkDepersonalizationPanel;->access$000(Lcom/android/phone/SimNetworkDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 95
    return-void
.end method
