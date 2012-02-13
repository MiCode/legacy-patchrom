.class Lcom/android/internal/policy/impl/LockScreen;
.super Landroid/widget/LinearLayout;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/motorola/android/widget/SlideButton$OnSlideEndListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockScreen$5;,
        Lcom/android/internal/policy/impl/LockScreen$Status;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final TAG:Ljava/lang/String; = "LockScreen"


# instance fields
.field private mAlarmIcon:Landroid/graphics/drawable/Drawable;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryLevel:I

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrier:Landroid/widget/TextView;

.field private mCharging:Ljava/lang/String;

.field private mChargingIcon:Landroid/graphics/drawable/Drawable;

.field private mCreationOrientation:I

.field private mDate:Landroid/widget/TextView;

.field private mDateFormatString:Ljava/lang/String;

.field private mEmergCallIcon:Landroid/widget/ImageView;

.field private mEmergCallText:Landroid/widget/TextView;

.field private mEmergencyCallButton:Landroid/view/View;

.field private mEmergencyCallText:Landroid/widget/TextView;

.field private mEnableMenuKeyInLockScreen:Z

.field private mInflatedViewStub:Landroid/view/View;

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextAlarm:Ljava/lang/String;

.field private mPendingR1:Ljava/lang/Runnable;

.field private mPendingR2:Ljava/lang/Runnable;

.field private mPlugType:I

.field private mPluggedIn:Z

.field private mPukUnlockButton:Landroid/widget/Button;

.field private mScreenLocked:Landroid/widget/TextView;

.field private mSelector:Lcom/motorola/android/widget/SlideButton;

.field private mShowingBatteryInfo:Z

.field private mSilentMode:Z

.field private mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

.field private mStatus1:Landroid/widget/TextView;

.field private mStatus2:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 10
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/16 v9, 0x50

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/android/internal/policy/impl/LockScreen$Status;->Normal:Lcom/android/internal/policy/impl/LockScreen$Status;

    iput-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    const/16 v3, 0x64

    iput v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    iput v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mPlugType:I

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mInflatedViewStub:Landroid/view/View;

    iput-object p3, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p4, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iput-object p5, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->shouldEnableMenuKey()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mEnableMenuKeyInLockScreen:Z

    iget v3, p2, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    iget v3, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    if-eq v3, v6, :cond_5

    const v3, 0x109003a

    invoke-virtual {v0, v3, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :goto_0
    const v3, 0x10201fb

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x102005a

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mDate:Landroid/widget/TextView;

    const v3, 0x1020216

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    const v3, 0x1020217

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    const v3, 0x1020218

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const v3, 0x1020219

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/motorola/android/widget/SlideButton;

    iput-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    if-eq v3, v6, :cond_6

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    invoke-virtual {v3, v5}, Lcom/motorola/android/widget/SlideButton;->setSliderTypeResources(I)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    const v4, 0x1080431

    const v5, 0x1080432

    const v6, 0x1080433

    const v7, 0x1080434

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/motorola/android/widget/SlideButton;->setImgResources(IIII)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/motorola/android/widget/SlideButton;->setSliderAlignResources(I)V

    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    invoke-virtual {v3, v9}, Lcom/motorola/android/widget/SlideButton;->setSnapForwardThresholdPercent(I)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    invoke-virtual {v3, v9}, Lcom/motorola/android/widget/SlideButton;->setSnapReverseThresholdPercent(I)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    invoke-virtual {v3, v8}, Lcom/motorola/android/widget/SlideButton;->setHapticFeedback(Z)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/motorola/android/widget/SlideButton;->setSliderPaddingLeft(I)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/motorola/android/widget/SlideButton;->setSliderPaddingRight(I)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/motorola/android/widget/SlideButton;->setSliderPaddingTop(I)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e002b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/motorola/android/widget/SlideButton;->setSliderPaddingBottom(I)V

    :cond_0
    const v3, 0x1020212

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    const v3, 0x10201ff

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergCallIcon:Landroid/widget/ImageView;

    const v3, 0x1020200

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergCallText:Landroid/widget/TextView;

    const v3, 0x10201f6

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergCallText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergCallIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/view/View;

    new-instance v4, Lcom/android/internal/policy/impl/LockScreen$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/LockScreen$1;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->enablePukUnlockButton()V

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/LockScreen;->setFocusable(Z)V

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/LockScreen;->setFocusableInTouchMode(Z)V

    const/high16 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockScreen;->setDescendantFocusability(I)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateRightTabResources()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    invoke-virtual {v3, p0}, Lcom/motorola/android/widget/SlideButton;->setSlidableListener(Lcom/motorola/android/widget/SlideButton$OnSlideEndListener;)V

    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v3, :cond_3

    invoke-direct {p0, p4}, Lcom/android/internal/policy/impl/LockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    .local v1, isMusicActive:Z
    const/4 v2, 0x0

    .local v2, vs:Landroid/view/ViewStub;
    if-eqz v1, :cond_7

    const v3, 0x102021b

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #vs:Landroid/view/ViewStub;
    check-cast v2, Landroid/view/ViewStub;

    .restart local v2       #vs:Landroid/view/ViewStub;
    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mInflatedViewStub:Landroid/view/View;

    :cond_4
    return-void

    .end local v1           #isMusicActive:Z
    .end local v2           #vs:Landroid/view/ViewStub;
    :cond_5
    const v3, 0x109003b

    invoke-virtual {v0, v3, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    invoke-virtual {v3, v8}, Lcom/motorola/android/widget/SlideButton;->setSliderTypeResources(I)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    const v4, 0x1080437

    const v5, 0x1080438

    const v6, 0x108042d

    const v7, 0x108042e

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/motorola/android/widget/SlideButton;->setImgResources(IIII)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/motorola/android/widget/SlideButton;->setSliderAlignResources(I)V

    goto/16 :goto_1

    .restart local v1       #isMusicActive:Z
    .restart local v2       #vs:Landroid/view/ViewStub;
    :cond_7
    const v3, 0x102021d

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #vs:Landroid/view/ViewStub;
    check-cast v2, Landroid/view/ViewStub;

    .restart local v2       #vs:Landroid/view/ViewStub;
    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method private enablePukUnlockButton()V
    .locals 2

    .prologue
    const v0, 0x102021a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPukUnlockButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPukUnlockButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/internal/policy/impl/LockScreen$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LockScreen$4;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private enableSound()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "full_charge_notification_enable"

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, enableSound:I
    if-ne v0, v4, :cond_0

    move v1, v4

    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .local v0, plmnIsEmtpy:Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .local v1, spnIsEmtpy:Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    move-object v2, p0

    :goto_0
    return-object v2

    :cond_0
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, p0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    move-object v2, p1

    goto :goto_0

    :cond_3
    const-string v2, ""

    goto :goto_0
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/LockScreen$Status;
    .locals 3
    .parameter "simState"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .local v0, missingAndNotProvisioned:Z
    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    :goto_1
    return-object v1

    .end local v0           #missingAndNotProvisioned:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .restart local v0       #missingAndNotProvisioned:Z
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$5;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->Normal:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimError:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    :pswitch_7
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimPukPermLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    :pswitch_8
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

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
    .end packed-switch
.end method

.method private isSilentMode()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutSimMissingLockForCdmaGsmWorldPhone()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10402aa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    invoke-virtual {v0, v4}, Lcom/motorola/android/widget/SlideButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPukUnlockButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private playFullyChargedSound()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .local v1, notificationManager:Landroid/app/NotificationManager;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .local v0, fullyChargedNoti:Landroid/app/Notification;
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    iget v2, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/app/Notification;->defaults:I

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private refreshAlarmDisplay()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getUTCNextAlarm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    return-void
.end method

.method private refreshBatteryStringAndIcon()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPlugType:I

    if-ne v2, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104040b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->enableSound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->playFullyChargedSound()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10402a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10402a6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10402a9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    goto :goto_0
.end method

.method private refreshTimeAndDateDisplay()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 2
    .parameter "updateMonitor"

    .prologue
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPlugType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPlugType:I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/LockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayout(Lcom/android/internal/policy/impl/LockScreen$Status;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshBatteryStringAndIcon()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshAlarmDisplay()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10400b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mDateFormatString:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshTimeAndDateDisplay()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    return-void
.end method

.method private shouldEnableMenuKey()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x10d000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .local v0, configDisabled:Z
    const-string v4, "ro.monkey"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .local v2, isMonkey:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .local v1, fileOverride:Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    move v4, v6

    goto :goto_0
.end method

.method private toastMessage(Landroid/widget/TextView;Ljava/lang/String;II)V
    .locals 8
    .parameter "textView"
    .parameter "text"
    .parameter "color"
    .parameter "iconResourceId"

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, oldText:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    .local v6, oldColors:Landroid/content/res/ColorStateList;
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LockScreen$2;-><init>(Lcom/android/internal/policy/impl/LockScreen;Landroid/widget/TextView;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$3;

    invoke-direct {v0, p0, p1, v7, v6}, Lcom/android/internal/policy/impl/LockScreen$3;-><init>(Lcom/android/internal/policy/impl/LockScreen;Landroid/widget/TextView;Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateLayout(Lcom/android/internal/policy/impl/LockScreen$Status;)V
    .locals 10
    .parameter "status"

    .prologue
    const v9, 0x10402ac

    const v8, 0x10402a0

    const v5, 0x10402aa

    const/16 v7, 0x8

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10d0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .local v1, mFTR_26298_Enabled:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mPukUnlockButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    const-string v2, "ro.mot.phonemode.vzwglobalphone"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ro.mot.phonemode.vzw4gphone"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    move v0, v2

    .local v0, isCdmaGsmWorldPhone:Z
    :goto_0
    sget-object v2, Lcom/android/internal/policy/impl/LockScreen$5;->$SwitchMap$com$android$internal$policy$impl$LockScreen$Status:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_1
    return-void

    .end local v0           #isCdmaGsmWorldPhone:Z
    :cond_1
    move v0, v6

    goto :goto_0

    .restart local v0       #isCdmaGsmWorldPhone:Z
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    invoke-virtual {v2, v6}, Lcom/motorola/android/widget/SlideButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10402ae

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    invoke-virtual {v2, v6}, Lcom/motorola/android/widget/SlideButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :pswitch_2
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->layoutSimMissingLockForCdmaGsmWorldPhone()V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    invoke-virtual {v2, v6}, Lcom/motorola/android/widget/SlideButton;->setVisibility(I)V

    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :pswitch_3
    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->layoutSimMissingLockForCdmaGsmWorldPhone()V

    goto/16 :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const v3, 0x10403cd

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    invoke-virtual {v2, v6}, Lcom/motorola/android/widget/SlideButton;->setVisibility(I)V

    if-nez v1, :cond_6

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10d0033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    :cond_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    invoke-virtual {v2, v7}, Lcom/motorola/android/widget/SlideButton;->setVisibility(I)V

    if-nez v1, :cond_8

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :pswitch_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10402b1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    invoke-virtual {v2, v6}, Lcom/motorola/android/widget/SlideButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10402af

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const v3, 0x10402b0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    invoke-virtual {v2, v7}, Lcom/motorola/android/widget/SlideButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mPukUnlockButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10404eb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const v3, 0x10404eb

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    invoke-virtual {v2, v7}, Lcom/motorola/android/widget/SlideButton;->setVisibility(I)V

    if-nez v1, :cond_9

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_9
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

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
    .end packed-switch
.end method

.method private updateRightTabResources()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v0, v2

    .local v0, vibe:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    if-nez v1, :cond_1

    :goto_1
    return-void

    .end local v0           #vibe:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .restart local v0       #vibe:Z
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    const v2, 0x108043a

    :goto_2
    invoke-virtual {v1, v2}, Lcom/motorola/android/widget/SlideButton;->setRightForegroundImgResources(I)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->invalidate()V

    goto :goto_1

    :cond_2
    const v2, 0x1080435

    goto :goto_2

    :cond_3
    const v2, 0x1080433

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v2, :cond_6

    if-eqz v0, :cond_5

    const v2, 0x1080439

    :goto_4
    invoke-virtual {v1, v2}, Lcom/motorola/android/widget/SlideButton;->setRightForegroundImgResources(I)V

    goto :goto_3

    :cond_5
    const v2, 0x108042f

    goto :goto_4

    :cond_6
    const v2, 0x108042d

    goto :goto_4
.end method

.method private updateStatusLines()V
    .locals 6

    .prologue
    const v5, 0x104040b

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mInflatedViewStub:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mInflatedViewStub:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .local v2, viewParent:Landroid/view/ViewParent;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mInflatedViewStub:Landroid/view/View;

    .end local v1           #vg:Landroid/view/ViewGroup;
    .end local v2           #viewParent:Landroid/view/ViewParent;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEnableMenuKeyInLockScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "newState"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergCallText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergCallIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 1
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPlugType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPlugType:I

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    iput p3, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshBatteryStringAndIcon()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayout(Lcom/android/internal/policy/impl/LockScreen$Status;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/motorola/android/widget/SlideButton;

    invoke-virtual {v0}, Lcom/motorola/android/widget/SlideButton;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergCallText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergCallIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->invalidate()V

    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x2

    if-eq v1, p1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .local v0, silent:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateRightTabResources()V

    :cond_0
    return-void

    .end local v0           #silent:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/LockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayout(Lcom/android/internal/policy/impl/LockScreen$Status;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    return-void
.end method

.method public onSlideDone(Lcom/motorola/android/widget/SlideButton;)Z
    .locals 10
    .parameter "from"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    iget v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    if-eq v4, v7, :cond_0

    invoke-virtual {p1}, Lcom/motorola/android/widget/SlideButton;->getSliderTouched()I

    move-result v4

    if-eq v4, v6, :cond_1

    :cond_0
    iget v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    if-ne v4, v7, :cond_4

    invoke-virtual {p1}, Lcom/motorola/android/widget/SlideButton;->getSliderTouched()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/motorola/android/widget/SlideButton;->getSliderTouched()I

    move-result v4

    if-eq v4, v7, :cond_3

    invoke-virtual {p1}, Lcom/motorola/android/widget/SlideButton;->getSliderTouched()I

    move-result v4

    if-ne v4, v9, :cond_e

    :cond_3
    move v4, v8

    :goto_1
    return v4

    :cond_4
    iget v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    if-eq v4, v7, :cond_5

    invoke-virtual {p1}, Lcom/motorola/android/widget/SlideButton;->getSliderTouched()I

    move-result v4

    if-eq v4, v7, :cond_6

    :cond_5
    iget v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    if-ne v4, v7, :cond_2

    invoke-virtual {p1}, Lcom/motorola/android/widget/SlideButton;->getSliderTouched()I

    move-result v4

    if-ne v4, v9, :cond_2

    :cond_6
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-nez v4, :cond_7

    move v4, v6

    :goto_2
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_in_silent"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_8

    move v3, v6

    .local v3, vibe:Z
    :goto_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v3, :cond_9

    move v5, v6

    :goto_4
    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .end local v3           #vibe:Z
    :goto_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateRightTabResources()V

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040135

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .local v0, message:Ljava/lang/String;
    :goto_6
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move v1, v4

    .local v1, toastColor:I
    :goto_7
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_d

    const v4, 0x10801ce

    move v2, v4

    .local v2, toastIcon:I
    :goto_8
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-direct {p0, v4, v0, v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->toastMessage(Landroid/widget/TextView;Ljava/lang/String;II)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .end local v0           #message:Ljava/lang/String;
    .end local v1           #toastColor:I
    .end local v2           #toastIcon:I
    :cond_7
    move v4, v8

    goto :goto_2

    :cond_8
    move v3, v8

    goto :goto_3

    .restart local v3       #vibe:Z
    :cond_9
    move v5, v8

    goto :goto_4

    .end local v3           #vibe:Z
    :cond_a
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040136

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_6

    .restart local v0       #message:Ljava/lang/String;
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move v1, v4

    goto :goto_7

    .restart local v1       #toastColor:I
    :cond_d
    const v4, 0x10801cf

    move v2, v4

    goto :goto_8

    .end local v0           #message:Ljava/lang/String;
    .end local v1           #toastColor:I
    :cond_e
    move v4, v6

    goto/16 :goto_1
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshTimeAndDateDisplay()V

    return-void
.end method

.method updateConfiguration()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_2

    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_2
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_0

    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-ne v2, v4, :cond_3

    move v0, v4

    .local v0, isKeyboardOpen:Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .end local v0           #isKeyboardOpen:Z
    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method
