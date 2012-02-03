.class public Lcom/android/phone/CallCard;
.super Landroid/widget/FrameLayout;
.source "CallCard.java"

# interfaces
.implements Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/CallTime$OnTickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCard$5;,
        Lcom/android/phone/CallCard$CallCardScreenState;
    }
.end annotation


# instance fields
.field private FDN_Number:Ljava/lang/String;

.field private mActiveRecInfo:Z

.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mBirthIcon:Landroid/widget/ImageView;

.field private mBirthPanel:Landroid/widget/LinearLayout;

.field private mBirthRemainedDays:Landroid/widget/TextView;

.field private mCallALSIcon:Landroid/widget/ImageView;

.field private mCallEndTimeBlinkCount:I

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mCardTitle:Ljava/lang/String;

.field private mCdnipNumber:Landroid/widget/TextView;

.field private mCity:Landroid/widget/TextView;

.field private mDensity:F

.field private mElapsedTime:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mLandscape:Lcom/android/phone/CallCardLand;

.field private mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

.field private mMultiCallInfo:Lcom/android/phone/MultiCallView;

.field private mName:Landroid/widget/TextView;

.field private mNoiseReductionIcon:Landroid/widget/ImageView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

.field private mPortrait:Landroid/view/View;

.field private mPrimaryCallInfo:Landroid/view/View;

.field private mRecInfo:Landroid/view/View;

.field private final mRingingCallAnimationDuration:I

.field private mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

.field private mShowRecInfo:Z

.field private mSnsIcon:Landroid/widget/ImageView;

.field private mSnsInfo:Landroid/widget/LinearLayout;

.field private mSnsStatus:Landroid/widget/TextView;

.field private mTextColorConnected:I

.field private mTextColorConnectedBluetooth:I

.field private mTextColorEnded:I

.field private mTextColorGray:I

.field private mTextColorOnHold:I

.field private mTextColorPhoneNumber:I

.field private mTextColorWhite:I

.field private mUpperTitle:Landroid/view/View;

.field private mUpperTitleText:Landroid/widget/TextView;

.field private mUpperTitleTextLand:Landroid/widget/TextView;

.field mhFDNQueryHanlder:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 224
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 136
    iput-object v1, p0, Lcom/android/phone/CallCard;->FDN_Number:Ljava/lang/String;

    .line 150
    iput-object v1, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    .line 155
    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/phone/CallCard;->mRingingCallAnimationDuration:I

    .line 163
    iput-boolean v3, p0, Lcom/android/phone/CallCard;->mShowRecInfo:Z

    .line 164
    iput-boolean v2, p0, Lcom/android/phone/CallCard;->mActiveRecInfo:Z

    .line 166
    iput v2, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    .line 168
    new-instance v1, Lcom/android/phone/CallCard$1;

    invoke-direct {v1, p0}, Lcom/android/phone/CallCard$1;-><init>(Lcom/android/phone/CallCard;)V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    .line 1923
    new-instance v1, Lcom/android/phone/CallCard$4;

    invoke-direct {v1, p0}, Lcom/android/phone/CallCard$4;-><init>(Lcom/android/phone/CallCard;)V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mhFDNQueryHanlder:Landroid/os/Handler;

    .line 226
    const-string v1, "CallCard constructor..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 228
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

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 231
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 232
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030001

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 236
    const-string v1, "Inflate CallCard view (portrait)"

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    .line 239
    new-instance v1, Lcom/android/phone/CallTime;

    invoke-direct {v1, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    .line 242
    new-instance v1, Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    .line 244
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/phone/CallCard;->mDensity:F

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Density: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallCard;->mDensity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 247
    sget-object v1, Lcom/android/phone/CallCard$CallCardScreenState;->PORTRAIT:Lcom/android/phone/CallCard$CallCardScreenState;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    .line 248
    return-void
.end method

.method private CallEndTimeBlink()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 201
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v1, :cond_0

    .line 221
    :goto_0
    return-void

    .line 203
    :cond_0
    iget v1, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 204
    iget v1, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    move v0, v4

    .line 205
    .local v0, invisibleCallTime:Z
    :goto_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    invoke-virtual {v1, v0}, Lcom/android/phone/MultiCallView;->CallEndTimeBlink(Z)V

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isCallEndedScreen()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v4

    :goto_2
    or-int/2addr v0, v1

    .line 209
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    move v2, v5

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget v1, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    .line 211
    iget-object v1, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 212
    iget-object v1, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .end local v0           #invisibleCallTime:Z
    :cond_2
    move v0, v3

    .line 204
    goto :goto_1

    .restart local v0       #invisibleCallTime:Z
    :cond_3
    move v1, v3

    .line 208
    goto :goto_2

    :cond_4
    move v2, v3

    .line 209
    goto :goto_3

    .line 214
    .end local v0           #invisibleCallTime:Z
    :cond_5
    iget-object v1, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    if-eqz v1, :cond_6

    .line 215
    iget-object v1, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    iget-object v2, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/MultiCallView;->CallEndTimeBlink(Ljava/lang/String;)V

    .line 217
    :cond_6
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isCallEndedScreen()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iput v3, p0, Lcom/android/phone/CallCard;->mCallEndTimeBlinkCount:I

    goto :goto_0

    :cond_7
    move v2, v5

    .line 217
    goto :goto_4
.end method

.method static synthetic access$000(Lcom/android/phone/CallCard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/phone/CallCard;->CallEndTimeBlink()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/phone/CallCard;->mActiveRecInfo:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/phone/CallCard;->mShowRecInfo:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/CallCard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/phone/CallCard;->mShowRecInfo:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/CallCard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showRecInfo()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/CallCard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/phone/CallCard;->hideRecInfo()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/CallCard;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/CallCard;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/CallCard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/CallCard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/CallCard;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/CallCard;->FDN_Number:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/phone/CallCard;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/phone/CallCard;->FDN_Number:Ljava/lang/String;

    return-object p1
.end method

.method private clearUpperTitle()V
    .locals 3

    .prologue
    .line 1800
    const-string v0, ""

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 1801
    return-void
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 19
    .parameter "cm"
    .parameter "call"

    .prologue
    .line 481
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "displayMainCallStatus(call "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")..."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 483
    if-nez p2, :cond_0

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 725
    :goto_0
    return-void

    .line 488
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 490
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    .line 491
    .local v13, state:Lcom/android/internal/telephony/Call$State;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "  - call.state: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 502
    sget-object v16, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 557
    const-string v16, "CallCard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "displayMainCallStatus: unexpected call state: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_1
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard;->updateCardTitleWidgets(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 561
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->isMultiCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v16

    if-nez v16, :cond_5

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 564
    sget-boolean v16, Lcom/android/phone/PhoneApp;->mIsLargeMultiCallUI:Z

    if-eqz v16, :cond_4

    .line 565
    const-string v16, "CallCard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "PhoneApp.mIsLargeMultiCallUI = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-boolean v18, Lcom/android/phone/PhoneApp;->mIsLargeMultiCallUI:Z

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const v16, 0x7f080027

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/phone/MultiCallLargeView;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    .line 571
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/MultiCallView;->initialize(Lcom/android/phone/InCallScreen;)V

    .line 574
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/MultiCallView;->setCallCardScreenState(Lcom/android/phone/CallCard$CallCardScreenState;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/phone/MultiCallView;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->reset()V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/MultiCallView;->setVisibility(I)V

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 709
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 506
    :pswitch_0
    const-string v16, "displayMainCallStatus: start periodicUpdateTimer"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->reset()V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->startMinuteMinderAlarm()V

    goto/16 :goto_1

    .line 517
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->reset()V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    goto/16 :goto_1

    .line 524
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 530
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 537
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 546
    :pswitch_5
    const-string v16, "CallCard"

    const-string v17, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 569
    :cond_4
    const v16, 0x7f080027

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/phone/MultiCallView;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    goto/16 :goto_2

    .line 581
    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v16

    if-nez v16, :cond_6

    .line 584
    invoke-direct/range {p0 .. p2}, Lcom/android/phone/CallCard;->updateDisplayForConferenceCall(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_3

    .line 588
    :cond_6
    const/4 v6, 0x0

    .line 589
    .local v6, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    .line 590
    .local v10, phoneType:I
    const/16 v16, 0x2

    move v0, v10

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    .line 591
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 599
    :goto_4
    if-nez v6, :cond_a

    .line 600
    const-string v16, "displayMainCallStatus: connection is null, using default values."

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v7

    .line 606
    .local v7, info:Lcom/android/internal/telephony/CallerInfo;
    sget v16, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_3

    .line 592
    .end local v7           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_7
    const/16 v16, 0x1

    move v0, v10

    move/from16 v1, v16

    if-eq v0, v1, :cond_8

    const/16 v16, 0x3

    move v0, v10

    move/from16 v1, v16

    if-ne v0, v1, :cond_9

    .line 594
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    goto :goto_4

    .line 596
    :cond_9
    new-instance v16, Ljava/lang/IllegalStateException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unexpected phone type: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 608
    :cond_a
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "  - CONN: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", state = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 609
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v11

    .line 613
    .local v11, presentation:I
    const/4 v12, 0x1

    .line 614
    .local v12, runQuery:Z
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v8

    .line 615
    .local v8, o:Ljava/lang/Object;
    move-object v0, v8

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v16, v0

    if-eqz v16, :cond_e

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v16, v0

    move-object v0, v8

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-object v9, v0

    move-object v0, v9

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v12

    .line 624
    :goto_5
    const/16 v16, 0x2

    move v0, v10

    move/from16 v1, v16

    if-ne v0, v1, :cond_d

    .line 625
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v9

    .line 626
    .local v9, obj:Ljava/lang/Object;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v15

    .line 627
    .local v15, updatedNumber:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v14

    .line 628
    .local v14, updatedCnapName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 629
    .restart local v7       #info:Lcom/android/internal/telephony/CallerInfo;
    move-object v0, v9

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v16, v0

    if-eqz v16, :cond_f

    .line 630
    move-object v0, v8

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-object v9, v0

    .end local v9           #obj:Ljava/lang/Object;
    iget-object v7, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 635
    :cond_b
    :goto_6
    if-eqz v7, :cond_d

    .line 636
    if-eqz v15, :cond_c

    move-object v0, v7

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 637
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "- displayMainCallStatus: updatedNumber = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 639
    const/4 v12, 0x1

    .line 641
    :cond_c
    if-eqz v14, :cond_d

    move-object v0, v7

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_d

    .line 642
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "- displayMainCallStatus: updatedCnapName = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 644
    const/4 v12, 0x1

    .line 649
    .end local v7           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v14           #updatedCnapName:Ljava/lang/String;
    .end local v15           #updatedNumber:Ljava/lang/String;
    :cond_d
    if-eqz v12, :cond_11

    .line 650
    const-string v16, "- displayMainCallStatus: starting CallerInfo query..."

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v7

    .line 655
    .local v7, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    move-object v0, v7

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v16, v0

    move-object v0, v7

    iget-boolean v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    move/from16 v17, v0

    if-nez v17, :cond_10

    const/16 v17, 0x1

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v11

    move/from16 v3, v17

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_3

    .line 619
    .end local v7           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v12

    goto/16 :goto_5

    .line 631
    .local v7, info:Lcom/android/internal/telephony/CallerInfo;
    .restart local v9       #obj:Ljava/lang/Object;
    .restart local v14       #updatedCnapName:Ljava/lang/String;
    .restart local v15       #updatedNumber:Ljava/lang/String;
    :cond_f
    move-object v0, v8

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v16, v0

    if-eqz v16, :cond_b

    .line 632
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v7, v0

    goto/16 :goto_6

    .line 655
    .end local v9           #obj:Ljava/lang/Object;
    .end local v14           #updatedCnapName:Ljava/lang/String;
    .end local v15           #updatedNumber:Ljava/lang/String;
    .local v7, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_10
    const/16 v17, 0x0

    goto :goto_7

    .line 660
    .end local v7           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_11
    const-string v16, "- displayMainCallStatus: using data we already have..."

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 661
    move-object v0, v8

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v16, v0

    if-eqz v16, :cond_12

    .line 662
    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v5, v0

    .line 664
    .local v5, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 669
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v16

    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 670
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v16

    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 671
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "- displayMainCallStatus: CNAP data from Connection: CNAP name="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v5

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", Number/Name Presentation="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v5

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 678
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "   ==> Got CallerInfo; updating display: ci = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 679
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v11

    move/from16 v3, v16

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_3

    .line 680
    .end local v5           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_12
    move-object v0, v8

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v16, v0

    if-eqz v16, :cond_13

    .line 681
    check-cast v8, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v8           #o:Ljava/lang/Object;
    iget-object v5, v8, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 682
    .restart local v5       #ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v5, :cond_3

    .line 683
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "- displayMainCallStatus: CNAP data from Connection: CNAP name="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v5

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", Number/Name Presentation="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v5

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 691
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "   ==> Got CallerInfoToken; updating display: ci = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 692
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v11

    move/from16 v3, v16

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_3

    .line 695
    .end local v5           #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v8       #o:Ljava/lang/Object;
    :cond_13
    const-string v16, "CallCard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 502
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayOnHoldCallStatus(call ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1162
    return-void
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1165
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1168
    if-nez v0, :cond_0

    .line 1169
    const-string v0, "getCallFailedString: connection is null, using default values."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1172
    const v0, 0x7f0d0180

    .line 1176
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1174
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1181
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 1187
    sget-object v1, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1247
    const v0, 0x7f0d0180

    .line 1250
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1189
    :pswitch_0
    const v0, 0x7f0d000d

    .line 1190
    goto :goto_0

    .line 1193
    :pswitch_1
    const v0, 0x7f0d000e

    .line 1194
    goto :goto_0

    .line 1197
    :pswitch_2
    const v0, 0x7f0d000f

    .line 1198
    goto :goto_0

    .line 1201
    :pswitch_3
    const v0, 0x7f0d0010

    .line 1202
    goto :goto_0

    .line 1205
    :pswitch_4
    const v0, 0x7f0d0011

    .line 1206
    goto :goto_0

    .line 1209
    :pswitch_5
    const v0, 0x7f0d0012

    .line 1210
    goto :goto_0

    .line 1213
    :pswitch_6
    const v0, 0x7f0d0014

    .line 1214
    goto :goto_0

    .line 1217
    :pswitch_7
    const v0, 0x7f0d0013

    .line 1218
    goto :goto_0

    .line 1222
    :pswitch_8
    const v0, 0x7f0d0015

    .line 1223
    goto :goto_0

    .line 1226
    :pswitch_9
    const v0, 0x7f0d0016

    .line 1227
    goto :goto_0

    .line 1230
    :pswitch_a
    const v0, 0x7f0d0017

    .line 1231
    goto :goto_0

    .line 1234
    :pswitch_b
    const v0, 0x7f0d0018

    .line 1235
    goto :goto_0

    .line 1238
    :pswitch_c
    const v0, 0x7f0d0019

    .line 1239
    goto :goto_0

    .line 1243
    :pswitch_d
    const v0, 0x7f0d0028

    .line 1244
    goto :goto_0

    .line 1187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1808
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 1810
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1811
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1815
    :goto_0
    const v1, 0x7f0d0184

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1816
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1813
    :cond_0
    const v0, 0x7f0d0008

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPresentationString(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    .line 1538
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1540
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_1

    .line 1541
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1545
    :cond_0
    :goto_0
    return-object v0

    .line 1542
    :cond_1
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne p1, v1, :cond_0

    .line 1543
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0d017c

    const v5, 0x7f0d0179

    .line 958
    const/4 v0, 0x0

    .line 959
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 960
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 962
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- getTitleForCallCard(Call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 964
    sget-object v3, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 1012
    :goto_0
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ==> result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1013
    return-object v0

    .line 971
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 972
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 973
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 976
    :cond_0
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 978
    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 980
    :cond_2
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 982
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 987
    :pswitch_2
    const v0, 0x7f0d0181

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 994
    :pswitch_3
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 999
    :pswitch_4
    const v0, 0x7f0d02c4

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1003
    :pswitch_5
    const v0, 0x7f0d0182

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1007
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 964
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private hideRecInfo()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1982
    const-string v0, "hideRecInfo"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1983
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1984
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    invoke-virtual {v0, v1}, Lcom/android/phone/MultiCallView;->setRecInfoViewVisibility(I)V

    .line 1985
    :cond_1
    return-void
.end method

.method private linkControls(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const v3, 0x7f08001e

    .line 267
    const v1, 0x7f08002e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    .line 268
    const v1, 0x7f08002d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mBirthIcon:Landroid/widget/ImageView;

    .line 269
    const v1, 0x7f080029

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    .line 270
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/phone/CallCard$2;

    invoke-direct {v2, p0}, Lcom/android/phone/CallCard$2;-><init>(Lcom/android/phone/CallCard;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    const v1, 0x7f08002f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    .line 277
    const v1, 0x7f080030

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCdnipNumber:Landroid/widget/TextView;

    .line 279
    iget-object v1, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    .line 280
    .local v0, isRec:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->invisibleRecInfoView()V

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    sget-object v2, Lcom/android/phone/CallCard$CallCardScreenState;->PORTRAIT:Lcom/android/phone/CallCard$CallCardScreenState;

    if-ne v1, v2, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    .line 283
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->visibleRecInfoView()V

    .line 285
    :cond_1
    const v1, 0x7f080020

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSnsInfo:Landroid/widget/LinearLayout;

    .line 286
    const v1, 0x7f080021

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSnsIcon:Landroid/widget/ImageView;

    .line 287
    const v1, 0x7f080022

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSnsStatus:Landroid/widget/TextView;

    .line 288
    const v1, 0x7f080023

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mNoiseReductionIcon:Landroid/widget/ImageView;

    .line 289
    const v1, 0x7f080024

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    .line 290
    const v1, 0x7f08002a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mBirthPanel:Landroid/widget/LinearLayout;

    .line 291
    const v1, 0x7f08002b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mBirthRemainedDays:Landroid/widget/TextView;

    .line 295
    const v1, 0x7f08002c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCity:Landroid/widget/TextView;

    .line 296
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCity:Landroid/widget/TextView;

    if-nez v1, :cond_2

    .line 298
    const-string v1, "mCity == null"

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 302
    :cond_2
    return-void

    .line 282
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1917
    const-string v0, "CallCard"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    return-void
.end method

.method private setRingingCallFrameAni()V
    .locals 6

    .prologue
    const v5, 0x7f02004c

    const/4 v4, 0x0

    const/16 v3, 0xc8

    .line 1893
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 1894
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1895
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1896
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1897
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1898
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1899
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1900
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1901
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1902
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 1903
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 1904
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1905
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1906
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1907
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1908
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1909
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1910
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1911
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1912
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 1913
    return-void
.end method

.method private setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V
    .locals 1
    .parameter "title"
    .parameter "color"
    .parameter "state"

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1779
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1793
    return-void
.end method

.method private static final showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1725
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_1

    .line 1726
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1727
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1731
    :goto_0
    const/4 v0, 0x1

    .line 1733
    :goto_1
    return v0

    .line 1729
    :cond_0
    const v0, 0x7f02011d

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 1733
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static final showImage(Landroid/widget/ImageView;I)V
    .locals 1
    .parameter "view"
    .parameter "resource"

    .prologue
    .line 1738
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1739
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1740
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 1744
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1745
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1746
    return-void
.end method

.method private showRecInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1977
    const-string v0, "showRecInfo"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1978
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mRecInfo:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1979
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    invoke-virtual {v0, v1}, Lcom/android/phone/MultiCallView;->setRecInfoViewVisibility(I)V

    .line 1980
    :cond_1
    return-void
.end method

.method private updateCardTitleWidgets(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const-wide/16 v9, 0x3e8

    const/4 v8, 0x0

    const/4 v7, 0x4

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCardTitleWidgets(call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 785
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 786
    invoke-static {p2}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v2

    .line 793
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 794
    if-ne v4, v12, :cond_2

    .line 795
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v5

    if-nez v5, :cond_1

    .line 796
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    .line 810
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCardTitleWidgets: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 813
    sget-object v5, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 908
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    iget v2, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    invoke-direct {p0, v1, v2, v0}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 911
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 912
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 931
    :cond_0
    :goto_1
    return-void

    .line 798
    :cond_1
    const v5, 0x7f0d017b

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    goto :goto_0

    .line 800
    :cond_2
    if-eq v4, v11, :cond_3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 802
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier;->getIsGsmRedialCall()Z

    move-result v5

    if-nez v5, :cond_4

    .line 803
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    goto :goto_0

    .line 805
    :cond_4
    const v5, 0x7f0d017b

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    goto :goto_0

    .line 808
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected phone type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :pswitch_0
    iget-object v5, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v5

    .line 817
    if-eqz v5, :cond_6

    .line 819
    :cond_6
    if-eqz v5, :cond_8

    iget v5, p0, Lcom/android/phone/CallCard;->mTextColorConnectedBluetooth:I

    .line 822
    :goto_2
    if-ne v4, v12, :cond_b

    .line 825
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 828
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    iget v4, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    invoke-direct {p0, v1, v4, v0}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 845
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 846
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 847
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 848
    div-long v0, v2, v9

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    goto :goto_1

    .line 819
    :cond_8
    iget v5, p0, Lcom/android/phone/CallCard;->mTextColorConnected:I

    goto :goto_2

    .line 829
    :cond_9
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 832
    invoke-direct {p0, v1, p1}, Lcom/android/phone/CallCard;->getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    .line 833
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    iget v4, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    invoke-direct {p0, v1, v4, v0}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    goto :goto_3

    .line 836
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/CallCard;->clearUpperTitle()V

    goto :goto_3

    .line 838
    :cond_b
    if-eq v4, v11, :cond_c

    const/4 v0, 0x3

    if-ne v4, v0, :cond_7

    .line 841
    :cond_c
    invoke-direct {p0}, Lcom/android/phone/CallCard;->clearUpperTitle()V

    goto :goto_3

    .line 861
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/CallCard;->clearUpperTitle()V

    .line 866
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 867
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 869
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 870
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 872
    div-long v0, v2, v9

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 873
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, ""

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 886
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/CallCard;->clearUpperTitle()V

    .line 891
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 892
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 893
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 894
    div-long v0, v2, v9

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    goto/16 :goto_1

    .line 901
    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCardTitle:Ljava/lang/String;

    iget v2, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    invoke-direct {p0, v1, v2, v0}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;ILcom/android/internal/telephony/Call$State;)V

    .line 902
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 903
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 813
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private updateDisplayForConferenceCall(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1556
    const-string v0, "updateDisplayForConferenceCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1557
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    const v2, 0x7f0d0029

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1558
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    const v3, 0x7f0d02c7

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1559
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1560
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f02011b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1561
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    if-eqz v0, :cond_0

    .line 1563
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    invoke-virtual {v0}, Lcom/android/phone/MultiCallView;->resetOriginalState()V

    .line 1564
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/MultiCallView;->setVisibility(I)V

    .line 1566
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1567
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1568
    return-void
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDisplayForPerson("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\npresentation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isTemporary:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1265
    if-nez p4, :cond_1

    .line 1266
    const-string v0, "CallCard.updateDisplayForPerson : call is null"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1532
    :cond_0
    :goto_0
    return-void

    .line 1270
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, p1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 1271
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1275
    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    .line 1277
    const/4 v0, 0x0

    .line 1278
    const/4 v1, 0x0

    .line 1280
    iget-object v2, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    .line 1281
    if-eqz p1, :cond_e

    .line 1294
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_2

    .line 1295
    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/phone/InCallScreen;->mCurrentCallNumber:Ljava/lang/String;

    .line 1303
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1304
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1305
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v1

    .line 1376
    :goto_1
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- got personUri: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', based on info.person_id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    move-object v6, v2

    move-object v8, v0

    move-object v0, v1

    .line 1383
    :goto_2
    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1384
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v1, 0x7f0d0183

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1392
    :goto_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1398
    const/4 v0, 0x0

    .line 1404
    if-eqz p1, :cond_4

    .line 1405
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1407
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1409
    const-string v2, "+86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1410
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1411
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->getNumberProvinceAndCity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1416
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info.phoneNumber is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". city is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1417
    if-eqz v0, :cond_11

    .line 1418
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCity:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/CallCard;->mCity:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1464
    :cond_4
    :goto_5
    if-eqz p3, :cond_12

    if-eqz p1, :cond_5

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v0, :cond_12

    .line 1465
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1476
    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1480
    if-eqz v8, :cond_14

    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1481
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1482
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/CallCard;->mTextColorPhoneNumber:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1483
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1488
    :goto_7
    if-eqz p1, :cond_15

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_15

    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 1489
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->snsAccountType:I

    packed-switch v0, :pswitch_data_0

    .line 1497
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1499
    :goto_8
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsStatus:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1504
    :goto_9
    iget-object v0, p0, Lcom/android/phone/CallCard;->mBirthIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1505
    iget-object v0, p0, Lcom/android/phone/CallCard;->mBirthPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1506
    if-eqz p1, :cond_7

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_7

    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne p2, v0, :cond_7

    .line 1508
    iget-wide v0, p1, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 1509
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "%d"

    aput-object v2, v0, v1

    .line 1510
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-wide v3, p1, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1511
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    long-to-int v3, v3

    aget-object v2, v2, v3

    .line 1512
    iget-object v3, p0, Lcom/android/phone/CallCard;->mBirthRemainedDays:Landroid/widget/TextView;

    invoke-static {v2, v0, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1513
    iget-object v0, p0, Lcom/android/phone/CallCard;->mBirthPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1516
    :cond_7
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    if-eqz v0, :cond_8

    .line 1518
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    invoke-virtual {v0}, Lcom/android/phone/MultiCallView;->resetOriginalState()V

    .line 1519
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/MultiCallView;->setVisibility(I)V

    .line 1521
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1523
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mConfigFdnContactSearchSupported:Z

    if-eqz v0, :cond_0

    .line 1526
    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v0, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/android/phone/CallCard;->mhFDNQueryHanlder:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1528
    invoke-static {}, Lcom/android/phone/FDNContactsCache;->getInstance()Lcom/android/phone/FDNContactsCache;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/phone/FDNContactsCache;->queryFDNContactByNumber(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1306
    :cond_9
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq p2, v1, :cond_a

    .line 1310
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1311
    :cond_a
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1312
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1313
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1314
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_1

    .line 1316
    :cond_b
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_1

    .line 1319
    :cond_c
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq p2, v1, :cond_d

    .line 1323
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1370
    :cond_d
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1373
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_1

    .line 1380
    :cond_e
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v2

    move-object v6, v1

    move-object v8, v0

    move-object v0, v2

    goto/16 :goto_2

    .line 1386
    :cond_f
    if-eqz p1, :cond_10

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    iget v2, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-ne v1, v2, :cond_10

    .line 1387
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/CallCard;->mTextColorGray:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1390
    :goto_a
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1389
    :cond_10
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_a

    .line 1421
    :cond_11
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCity:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallCard;->mCity:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1466
    :cond_12
    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_6

    .line 1468
    if-eqz p1, :cond_13

    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v0, :cond_13

    .line 1469
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-static {v0, v1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_6

    .line 1470
    :cond_13
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1473
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v7, 0x7f02011d

    move-object v0, p1

    move-object v2, p0

    move-object v3, p4

    invoke-static/range {v0 .. v7}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILandroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    goto/16 :goto_6

    .line 1485
    :cond_14
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 1491
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsIcon:Landroid/widget/ImageView;

    const v1, 0x7f02028d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_8

    .line 1493
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsIcon:Landroid/widget/ImageView;

    const v1, 0x7f02028e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_8

    .line 1495
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsIcon:Landroid/widget/ImageView;

    const v1, 0x7f02028f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_8

    .line 1501
    :cond_15
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1502
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSnsStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 1413
    :catch_0
    move-exception v1

    goto/16 :goto_4

    .line 1489
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateElapsedTimeWidget(J)V
    .locals 3
    .parameter

    .prologue
    .line 939
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 940
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    .line 943
    iget-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 944
    iget-object v1, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    if-eqz v1, :cond_0

    .line 945
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0181

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 946
    iget-object v2, p0, Lcom/android/phone/CallCard;->mMultiCallInfo:Lcom/android/phone/MultiCallView;

    invoke-virtual {v2, v0, v1}, Lcom/android/phone/MultiCallView;->updateElapsedTimeWidget(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .parameter "cm"

    .prologue
    .line 399
    const-string v4, "updateForegroundCall()..."

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 403
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 405
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v4

    if-nez v4, :cond_0

    .line 406
    const-string v4, "updateForegroundCall: no active call, show holding call"

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 413
    move-object v1, v0

    .line 416
    const/4 v0, 0x0

    .line 419
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 421
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 423
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 424
    .local v3, phoneType:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 425
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 428
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 438
    :cond_1
    :goto_0
    return-void

    .line 432
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 434
    :cond_3
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 436
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method private updateNoCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .parameter "cm"

    .prologue
    const/4 v1, 0x0

    .line 470
    const-string v0, "updateNoCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 472
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 473
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 474
    return-void
.end method

.method private updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x2

    const/4 v5, -0x1

    .line 1580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhotoForCallState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1582
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1583
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1586
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1587
    sget-object v0, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 1629
    :pswitch_0
    const/4 v2, 0x0

    .line 1632
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1633
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 1634
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1642
    :goto_0
    if-eqz v0, :cond_f

    .line 1643
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 1644
    instance-of v3, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_9

    .line 1645
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 1652
    :goto_1
    if-eqz v0, :cond_e

    .line 1653
    iget v2, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 1668
    :goto_2
    if-nez v2, :cond_c

    .line 1669
    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v3, :cond_b

    .line 1671
    :cond_2
    if-eqz v0, :cond_a

    iget-boolean v2, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_a

    .line 1673
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1717
    :cond_3
    :goto_3
    return-void

    .line 1592
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1595
    if-eqz v0, :cond_5

    .line 1596
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 1597
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v1, :cond_10

    .line 1599
    :cond_4
    const v0, 0x7f0202c8

    .line 1711
    :goto_4
    if-eqz v0, :cond_3

    .line 1712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- overrriding photo image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1713
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1715
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v6}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto :goto_3

    .line 1602
    :cond_5
    const-string v0, "updatePhotoForCallState: connection is null, ignoring."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    move v0, v4

    .line 1606
    goto :goto_4

    :pswitch_2
    move v0, v4

    .line 1608
    goto :goto_4

    .line 1635
    :cond_6
    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    if-ne v0, v3, :cond_8

    .line 1637
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0

    .line 1639
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1646
    :cond_9
    instance-of v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_f

    .line 1647
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_1

    .line 1677
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1679
    sget-object v0, Lcom/android/phone/CallCard$5;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_3

    .line 1687
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1688
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallOutgoingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_3

    .line 1682
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1683
    iget-object v0, p0, Lcom/android/phone/CallCard;->mRingingCallIncomingAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_3

    .line 1694
    :cond_b
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1695
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->getPhotoState()I

    move-result v1

    if-ne v1, v6, :cond_d

    .line 1697
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v4}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v0, v1, v3, v4, v5}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 1699
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v5}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    move v0, v2

    goto/16 :goto_4

    .line 1704
    :cond_c
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1705
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v5}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto/16 :goto_3

    :cond_d
    move v0, v2

    goto/16 :goto_4

    :cond_e
    move v2, v4

    goto/16 :goto_2

    :cond_f
    move-object v0, v2

    goto/16 :goto_1

    :cond_10
    move v0, v4

    goto/16 :goto_4

    .line 1587
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1679
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .parameter "cm"

    .prologue
    .line 445
    const-string v1, "updateRingingCall()..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 452
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 458
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 459
    return-void
.end method


# virtual methods
.method public hideCallCardElements()V
    .locals 2

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1834
    return-void
.end method

.method invisibleRecInfoView()V
    .locals 3

    .prologue
    const/16 v2, 0x6e

    const/4 v1, 0x0

    .line 1969
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1970
    :cond_0
    const-string v0, "invisibleRecInfoView"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1971
    invoke-direct {p0}, Lcom/android/phone/CallCard;->hideRecInfo()V

    .line 1972
    iput-boolean v1, p0, Lcom/android/phone/CallCard;->mShowRecInfo:Z

    .line 1973
    iput-boolean v1, p0, Lcom/android/phone/CallCard;->mActiveRecInfo:Z

    .line 1974
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 306
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallCard onFinishInflate(this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 310
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/View;

    .line 311
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    .line 314
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/view/View;

    .line 315
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleText:Landroid/widget/TextView;

    .line 316
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallALSIcon:Landroid/widget/ImageView;

    .line 319
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorWhite:I

    .line 320
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorGray:I

    .line 321
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorConnected:I

    .line 322
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorConnectedBluetooth:I

    .line 323
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorEnded:I

    .line 324
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorOnHold:I

    .line 325
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCard;->mTextColorPhoneNumber:I

    .line 327
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->linkControls(Landroid/view/View;)V

    .line 329
    invoke-direct {p0}, Lcom/android/phone/CallCard;->setRingingCallFrameAni()V

    .line 330
    return-void
.end method

.method public onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "iView"
    .parameter "imagePresent"

    .prologue
    .line 773
    if-eqz p2, :cond_0

    .line 774
    check-cast p2, Lcom/android/internal/telephony/Call;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 776
    :cond_0
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    const/4 v7, 0x0

    .line 732
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onQueryComplete: token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cookie "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ci "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 734
    instance-of v5, p2, Lcom/android/internal/telephony/Connection;

    if-eqz v5, :cond_3

    .line 738
    const-string v5, "callerinfo query complete, updating ui from displayMainCallStatus()"

    invoke-direct {p0, v5}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 741
    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/Connection;

    move-object v3, v0

    .line 742
    .local v3, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 743
    .local v1, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v3, p0, v6}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    .line 746
    .local v2, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .line 747
    .local v4, presentation:I
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    .line 748
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- onQueryComplete: presentation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", contactExists="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 754
    iget-boolean v5, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v5, :cond_2

    .line 755
    sget v5, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    invoke-direct {p0, p3, v5, v7, v1}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    .line 759
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 765
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v2           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v3           #conn:Lcom/android/internal/telephony/Connection;
    .end local v4           #presentation:I
    .end local p2
    :cond_1
    :goto_1
    return-void

    .line 757
    .restart local v1       #call:Lcom/android/internal/telephony/Call;
    .restart local v2       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v3       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v4       #presentation:I
    .restart local p2
    :cond_2
    iget-object v5, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {p0, v5, v4, v7, v1}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 761
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v2           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v3           #conn:Lcom/android/internal/telephony/Connection;
    .end local v4           #presentation:I
    :cond_3
    instance-of v5, p2, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 762
    const-string v5, "callerinfo query complete, updating ui from ongoing or onhold"

    invoke-direct {p0, v5}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 763
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    iget-object v5, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-static {p3, v5}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 0
    .parameter "timeElapsed"

    .prologue
    .line 257
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 258
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 252
    return-void
.end method

.method setOrientation(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 1837
    if-ne p1, v2, :cond_5

    move v1, v2

    .line 1838
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    .line 1839
    :goto_1
    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    sget-object v3, Lcom/android/phone/CallCard$CallCardScreenState;->PORTRAIT:Lcom/android/phone/CallCard$CallCardScreenState;

    if-eq v2, v3, :cond_7

    .line 1840
    sget-object v0, Lcom/android/phone/CallCard$CallCardScreenState;->PORTRAIT:Lcom/android/phone/CallCard$CallCardScreenState;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    .line 1841
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->linkControls(Landroid/view/View;)V

    .line 1842
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1843
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1844
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    invoke-virtual {v0}, Lcom/android/phone/CallCardLand;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1845
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    invoke-virtual {v0, v4}, Lcom/android/phone/CallCardLand;->setVisibility(I)V

    .line 1846
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    invoke-virtual {v0}, Lcom/android/phone/CallCardLandIncoming;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1847
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    invoke-virtual {v0, v4}, Lcom/android/phone/CallCardLandIncoming;->setVisibility(I)V

    .line 1878
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleTextLand:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    sget-object v2, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE:Lcom/android/phone/CallCard$CallCardScreenState;

    if-ne v0, v2, :cond_4

    .line 1879
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1880
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_3

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_f

    .line 1881
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleTextLand:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1882
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleTextLand:Landroid/widget/TextView;

    const v2, 0x7f0d0179

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1889
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/view/View;

    if-eqz v1, :cond_10

    move v1, v5

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1890
    return-void

    :cond_5
    move v1, v5

    .line 1837
    goto/16 :goto_0

    :cond_6
    move v0, v5

    .line 1838
    goto :goto_1

    .line 1849
    :cond_7
    if-nez v1, :cond_b

    if-eqz v0, :cond_b

    iget-object v2, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    sget-object v3, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE_INCOMING:Lcom/android/phone/CallCard$CallCardScreenState;

    if-eq v2, v3, :cond_b

    .line 1850
    sget-object v0, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE_INCOMING:Lcom/android/phone/CallCard$CallCardScreenState;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    .line 1851
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    if-nez v0, :cond_8

    .line 1852
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallCardLandIncoming;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    .line 1853
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    invoke-virtual {v0}, Lcom/android/phone/CallCardLandIncoming;->initialize()V

    .line 1855
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->linkControls(Landroid/view/View;)V

    .line 1856
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 1857
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1858
    :cond_9
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    invoke-virtual {v0}, Lcom/android/phone/CallCardLand;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 1859
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    invoke-virtual {v0, v4}, Lcom/android/phone/CallCardLand;->setVisibility(I)V

    .line 1860
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    invoke-virtual {v0}, Lcom/android/phone/CallCardLandIncoming;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 1861
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    invoke-virtual {v0, v5}, Lcom/android/phone/CallCardLandIncoming;->setVisibility(I)V

    goto/16 :goto_2

    .line 1863
    :cond_b
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    sget-object v2, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE:Lcom/android/phone/CallCard$CallCardScreenState;

    if-eq v0, v2, :cond_2

    .line 1864
    sget-object v0, Lcom/android/phone/CallCard$CallCardScreenState;->LANDSCAPE:Lcom/android/phone/CallCard$CallCardScreenState;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    .line 1865
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    if-nez v0, :cond_c

    .line 1866
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallCardLand;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    .line 1867
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    invoke-virtual {v0}, Lcom/android/phone/CallCardLand;->initialize()V

    .line 1868
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleTextLand:Landroid/widget/TextView;

    .line 1870
    :cond_c
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->linkControls(Landroid/view/View;)V

    .line 1871
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 1872
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPortrait:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1873
    :cond_d
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    invoke-virtual {v0}, Lcom/android/phone/CallCardLand;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_e

    .line 1874
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscape:Lcom/android/phone/CallCardLand;

    invoke-virtual {v0, v5}, Lcom/android/phone/CallCardLand;->setVisibility(I)V

    .line 1875
    :cond_e
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    invoke-virtual {v0}, Lcom/android/phone/CallCardLandIncoming;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1876
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLandscapeIncoming:Lcom/android/phone/CallCardLandIncoming;

    invoke-virtual {v0, v4}, Lcom/android/phone/CallCardLandIncoming;->setVisibility(I)V

    goto/16 :goto_2

    .line 1886
    :cond_f
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitleTextLand:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_10
    move v1, v4

    .line 1889
    goto/16 :goto_4
.end method

.method stopTimer()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 263
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 5
    .parameter "cm"

    .prologue
    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    .line 345
    .local v2, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_0

    .line 348
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateRingingCall(Lcom/android/internal/telephony/CallManager;)V

    .line 393
    :goto_0
    return-void

    .line 349
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_1

    .line 352
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 359
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 360
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 361
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_4

    .line 366
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    .line 390
    :goto_1
    iget-boolean v3, p0, Lcom/android/phone/CallCard;->mActiveRecInfo:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->invisibleRecInfoView()V

    .line 391
    :cond_3
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v3}, Lcom/android/phone/CallTime;->stopMinuteMinderAlarm()V

    goto :goto_0

    .line 367
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_6

    .line 371
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_1

    .line 388
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_1
.end method

.method visibleRecInfoView()V
    .locals 3

    .prologue
    const/16 v2, 0x6e

    const/4 v1, 0x1

    .line 1962
    const-string v0, "visibleRecInfoView"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1963
    iput-boolean v1, p0, Lcom/android/phone/CallCard;->mActiveRecInfo:Z

    .line 1964
    iput-boolean v1, p0, Lcom/android/phone/CallCard;->mShowRecInfo:Z

    .line 1965
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1966
    :cond_0
    return-void
.end method
