.class Lcom/android/phone/SimNetworkDepersonalizationPanel$3;
.super Ljava/lang/Object;
.source "SimNetworkDepersonalizationPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 161
    iput-object p1, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/SimNetworkDepersonalizationPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/SimNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/SimNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/SimNetworkDepersonalizationPanel;->access$000(Lcom/android/phone/SimNetworkDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, pin:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/SimNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/SimNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/SimNetworkDepersonalizationPanel;->access$500(Lcom/android/phone/SimNetworkDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/SimNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/SimNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/SimNetworkDepersonalizationPanel;->access$400(Lcom/android/phone/SimNetworkDepersonalizationPanel;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/IccCard;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 172
    iget-object v1, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/SimNetworkDepersonalizationPanel;

    #calls: Lcom/android/phone/SimNetworkDepersonalizationPanel;->indicateBusy()V
    invoke-static {v1}, Lcom/android/phone/SimNetworkDepersonalizationPanel;->access$600(Lcom/android/phone/SimNetworkDepersonalizationPanel;)V

    goto :goto_0
.end method
