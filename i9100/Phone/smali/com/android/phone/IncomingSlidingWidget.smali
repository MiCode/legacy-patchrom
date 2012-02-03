.class public Lcom/android/phone/IncomingSlidingWidget;
.super Landroid/widget/RelativeLayout;
.source "IncomingSlidingWidget.java"

# interfaces
.implements Lcom/android/phone/PhoneSlidingTab$OnTriggerListener;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

.field public mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

.field private mLastIncomingCallActionTime:J

.field private mOrientation:I

.field public mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

.field private mRejectCallWithMsgHandle:Landroid/widget/Button;

.field private mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

.field private mSlidingTabAnim:Landroid/view/animation/AlphaAnimation;

.field private mVoipInUseMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mContext:Landroid/content/Context;

    .line 63
    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 70
    iput-object p1, p0, Lcom/android/phone/IncomingSlidingWidget;->mContext:Landroid/content/Context;

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mOrientation:I

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IncomingSlidingWidget;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgHandle:Landroid/widget/Button;

    return-object v0
.end method

.method private hideIncomingCallWidget()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    invoke-virtual {v0}, Lcom/android/phone/PhoneSlidingTab;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    invoke-virtual {v0}, Lcom/android/phone/PhoneSlidingTab;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mSlidingTabAnim:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_2

    .line 141
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mSlidingTabAnim:Landroid/view/animation/AlphaAnimation;

    .line 142
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mSlidingTabAnim:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 143
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mSlidingTabAnim:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/phone/IncomingSlidingWidget$3;

    invoke-direct {v1, p0}, Lcom/android/phone/IncomingSlidingWidget$3;-><init>(Lcom/android/phone/IncomingSlidingWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mSlidingTabAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneSlidingTab;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private linkControls()V
    .locals 5

    .prologue
    .line 76
    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneSlidingTab;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    .line 77
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    const v1, 0x7f02024e

    const v2, 0x7f0202c1

    const v3, 0x7f0202ad

    const v4, 0x7f0202b5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/PhoneSlidingTab;->setLeftTabResources(IIII)V

    .line 83
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    const v1, 0x7f020251

    const v2, 0x7f0202c2

    const v3, 0x7f0202b1

    const v4, 0x7f0202be

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/PhoneSlidingTab;->setRightTabResources(IIII)V

    .line 89
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    const v1, 0x7f0d02b7

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneSlidingTab;->setLeftHintText(I)V

    .line 90
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    const v1, 0x7f0d02b5

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneSlidingTab;->setRightHintText(I)V

    .line 91
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneSlidingTab;->setOnTriggerListener(Lcom/android/phone/PhoneSlidingTab$OnTriggerListener;)V

    .line 92
    const v0, 0x7f0800f9

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    .line 93
    const v0, 0x7f0800fc

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgHandle:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/android/phone/IncomingSlidingWidget$1;

    invoke-direct {v1, p0}, Lcom/android/phone/IncomingSlidingWidget$1;-><init>(Lcom/android/phone/IncomingSlidingWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 99
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v1, Lcom/android/phone/IncomingSlidingWidget$2;

    invoke-direct {v1, p0}, Lcom/android/phone/IncomingSlidingWidget$2;-><init>(Lcom/android/phone/IncomingSlidingWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 104
    const v0, 0x7f0800fb

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/RejectCallWithMsgLayout;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    .line 106
    const v0, 0x7f0800ac

    invoke-virtual {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mVoipInUseMsg:Landroid/widget/TextView;

    .line 107
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 290
    const-string v0, "IncomingSlidingWidget"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void
.end method

.method private showIncomingCallWidget()V
    .locals 3

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    invoke-virtual {v1}, Lcom/android/phone/PhoneSlidingTab;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 161
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 163
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    invoke-virtual {v1}, Lcom/android/phone/PhoneSlidingTab;->clearAnimation()V

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneSlidingTab;->setVisibility(I)V

    .line 171
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mVoipInUseMsg:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    return-void
.end method


# virtual methods
.method initialize(Ljava/lang/Object;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/phone/IncomingSlidingWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 112
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030027

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 116
    const-string v1, "Inflate Incoming widget view (portrait)"

    invoke-direct {p0, v1}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->linkControls()V

    .line 118
    instance-of v1, p1, Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_1

    .line 119
    check-cast p1, Lcom/android/phone/InCallScreen;

    .end local p1
    iput-object p1, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    .restart local p1
    :cond_1
    instance-of v1, p1, Lcom/android/phone/InVTCallScreen;

    if-eqz v1, :cond_0

    .line 121
    check-cast p1, Lcom/android/phone/InVTCallScreen;

    .end local p1
    iput-object p1, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 128
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 249
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 6
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const v4, 0x7f080018

    const v3, 0x7f080017

    const-string v5, "answer trigger: mInCallScreen and mInVTCallScreen is null"

    const-string v2, "IncomingSlidingWidget"

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialTrigger(whichHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    .line 195
    packed-switch p2, :pswitch_data_0

    .line 238
    const-string v0, "IncomingSlidingWidget"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialTrigger: unexpected whichHandle value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_0
    return-void

    .line 197
    :pswitch_0
    const-string v0, "LEFT_HANDLE: answer!"

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->hideIncomingCallWidget()V

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mLastIncomingCallActionTime:J

    .line 206
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InVTCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 212
    :cond_1
    const-string v0, "IncomingSlidingWidget"

    const-string v0, "answer trigger: mInCallScreen and mInVTCallScreen is null"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :pswitch_1
    const-string v0, "RIGHT_HANDLE: reject!"

    invoke-direct {p0, v0}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    .line 219
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->hideIncomingCallWidget()V

    .line 223
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mLastIncomingCallActionTime:J

    .line 226
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, v4}, Lcom/android/phone/InVTCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v4}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 232
    :cond_3
    const-string v0, "IncomingSlidingWidget"

    const-string v0, "answer trigger: mInCallScreen and mInVTCallScreen is null"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setVisibility(I)V
    .locals 5
    .parameter "visibility"

    .prologue
    .line 253
    if-nez p1, :cond_2

    .line 254
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->showIncomingCallWidget()V

    .line 255
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 256
    .local v2, ringConn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 257
    .local v1, presentation:I
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, phoneNumber:Ljava/lang/String;
    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v1, v3, :cond_0

    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v1, v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    :cond_0
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 262
    :goto_0
    const-string v3, "IncomingSlidingWidget show"

    invoke-direct {p0, v3}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    .line 269
    .end local v0           #phoneNumber:Ljava/lang/String;
    .end local v1           #presentation:I
    .end local v2           #ringConn:Lcom/android/internal/telephony/Connection;
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 270
    return-void

    .line 261
    .restart local v0       #phoneNumber:Ljava/lang/String;
    .restart local v1       #presentation:I
    .restart local v2       #ringConn:Lcom/android/internal/telephony/Connection;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    goto :goto_0

    .line 264
    .end local v0           #phoneNumber:Ljava/lang/String;
    .end local v1           #presentation:I
    .end local v2           #ringConn:Lcom/android/internal/telephony/Connection;
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/IncomingSlidingWidget;->hideIncomingCallWidget()V

    .line 265
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v3}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v3}, Landroid/widget/SlidingDrawer;->toggle()V

    .line 266
    :cond_3
    iget-object v3, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 267
    const-string v3, "IncomingSlidingWidget gone"

    invoke-direct {p0, v3}, Lcom/android/phone/IncomingSlidingWidget;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;I)V
    .locals 3
    .parameter "cm"
    .parameter "orientation"

    .prologue
    .line 273
    iget v2, p0, Lcom/android/phone/IncomingSlidingWidget;->mOrientation:I

    if-eq v2, p2, :cond_0

    .line 274
    iput p2, p0, Lcom/android/phone/IncomingSlidingWidget;->mOrientation:I

    .line 276
    :cond_0
    iput-object p1, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 277
    iget-object v2, p0, Lcom/android/phone/IncomingSlidingWidget;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 278
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, phoneNumber:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-virtual {v2, v1}, Lcom/android/phone/RejectCallWithMsgLayout;->setPhoneNumber(Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-virtual {v2, p1}, Lcom/android/phone/RejectCallWithMsgLayout;->setPhone(Lcom/android/internal/telephony/CallManager;)V

    .line 281
    iget-object v2, p0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgLayout:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-virtual {v2}, Lcom/android/phone/RejectCallWithMsgLayout;->updateItemList()V

    .line 282
    return-void
.end method
