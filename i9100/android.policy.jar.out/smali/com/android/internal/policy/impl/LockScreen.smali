.class Lcom/android/internal/policy/impl/LockScreen;
.super Landroid/widget/LinearLayout;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/internal/widget/SlidingTab$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockScreen$4;,
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

.field mBackgroudLayout:Landroid/widget/RelativeLayout;

.field private mBatteryLevel:I

.field mBg:Landroid/graphics/Bitmap;

.field mBgAlphaDrawable:Landroid/graphics/drawable/Drawable;

.field mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrier:Landroid/widget/TextView;

.field private mCharging:Ljava/lang/String;

.field private mChargingIcon:Landroid/graphics/drawable/Drawable;

.field private mCreationOrientation:I

.field private mDateFormatString:Ljava/lang/String;

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEmergencyCallText:Landroid/widget/TextView;

.field private mEnableMenuKeyInLockScreen:Z

.field mHandler:Landroid/os/Handler;

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mLockscreenWall:Landroid/widget/ImageView;

.field mMainLayout:Landroid/widget/RelativeLayout;

.field private mMediaLayout:Landroid/widget/LinearLayout;

.field private mNextAlarm:Ljava/lang/String;

.field private mPendingR1:Ljava/lang/Runnable;

.field private mPendingR2:Ljava/lang/Runnable;

.field private mPluggedIn:Z

.field private mSelector:Lcom/android/internal/widget/SlidingTab;

.field private mShowingBatteryInfo:Z

.field private mSilentMode:Z

.field private mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

.field mStatusView:Lcom/android/internal/widget/LockScreenStatusView;

.field mSubLayout:Landroid/widget/RelativeLayout;

.field private mThemePackageSeq:I

.field private mTime:Landroid/widget/TextView;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field mX:F

.field mY:F


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 6
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 197
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->Normal:Lcom/android/internal/policy/impl/LockScreen$Status;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 92
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    .line 95
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    .line 98
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    .line 100
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    .line 101
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    .line 102
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    .line 103
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 110
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 111
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSubLayout:Landroid/widget/RelativeLayout;

    .line 112
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusView:Lcom/android/internal/widget/LockScreenStatusView;

    .line 113
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mBg:Landroid/graphics/Bitmap;

    .line 114
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 115
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mBgAlphaDrawable:Landroid/graphics/drawable/Drawable;

    .line 116
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHandler:Landroid/os/Handler;

    .line 468
    iput v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mX:F

    .line 469
    iput v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mY:F

    .line 198
    iput-object p3, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 199
    iput-object p4, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 200
    iput-object p5, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 202
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->shouldEnableMenuKey()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 204
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    .line 206
    iget v1, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    .line 208
    iget v1, p2, Landroid/content/res/Configuration;->themePackageSeq:I

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mThemePackageSeq:I

    .line 217
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 219
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 220
    const v1, 0x109003a

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 225
    :goto_0
    const v1, 0x1020201

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    .line 226
    const v1, 0x1020202

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 227
    const v1, 0x1020206

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSubLayout:Landroid/widget/RelativeLayout;

    .line 228
    const v1, 0x1020204

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockScreenStatusView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusView:Lcom/android/internal/widget/LockScreenStatusView;

    .line 230
    new-instance v1, Lcom/android/internal/policy/impl/UnlockClockGB;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/UnlockClockGB;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    .line 231
    const v1, 0x1020203

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockscreenWall:Landroid/widget/ImageView;

    .line 232
    const v1, 0x10201f9

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    .line 234
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 235
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    const v1, 0x1020207

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SlidingTab;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    .line 243
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/widget/SlidingTab;->setHoldAfterTrigger(ZZ)V

    .line 244
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const v2, 0x1040343

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 246
    const v1, 0x1020205

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    .line 247
    const v1, 0x10201ed

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 248
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const v2, 0x1040325

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 250
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 251
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/impl/UnlockClockGB;->setVisibility(I)V

    .line 253
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 254
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/internal/policy/impl/LockScreen$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockScreen$1;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockScreen;->setFocusable(Z)V

    .line 262
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockScreen;->setFocusableInTouchMode(Z)V

    .line 263
    const/high16 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->setDescendantFocusability(I)V

    .line 265
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 266
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 269
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 271
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const v2, 0x10801b9

    const v3, 0x1080230

    const v4, 0x108020e

    const v5, 0x1080222

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab;->setLeftTabResources(IIII)V

    .line 277
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateRightTabResources()V

    .line 279
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 281
    invoke-direct {p0, p4}, Lcom/android/internal/policy/impl/LockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 282
    return-void

    .line 222
    :cond_0
    const v1, 0x109003b

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    .line 769
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    move-object v0, p0

    .line 776
    :goto_0
    return-object v0

    .line 771
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 773
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    move-object v0, p1

    .line 774
    goto :goto_0

    .line 776
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/LockScreen$Status;
    .locals 3
    .parameter "simState"

    .prologue
    .line 650
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 652
    .local v0, missingAndNotProvisioned:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 653
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 672
    :goto_1
    return-object v1

    .line 650
    .end local v0           #missingAndNotProvisioned:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 656
    .restart local v0       #missingAndNotProvisioned:Z
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 672
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 658
    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 660
    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 662
    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 664
    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 666
    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 668
    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->Normal:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 670
    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    goto :goto_1

    .line 656
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
    .end packed-switch
.end method

.method private isSilentMode()Z
    .locals 2

    .prologue
    .line 285
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

.method private refreshAlarmDisplay()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    .line 429
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    .line 432
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    .line 433
    return-void
.end method

.method private refreshBatteryStringAndIcon()V
    .locals 5

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    if-nez v0, :cond_0

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    .line 593
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 580
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 584
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    if-eqz v0, :cond_3

    .line 585
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 586
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104032b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    goto :goto_0

    .line 588
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104032a

    const/4 v2, 0x1

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

    .line 591
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104032d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    goto :goto_0
.end method

.method private refreshTimeAndDateDisplay()V
    .locals 0

    .prologue
    .line 603
    return-void
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 2
    .parameter "updateMonitor"

    .prologue
    .line 305
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    .line 306
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    .line 307
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    .line 309
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/LockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayout(Lcom/android/internal/policy/impl/LockScreen$Status;)V

    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    if-ne v0, v1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusView:Lcom/android/internal/widget/LockScreenStatusView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockScreenStatusView;->onSimAbsent()V

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshBatteryStringAndIcon()V

    .line 315
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshAlarmDisplay()V

    .line 317
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mTimeFormat:Ljava/text/DateFormat;

    .line 318
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10400a9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mDateFormatString:Ljava/lang/String;

    .line 320
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    .line 321
    return-void
.end method

.method private shouldEnableMenuKey()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 180
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x10d0016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 181
    .local v0, configDisabled:Z
    const-string v4, "ro.monkey"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 182
    .local v2, isMonkey:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 183
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

    .line 391
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 393
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 397
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 398
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    .line 401
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 402
    .local v7, oldText:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 404
    .local v6, oldColors:Landroid/content/res/ColorStateList;
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LockScreen$2;-><init>(Lcom/android/internal/policy/impl/LockScreen;Landroid/widget/TextView;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    .line 414
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR1:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 415
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$3;

    invoke-direct {v0, p0, p1, v7, v6}, Lcom/android/internal/policy/impl/LockScreen$3;-><init>(Lcom/android/internal/policy/impl/LockScreen;Landroid/widget/TextView;Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    .line 422
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPendingR2:Ljava/lang/Runnable;

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 423
    return-void
.end method

.method private updateLayout(Lcom/android/internal/policy/impl/LockScreen$Status;)V
    .locals 6
    .parameter "status"

    .prologue
    const v3, 0x104032e

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 682
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 684
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$policy$impl$LockScreen$Status:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 766
    :goto_0
    return-void

    .line 687
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 703
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040332

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 716
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 721
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 727
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 736
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 737
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 741
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040335

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 749
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 753
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040333

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 762
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 763
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 684
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateRightTabResources()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 289
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v0, v2

    .line 292
    .local v0, vibe:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    const v2, 0x10801ba

    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v3, :cond_3

    const v3, 0x1080232

    :goto_2
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_4

    const v4, 0x1080218

    :goto_3
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v5, :cond_5

    const v5, 0x108022d

    :goto_4
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab;->setRightTabResources(IIII)V

    .line 302
    return-void

    .line 289
    .end local v0           #vibe:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 292
    .restart local v0       #vibe:Z
    :cond_1
    const v2, 0x10801b7

    goto :goto_1

    :cond_2
    const v2, 0x10801b8

    goto :goto_1

    :cond_3
    const v3, 0x108022f

    goto :goto_2

    :cond_4
    const v4, 0x1080217

    goto :goto_3

    :cond_5
    const v5, 0x108022c

    goto :goto_4
.end method

.method private updateStatusLines()V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreen$Status;->showStatusLines()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 618
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 626
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 847
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 848
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 849
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 850
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 851
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 830
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 807
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 813
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    .line 814
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 819
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 825
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    .line 826
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 370
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 371
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 372
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v1, :cond_2

    const v1, 0x1040344

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab;->setRightHintText(I)V

    .line 378
    :cond_0
    if-eqz p2, :cond_1

    .line 379
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 381
    :cond_1
    return-void

    .line 372
    :cond_2
    const v1, 0x1040345

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v9, 0x0

    const-string v10, "LockScreen"

    .line 437
    const-string v7, "LockScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onInterceptTouchEvent(): event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 440
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 441
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 442
    .local v6, y:F
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 443
    .local v3, tmpRect:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 445
    .local v4, tmpRect2:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    if-eqz v7, :cond_0

    .line 446
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v7, v3}, Lcom/android/internal/widget/SlidingTab;->getHitRect(Landroid/graphics/Rect;)V

    .line 447
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_1

    .line 448
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 450
    :cond_1
    float-to-int v7, v5

    float-to-int v8, v6

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    .line 451
    .local v2, slidingTabHit:Z
    float-to-int v7, v5

    float-to-int v8, v6

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 453
    .local v1, mediaPanelHit:Z
    const-string v7, "LockScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "                               slidingTabHit="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mediaPanelHit="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    packed-switch v0, :pswitch_data_0

    move v7, v9

    .line 465
    :goto_0
    return v7

    .line 458
    :pswitch_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v7}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 459
    if-nez v2, :cond_2

    if-nez v1, :cond_2

    .line 460
    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    move v7, v9

    .line 462
    goto :goto_0

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 325
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEnableMenuKeyInLockScreen:Z

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 328
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 836
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 864
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 565
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    .line 566
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    .line 567
    iput p3, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    .line 569
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshBatteryStringAndIcon()V

    .line 570
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    .line 571
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayout(Lcom/android/internal/policy/impl/LockScreen$Status;)V

    .line 644
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 841
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 842
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockClockGB;->refreshTimeAndDateDisplay()V

    .line 843
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 855
    const/4 v1, 0x2

    if-eq v1, p1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 856
    .local v0, silent:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eq v0, v1, :cond_0

    .line 857
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 858
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateRightTabResources()V

    .line 860
    :cond_0
    return-void

    .line 855
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
    .line 782
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/LockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 783
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatus:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->updateLayout(Lcom/android/internal/policy/impl/LockScreen$Status;)V

    .line 784
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateStatusLines()V

    .line 785
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockClockGB;->refreshTimeAndDateDisplay()V

    .line 599
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .parameter "event"

    .prologue
    .line 473
    const-string v18, "LockScreen"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onTouchEvent(): event="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 475
    .local v5, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v16

    .line 476
    .local v16, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v17

    .line 477
    .local v17, y:F
    const/4 v7, 0x0

    .line 478
    .local v7, diffX:I
    const/4 v8, 0x0

    .line 480
    .local v8, diffY:I
    packed-switch v5, :pswitch_data_0

    .line 556
    :cond_0
    :goto_0
    const/16 v18, 0x1

    :goto_1
    return v18

    .line 482
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mStatusView:Lcom/android/internal/widget/LockScreenStatusView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/LockScreenStatusView;->setVisibility(I)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/RelativeLayout;->buildDrawingCache()V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/RelativeLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mBg:Landroid/graphics/Bitmap;

    .line 489
    const-string v18, "LockScreen"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mBg="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mBg:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mBg:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 491
    new-instance v18, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mBg:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mBgAlphaDrawable:Landroid/graphics/drawable/Drawable;

    .line 493
    const-string v18, "LockScreen"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mBitmapDrawable="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_1
    const-string v18, "LockScreen"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mBgAlphaDrawable="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mBgAlphaDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/impl/UnlockClockGB;->setVisibility(I)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 500
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mX:F

    .line 501
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mY:F

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mBgAlphaDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mLockscreenWall:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mBgAlphaDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 505
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mLockscreenWall:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    sget-object v19, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_0

    .line 509
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mBg:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    .line 510
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 511
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mX:F

    move/from16 v18, v0

    sub-float v18, v16, v18

    move/from16 v0, v18

    float-to-int v0, v0

    move v7, v0

    .line 512
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mY:F

    move/from16 v18, v0

    sub-float v18, v17, v18

    move/from16 v0, v18

    float-to-int v0, v0

    move v8, v0

    .line 513
    move v0, v7

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move v0, v8

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    add-double v11, v18, v20

    .line 514
    .local v11, distance_square:D
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 515
    .local v9, distance:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mBg:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mBg:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mBg:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v13, v18

    .line 516
    .local v13, min:I
    :goto_2
    mul-int/lit8 v18, v13, 0x2

    div-int/lit8 v18, v18, 0x3

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide v14, v0

    .line 517
    .local v14, threshold:D
    const-wide v18, 0x406fe00000000000L

    const-wide v20, 0x406fe00000000000L

    mul-double v20, v20, v9

    div-double v20, v20, v14

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move v6, v0

    .line 518
    .local v6, alpha:I
    if-lez v6, :cond_6

    .line 520
    :goto_3
    const-string v18, "LockScreen"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onTouchEvent() : threshold="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", distance="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", alpha="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mBgAlphaDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mBgAlphaDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mLockscreenWall:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mBgAlphaDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mLockscreenWall:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    sget-object v19, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v19

    add-int v19, v19, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v20

    add-int v20, v20, v8

    move-object/from16 v0, v18

    move v1, v7

    move v2, v8

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 530
    :cond_4
    cmpl-double v18, v9, v14

    if-ltz v18, :cond_0

    .line 531
    const-string v18, "LockScreen"

    const-string v19, "goToUnlockScreen !!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_0

    .line 515
    .end local v6           #alpha:I
    .end local v13           #min:I
    .end local v14           #threshold:D
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mBg:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v13, v18

    goto/16 :goto_2

    .line 518
    .restart local v6       #alpha:I
    .restart local v13       #min:I
    .restart local v14       #threshold:D
    :cond_6
    const/16 v18, 0x0

    move/from16 v6, v18

    goto/16 :goto_3

    .line 540
    .end local v6           #alpha:I
    .end local v9           #distance:D
    .end local v11           #distance_square:D
    .end local v13           #min:I
    .end local v14           #threshold:D
    :pswitch_2
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mX:F

    .line 541
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mY:F

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v22

    invoke-virtual/range {v18 .. v22}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 548
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mStatusView:Lcom/android/internal/widget/LockScreenStatusView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/LockScreenStatusView;->setVisibility(I)V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/impl/UnlockClockGB;->setVisibility(I)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen;->mCarrier:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 480
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 8
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 333
    if-ne p2, v6, :cond_1

    .line 334
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    if-ne p2, v5, :cond_0

    .line 337
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-nez v4, :cond_2

    move v4, v6

    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 338
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_5

    .line 339
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_in_silent"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_3

    move v3, v6

    .line 343
    .local v3, vibe:Z
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v3, :cond_4

    move v5, v6

    :goto_3
    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 350
    .end local v3           #vibe:Z
    :goto_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateRightTabResources()V

    .line 352
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040151

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 356
    .local v0, message:Ljava/lang/String;
    :goto_5
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_7

    const v4, 0x10801be

    move v2, v4

    .line 360
    .local v2, toastIcon:I
    :goto_6
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move v1, v4

    .line 364
    .local v1, toastColor:I
    :goto_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .end local v0           #message:Ljava/lang/String;
    .end local v1           #toastColor:I
    .end local v2           #toastIcon:I
    :cond_2
    move v4, v7

    .line 337
    goto :goto_1

    :cond_3
    move v3, v7

    .line 339
    goto :goto_2

    .restart local v3       #vibe:Z
    :cond_4
    move v5, v7

    .line 343
    goto :goto_3

    .line 347
    .end local v3           #vibe:Z
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_4

    .line 352
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040152

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_5

    .line 356
    .restart local v0       #message:Ljava/lang/String;
    :cond_7
    const v4, 0x10801bf

    move v2, v4

    goto :goto_6

    .line 360
    .restart local v2       #toastIcon:I
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move v1, v4

    goto :goto_7
.end method

.method updateConfiguration()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 788
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 789
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_1

    .line 790
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 803
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_3

    .line 792
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    .line 793
    iget v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-ne v2, v4, :cond_2

    move v0, v4

    .line 794
    .local v0, isKeyboardOpen:Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 795
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 793
    .end local v0           #isKeyboardOpen:Z
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1

    .line 799
    :cond_3
    iget v2, v1, Landroid/content/res/Configuration;->themePackageSeq:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mThemePackageSeq:I

    if-eq v2, v3, :cond_0

    .line 800
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method
