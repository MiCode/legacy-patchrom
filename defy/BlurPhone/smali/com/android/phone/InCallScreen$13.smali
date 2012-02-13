.class Lcom/android/phone/InCallScreen$13;
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
    .line 2365
    iput-object p1, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 2367
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    const-string v3, "toggleDTMFKeypad Clicked!"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 2368
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2369
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getScreenSize(Landroid/content/Context;)Lcom/android/phone/PhoneUtils$ScreenSize;

    move-result-object v2

    sget-object v3, Lcom/android/phone/PhoneUtils$ScreenSize;->HVGA:Lcom/android/phone/PhoneUtils$ScreenSize;

    if-ne v2, v3, :cond_4

    .line 2370
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mDTMFFrame:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$3500(Lcom/android/phone/InCallScreen;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2371
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mParentMainFrame:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$3600(Lcom/android/phone/InCallScreen;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2372
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mMuteButton:Landroid/widget/ToggleButton;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$3700(Lcom/android/phone/InCallScreen;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 2373
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mBluetoothButton:Landroid/widget/ToggleButton;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$3800(Lcom/android/phone/InCallScreen;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 2374
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mAddCallButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$3900(Lcom/android/phone/InCallScreen;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 2375
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mEndCallButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$4000(Lcom/android/phone/InCallScreen;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 2376
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2377
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$4100(Lcom/android/phone/InCallScreen;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 2389
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 2390
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v4}, Lcom/android/phone/InCallScreen;->updateDialpadButton(Z)V

    .line 2392
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v6, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v2, :cond_3

    .line 2394
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2395
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    .line 2396
    .local v1, currState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_3

    .line 2398
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->showSwitchCallButton()V

    .line 2436
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #currState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_3
    :goto_1
    return-void

    .line 2382
    :cond_4
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2383
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mDTMFFrame:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$3500(Lcom/android/phone/InCallScreen;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2384
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mParentMainFrame:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$3600(Lcom/android/phone/InCallScreen;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2385
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2386
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$4100(Lcom/android/phone/InCallScreen;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 2404
    :cond_5
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getScreenSize(Landroid/content/Context;)Lcom/android/phone/PhoneUtils$ScreenSize;

    move-result-object v2

    sget-object v3, Lcom/android/phone/PhoneUtils$ScreenSize;->HVGA:Lcom/android/phone/PhoneUtils$ScreenSize;

    if-ne v2, v3, :cond_8

    .line 2405
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mParentMainFrame:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$3600(Lcom/android/phone/InCallScreen;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2406
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mDTMFFrame:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$3500(Lcom/android/phone/InCallScreen;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2407
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mMuteButton:Landroid/widget/ToggleButton;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$3700(Lcom/android/phone/InCallScreen;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 2408
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mBluetoothButton:Landroid/widget/ToggleButton;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$3800(Lcom/android/phone/InCallScreen;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 2409
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mAddCallButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$3900(Lcom/android/phone/InCallScreen;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 2410
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mEndCallButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$4000(Lcom/android/phone/InCallScreen;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 2411
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$4100(Lcom/android/phone/InCallScreen;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->isShown()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2412
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$4100(Lcom/android/phone/InCallScreen;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 2422
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    .line 2423
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallScreen;->updateDialpadButton(Z)V

    .line 2425
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v6, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v2, :cond_3

    .line 2427
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2428
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    .line 2429
    .restart local v1       #currState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_3

    .line 2431
    :cond_7
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->hideSwitchCallButton()V

    goto/16 :goto_1

    .line 2415
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #currState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_8
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2416
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mParentMainFrame:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$3600(Lcom/android/phone/InCallScreen;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2417
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mDTMFFrame:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$3500(Lcom/android/phone/InCallScreen;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2418
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$4100(Lcom/android/phone/InCallScreen;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->isShown()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2419
    iget-object v2, p0, Lcom/android/phone/InCallScreen$13;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$4100(Lcom/android/phone/InCallScreen;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method
