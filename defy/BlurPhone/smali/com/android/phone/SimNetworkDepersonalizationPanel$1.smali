.class Lcom/android/phone/SimNetworkDepersonalizationPanel$1;
.super Ljava/lang/Object;
.source "SimNetworkDepersonalizationPanel.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 67
    iput-object p1, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel$1;->this$0:Lcom/android/phone/SimNetworkDepersonalizationPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "buffer"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel$1;->this$0:Lcom/android/phone/SimNetworkDepersonalizationPanel;

    invoke-virtual {v0}, Lcom/android/phone/SimNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel$1;->this$0:Lcom/android/phone/SimNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/SimNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/SimNetworkDepersonalizationPanel;->access$000(Lcom/android/phone/SimNetworkDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 79
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 69
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 72
    return-void
.end method
