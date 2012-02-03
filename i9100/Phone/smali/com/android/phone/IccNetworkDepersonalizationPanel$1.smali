.class Lcom/android/phone/IccNetworkDepersonalizationPanel$1;
.super Ljava/lang/Object;
.source "IccNetworkDepersonalizationPanel.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 68
    iput-object p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "buffer"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-virtual {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$000(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 80
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
    .line 70
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 73
    return-void
.end method
