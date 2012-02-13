.class Lcom/android/phone/InCallScreen$21;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->initInCallScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 2554
    iput-object p1, p0, Lcom/android/phone/InCallScreen$21;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 2556
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen$21;->this$0:Lcom/android/phone/InCallScreen;

    const-string v1, "mEndCallAndAnswerButton.onClick"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 2558
    :cond_0
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$4700()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2559
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$4702(Z)Z

    .line 2560
    iget-object v0, p0, Lcom/android/phone/InCallScreen$21;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mMultiPartyCallUtils:Lcom/android/phone/MultiPartyCallUtils;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$4800(Lcom/android/phone/InCallScreen;)Lcom/android/phone/MultiPartyCallUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/MultiPartyCallUtils;->resetMultiPartyCallList()V

    .line 2561
    iget-object v0, p0, Lcom/android/phone/InCallScreen$21;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mMultiPartyCallUtils:Lcom/android/phone/MultiPartyCallUtils;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$4800(Lcom/android/phone/InCallScreen;)Lcom/android/phone/MultiPartyCallUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/MultiPartyCallUtils;->setPanelVisible(Z)V

    .line 2562
    iget-object v0, p0, Lcom/android/phone/InCallScreen$21;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$4900(Lcom/android/phone/InCallScreen;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2564
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen$21;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2565
    iget-object v0, p0, Lcom/android/phone/InCallScreen$21;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->answerCall()V

    .line 2566
    iget-object v0, p0, Lcom/android/phone/InCallScreen$21;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    .line 2571
    :goto_0
    return-void

    .line 2569
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen$21;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->internalAnswerAndEnd()V

    goto :goto_0
.end method
