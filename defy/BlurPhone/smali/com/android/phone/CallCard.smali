.class public Lcom/android/phone/CallCard;
.super Landroid/widget/FrameLayout;
.source "CallCard.java"

# interfaces
.implements Lcom/android/phone/CallTime$OnTickListener;
.implements Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/phone/CityIdInfo$OnQueryCompleteListener;
.implements Lcom/android/phone/BlurContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCard$2;
    }
.end annotation


# static fields
.field static final CALLCARD_SIDE_MARGIN_LANDSCAPE:I = 0x32

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CallCard"

.field static final MAIN_CALLCARD_MIN_HEIGHT_LANDSCAPE:I = 0xc8


# instance fields
.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallElapsedTime:Landroid/widget/TextView;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mCallTitle:Landroid/widget/TextView;

.field private mCityId:Landroid/widget/TextView;

.field private mCityIdRight:Landroid/widget/TextView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDensity:F

.field private mEriBanner:Landroid/widget/TextView;

.field private mExclConfCallTitle:Landroid/widget/TextView;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mLabel:Landroid/widget/TextView;

.field private mMainCallCard:Landroid/view/ViewGroup;

.field private mMainCallCard1:Landroid/view/ViewGroup;

.field private mMainCallCard2:Landroid/view/ViewGroup;

.field private mMood:Landroid/widget/TextView;

.field private mMoodIcon:Landroid/widget/ImageView;

.field private mMoodIconCache:Lcom/android/phone/MoodIconCache;

.field private mMoodRow:Landroid/view/View;

.field private mMultiPartyCallTitle:Landroid/widget/TextView;

.field private mName:Landroid/widget/TextView;

.field private mNameRight:Landroid/widget/TextView;

.field private mNumberRight:Landroid/widget/TextView;

.field private mOnHoldArea:Landroid/widget/LinearLayout;

.field private mOnHoldContName:Ljava/lang/String;

.field private mOnHoldTitle:Landroid/widget/TextView;

.field private mOtherCallName:Landroid/widget/TextView;

.field private mOtherCallNumber:Landroid/widget/TextView;

.field private mOtherCallOnHoldName:Landroid/widget/TextView;

.field private mOtherCallOnHoldStatus:Landroid/widget/TextView;

.field private mOtherCallPhoto:Landroid/widget/ImageView;

.field private mOtherCallSwapButton:Landroid/widget/Button;

.field private mOtherCityId:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoRight:Landroid/widget/ImageView;

.field private mPhotoTracker:Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;

.field private mRingerSilenced:Z

.field private mRotarySelectorHintColorResId:I

.field private mRotarySelectorHintTextResId:I

.field private mSNIcon:Landroid/widget/ImageView;

.field private mSNIconCache:Lcom/android/phone/SNIconCache;

.field private mSNIconRight:Landroid/widget/ImageView;

.field private mSocialStatus:Landroid/widget/TextView;

.field private mStatus:Landroid/widget/TextView;

.field private mStatusRight:Landroid/widget/TextView;

.field private mStatusRow:Landroid/view/View;

.field private mStatusRowRight:Landroid/view/View;

.field private mTextColorConnected:I

.field private mTextColorConnectedBluetooth:I

.field private mTextColorEnded:I

.field private mTextColorOnHold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    sput-boolean v0, Lcom/android/phone/CallCard;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 179
    sget-boolean v1, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "CallCard constructor..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 180
    :cond_0
    sget-boolean v1, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v1, :cond_1

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

    .line 181
    :cond_1
    sget-boolean v1, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v1, :cond_2

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

    .line 184
    :cond_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 185
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03000d

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 191
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    .line 193
    new-instance v1, Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;

    invoke-direct {v1}, Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;

    .line 194
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 195
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 197
    new-instance v1, Lcom/android/phone/CallTime;

    invoke-direct {v1, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    .line 198
    new-instance v1, Lcom/android/phone/SNIconCache;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/SNIconCache;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSNIconCache:Lcom/android/phone/SNIconCache;

    .line 199
    new-instance v1, Lcom/android/phone/MoodIconCache;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/MoodIconCache;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mMoodIconCache:Lcom/android/phone/MoodIconCache;

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallCard;->mContentResolver:Landroid/content/ContentResolver;

    .line 201
    invoke-static {p1}, Lcom/android/phone/InteractionConfig;->init(Landroid/content/Context;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/phone/CallCard;->mDensity:F

    .line 204
    sget-boolean v1, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v1, :cond_3

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

    .line 205
    :cond_3
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/android/phone/CallCard;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/CallCard;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CallCard;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method private displayERI(Lcom/android/internal/telephony/Call$State;)V
    .locals 4
    .parameter "state"

    .prologue
    const/16 v3, 0x8

    const v2, 0x7f070046

    .line 1031
    iget-object v0, p0, Lcom/android/phone/CallCard;->mEriBanner:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1032
    sget-object v0, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1072
    :goto_0
    :pswitch_0
    sget-object v0, Lcom/android/phone/InCallScreen;->mEriTxt:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/android/phone/CallCard;->mEriBanner:Landroid/widget/TextView;

    sget-object v1, Lcom/android/phone/InCallScreen;->mEriTxt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1074
    iget-object v0, p0, Lcom/android/phone/CallCard;->mEriBanner:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1076
    :cond_0
    return-void

    .line 1039
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mEriBanner:Landroid/widget/TextView;

    goto :goto_0

    .line 1046
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mEriBanner:Landroid/widget/TextView;

    goto :goto_0

    .line 1050
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_2

    .line 1053
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mEriBanner:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1054
    invoke-virtual {p0, v2}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mEriBanner:Landroid/widget/TextView;

    goto :goto_0

    .line 1057
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->isThreeWayCallOrigStateDialing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1059
    iget-object v0, p0, Lcom/android/phone/CallCard;->mEriBanner:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1062
    invoke-virtual {p0, v2}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mEriBanner:Landroid/widget/TextView;

    goto :goto_0

    .line 1064
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mEriBanner:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1065
    invoke-virtual {p0, v2}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mEriBanner:Landroid/widget/TextView;

    goto :goto_0

    .line 1032
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 21
    .parameter "cm"
    .parameter "call"

    .prologue
    .line 543
    if-nez p2, :cond_1

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMainCallCard:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    sget-boolean v18, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v18, :cond_2

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "displayMainCallStatus(phone "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", call "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")..."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 550
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    .line 551
    .local v11, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    .line 553
    .local v12, phoneType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMainCallCard:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    .line 556
    .local v15, state:Lcom/android/internal/telephony/Call$State;
    sget-boolean v18, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v18, :cond_3

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  - call.state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 558
    :cond_3
    sget-object v18, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    .line 617
    const-string v18, "CallCard"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "displayMainCallStatus: unexpected call state: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard;->updateCardTitleWidgets(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 622
    sget-object v18, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object v0, v15

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->showResumeButton()V

    .line 651
    :cond_5
    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v18

    if-nez v18, :cond_6

    const/16 v18, 0x2

    move v0, v12

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v18

    sget-object v19, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CdmaPhoneCallState;->isThreeWayCallOrigStateDialing()Z

    move-result v18

    if-nez v18, :cond_e

    .line 656
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateDisplayForConference(Lcom/android/internal/telephony/Call;)V

    .line 773
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 778
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mRotarySelectorHintTextResId:I

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mRotarySelectorHintTextResId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallCard;->mRotarySelectorHintColorResId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextColor(I)V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 562
    :pswitch_1
    sget-boolean v18, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v18, :cond_7

    const-string v18, "displayMainCallStatus: start periodicUpdateTimer"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 564
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallTime;->reset()V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    goto/16 :goto_1

    .line 577
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 587
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 597
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 606
    :pswitch_5
    const-string v18, "CallCard"

    const-string v19, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 626
    :cond_8
    const/16 v18, 0x2

    move v0, v12

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 627
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 628
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->showSwapButton()V

    goto/16 :goto_2

    .line 631
    :cond_9
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v18

    sget-object v19, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->hideResumeButton()V

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v18

    if-nez v18, :cond_a

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CdmaPhoneCallState;->isThreeWayCallOrigStateDialing()Z

    move-result v18

    if-nez v18, :cond_a

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mOtherCallSwapButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    .line 638
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mOtherCallSwapButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const v19, 0x7f0b0334

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_2

    .line 641
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->hideResumeButton()V

    goto/16 :goto_2

    .line 644
    :cond_c
    const/16 v18, 0x1

    move v0, v12

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InCallScreen;->hideResumeButton()V

    goto/16 :goto_2

    .line 647
    :cond_d
    new-instance v18, Ljava/lang/IllegalStateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unexpected phone type: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 660
    :cond_e
    const/4 v6, 0x0

    .line 661
    .local v6, conn:Lcom/android/internal/telephony/Connection;
    const/16 v18, 0x2

    move v0, v12

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 662
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 669
    :goto_4
    if-nez v6, :cond_12

    .line 670
    sget-boolean v18, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v18, :cond_f

    const-string v18, "displayMainCallStatus: connection is null, using default values."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 675
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v7

    .line 676
    .local v7, info:Lcom/android/internal/telephony/CallerInfo;
    sget v18, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_3

    .line 663
    .end local v7           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_10
    const/16 v18, 0x1

    move v0, v12

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 664
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    goto :goto_4

    .line 666
    :cond_11
    new-instance v18, Ljava/lang/IllegalStateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unexpected phone type: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 678
    :cond_12
    sget-boolean v18, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v18, :cond_13

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  - CONN: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", state = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 679
    :cond_13
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v13

    .line 683
    .local v13, presentation:I
    const/4 v14, 0x1

    .line 684
    .local v14, runQuery:Z
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v9

    .line 685
    .local v9, o:Ljava/lang/Object;
    move-object v0, v9

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v18, v0

    if-eqz v18, :cond_1c

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;

    move-object/from16 v18, v0

    move-object v0, v9

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-object v10, v0

    move-object v0, v10

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v14

    .line 694
    :goto_5
    const/16 v18, 0x2

    move v0, v12

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    .line 695
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v10

    .line 696
    .local v10, obj:Ljava/lang/Object;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v17

    .line 697
    .local v17, updatedNumber:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v16

    .line 698
    .local v16, updatedCnapName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 700
    .restart local v7       #info:Lcom/android/internal/telephony/CallerInfo;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_14

    .line 701
    invoke-static/range {v17 .. v17}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 704
    :cond_14
    move-object v0, v10

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v18, v0

    if-eqz v18, :cond_1d

    .line 705
    move-object v0, v9

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-object v10, v0

    .end local v10           #obj:Ljava/lang/Object;
    iget-object v7, v10, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 710
    :cond_15
    :goto_6
    if-eqz v7, :cond_19

    .line 711
    if-eqz v17, :cond_17

    move-object v0, v7

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_17

    .line 712
    sget-boolean v18, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v18, :cond_16

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "- displayMainCallStatus: updatedNumber = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 714
    :cond_16
    const/4 v14, 0x1

    .line 716
    :cond_17
    if-eqz v16, :cond_19

    move-object v0, v7

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_19

    .line 717
    sget-boolean v18, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v18, :cond_18

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "- displayMainCallStatus: updatedCnapName = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 719
    :cond_18
    const/4 v14, 0x1

    .line 724
    .end local v7           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v16           #updatedCnapName:Ljava/lang/String;
    .end local v17           #updatedNumber:Ljava/lang/String;
    :cond_19
    if-eqz v14, :cond_1f

    .line 725
    sget-boolean v18, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v18, :cond_1a

    const-string v18, "- displayMainCallStatus: starting CallerInfo query..."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 726
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/PhoneUtils;->retrieveLatestCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v7

    .line 730
    .local v7, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/CityIdInfo;->isAvailable(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 731
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->isNanpNetwork(Landroid/content/Context;)Z

    move-result v8

    .line 732
    .local v8, isNanpNetwork:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object v0, v7

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move v3, v8

    move-object/from16 v4, p0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/phone/PhoneUtils;->inCallCityIdLookup(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;ZZLcom/android/phone/CityIdInfo$OnQueryCompleteListener;)V

    .line 736
    .end local v8           #isNanpNetwork:Z
    :cond_1b
    move-object v0, v7

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v18, v0

    move-object v0, v7

    iget-boolean v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    move/from16 v19, v0

    if-nez v19, :cond_1e

    const/16 v19, 0x1

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v13

    move/from16 v3, v19

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_3

    .line 689
    .end local v7           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v14

    goto/16 :goto_5

    .line 706
    .local v7, info:Lcom/android/internal/telephony/CallerInfo;
    .restart local v10       #obj:Ljava/lang/Object;
    .restart local v16       #updatedCnapName:Ljava/lang/String;
    .restart local v17       #updatedNumber:Ljava/lang/String;
    :cond_1d
    move-object v0, v9

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_15

    .line 707
    move-object v0, v9

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v7, v0

    goto/16 :goto_6

    .line 736
    .end local v10           #obj:Ljava/lang/Object;
    .end local v16           #updatedCnapName:Ljava/lang/String;
    .end local v17           #updatedNumber:Ljava/lang/String;
    .local v7, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_1e
    const/16 v19, 0x0

    goto :goto_7

    .line 741
    .end local v7           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_1f
    sget-boolean v18, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v18, :cond_20

    const-string v18, "- displayMainCallStatus: using data we already have..."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 742
    :cond_20
    move-object v0, v9

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_23

    .line 743
    move-object v0, v9

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v5, v0

    .line 745
    .local v5, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v6

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->storeCnapInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)V

    .line 746
    sget-boolean v18, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v18, :cond_21

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "- displayMainCallStatus: CNAP data from Connection: CNAP name="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v5

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Number/Name Presentation="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v5

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 749
    :cond_21
    sget-boolean v18, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v18, :cond_22

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "   ==> Got CallerInfo; updating display: ci = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 750
    :cond_22
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v13

    move/from16 v3, v18

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_3

    .line 751
    .end local v5           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_23
    move-object v0, v9

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v18, v0

    if-eqz v18, :cond_26

    .line 752
    check-cast v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v9           #o:Ljava/lang/Object;
    iget-object v5, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 753
    .restart local v5       #ci:Lcom/android/internal/telephony/CallerInfo;
    sget-boolean v18, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v18, :cond_24

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "- displayMainCallStatus: CNAP data from Connection: CNAP name="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v5

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Number/Name Presentation="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v5

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 756
    :cond_24
    sget-boolean v18, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v18, :cond_25

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "   ==> Got CallerInfoToken; updating display: ci = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 757
    :cond_25
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v13

    move/from16 v3, v18

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_3

    .line 759
    .end local v5           #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v9       #o:Ljava/lang/Object;
    :cond_26
    const-string v18, "CallCard"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 558
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 19
    .parameter "cm"
    .parameter "call"

    .prologue
    .line 1482
    sget-boolean v15, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v15, :cond_0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "displayOnHoldCallStatus(call ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")..."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1483
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1485
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->hideOnHoldInfo()V

    .line 1699
    :cond_2
    :goto_0
    return-void

    .line 1489
    :cond_3
    const/4 v11, 0x0

    .line 1490
    .local v11, name:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    .line 1491
    .local v14, state:Lcom/android/internal/telephony/Call$State;
    const-string v8, ""

    .line 1492
    .local v8, displayNumber:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1493
    .local v7, displayCityId:Ljava/lang/String;
    sget-object v15, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    .line 1696
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->hideOnHoldInfo()V

    goto :goto_0

    .line 1499
    :pswitch_1
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1500
    sget-boolean v15, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v15, :cond_4

    const-string v15, "==> conference call."

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1501
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0b0152

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1514
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mOtherCallSwapButton:Landroid/widget/Button;

    move-object v15, v0

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mOnHoldTitle:Landroid/widget/TextView;

    move-object v15, v0

    if-eqz v15, :cond_8

    .line 1515
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v9

    .line 1516
    .local v9, info:Lcom/android/internal/telephony/CallerInfo;
    iget-object v15, v9, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1517
    iget-object v11, v9, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1539
    :cond_6
    :goto_2
    sget-boolean v15, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-nez v15, :cond_f

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mOtherCallName:Landroid/widget/TextView;

    move-object v15, v0

    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mOtherCallNumber:Landroid/widget/TextView;

    move-object v15, v0

    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/phone/CityIdInfo;->isAvailable(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mOtherCityId:Landroid/widget/TextView;

    move-object v15, v0

    if-eqz v15, :cond_7

    .line 1545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mOtherCityId:Landroid/widget/TextView;

    move-object v15, v0

    invoke-static {v15, v9}, Lcom/android/phone/PhoneUtils;->getCityIdDisplayStr(Landroid/widget/TextView;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v7

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mOtherCityId:Landroid/widget/TextView;

    move-object v15, v0

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1552
    :cond_7
    iget-object v15, v9, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_e

    .line 1553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mOtherCallPhoto:Landroid/widget/ImageView;

    move-object v15, v0

    move-object v0, v9

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1576
    .end local v9           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_8
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->showOnHoldInfo()V

    goto/16 :goto_0

    .line 1506
    :cond_9
    sget-boolean v15, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v15, :cond_a

    const-string v15, "==> NOT a conf call; call startGetCallerInfo..."

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1507
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mOtherCallName:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object v0, v15

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v9

    .line 1509
    .local v9, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v15, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 1519
    .local v9, info:Lcom/android/internal/telephony/CallerInfo;
    :cond_b
    iget-object v11, v9, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1520
    iget-object v15, v9, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 1525
    invoke-virtual {v9}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 1526
    iget-object v8, v9, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_2

    .line 1527
    :cond_c
    invoke-virtual {v9}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 1528
    iget-object v15, v9, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v15}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 1531
    :cond_d
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object v0, v9

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    move/from16 v17, v0

    move-object v0, v9

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallCard;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v9

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 1555
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mOtherCallPhoto:Landroid/widget/ImageView;

    move-object v15, v0

    const v16, 0x7f020133

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 1556
    :cond_f
    if-eqz v11, :cond_8

    .line 1557
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0xf

    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_10

    .line 1558
    const/4 v15, 0x0

    const/16 v16, 0xe

    move-object v0, v11

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallCard;->mOnHoldContName:Ljava/lang/String;

    goto/16 :goto_3

    .line 1561
    :cond_10
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallCard;->mOnHoldContName:Ljava/lang/String;

    goto/16 :goto_3

    .line 1582
    .end local v9           #info:Lcom/android/internal/telephony/CallerInfo;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    .line 1583
    .local v12, phoneType:I
    const/4 v15, 0x2

    if-ne v12, v15, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v15, :cond_2

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v15}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v6

    .line 1586
    .local v6, currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v15, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v6, v15, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    sget-object v16, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object v0, v15

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_2

    .line 1588
    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v5

    .line 1589
    .local v5, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-gt v0, v1, :cond_1e

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v15

    if-nez v15, :cond_1e

    .line 1595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mOtherCallSwapButton:Landroid/widget/Button;

    move-object v15, v0

    if-eqz v15, :cond_14

    .line 1597
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    .line 1598
    .local v4, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v4}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v10

    .line 1599
    .local v10, info2:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v13

    .line 1600
    .local v13, presentation:I
    if-eqz v10, :cond_1c

    .line 1614
    iget-object v15, v10, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_18

    .line 1615
    iget-object v15, v10, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 1616
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v13}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    .line 1658
    :cond_12
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mOtherCallName:Landroid/widget/TextView;

    move-object v15, v0

    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mOtherCallNumber:Landroid/widget/TextView;

    move-object v15, v0

    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/phone/CityIdInfo;->isAvailable(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mOtherCityId:Landroid/widget/TextView;

    move-object v15, v0

    if-eqz v15, :cond_13

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mOtherCityId:Landroid/widget/TextView;

    move-object v15, v0

    invoke-static {v15, v10}, Lcom/android/phone/PhoneUtils;->getCityIdDisplayStr(Landroid/widget/TextView;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v7

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mOtherCityId:Landroid/widget/TextView;

    move-object v15, v0

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1670
    :cond_13
    if-eqz v10, :cond_1d

    .line 1671
    iget-object v15, v10, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_14

    .line 1672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mOtherCallPhoto:Landroid/widget/ImageView;

    move-object v15, v0

    move-object v0, v10

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1686
    .end local v4           #conn:Lcom/android/internal/telephony/Connection;
    .end local v10           #info2:Lcom/android/internal/telephony/CallerInfo;
    .end local v13           #presentation:I
    :cond_14
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->showOnHoldInfo()V

    goto/16 :goto_0

    .line 1617
    .restart local v4       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v10       #info2:Lcom/android/internal/telephony/CallerInfo;
    .restart local v13       #presentation:I
    :cond_15
    sget v15, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v13, v15, :cond_16

    .line 1621
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v13}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 1622
    :cond_16
    iget-object v15, v10, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_17

    .line 1623
    iget-object v11, v10, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1624
    iget-object v15, v10, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v15, v10, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1625
    iget-object v8, v10, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_4

    .line 1627
    :cond_17
    iget-object v11, v10, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_4

    .line 1630
    :cond_18
    sget v15, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v13, v15, :cond_19

    .line 1634
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v13}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 1636
    :cond_19
    iget-object v11, v10, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1637
    iget-object v15, v10, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v15, :cond_12

    .line 1641
    invoke-virtual {v10}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v15

    if-nez v15, :cond_1a

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v15

    if-eqz v15, :cond_1b

    .line 1642
    :cond_1a
    iget-object v8, v10, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_4

    .line 1644
    :cond_1b
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object v0, v10

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    move/from16 v17, v0

    move-object v0, v10

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallCard;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v10

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 1654
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v13}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    .line 1674
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mOtherCallPhoto:Landroid/widget/ImageView;

    move-object v15, v0

    const v16, 0x3020286

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 1683
    .end local v4           #conn:Lcom/android/internal/telephony/Connection;
    .end local v10           #info2:Lcom/android/internal/telephony/CallerInfo;
    .end local v13           #presentation:I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mOtherCallName:Landroid/widget/TextView;

    move-object v15, v0

    const v16, 0x7f0b0303

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(I)V

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mOtherCallNumber:Landroid/widget/TextView;

    move-object v15, v0

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1493
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 2
    .parameter "call"

    .prologue
    .line 1709
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getDisconnectCauseResourceId(Lcom/android/internal/telephony/Connection;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "numberType"
    .parameter "numberLabel"

    .prologue
    .line 1703
    invoke-static {p1, p2, p3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 8
    .parameter "call"

    .prologue
    const v7, 0x7f0b02fd

    const v6, 0x7f0b02fb

    .line 1226
    const/4 v2, 0x0

    .line 1227
    .local v2, retVal:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 1228
    .local v3, state:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1231
    .local v0, context:Landroid/content/Context;
    sget-boolean v4, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- getTitleForCallCard(Call "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1233
    :cond_0
    sget-object v4, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1280
    :goto_0
    :pswitch_0
    sget-boolean v4, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ==> result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1281
    :cond_1
    return-object v2

    .line 1240
    :pswitch_1
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 1241
    .local v1, phoneType:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 1242
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->isThreeWayCallOrigStateDialing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1244
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1246
    :cond_2
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1248
    :cond_3
    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 1249
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1251
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1256
    .end local v1           #phoneType:I
    :pswitch_2
    const v4, 0x7f0b0301

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1259
    goto :goto_0

    .line 1263
    :pswitch_3
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1264
    goto :goto_0

    .line 1268
    :pswitch_4
    const v4, 0x7f0b02ff

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1269
    goto :goto_0

    .line 1272
    :pswitch_5
    const v4, 0x7f0b0302

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1273
    goto :goto_0

    .line 1276
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 1233
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

.method private hideOnHoldInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1434
    sget-boolean v0, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "hideOnHoldInfo ... :"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1437
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1438
    sget-boolean v0, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "hideOnHoldInfo ... :hide Swap Button"

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1439
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mOtherCallSwapButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 1440
    iget-object v0, p0, Lcom/android/phone/CallCard;->mOtherCallSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1442
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mOtherCallPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallCard;->mOtherCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1443
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallCard;->mOtherCallName:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallCard;->mOtherCallName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1444
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallCard;->mOtherCallNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/CallCard;->mOtherCallNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1446
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/CityIdInfo;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1447
    iget-object v0, p0, Lcom/android/phone/CallCard;->mOtherCityId:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/CallCard;->mOtherCityId:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1451
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoRight:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1452
    :cond_7
    iget-object v0, p0, Lcom/android/phone/CallCard;->mNameRight:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/CallCard;->mNameRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1453
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CallCard;->mNumberRight:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/CallCard;->mNumberRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1454
    :cond_9
    iget-object v0, p0, Lcom/android/phone/CallCard;->mStatusRight:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/CallCard;->mStatusRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1456
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/CityIdInfo;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1457
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCityIdRight:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/phone/CallCard;->mCityIdRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1465
    :cond_b
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMainCallCard1:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1466
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMainCallCard2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1467
    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallTitle:Landroid/widget/TextView;

    .line 1468
    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallElapsedTime:Landroid/widget/TextView;

    .line 1470
    const v0, 0x7f070047

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1471
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2450
    const-string v0, "CallCard"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    return-void
.end method

.method private static final showCachedImage(Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 5
    .parameter "view"
    .parameter "viewTwoCalls"
    .parameter "ci"

    .prologue
    const v4, 0x7f020133

    .line 2306
    if-eqz p2, :cond_4

    iget-boolean v2, p2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v2, :cond_4

    .line 2307
    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 2308
    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 2310
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2311
    .local v0, application:Lcom/android/phone/PhoneApp;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v1, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 2312
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v2, :cond_2

    .line 2314
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->isThreeWayCallOrigStateDialing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2316
    :cond_0
    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 2329
    .end local v0           #application:Lcom/android/phone/PhoneApp;
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :goto_0
    const/4 v2, 0x1

    .line 2331
    :goto_1
    return v2

    .line 2318
    .restart local v0       #application:Lcom/android/phone/PhoneApp;
    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-static {p1, v4}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 2322
    :cond_2
    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2326
    .end local v0           #application:Lcom/android/phone/PhoneApp;
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_3
    invoke-static {p0, v4}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2327
    invoke-static {p1, v4}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 2331
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static final showImage(Landroid/widget/ImageView;I)V
    .locals 1
    .parameter "view"
    .parameter "resource"

    .prologue
    .line 2336
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2337
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2338
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 2342
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2344
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2345
    return-void
.end method

.method private showOnHoldInfo()V
    .locals 15

    .prologue
    .line 1311
    sget-boolean v12, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v12, :cond_0

    const-string v12, "showOnHoldInfo ... :"

    invoke-direct {p0, v12}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1314
    :cond_0
    iget-object v12, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v12}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, p0, Lcom/android/phone/CallCard;->mOtherCallSwapButton:Landroid/widget/Button;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/android/phone/CallCard;->mOtherCallSwapButton:Landroid/widget/Button;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 1315
    :cond_1
    iget-object v12, p0, Lcom/android/phone/CallCard;->mOtherCallPhoto:Landroid/widget/ImageView;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/phone/CallCard;->mOtherCallPhoto:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1316
    :cond_2
    iget-object v12, p0, Lcom/android/phone/CallCard;->mOtherCallName:Landroid/widget/TextView;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/phone/CallCard;->mOtherCallName:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1320
    :cond_3
    iget-object v12, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/phone/CityIdInfo;->isAvailable(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1321
    iget-object v12, p0, Lcom/android/phone/CallCard;->mOtherCityId:Landroid/widget/TextView;

    if-eqz v12, :cond_4

    .line 1322
    iget-object v12, p0, Lcom/android/phone/CallCard;->mOtherCityId:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    iget-object v12, p0, Lcom/android/phone/CallCard;->mOtherCityId:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1326
    :cond_4
    iget-object v12, p0, Lcom/android/phone/CallCard;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 1327
    .local v6, fgCall:Lcom/android/internal/telephony/Call;
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v7

    .line 1329
    .local v7, fgIsConfCall:Z
    iget-object v12, p0, Lcom/android/phone/CallCard;->mPhotoRight:Landroid/widget/ImageView;

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/android/phone/CallCard;->mPhotoRight:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1330
    :cond_5
    iget-object v12, p0, Lcom/android/phone/CallCard;->mNameRight:Landroid/widget/TextView;

    if-eqz v12, :cond_6

    iget-object v12, p0, Lcom/android/phone/CallCard;->mNameRight:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1331
    :cond_6
    iget-object v12, p0, Lcom/android/phone/CallCard;->mNumberRight:Landroid/widget/TextView;

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/android/phone/CallCard;->mNumberRight:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1332
    :cond_7
    if-nez v7, :cond_8

    .line 1333
    iget-object v12, p0, Lcom/android/phone/CallCard;->mStatusRight:Landroid/widget/TextView;

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/android/phone/CallCard;->mStatusRight:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1339
    :cond_8
    iget-object v12, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    if-eqz v12, :cond_9

    iget-object v12, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1340
    :cond_9
    iget-object v12, p0, Lcom/android/phone/CallCard;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1341
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    iget-object v12, p0, Lcom/android/phone/CallCard;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    .line 1342
    .local v11, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    .line 1344
    .local v1, bgIsConfCall:Z
    iget-object v12, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    .line 1345
    .local v10, phoneType:I
    const/4 v12, 0x2

    if-ne v10, v12, :cond_a

    iget-object v12, p0, Lcom/android/phone/CallCard;->mOtherCallSwapButton:Landroid/widget/Button;

    if-eqz v12, :cond_a

    iget-object v12, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v12, :cond_a

    .line 1346
    iget-object v12, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v12}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v5

    .line 1349
    .local v5, currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v12, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v12, :cond_12

    iget-object v12, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v12}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v12

    if-nez v12, :cond_12

    .line 1350
    iget-object v12, p0, Lcom/android/phone/CallCard;->mOtherCallSwapButton:Landroid/widget/Button;

    const v13, 0x7f0b0334

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(I)V

    .line 1351
    iget-object v12, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v12}, Lcom/android/phone/CdmaPhoneCallState;->isThreeWayCallOrigStateDialing()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1352
    iget-object v12, p0, Lcom/android/phone/CallCard;->mOtherCallSwapButton:Landroid/widget/Button;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 1365
    .end local v5           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_a
    :goto_0
    iget-object v12, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/phone/CityIdInfo;->isAvailable(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_b

    iget-object v12, p0, Lcom/android/phone/CallCard;->mCityIdRight:Landroid/widget/TextView;

    if-eqz v12, :cond_b

    iget-object v12, p0, Lcom/android/phone/CallCard;->mCityIdRight:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 1366
    invoke-static {v6, v0}, Lcom/android/phone/PhoneUtils;->isConferenceCallExclusive(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Z

    move-result v8

    .line 1368
    .local v8, isConfCallExcl:Z
    iget-object v12, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_16

    if-eqz v8, :cond_16

    .line 1369
    iget-object v12, p0, Lcom/android/phone/CallCard;->mCityIdRight:Landroid/widget/TextView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1377
    .end local v8           #isConfCallExcl:Z
    :cond_b
    :goto_1
    if-nez v7, :cond_c

    if-eqz v1, :cond_10

    .line 1378
    :cond_c
    const/4 v4, 0x0

    .line 1379
    .local v4, confPhoto:Landroid/widget/ImageView;
    const/4 v2, 0x0

    .line 1380
    .local v2, confName:Landroid/widget/TextView;
    const/4 v3, 0x0

    .line 1381
    .local v3, confNumber:Landroid/widget/TextView;
    const/4 v9, 0x0

    .line 1382
    .local v9, numParticipants:I
    if-eqz v7, :cond_18

    .line 1383
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhotoRight:Landroid/widget/ImageView;

    .line 1384
    iget-object v2, p0, Lcom/android/phone/CallCard;->mNameRight:Landroid/widget/TextView;

    .line 1385
    iget-object v3, p0, Lcom/android/phone/CallCard;->mNumberRight:Landroid/widget/TextView;

    .line 1386
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    .line 1396
    :cond_d
    :goto_2
    if-eqz v4, :cond_e

    const v12, 0x7f020131

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1397
    :cond_e
    if-eqz v2, :cond_f

    const v12, 0x7f0b0152

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(I)V

    .line 1398
    :cond_f
    if-eqz v3, :cond_10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0116

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1404
    .end local v2           #confName:Landroid/widget/TextView;
    .end local v3           #confNumber:Landroid/widget/TextView;
    .end local v4           #confPhoto:Landroid/widget/ImageView;
    .end local v9           #numParticipants:I
    :cond_10
    iget-object v12, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_19

    .line 1406
    iget-object v12, p0, Lcom/android/phone/CallCard;->mMainCallCard1:Landroid/view/ViewGroup;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1407
    iget-object v12, p0, Lcom/android/phone/CallCard;->mMainCallCard2:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1408
    const v12, 0x7f070054

    invoke-virtual {p0, v12}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #bgCall:Lcom/android/internal/telephony/Call;
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallTitle:Landroid/widget/TextView;

    .line 1409
    const v12, 0x7f070055

    invoke-virtual {p0, v12}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallElapsedTime:Landroid/widget/TextView;

    .line 1420
    :cond_11
    :goto_3
    iget-object v12, p0, Lcom/android/phone/CallCard;->mCallElapsedTime:Landroid/widget/TextView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1423
    return-void

    .line 1355
    .restart local v0       #bgCall:Lcom/android/internal/telephony/Call;
    .restart local v5       #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_12
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 1356
    sget-boolean v12, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v12, :cond_13

    const-string v12, "showOnHoldInfo: Call Waiting - display Connected for 1st Call"

    invoke-direct {p0, v12}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1357
    :cond_13
    iget-object v12, p0, Lcom/android/phone/CallCard;->mOtherCallSwapButton:Landroid/widget/Button;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 1360
    :cond_14
    sget-boolean v12, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v12, :cond_15

    const-string v12, "Hide Merge Button..showOnHoldInfo"

    invoke-direct {p0, v12}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1361
    :cond_15
    iget-object v12, p0, Lcom/android/phone/CallCard;->mOtherCallSwapButton:Landroid/widget/Button;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 1370
    .end local v5           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .restart local v8       #isConfCallExcl:Z
    :cond_16
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v12, v13, :cond_17

    iget-object v12, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v12}, Lcom/android/phone/InCallScreen;->isMultiPartyCallSessionOn()Z

    move-result v12

    if-eqz v12, :cond_17

    .line 1371
    iget-object v12, p0, Lcom/android/phone/CallCard;->mCityIdRight:Landroid/widget/TextView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1373
    :cond_17
    iget-object v12, p0, Lcom/android/phone/CallCard;->mCityIdRight:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1388
    .end local v8           #isConfCallExcl:Z
    .restart local v2       #confName:Landroid/widget/TextView;
    .restart local v3       #confNumber:Landroid/widget/TextView;
    .restart local v4       #confPhoto:Landroid/widget/ImageView;
    .restart local v9       #numParticipants:I
    :cond_18
    sget-boolean v12, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-nez v12, :cond_d

    .line 1389
    iget-object v4, p0, Lcom/android/phone/CallCard;->mOtherCallPhoto:Landroid/widget/ImageView;

    .line 1390
    iget-object v2, p0, Lcom/android/phone/CallCard;->mOtherCallName:Landroid/widget/TextView;

    .line 1391
    iget-object v3, p0, Lcom/android/phone/CallCard;->mOtherCallNumber:Landroid/widget/TextView;

    .line 1392
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    goto/16 :goto_2

    .line 1411
    .end local v2           #confName:Landroid/widget/TextView;
    .end local v3           #confNumber:Landroid/widget/TextView;
    .end local v4           #confPhoto:Landroid/widget/ImageView;
    .end local v9           #numParticipants:I
    :cond_19
    iget-object v12, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_11

    .line 1414
    iget-object v12, p0, Lcom/android/phone/CallCard;->mMainCallCard2:Landroid/view/ViewGroup;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1415
    iget-object v12, p0, Lcom/android/phone/CallCard;->mMainCallCard1:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1416
    const v12, 0x7f070044

    invoke-virtual {p0, v12}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #bgCall:Lcom/android/internal/telephony/Call;
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallTitle:Landroid/widget/TextView;

    .line 1417
    const v12, 0x7f070045

    invoke-virtual {p0, v12}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallElapsedTime:Landroid/widget/TextView;

    goto/16 :goto_3
.end method

.method private updateCardTitleWidgets(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V
    .locals 8
    .parameter "phone"
    .parameter "call"

    .prologue
    .line 868
    sget-boolean v6, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCardTitleWidgets(call "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 869
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 876
    .local v5, state:Lcom/android/internal/telephony/Call$State;
    iget-object v6, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 878
    .local v4, phoneType:I
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, cardTitle:Ljava/lang/String;
    sget-boolean v6, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCardTitleWidgets: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 881
    :cond_1
    iget-object v6, p0, Lcom/android/phone/CallCard;->mCallElapsedTime:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_2

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_9

    .line 893
    :cond_2
    iget-object v6, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CDMA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v6, :cond_3

    .line 896
    iget-object v6, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    .line 898
    .local v1, currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    invoke-static {p2}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v2

    .line 899
    .local v2, duration:J
    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v6, :cond_7

    .line 900
    iget-object v6, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->isThreeWayCallOrigStateDialing()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 901
    iget-object v6, p0, Lcom/android/phone/CallCard;->mCallTitle:Landroid/widget/TextView;

    const v7, 0x7f0b0110

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 922
    .end local v1           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .end local v2           #duration:J
    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->hideIncoming()V

    .line 993
    .end local p1
    :cond_4
    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_13

    .line 995
    iget-object v6, p0, Lcom/android/phone/CallCard;->mCallTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    iget-object v6, p0, Lcom/android/phone/CallCard;->mExclConfCallTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 997
    iget-object v6, p0, Lcom/android/phone/CallCard;->mMultiPartyCallTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isEriBannerEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1009
    invoke-direct {p0, v5}, Lcom/android/phone/CallCard;->displayERI(Lcom/android/internal/telephony/Call$State;)V

    .line 1015
    :goto_3
    return-void

    .line 903
    .restart local v1       #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .restart local v2       #duration:J
    .restart local p1
    :cond_6
    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-direct {p0, v6, v7}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    goto :goto_0

    .line 906
    :cond_7
    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v1, v6, :cond_8

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v6, :cond_3

    .line 908
    :cond_8
    iget-object v6, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->hideIncoming()V

    .line 909
    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-direct {p0, v6, v7}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    goto :goto_0

    .line 923
    .end local v1           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .end local v2           #duration:J
    :cond_9
    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_4

    .line 941
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_a

    .line 942
    iget-object v6, p0, Lcom/android/phone/CallCard;->mCallTitle:Landroid/widget/TextView;

    const v7, 0x7f0b0102

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 943
    iget-object v6, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->hideIncoming()V

    goto :goto_1

    .line 944
    :cond_a
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 946
    iget-object v6, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CDMA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 947
    sget-object v6, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_d

    .line 948
    sget-boolean v6, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v6, :cond_b

    const-string v6, "updateCardTitleWidgets: Setting mCallTitle to display Incoming Call string"

    invoke-direct {p0, v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 949
    :cond_b
    const v6, 0x7f070044

    invoke-virtual {p0, v6}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/phone/CallCard;->mCallTitle:Landroid/widget/TextView;

    .line 950
    iget-object v6, p0, Lcom/android/phone/CallCard;->mCallTitle:Landroid/widget/TextView;

    const v7, 0x7f0b0105

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 951
    const v6, 0x7f070045

    invoke-virtual {p0, v6}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/phone/CallCard;->mCallElapsedTime:Landroid/widget/TextView;

    .line 952
    iget-object v6, p0, Lcom/android/phone/CallCard;->mCallElapsedTime:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 972
    :cond_c
    :goto_4
    iget-object v6, p0, Lcom/android/phone/CallCard;->mCallTitle:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 977
    :goto_5
    iget-object v6, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->showIncoming()V

    goto/16 :goto_1

    .line 953
    .restart local p1
    :cond_d
    sget-object v6, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_c

    .line 954
    sget-boolean v6, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v6, :cond_e

    const-string v6, "updateCardTitleWidgets: Setting mCallTitle to display Call Waiting string"

    invoke-direct {p0, v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 955
    :cond_e
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_f

    .line 956
    const v6, 0x7f070054

    invoke-virtual {p0, v6}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/phone/CallCard;->mCallTitle:Landroid/widget/TextView;

    .line 957
    iget-object v6, p0, Lcom/android/phone/CallCard;->mCallTitle:Landroid/widget/TextView;

    const v7, 0x7f0b01da

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 958
    const v6, 0x7f070055

    invoke-virtual {p0, v6}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/phone/CallCard;->mCallElapsedTime:Landroid/widget/TextView;

    .line 959
    iget-object v6, p0, Lcom/android/phone/CallCard;->mCallElapsedTime:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 961
    .restart local p1
    :cond_f
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_c

    .line 964
    const v6, 0x7f070044

    invoke-virtual {p0, v6}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/phone/CallCard;->mCallTitle:Landroid/widget/TextView;

    .line 965
    iget-object v6, p0, Lcom/android/phone/CallCard;->mCallTitle:Landroid/widget/TextView;

    const v7, 0x7f0b01da

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 968
    const v6, 0x7f070045

    invoke-virtual {p0, v6}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/phone/CallCard;->mCallElapsedTime:Landroid/widget/TextView;

    .line 969
    iget-object v6, p0, Lcom/android/phone/CallCard;->mCallElapsedTime:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 975
    .restart local p1
    :cond_10
    iget-object v6, p0, Lcom/android/phone/CallCard;->mCallTitle:Landroid/widget/TextView;

    const v7, 0x7f0b0105

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 980
    :cond_11
    const/4 v6, 0x2

    if-ne v4, v6, :cond_12

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_12

    .line 981
    const v6, 0x7f070045

    invoke-virtual {p0, v6}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/phone/CallCard;->mCallElapsedTime:Landroid/widget/TextView;

    .line 982
    iget-object v6, p0, Lcom/android/phone/CallCard;->mCallElapsedTime:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 985
    :cond_12
    iget-object v6, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->hideIncoming()V

    goto/16 :goto_1

    .line 999
    :cond_13
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1000
    invoke-static {p2}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v2

    .line 1001
    .restart local v2       #duration:J
    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-direct {p0, v6, v7}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    goto/16 :goto_2

    .line 1012
    .end local v2           #duration:J
    :cond_14
    iget-object v6, p0, Lcom/android/phone/CallCard;->mEriBanner:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method private updateDisplayForConference(Lcom/android/internal/telephony/Call;)V
    .locals 6
    .parameter "call"

    .prologue
    const v5, 0x7f0b02fe

    const/4 v4, 0x2

    const/16 v3, 0x8

    .line 2084
    sget-boolean v1, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "updateDisplayForConference()..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2089
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallCard;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->isConferenceCallExclusive(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2091
    const v1, 0x7f070047

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2095
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 2096
    .local v0, phoneType:I
    if-ne v0, v4, :cond_a

    .line 2101
    sget-boolean v1, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "updateDisplayForConference: Show CDMA Conf"

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2102
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v2, 0x7f020170

    invoke-static {v1, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2104
    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->isCdmaConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2105
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2111
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallCard;->mStatusRow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 2112
    sget-boolean v1, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "updateDisplayForConference: Show CDMA Conf enter mStatusRow is Visible"

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2113
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallCard;->mStatusRow:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2115
    :cond_4
    iget-object v1, p0, Lcom/android/phone/CallCard;->mMoodRow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 2116
    sget-boolean v1, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "updateDisplayForConference: Show CDMA Conf enter mMoodRow is Visible"

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2117
    :cond_5
    iget-object v1, p0, Lcom/android/phone/CallCard;->mMoodRow:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2118
    iget-object v1, p0, Lcom/android/phone/CallCard;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2138
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2144
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2146
    iget-object v1, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2152
    :cond_7
    iget-object v1, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/CityIdInfo;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2153
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCityId:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/CallCard;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2166
    :cond_8
    return-void

    .line 2108
    :cond_9
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v2, 0x7f0b0303

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2121
    :cond_a
    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 2124
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v2, 0x7f02016f

    invoke-static {v1, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2125
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2127
    iget-object v1, p0, Lcom/android/phone/CallCard;->mStatusRight:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_b

    .line 2128
    iget-object v1, p0, Lcom/android/phone/CallCard;->mStatusRight:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2130
    :cond_b
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSNIconRight:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 2131
    iget-object v1, p0, Lcom/android/phone/CallCard;->mSNIconRight:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 2135
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V
    .locals 38
    .parameter "info"
    .parameter "presentation"
    .parameter "isTemporary"
    .parameter "call"

    .prologue
    .line 1724
    sget-boolean v4, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDisplayForPerson("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1728
    :cond_0
    const-string v36, ""

    .line 1729
    .local v36, status:Ljava/lang/String;
    const-string v31, ""

    .line 1730
    .local v31, mood:Ljava/lang/String;
    const-wide/16 v12, 0x0

    .line 1731
    .local v12, accountId:J
    const-wide/16 v32, 0x0

    .line 1732
    .local v32, moodId:J
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/phone/BlurCallerInfo;

    move v4, v0

    if-eqz v4, :cond_1

    .line 1733
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/phone/BlurCallerInfo;

    move-object/from16 v16, v0

    .line 1734
    .local v16, binfo:Lcom/android/phone/BlurCallerInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfo;->model:Lcom/motorola/blur/provider/contacts/IdentityModel;

    move-object v4, v0

    if-eqz v4, :cond_1

    .line 1735
    const-string v4, "updateDisplayForPerson: Got Model"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1736
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfo;->model:Lcom/motorola/blur/provider/contacts/IdentityModel;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/motorola/blur/provider/contacts/IdentityModel;->getLatestStatus()Lcom/motorola/blur/provider/contacts/EntityDelta$ValuesDelta;

    move-result-object v30

    .line 1737
    .local v30, latestStatus:Lcom/motorola/blur/provider/contacts/EntityDelta$ValuesDelta;
    if-eqz v30, :cond_1

    .line 1738
    const-string v4, "updateDisplayForPerson: Got Latest status"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1740
    invoke-static/range {v30 .. v30}, Lcom/motorola/blur/provider/contacts/DataHelper$SNStatus;->getStatus(Lcom/motorola/blur/provider/contacts/EntityDelta$ValuesDelta;)Ljava/lang/String;

    move-result-object v36

    .line 1742
    invoke-static/range {v30 .. v30}, Lcom/motorola/blur/provider/contacts/DataHelper;->getBlurAccountId(Lcom/motorola/blur/provider/contacts/EntityDelta$ValuesDelta;)Ljava/lang/Long;

    move-result-object v14

    .line 1743
    .local v14, accountIdLong:Ljava/lang/Long;
    if-eqz v14, :cond_d

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v12, v4

    .line 1745
    :goto_0
    invoke-static/range {v30 .. v30}, Lcom/motorola/blur/provider/contacts/DataHelper$SNStatus;->getOtherStatus(Lcom/motorola/blur/provider/contacts/EntityDelta$ValuesDelta;)Ljava/lang/String;

    move-result-object v31

    .line 1746
    invoke-static/range {v30 .. v30}, Lcom/motorola/blur/provider/contacts/DataHelper$SNStatus;->getMoodId(Lcom/motorola/blur/provider/contacts/EntityDelta$ValuesDelta;)J

    move-result-wide v32

    .line 1747
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dump social network info: status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "accountId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mood"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "moodId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1761
    .end local v14           #accountIdLong:Ljava/lang/Long;
    .end local v16           #binfo:Lcom/android/phone/BlurCallerInfo;
    .end local v30           #latestStatus:Lcom/motorola/blur/provider/contacts/EntityDelta$ValuesDelta;
    :cond_1
    sget-boolean v4, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v4, :cond_2

    .line 1762
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDisplayForPerson: presentation = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1763
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDisplayForPerson: isTemporary = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1764
    if-eqz p1, :cond_2

    .line 1765
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDisplayForPerson: info.name = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1766
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDisplayForPerson: info.phoneNumber = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1767
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDisplayForPerson: info.phoneLabel = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1768
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDisplayForPerson: info.numberType= \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1769
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDisplayForPerson: info.numberLabel= \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1770
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDisplayForPerson: info.person_id= \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1771
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDisplayForPerson: cachedPhoto = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1776
    :cond_2
    const/16 v23, 0x0

    .line 1777
    .local v23, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object v4, v0

    if-eqz v4, :cond_3

    .line 1778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v23

    .line 1779
    sget-boolean v4, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDisplayForPerson: intent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1783
    :cond_3
    const/16 v22, 0x0

    .line 1784
    .local v22, iceInLockMode:Z
    if-eqz v23, :cond_4

    .line 1785
    const-string v4, "isLockMode"

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1786
    const/16 v22, 0x1

    .line 1791
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 1792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;

    move-object v4, v0

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1795
    const/16 v19, 0x0

    .line 1796
    .local v19, displayNumber:Ljava/lang/String;
    const/16 v29, 0x0

    .line 1798
    .local v29, label:Ljava/lang/String;
    if-eqz p1, :cond_20

    .line 1812
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1813
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1814
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    .line 1889
    .local v18, displayName:Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    move-object v4, v0

    const v5, 0x7f0b0303

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1894
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1906
    if-eqz p3, :cond_22

    if-eqz p1, :cond_5

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    move v4, v0

    if-nez v4, :cond_22

    .line 1907
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1930
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object v4, v0

    if-eqz v4, :cond_7

    .line 1931
    if-eqz v19, :cond_26

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v4

    if-nez v4, :cond_26

    .line 1932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1939
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    move-object v4, v0

    if-eqz v4, :cond_8

    .line 1940
    if-eqz v29, :cond_27

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v4

    if-nez v4, :cond_27

    .line 1941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1949
    :cond_8
    :goto_5
    const/16 v17, 0x0

    .line 1950
    .local v17, displayCityId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/phone/CityIdInfo;->isAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCityId:Landroid/widget/TextView;

    move-object v4, v0

    if-eqz v4, :cond_9

    .line 1952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCityId:Landroid/widget/TextView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getCityIdDisplayStr(Landroid/widget/TextView;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v17

    .line 1954
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 1955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCityId:Landroid/widget/TextView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCityId:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1974
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v35

    .line 1975
    .local v35, ringingCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v20

    .line 1976
    .local v20, fgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    .line 1977
    .local v15, bgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, v20

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->isSingleCall(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Z

    move-result v26

    .line 1978
    .local v26, isSingleCall:Z
    const/16 v25, 0x0

    .line 1979
    .local v25, isRingingCall:Z
    const/16 v28, 0x0

    .line 1980
    .local v28, isWaitingCall:Z
    const/16 v27, 0x0

    .line 1981
    .local v27, isSingleCallMode:Z
    const/16 v24, 0x0

    .line 1983
    .local v24, isCDMAThreeWayActive:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v34

    .line 1984
    .local v34, phoneType:I
    const/4 v4, 0x2

    move/from16 v0, v34

    move v1, v4

    if-ne v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v4, :cond_2d

    .line 1985
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_29

    const/4 v4, 0x1

    move/from16 v25, v4

    .line 1986
    :goto_7
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_2a

    const/4 v4, 0x1

    move/from16 v28, v4

    .line 1987
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_2b

    const/4 v4, 0x1

    move/from16 v24, v4

    .line 1988
    :goto_9
    if-nez v25, :cond_b

    if-eqz v26, :cond_a

    if-eqz v28, :cond_b

    :cond_a
    if-eqz v24, :cond_2c

    :cond_b
    const/4 v4, 0x1

    move/from16 v27, v4

    .line 1996
    :goto_a
    sget-boolean v4, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDisplayForPerson: CallCard\'s isSingleCallMode = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1999
    :cond_c
    if-eqz v27, :cond_37

    .line 2000
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_32

    const/4 v4, 0x1

    move/from16 v21, v4

    .line 2001
    .local v21, hasStatus:Z
    :goto_b
    if-eqz v21, :cond_34

    if-nez v22, :cond_34

    .line 2002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mStatusRow:Landroid/view/View;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mStatus:Landroid/widget/TextView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2004
    const-wide/16 v4, 0x0

    cmp-long v4, v12, v4

    if-lez v4, :cond_33

    .line 2005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mSNIcon:Landroid/widget/ImageView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mSNIcon:Landroid/widget/ImageView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mSNIconCache:Lcom/android/phone/SNIconCache;

    move-object v5, v0

    invoke-virtual {v5, v12, v13}, Lcom/android/phone/SNIconCache;->get(J)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2014
    :goto_c
    const-wide/16 v4, 0x0

    cmp-long v4, v32, v4

    if-lez v4, :cond_36

    .line 2016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMoodRow:Landroid/view/View;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2017
    if-eqz v21, :cond_35

    .line 2018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mStatus:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMood:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2023
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMood:Landroid/widget/TextView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMoodIcon:Landroid/widget/ImageView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMoodIconCache:Lcom/android/phone/MoodIconCache;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/MoodIconCache;->get(J)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2074
    .end local v21           #hasStatus:Z
    :goto_e
    return-void

    .line 1743
    .end local v15           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v17           #displayCityId:Ljava/lang/String;
    .end local v18           #displayName:Ljava/lang/String;
    .end local v19           #displayNumber:Ljava/lang/String;
    .end local v20           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v22           #iceInLockMode:Z
    .end local v23           #intent:Landroid/content/Intent;
    .end local v24           #isCDMAThreeWayActive:Z
    .end local v25           #isRingingCall:Z
    .end local v26           #isSingleCall:Z
    .end local v27           #isSingleCallMode:Z
    .end local v28           #isWaitingCall:Z
    .end local v29           #label:Ljava/lang/String;
    .end local v34           #phoneType:I
    .end local v35           #ringingCall:Lcom/android/internal/telephony/Call;
    .restart local v14       #accountIdLong:Ljava/lang/Long;
    .restart local v16       #binfo:Lcom/android/phone/BlurCallerInfo;
    .restart local v30       #latestStatus:Lcom/motorola/blur/provider/contacts/EntityDelta$ValuesDelta;
    :cond_d
    const-wide/16 v4, 0x0

    move-wide v12, v4

    goto/16 :goto_0

    .line 1815
    .end local v14           #accountIdLong:Ljava/lang/Long;
    .end local v16           #binfo:Lcom/android/phone/BlurCallerInfo;
    .end local v30           #latestStatus:Lcom/motorola/blur/provider/contacts/EntityDelta$ValuesDelta;
    .restart local v19       #displayNumber:Ljava/lang/String;
    .restart local v22       #iceInLockMode:Z
    .restart local v23       #intent:Landroid/content/Intent;
    .restart local v29       #label:Ljava/lang/String;
    :cond_e
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    move/from16 v0, p2

    move v1, v4

    if-eq v0, v1, :cond_f

    .line 1819
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    .restart local v18       #displayName:Ljava/lang/String;
    goto/16 :goto_1

    .line 1820
    .end local v18           #displayName:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 1821
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1822
    .restart local v18       #displayName:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1823
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v19, v0

    goto/16 :goto_1

    .line 1826
    .end local v18           #displayName:Ljava/lang/String;
    :cond_10
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isConvertNumberFlexEnabled()Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isSpecialNumberEnable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-static {}, Lcom/android/phone/AssistedDialingUtil;->isAdFtrOn()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1828
    const-string v37, ""

    .line 1829
    .local v37, tmpNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_13

    .line 1830
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getManipulatedNumber(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1834
    :cond_11
    :goto_f
    sget-boolean v4, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v4, :cond_12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startGetCallerInfo:name is null case tmpNumber is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1835
    :cond_12
    move-object/from16 v18, v37

    .line 1836
    .restart local v18       #displayName:Ljava/lang/String;
    goto/16 :goto_1

    .line 1831
    .end local v18           #displayName:Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    .line 1832
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->filteredDialingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    goto :goto_f

    .line 1838
    .end local v37           #tmpNumber:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    .restart local v18       #displayName:Ljava/lang/String;
    goto/16 :goto_1

    .line 1842
    .end local v18           #displayName:Ljava/lang/String;
    :cond_15
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    move/from16 v0, p2

    move v1, v4

    if-eq v0, v1, :cond_16

    .line 1846
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    .restart local v18       #displayName:Ljava/lang/String;
    goto/16 :goto_1

    .line 1848
    .end local v18           #displayName:Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1849
    .restart local v18       #displayName:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_1a

    .line 1852
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isConvertNumberFlexEnabled()Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isSpecialNumberEnable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1853
    const-string v37, ""

    .line 1854
    .restart local v37       #tmpNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1b

    .line 1855
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getManipulatedNumber(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1859
    :cond_17
    :goto_10
    sget-boolean v4, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v4, :cond_18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startGetCallerInfo:tmpNumber is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1860
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v4

    if-nez v4, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1861
    :cond_19
    move-object/from16 v19, v37

    .line 1882
    .end local v37           #tmpNumber:Ljava/lang/String;
    :cond_1a
    :goto_11
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    move-object/from16 v29, v0

    goto/16 :goto_1

    .line 1856
    .restart local v37       #tmpNumber:Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_17

    .line 1857
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->filteredDialingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    goto :goto_10

    .line 1863
    :cond_1c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    move v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallCard;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_11

    .line 1872
    .end local v37           #tmpNumber:Ljava/lang/String;
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1873
    :cond_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v19, v0

    goto :goto_11

    .line 1875
    :cond_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    move v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallCard;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_11

    .line 1886
    .end local v18           #displayName:Ljava/lang/String;
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    .restart local v18       #displayName:Ljava/lang/String;
    goto/16 :goto_1

    .line 1892
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1908
    :cond_22
    if-eqz p1, :cond_23

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move v4, v0

    if-eqz v4, :cond_23

    .line 1909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move v5, v0

    invoke-static {v4, v5}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoRight:Landroid/widget/ImageView;

    move-object v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move v5, v0

    invoke-static {v4, v5}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1911
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move v6, v0

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, v4

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 1914
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    goto/16 :goto_3

    .line 1915
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoRight:Landroid/widget/ImageView;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1917
    if-eqz v19, :cond_24

    const v4, 0x7f020130

    move v11, v4

    .line 1920
    .local v11, defaultPhotoRes:I
    :goto_12
    if-nez v22, :cond_25

    .line 1921
    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v10

    move-object/from16 v4, p1

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    invoke-static/range {v4 .. v11}, Lcom/android/phone/BlurContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILcom/android/phone/BlurContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    goto/16 :goto_3

    .line 1917
    .end local v11           #defaultPhotoRes:I
    :cond_24
    const v4, 0x7f020133

    move v11, v4

    goto :goto_12

    .line 1925
    .restart local v11       #defaultPhotoRes:I
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object v4, v0

    const v5, 0x7f020133

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1935
    .end local v11           #defaultPhotoRes:I
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 1944
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1958
    .restart local v17       #displayCityId:Ljava/lang/String;
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCityId:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 1985
    .restart local v15       #bgCall:Lcom/android/internal/telephony/Call;
    .restart local v20       #fgCall:Lcom/android/internal/telephony/Call;
    .restart local v24       #isCDMAThreeWayActive:Z
    .restart local v25       #isRingingCall:Z
    .restart local v26       #isSingleCall:Z
    .restart local v27       #isSingleCallMode:Z
    .restart local v28       #isWaitingCall:Z
    .restart local v34       #phoneType:I
    .restart local v35       #ringingCall:Lcom/android/internal/telephony/Call;
    :cond_29
    const/4 v4, 0x0

    move/from16 v25, v4

    goto/16 :goto_7

    .line 1986
    :cond_2a
    const/4 v4, 0x0

    move/from16 v28, v4

    goto/16 :goto_8

    .line 1987
    :cond_2b
    const/4 v4, 0x0

    move/from16 v24, v4

    goto/16 :goto_9

    .line 1988
    :cond_2c
    const/4 v4, 0x0

    move/from16 v27, v4

    goto/16 :goto_a

    .line 1990
    :cond_2d
    const/4 v4, 0x1

    move/from16 v0, v34

    move v1, v4

    if-ne v0, v1, :cond_31

    .line 1991
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_2f

    const/4 v4, 0x1

    move/from16 v25, v4

    .line 1992
    :goto_13
    if-nez v26, :cond_2e

    if-eqz v25, :cond_30

    :cond_2e
    const/4 v4, 0x1

    move/from16 v27, v4

    :goto_14
    goto/16 :goto_a

    .line 1991
    :cond_2f
    const/4 v4, 0x0

    move/from16 v25, v4

    goto :goto_13

    .line 1992
    :cond_30
    const/4 v4, 0x0

    move/from16 v27, v4

    goto :goto_14

    .line 1994
    :cond_31
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2000
    :cond_32
    const/4 v4, 0x0

    move/from16 v21, v4

    goto/16 :goto_b

    .line 2008
    .restart local v21       #hasStatus:Z
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mSNIcon:Landroid/widget/ImageView;

    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c

    .line 2011
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mStatusRow:Landroid/view/View;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    .line 2021
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMood:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_d

    .line 2026
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMoodRow:Landroid/view/View;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mStatus:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_e

    .line 2030
    .end local v21           #hasStatus:Z
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mNameRight:Landroid/widget/TextView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mNumberRight:Landroid/widget/TextView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2032
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mNumberRight:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2035
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/phone/CityIdInfo;->isAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 2036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCityIdRight:Landroid/widget/TextView;

    move-object v4, v0

    if-eqz v4, :cond_39

    .line 2037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCityIdRight:Landroid/widget/TextView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getCityIdDisplayStr(Landroid/widget/TextView;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v17

    .line 2038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCityIdRight:Landroid/widget/TextView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2042
    :cond_39
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 2043
    const/4 v4, 0x1

    move/from16 v0, v34

    move v1, v4

    if-ne v0, v1, :cond_3a

    .line 2044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mStatusRowRight:Landroid/view/View;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mStatusRight:Landroid/widget/TextView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2050
    :goto_15
    const-wide/16 v4, 0x0

    cmp-long v4, v12, v4

    if-lez v4, :cond_3c

    .line 2051
    const/4 v4, 0x1

    move/from16 v0, v34

    move v1, v4

    if-ne v0, v1, :cond_3b

    .line 2052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mSNIconRight:Landroid/widget/ImageView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mSNIconRight:Landroid/widget/ImageView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mSNIconCache:Lcom/android/phone/SNIconCache;

    move-object v5, v0

    invoke-virtual {v5, v12, v13}, Lcom/android/phone/SNIconCache;->get(J)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_e

    .line 2047
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mStatusRow:Landroid/view/View;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mStatus:Landroid/widget/TextView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 2055
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mSNIcon:Landroid/widget/ImageView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mSNIcon:Landroid/widget/ImageView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mSNIconCache:Lcom/android/phone/SNIconCache;

    move-object v5, v0

    invoke-virtual {v5, v12, v13}, Lcom/android/phone/SNIconCache;->get(J)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_e

    .line 2059
    :cond_3c
    const/4 v4, 0x1

    move/from16 v0, v34

    move v1, v4

    if-ne v0, v1, :cond_3d

    .line 2060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mSNIconRight:Landroid/widget/ImageView;

    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 2062
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mSNIcon:Landroid/widget/ImageView;

    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 2066
    :cond_3e
    const/4 v4, 0x1

    move/from16 v0, v34

    move v1, v4

    if-ne v0, v1, :cond_3f

    .line 2067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mStatusRowRight:Landroid/view/View;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    .line 2069
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mStatusRow:Landroid/view/View;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e
.end method

.method private updateElapsedTimeWidget(J)V
    .locals 12
    .parameter "timeElapsed"

    .prologue
    .line 1086
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1087
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1088
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 1089
    .local v4, phoneType:I
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1090
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallTitle:Landroid/widget/TextView;

    const v10, 0x7f0b0300

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 1091
    iget-object v9, p0, Lcom/android/phone/CallCard;->mExclConfCallTitle:Landroid/widget/TextView;

    const v10, 0x7f0b0300

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 1092
    iget-object v9, p0, Lcom/android/phone/CallCard;->mMultiPartyCallTitle:Landroid/widget/TextView;

    const v10, 0x7f0b0300

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 1202
    :cond_0
    :goto_0
    return-void

    .line 1094
    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v9, p1, v9

    if-nez v9, :cond_8

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v9, v10, :cond_8

    .line 1096
    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v9}, Lcom/android/phone/CallNotifier;->getIsRedialCall()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1097
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0b02fc

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    :goto_1
    sget-boolean v9, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-eqz v9, :cond_0

    sget-boolean v9, Lcom/android/phone/InteractionConfig;->IS_PHYSICAL_QWERTY_MODE2:Z

    if-nez v9, :cond_0

    .line 1124
    iget-object v9, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/phone/InCallScreen;->setKeypadButtonEnabled(Z)V

    goto :goto_0

    .line 1100
    :cond_2
    sget-boolean v9, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v9, :cond_3

    const-string v9, "Assisted Dialing: Try to check if the number is manipulated"

    invoke-direct {p0, v9}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1101
    :cond_3
    invoke-static {}, Lcom/android/phone/AssistedDialingUtil;->isAdFtrOn()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "assisted_dialing_state"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    sget-boolean v9, Lcom/android/phone/PhoneUtils;->isManipulated:Z

    if-eqz v9, :cond_5

    .line 1105
    sget-boolean v9, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v9, :cond_4

    const-string v9, "Assisted Dialing: The number is manipulated"

    invoke-direct {p0, v9}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1106
    :cond_4
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallTitle:Landroid/widget/TextView;

    const v10, 0x7f0b03b5

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1109
    :cond_5
    const v7, 0x7f0b0110

    .line 1110
    .local v7, titleID:I
    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 1111
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 1112
    .local v2, info:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1113
    sget-boolean v9, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v9, :cond_6

    const-string v9, "Out of service, attempting to connect for emergency call"

    invoke-direct {p0, v9}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 1114
    :cond_6
    const v7, 0x7f0b0114

    .line 1117
    .end local v2           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_7
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallTitle:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1127
    .end local v7           #titleID:I
    :cond_8
    const/4 v9, 0x2

    if-ne v4, v9, :cond_9

    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v9

    sget-object v10, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v9, v10, :cond_9

    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->isThreeWayCallOrigStateDialing()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1130
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallTitle:Landroid/widget/TextView;

    const v10, 0x7f0b0110

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1136
    :cond_9
    invoke-static {v1, v0}, Lcom/android/phone/PhoneUtils;->isConferenceCallExclusive(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Z

    move-result v3

    .line 1138
    .local v3, isConfCallExcl:Z
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1139
    if-nez v3, :cond_c

    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallTitle:Landroid/widget/TextView;

    move-object v8, v9

    .line 1140
    .local v8, titleView:Landroid/widget/TextView;
    :goto_2
    const v5, 0x7f0b0112

    .line 1169
    .local v5, prefixResId:I
    :goto_3
    sget-boolean v9, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-eqz v9, :cond_a

    sget-boolean v9, Lcom/android/phone/InteractionConfig;->IS_PHYSICAL_QWERTY_MODE2:Z

    if-nez v9, :cond_a

    .line 1170
    iget-object v9, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/phone/InCallScreen;->setKeypadButtonEnabled(Z)V

    .line 1173
    :cond_a
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1175
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isConvertNumberFlexEnabled()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 1176
    iget-object v6, p0, Lcom/android/phone/CallCard;->mCallElapsedTime:Landroid/widget/TextView;

    .line 1188
    .local v6, timeElapsedView:Landroid/widget/TextView;
    :goto_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_17

    iget-object v9, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->isMultiPartyCallSessionOn()Z

    move-result v9

    if-eqz v9, :cond_17

    .line 1189
    iget-object v9, p0, Lcom/android/phone/CallCard;->mMultiPartyCallTitle:Landroid/widget/TextView;

    const v10, 0x7f0b0152

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 1190
    iget-object v9, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->multiPartyCallElapsedTimeView()Landroid/widget/TextView;

    move-result-object v6

    .line 1197
    :cond_b
    :goto_5
    const-string v9, ""

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 1199
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1139
    .end local v5           #prefixResId:I
    .end local v6           #timeElapsedView:Landroid/widget/TextView;
    .end local v8           #titleView:Landroid/widget/TextView;
    :cond_c
    iget-object v9, p0, Lcom/android/phone/CallCard;->mExclConfCallTitle:Landroid/widget/TextView;

    move-object v8, v9

    goto :goto_2

    .line 1141
    :cond_d
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1143
    const/4 v9, 0x2

    if-eq v4, v9, :cond_e

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isConvertNumberFlexEnabled()Z

    move-result v9

    if-eqz v9, :cond_f

    const/4 v9, 0x1

    if-ne v4, v9, :cond_f

    .line 1150
    :cond_e
    iget-object v8, p0, Lcom/android/phone/CallCard;->mCallTitle:Landroid/widget/TextView;

    .line 1151
    .restart local v8       #titleView:Landroid/widget/TextView;
    const v5, 0x7f0b0119

    .restart local v5       #prefixResId:I
    goto :goto_3

    .line 1154
    .end local v5           #prefixResId:I
    .end local v8           #titleView:Landroid/widget/TextView;
    :cond_f
    if-eqz v3, :cond_10

    iget-object v9, p0, Lcom/android/phone/CallCard;->mExclConfCallTitle:Landroid/widget/TextView;

    move-object v8, v9

    .line 1155
    .restart local v8       #titleView:Landroid/widget/TextView;
    :goto_6
    const v5, 0x7f0b0152

    .restart local v5       #prefixResId:I
    goto :goto_3

    .line 1154
    .end local v5           #prefixResId:I
    .end local v8           #titleView:Landroid/widget/TextView;
    :cond_10
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallTitle:Landroid/widget/TextView;

    move-object v8, v9

    goto :goto_6

    .line 1158
    :cond_11
    iget-object v8, p0, Lcom/android/phone/CallCard;->mCallTitle:Landroid/widget/TextView;

    .line 1160
    .restart local v8       #titleView:Landroid/widget/TextView;
    const/4 v9, 0x2

    if-eq v4, v9, :cond_12

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isConvertNumberFlexEnabled()Z

    move-result v9

    if-eqz v9, :cond_13

    const/4 v9, 0x1

    if-ne v4, v9, :cond_13

    .line 1163
    :cond_12
    const v5, 0x7f0b0119

    .restart local v5       #prefixResId:I
    goto/16 :goto_3

    .line 1166
    .end local v5           #prefixResId:I
    :cond_13
    const v5, 0x7f0b0111

    .restart local v5       #prefixResId:I
    goto/16 :goto_3

    .line 1179
    :cond_14
    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_15

    if-eqz v3, :cond_15

    .line 1180
    iget-object v9, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->exclConfCallElapsedTimeView()Landroid/widget/TextView;

    move-result-object v6

    .restart local v6       #timeElapsedView:Landroid/widget/TextView;
    goto/16 :goto_4

    .line 1181
    .end local v6           #timeElapsedView:Landroid/widget/TextView;
    :cond_15
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_16

    iget-object v9, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->isMultiPartyCallSessionOn()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1182
    iget-object v9, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->multiPartyCallElapsedTimeView()Landroid/widget/TextView;

    move-result-object v6

    .restart local v6       #timeElapsedView:Landroid/widget/TextView;
    goto/16 :goto_4

    .line 1184
    .end local v6           #timeElapsedView:Landroid/widget/TextView;
    :cond_16
    iget-object v6, p0, Lcom/android/phone/CallCard;->mCallElapsedTime:Landroid/widget/TextView;

    .restart local v6       #timeElapsedView:Landroid/widget/TextView;
    goto/16 :goto_4

    .line 1192
    :cond_17
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_b

    iget-object v9, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->isManageConferenceMode()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1193
    iget-object v9, p0, Lcom/android/phone/CallCard;->mExclConfCallTitle:Landroid/widget/TextView;

    const v10, 0x7f0b0152

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 1194
    iget-object v9, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->exclConfCallElapsedTimeView()Landroid/widget/TextView;

    move-result-object v6

    goto/16 :goto_5
.end method

.method private updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .parameter "cm"

    .prologue
    .line 421
    sget-boolean v4, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "updateForegroundCall()..."

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 422
    :cond_0
    sget-boolean v4, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 424
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 425
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 432
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_2

    .line 433
    iget-object v4, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v4}, Lcom/android/phone/CallTime;->reset()V

    .line 434
    iget-object v4, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v4}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    .line 438
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_4

    .line 439
    sget-boolean v4, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "updateForegroundCall: no active call, show holding call"

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 446
    :cond_3
    move-object v1, v0

    .line 449
    const/4 v0, 0x0

    .line 452
    :cond_4
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 453
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 455
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 456
    .local v3, phoneType:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v4, :cond_8

    .line 457
    sget-boolean v4, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateForegroundCall: Current CDMA Call state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 458
    :cond_5
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->isThreeWayCallOrigStateDialing()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 461
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 471
    :cond_6
    :goto_0
    return-void

    .line 465
    :cond_7
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 467
    :cond_8
    const/4 v4, 0x1

    if-eq v3, v4, :cond_9

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 469
    :cond_9
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method private updateOnHoldElapsedTimeWidget(J)V
    .locals 4
    .parameter "timeElapsed"

    .prologue
    .line 1208
    sget-boolean v0, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-nez v0, :cond_0

    .line 1216
    :goto_0
    return-void

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mOnHoldTitle:Landroid/widget/TextView;

    const v1, 0x7f0b0112

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1213
    iget-object v0, p0, Lcom/android/phone/CallCard;->mOnHoldTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b011c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallCard;->mOnHoldContName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V
    .locals 16
    .parameter "call"

    .prologue
    const/4 v12, 0x2

    const/4 v15, -0x1

    const/4 v14, -0x2

    .line 2180
    sget-boolean v10, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updatePhotoForCallState("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2181
    :cond_0
    const/4 v8, 0x0

    .line 2185
    .local v8, photoImageResource:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    .line 2186
    .local v9, state:Lcom/android/internal/telephony/Call$State;
    sget-object v10, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 2231
    const/4 v4, 0x0

    .line 2233
    .local v4, ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v5, 0x0

    .line 2234
    .local v5, conn:Lcom/android/internal/telephony/Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v10, v0

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 2235
    .local v7, phoneType:I
    if-ne v7, v12, :cond_9

    .line 2236
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 2243
    :goto_0
    if-eqz v5, :cond_1

    .line 2244
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v6

    .line 2245
    .local v6, o:Ljava/lang/Object;
    instance-of v10, v6, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v10, :cond_b

    .line 2246
    move-object v0, v6

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v4, v0

    .line 2253
    .end local v6           #o:Ljava/lang/Object;
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 2254
    iget v8, v4, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 2268
    :cond_2
    if-nez v8, :cond_c

    .line 2269
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v10

    if-nez v10, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v10, v0

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    if-ne v10, v12, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v10, v0

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v10, v0

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v10}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v10

    sget-object v11, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v10, v11, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v10, v0

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v10}, Lcom/android/phone/CdmaPhoneCallState;->isThreeWayCallOrigStateDialing()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2275
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoRight:Landroid/widget/ImageView;

    move-object v11, v0

    invoke-static {v10, v11, v4}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v10

    if-nez v10, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;->getPhotoState()I

    move-result v10

    if-ne v10, v14, :cond_4

    .line 2277
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v12

    const v13, 0x7f020133

    invoke-static {v4, v10, v11, v12, v13}, Lcom/android/phone/BlurContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 2279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;

    move-object v10, v0

    invoke-virtual {v10, v15}, Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 2292
    .end local v4           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v5           #conn:Lcom/android/internal/telephony/Connection;
    .end local v7           #phoneType:I
    :cond_4
    :goto_2
    if-eqz v8, :cond_6

    .line 2293
    sget-boolean v10, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "- overrriding photo image: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2294
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object v10, v0

    invoke-static {v10, v8}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;

    move-object v10, v0

    invoke-virtual {v10, v14}, Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 2298
    :cond_6
    :goto_3
    return-void

    .line 2191
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 2194
    .local v2, c:Lcom/android/internal/telephony/Connection;
    if-eqz v2, :cond_8

    .line 2195
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v3

    .line 2196
    .local v3, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v10, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v3, v10, :cond_7

    sget-object v10, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v3, v10, :cond_4

    .line 2198
    :cond_7
    const v8, 0x7f02016e

    goto :goto_2

    .line 2200
    .end local v3           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_8
    sget-boolean v10, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v10, :cond_4

    .line 2201
    const-string v10, "updatePhotoForCallState: connection is null, ignoring."

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 2237
    .end local v2           #c:Lcom/android/internal/telephony/Connection;
    .restart local v4       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v5       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v7       #phoneType:I
    :cond_9
    const/4 v10, 0x1

    if-ne v7, v10, :cond_a

    .line 2238
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    goto/16 :goto_0

    .line 2240
    :cond_a
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected phone type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2247
    .restart local v6       #o:Ljava/lang/Object;
    :cond_b
    instance-of v10, v6, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v10, :cond_1

    .line 2248
    check-cast v6, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v6           #o:Ljava/lang/Object;
    iget-object v4, v6, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_1

    .line 2285
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object v10, v0

    invoke-static {v10, v8}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 2286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;

    move-object v10, v0

    invoke-virtual {v10, v15}, Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto :goto_3

    .line 2186
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 7
    .parameter "cm"

    .prologue
    const/4 v6, 0x2

    .line 478
    sget-boolean v4, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "updateRingingCall()..."

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 480
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 481
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 483
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 484
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 487
    .local v2, phoneType:I
    if-ne v2, v6, :cond_2

    .line 488
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_2

    .line 518
    :cond_1
    :goto_0
    return-void

    .line 494
    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 497
    if-ne v2, v6, :cond_4

    .line 498
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_3

    .line 499
    iget-object v4, p0, Lcom/android/phone/CallCard;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0, v4, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 502
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/CallCard;->hideOnHoldInfo()V

    goto :goto_0

    .line 505
    :cond_4
    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    .line 507
    invoke-direct {p0}, Lcom/android/phone/CallCard;->hideOnHoldInfo()V

    .line 510
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isConvertNumberFlexEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 511
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 515
    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public disableSwapButton()V
    .locals 2

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/android/phone/CallCard;->mOtherCallSwapButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1427
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 2358
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public displayERIwrapper()V
    .locals 2

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->displayERI(Lcom/android/internal/telephony/Call$State;)V

    .line 1025
    :goto_0
    return-void

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->displayERI(Lcom/android/internal/telephony/Call$State;)V

    goto :goto_0
.end method

.method public enableSwapButton()V
    .locals 2

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/android/phone/CallCard;->mOtherCallSwapButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1431
    return-void
.end method

.method public hideCallCardElements()V
    .locals 2

    .prologue
    .line 2434
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMainCallCard:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2436
    return-void
.end method

.method public onCityIdQueryComplete(ILjava/lang/Object;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"

    .prologue
    .line 795
    sget-boolean v0, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCityIdQueryComplete: token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cookie "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 797
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 1286
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1308
    :cond_0
    :goto_0
    return-void

    .line 1288
    :pswitch_0
    sget-boolean v1, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallCard;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 1289
    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1290
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1291
    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_1

    .line 1294
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    .line 1295
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 1297
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 1299
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1300
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 1302
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1286
    :pswitch_data_0
    .packed-switch 0x7f070059
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 261
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 263
    sget-boolean v1, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallCard onFinishInflate(this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 265
    :cond_0
    const v1, 0x7f070042

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mMainCallCard:Landroid/view/ViewGroup;

    .line 273
    const v1, 0x7f070044

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCallTitle:Landroid/widget/TextView;

    .line 274
    const v1, 0x7f070045

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCallElapsedTime:Landroid/widget/TextView;

    .line 275
    iget-object v1, p0, Lcom/android/phone/CallCard;->mCallElapsedTime:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    const v1, 0x7f070046

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mEriBanner:Landroid/widget/TextView;

    .line 277
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 278
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/android/phone/CallCard;->mEriBanner:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    :cond_1
    sget-boolean v1, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-eqz v1, :cond_2

    .line 285
    const v1, 0x7f070053

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mOnHoldTitle:Landroid/widget/TextView;

    .line 286
    const v1, 0x7f070058

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mOnHoldArea:Landroid/widget/LinearLayout;

    .line 287
    iget-object v1, p0, Lcom/android/phone/CallCard;->mOnHoldArea:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/phone/CallCard$1;

    invoke-direct {v2, p0}, Lcom/android/phone/CallCard$1;-><init>(Lcom/android/phone/CallCard;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallCard;->mTextColorConnected:I

    .line 297
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallCard;->mTextColorConnectedBluetooth:I

    .line 299
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallCard;->mTextColorEnded:I

    .line 300
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallCard;->mTextColorOnHold:I

    .line 303
    const v1, 0x7f07004b

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    .line 304
    const v1, 0x7f070048

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    .line 305
    const v1, 0x7f070049

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    .line 306
    const v1, 0x7f07005a

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    .line 308
    const v1, 0x7f07004e

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mStatus:Landroid/widget/TextView;

    .line 309
    const v1, 0x7f07004d

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSNIcon:Landroid/widget/ImageView;

    .line 310
    const v1, 0x7f070051

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mMood:Landroid/widget/TextView;

    .line 311
    const v1, 0x7f070050

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mMoodIcon:Landroid/widget/ImageView;

    .line 312
    const v1, 0x7f07004c

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallCard;->mStatusRow:Landroid/view/View;

    .line 313
    const v1, 0x7f07004f

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallCard;->mMoodRow:Landroid/view/View;

    .line 317
    iget-object v1, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/CityIdInfo;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 318
    const v1, 0x7f07004a

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCityId:Landroid/widget/TextView;

    .line 319
    const v1, 0x7f070023

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCityIdRight:Landroid/widget/TextView;

    .line 320
    const v1, 0x7f070137

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mOtherCityId:Landroid/widget/TextView;

    .line 329
    :cond_3
    sget-boolean v1, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-nez v1, :cond_5

    .line 330
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 332
    const v1, 0x7f070059

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mOtherCallSwapButton:Landroid/widget/Button;

    .line 333
    iget-object v1, p0, Lcom/android/phone/CallCard;->mOtherCallSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    :cond_4
    const v1, 0x7f070134

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mOtherCallPhoto:Landroid/widget/ImageView;

    .line 336
    const v1, 0x7f070135

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mOtherCallName:Landroid/widget/TextView;

    .line 337
    const v1, 0x7f070136

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mOtherCallNumber:Landroid/widget/TextView;

    .line 338
    iget-object v1, p0, Lcom/android/phone/CallCard;->mOtherCallNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    :cond_5
    const v1, 0x7f070020

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhotoRight:Landroid/widget/ImageView;

    .line 342
    const v1, 0x7f070021

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mNameRight:Landroid/widget/TextView;

    .line 343
    const v1, 0x7f070022

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mNumberRight:Landroid/widget/TextView;

    .line 344
    const v1, 0x7f070026

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mStatusRight:Landroid/widget/TextView;

    .line 345
    const v1, 0x7f070025

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSNIconRight:Landroid/widget/ImageView;

    .line 346
    const v1, 0x7f070024

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallCard;->mStatusRowRight:Landroid/view/View;

    .line 349
    const v1, 0x7f070043

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mMainCallCard1:Landroid/view/ViewGroup;

    .line 350
    const v1, 0x7f070052

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mMainCallCard2:Landroid/view/ViewGroup;

    .line 355
    return-void
.end method

.method public onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "iView"
    .parameter "imagePresent"

    .prologue
    .line 859
    if-eqz p2, :cond_0

    .line 860
    check-cast p2, Lcom/android/internal/telephony/Call;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 862
    :cond_0
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    const/4 v8, 0x0

    .line 805
    sget-boolean v6, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onQueryComplete: token "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cookie "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ci "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 807
    :cond_0
    instance-of v6, p2, Lcom/android/internal/telephony/Call;

    if-eqz v6, :cond_9

    .line 811
    sget-boolean v6, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "callerinfo query complete, updating ui from displayMainCallStatus()"

    invoke-direct {p0, v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 812
    :cond_1
    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/Call;

    move-object v1, v0

    .line 813
    .local v1, call:Lcom/android/internal/telephony/Call;
    const/4 v3, 0x0

    .line 814
    .local v3, conn:Lcom/android/internal/telephony/Connection;
    iget-object v6, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 815
    .local v4, phoneType:I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    .line 816
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 823
    :goto_0
    if-nez v3, :cond_5

    .line 825
    sget-boolean v6, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v6, :cond_2

    const-string v6, "connection is gone"

    invoke-direct {p0, v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 851
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v3           #conn:Lcom/android/internal/telephony/Connection;
    .end local v4           #phoneType:I
    .end local p2
    :cond_2
    :goto_1
    return-void

    .line 817
    .restart local v1       #call:Lcom/android/internal/telephony/Call;
    .restart local v3       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v4       #phoneType:I
    .restart local p2
    :cond_3
    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    .line 818
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 820
    :cond_4
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 829
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v3, p0, v7}, Lcom/android/phone/PhoneUtils;->retrieveLatestCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    .line 832
    .local v2, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget v5, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .line 833
    .local v5, presentation:I
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v5

    .line 834
    :cond_6
    sget-boolean v6, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- onQueryComplete: presentation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", contactExists="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 840
    :cond_7
    iget-boolean v6, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v6, :cond_8

    .line 841
    sget v6, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    invoke-direct {p0, p3, v6, v8, v1}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    .line 845
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    goto :goto_1

    .line 843
    :cond_8
    iget-object v6, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {p0, v6, v5, v8, v1}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto :goto_2

    .line 847
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v2           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v3           #conn:Lcom/android/internal/telephony/Connection;
    .end local v4           #phoneType:I
    .end local v5           #presentation:I
    :cond_9
    instance-of v6, p2, Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 848
    sget-boolean v6, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v6, :cond_a

    const-string v6, "callerinfo query complete, updating ui from ongoing or onhold"

    invoke-direct {p0, v6}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 849
    :cond_a
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    iget-object v6, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-static {p3, v6}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public onTickForCallTimeElapsed(JJ)V
    .locals 2
    .parameter "timeElapsedActive"
    .parameter "timeElapsedOnhold"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallElapsedTime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 237
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    invoke-direct {p0, p3, p4}, Lcom/android/phone/CallCard;->updateOnHoldElapsedTimeWidget(J)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    goto :goto_0
.end method

.method reset()V
    .locals 1

    .prologue
    .line 220
    sget-boolean v0, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "reset()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 222
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallCard;->mRingerSilenced:Z

    .line 227
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 2
    .parameter "inCallScreen"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 209
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->exclConfCallTitleView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mExclConfCallTitle:Landroid/widget/TextView;

    .line 211
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->multiPartyCallTitleView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mMultiPartyCallTitle:Landroid/widget/TextView;

    .line 212
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f070063

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mOtherCallSwapButton:Landroid/widget/Button;

    .line 215
    iget-object v0, p0, Lcom/android/phone/CallCard;->mOtherCallSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    :cond_2
    return-void
.end method

.method setRotarySelectorHint(II)V
    .locals 0
    .parameter "hintTextResId"
    .parameter "hintColorResId"

    .prologue
    .line 2443
    iput p1, p0, Lcom/android/phone/CallCard;->mRotarySelectorHintTextResId:I

    .line 2444
    iput p2, p0, Lcom/android/phone/CallCard;->mRotarySelectorHintColorResId:I

    .line 2445
    return-void
.end method

.method startTimer()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 255
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    .line 256
    return-void
.end method

.method stopTimer()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 250
    return-void
.end method

.method updateForLandscapeMode()V
    .locals 2

    .prologue
    .line 2380
    sget-boolean v0, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "updateForLandscapeMode()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 2384
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMainCallCard:Landroid/view/ViewGroup;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 2385
    return-void
.end method

.method updateNoCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .parameter "cm"

    .prologue
    const/4 v1, 0x0

    .line 529
    sget-boolean v0, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "updateNoCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 531
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 532
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 534
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateNoCall()V

    .line 535
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .parameter "cm"

    .prologue
    .line 362
    sget-boolean v4, Lcom/android/phone/CallCard;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateState("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V

    .line 371
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 372
    .local v3, state:Lcom/android/internal/telephony/Phone$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 373
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 374
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 381
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 385
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateRingingCall(Lcom/android/internal/telephony/CallManager;)V

    .line 415
    :goto_0
    return-void

    .line 386
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_3

    .line 396
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 413
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/phone/CallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0
.end method
