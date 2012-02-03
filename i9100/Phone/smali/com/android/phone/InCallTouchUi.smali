.class public Lcom/android/phone/InCallTouchUi;
.super Landroid/widget/FrameLayout;
.source "InCallTouchUi.java"


# instance fields
.field private mAllowInCallTouchUi:Z

.field private mAllowIncomingCallTouchUi:Z

.field private mDialpadButtonsView:Lcom/android/phone/DialpadButtonsView;

.field private mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

.field private mHandler:Landroid/os/Handler;

.field private mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mInCallTouchUiVew:Landroid/view/View;

.field public mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

.field private mIsEndButtonBlankDone:Z

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const-string v5, "ENABLED"

    const-string v4, "DISABLED"

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance v1, Lcom/android/phone/InCallTouchUi$1;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallTouchUi$1;-><init>(Lcom/android/phone/InCallTouchUi;)V

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    .line 83
    const-string v1, "InCallTouchUi constructor..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", attrs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 89
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030026

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 94
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mAllowIncomingCallTouchUi:Z

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- incoming call touch UI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/InCallTouchUi;->mAllowIncomingCallTouchUi:Z

    if-eqz v2, :cond_0

    const-string v2, "ENABLED"

    move-object v2, v5

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mAllowInCallTouchUi:Z

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- regular in-call touch UI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/InCallTouchUi;->mAllowInCallTouchUi:Z

    if-eqz v2, :cond_1

    const-string v2, "ENABLED"

    move-object v2, v5

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 101
    iput v3, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    .line 102
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIsEndButtonBlankDone:Z

    .line 103
    return-void

    .line 95
    :cond_0
    const-string v2, "DISABLED"

    move-object v2, v4

    goto :goto_0

    .line 98
    :cond_1
    const-string v2, "DISABLED"

    move-object v2, v4

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/android/phone/InCallTouchUi;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/phone/InCallTouchUi;->mIsEndButtonBlankDone:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/InCallTouchUi;Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/phone/InCallTouchUi;->updateEndCallButton(Lcom/android/internal/telephony/CallManager;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 354
    const-string v0, "InCallTouchUi"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void
.end method

.method private updateEndCallButton(Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .parameter "cm"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_1

    .line 278
    const-string v0, "- updateEndCallButton: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isCallEndedScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIsEndButtonBlankDone:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    if-nez v0, :cond_2

    .line 283
    const v0, 0x7f0800a8

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EndCallButtonsView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    .line 284
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/EndCallButtonsView;->initialize(Lcom/android/phone/InCallScreen;)V

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    iget v1, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    invoke-virtual {v0, p1, v1}, Lcom/android/phone/EndCallButtonsView;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    .line 287
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/EndCallButtonsView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method isTouchUiEnabled()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAllowInCallTouchUi:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InCallTouchUi onFinishInflate(this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 113
    const v0, 0x7f0800a5

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallTouchUiVew:Landroid/view/View;

    .line 114
    return-void
.end method

.method removeIncomingSlidingWidget()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingSlidingWidget;->removeAllViews()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    .line 339
    :cond_0
    return-void
.end method

.method setButtonsVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    invoke-virtual {v0, p1}, Lcom/android/phone/IncomingSlidingWidget;->setVisibility(I)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallButtonsView;->setVisibility(I)V

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v0, p1}, Lcom/android/phone/EndCallButtonsView;->setVisibility(I)V

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButtonsView:Lcom/android/phone/DialpadButtonsView;

    if-eqz v0, :cond_3

    .line 349
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButtonsView:Lcom/android/phone/DialpadButtonsView;

    invoke-virtual {v0, p1}, Lcom/android/phone/DialpadButtonsView;->setVisibility(I)V

    .line 350
    :cond_3
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 107
    return-void
.end method

.method setOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    if-eqz v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    invoke-virtual {v0}, Lcom/android/phone/IncomingSlidingWidget;->removeAllViews()V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    .line 317
    const v0, 0x7f0800a7

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingSlidingWidget;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    .line 318
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingSlidingWidget;->initialize(Ljava/lang/Object;)V

    .line 320
    :cond_0
    iput p1, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    .line 321
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isCallEndedScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    if-nez v0, :cond_1

    .line 325
    const v0, 0x7f0800a8

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EndCallButtonsView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    .line 326
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/EndCallButtonsView;->initialize(Lcom/android/phone/InCallScreen;)V

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget v2, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/EndCallButtonsView;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    .line 329
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/EndCallButtonsView;->setVisibility(I)V

    .line 331
    :cond_2
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 13
    .parameter "cm"

    .prologue
    const/16 v12, 0x64

    const/4 v11, 0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 121
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v7, :cond_1

    .line 122
    const-string v7, "- updateState: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->isCallEndedScreen()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isDisconnecting(Lcom/android/internal/telephony/CallManager;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 130
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallTouchUiVew:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 133
    :cond_2
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallTouchUiVew:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 135
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    .line 136
    .local v6, state:Lcom/android/internal/telephony/Phone$State;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- updateState: CallManager state is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 138
    const/4 v5, 0x0

    .line 139
    .local v5, showIncomingCallControls:Z
    const/4 v4, 0x0

    .line 141
    .local v4, showInCallControls:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 149
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v7

    if-nez v7, :cond_4

    .line 153
    iget-boolean v7, p0, Lcom/android/phone/InCallTouchUi;->mAllowIncomingCallTouchUi:Z

    if-eqz v7, :cond_3

    .line 159
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 160
    const-string v7, "- updateState: RINGING!  Showing incoming call controls..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 161
    const/4 v5, 0x1

    .line 162
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    if-nez v7, :cond_3

    .line 163
    const v7, 0x7f0800a7

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/phone/IncomingSlidingWidget;

    iput-object v7, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    .line 164
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7, v8}, Lcom/android/phone/IncomingSlidingWidget;->initialize(Ljava/lang/Object;)V

    .line 203
    :cond_3
    :goto_1
    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    .line 204
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "\'Incoming\' and \'in-call\' touch controls visible at the same time!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 188
    :cond_4
    iget-boolean v7, p0, Lcom/android/phone/InCallTouchUi;->mAllowInCallTouchUi:Z

    if-eqz v7, :cond_3

    .line 191
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->okToShowInCallTouchUi()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 192
    const/4 v4, 0x1

    .line 193
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    if-nez v7, :cond_3

    .line 194
    const v7, 0x7f0800a6

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/phone/InCallButtonsView;

    iput-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    .line 195
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7, v8}, Lcom/android/phone/InCallButtonsView;->initialize(Lcom/android/phone/InCallScreen;)V

    goto :goto_1

    .line 198
    :cond_5
    const-string v7, "- updateState: NOT OK to show touch UI; disabling..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 207
    :cond_6
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    invoke-virtual {v7, v10}, Lcom/android/phone/IncomingSlidingWidget;->setVisibility(I)V

    .line 208
    :cond_7
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mEndCallButtonsView:Lcom/android/phone/EndCallButtonsView;

    invoke-virtual {v7, v10}, Lcom/android/phone/EndCallButtonsView;->setVisibility(I)V

    .line 209
    :cond_8
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    invoke-virtual {v7, v10}, Lcom/android/phone/InCallButtonsView;->setVisibility(I)V

    .line 210
    :cond_9
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButtonsView:Lcom/android/phone/DialpadButtonsView;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButtonsView:Lcom/android/phone/DialpadButtonsView;

    invoke-virtual {v7, v10}, Lcom/android/phone/DialpadButtonsView;->setVisibility(I)V

    .line 211
    :cond_a
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 212
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButtonsView:Lcom/android/phone/DialpadButtonsView;

    if-nez v7, :cond_b

    .line 213
    const v7, 0x7f0800a9

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/phone/DialpadButtonsView;

    iput-object v7, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButtonsView:Lcom/android/phone/DialpadButtonsView;

    .line 214
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButtonsView:Lcom/android/phone/DialpadButtonsView;

    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7, v8}, Lcom/android/phone/DialpadButtonsView;->initialize(Lcom/android/phone/InCallScreen;)V

    .line 216
    :cond_b
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v7

    if-nez v7, :cond_d

    move v1, v11

    .line 218
    .local v1, duringCall:Z
    :goto_2
    if-eqz v1, :cond_e

    iget v7, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    if-ne v7, v11, :cond_e

    .line 226
    .end local v1           #duringCall:Z
    :cond_c
    if-eqz v4, :cond_17

    .line 227
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 228
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 229
    .local v0, callState:Lcom/android/internal/telephony/Call$State;
    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v7, :cond_f

    .line 232
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 233
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 234
    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v7, :cond_f

    .line 235
    const-string v7, "InCallTouchUi : All calls are IDLE at updateEndCallButton()"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #callState:Lcom/android/internal/telephony/Call$State;
    .end local v2           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_d
    move v1, v9

    .line 216
    goto :goto_2

    .line 221
    .restart local v1       #duringCall:Z
    :cond_e
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButtonsView:Lcom/android/phone/DialpadButtonsView;

    iget v8, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    invoke-virtual {v7, p1, v8}, Lcom/android/phone/DialpadButtonsView;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    .line 222
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButtonsView:Lcom/android/phone/DialpadButtonsView;

    invoke-virtual {v7, v9}, Lcom/android/phone/DialpadButtonsView;->setVisibility(I)V

    goto/16 :goto_0

    .line 240
    .end local v1           #duringCall:Z
    .restart local v0       #callState:Lcom/android/internal/telephony/Call$State;
    .restart local v2       #fgCall:Lcom/android/internal/telephony/Call;
    :cond_f
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->isCallEndedScreen()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 241
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 242
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    iget v8, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    invoke-virtual {v7, p1, v8}, Lcom/android/phone/InCallButtonsView;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    .line 243
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    invoke-virtual {v7, v9}, Lcom/android/phone/InCallButtonsView;->setVisibility(I)V

    .line 244
    sget-object v7, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v7, :cond_10

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v7, :cond_0

    .line 245
    :cond_10
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    invoke-virtual {v7}, Lcom/android/phone/InCallButtonsView;->disableInCallControls()V

    goto/16 :goto_0

    .line 249
    :cond_11
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_12

    .line 250
    iget-boolean v7, p0, Lcom/android/phone/InCallTouchUi;->mIsEndButtonBlankDone:Z

    if-nez v7, :cond_13

    .line 251
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v12, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 265
    :cond_12
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->removeIncomingSlidingWidget()V

    goto/16 :goto_0

    .line 253
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/phone/InCallTouchUi;->updateEndCallButton(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_3

    .line 257
    :cond_14
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    iget v8, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    invoke-virtual {v7, p1, v8}, Lcom/android/phone/InCallButtonsView;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    .line 258
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    invoke-virtual {v7, v9}, Lcom/android/phone/InCallButtonsView;->setVisibility(I)V

    .line 259
    sget-object v7, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v7, :cond_15

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v7, :cond_16

    .line 260
    :cond_15
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallButtonsView:Lcom/android/phone/InCallButtonsView;

    invoke-virtual {v7}, Lcom/android/phone/InCallButtonsView;->disableInCallControls()V

    .line 262
    :cond_16
    iput-boolean v9, p0, Lcom/android/phone/InCallTouchUi;->mIsEndButtonBlankDone:Z

    goto :goto_3

    .line 267
    .end local v0           #callState:Lcom/android/internal/telephony/Call$State;
    .end local v2           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_17
    if-eqz v5, :cond_0

    .line 268
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget v8, p0, Lcom/android/phone/InCallTouchUi;->mOrientation:I

    invoke-virtual {v7, p1, v8}, Lcom/android/phone/IncomingSlidingWidget;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    .line 269
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    invoke-virtual {v7, v9}, Lcom/android/phone/IncomingSlidingWidget;->setVisibility(I)V

    goto/16 :goto_0
.end method
