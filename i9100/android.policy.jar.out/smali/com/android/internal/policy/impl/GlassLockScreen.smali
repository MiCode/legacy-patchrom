.class Lcom/android/internal/policy/impl/GlassLockScreen;
.super Landroid/widget/LinearLayout;
.source "GlassLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


# static fields
.field private static final DBG:Z = true

.field private static final LOCK_ANIMATION_MOVE_RANGE:I = 0x14

.field private static final LOCK_ANIMATION_START_DELAY:I = 0x64

.field private static final MAINLAYOUT_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GlassLockScreen"


# instance fields
.field private mAnimate:Z

.field private mBoxLayout:Landroid/widget/LinearLayout;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCreationOrientation:I

.field private mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

.field private mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

.field private mGlassLockscreenInfo:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

.field mHandler:Landroid/os/Handler;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenShadowWall:Landroid/widget/ImageView;

.field private mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private final mStartLockAnimation:Ljava/lang/Runnable;

.field private mTimeTick_Layout_Refresh:Z

.field private mTransAnimation:Landroid/view/animation/TranslateAnimation;

.field private mUnLocked:Z

.field private mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field mX:F

.field mY:F


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 10
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 78
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mAnimate:Z

    .line 79
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTimeTick_Layout_Refresh:Z

    .line 80
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnLocked:Z

    .line 81
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    .line 197
    new-instance v5, Lcom/android/internal/policy/impl/GlassLockScreen$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlassLockScreen$1;-><init>(Lcom/android/internal/policy/impl/GlassLockScreen;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStartLockAnimation:Ljava/lang/Runnable;

    .line 208
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mX:F

    .line 209
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mY:F

    .line 97
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 98
    iput-object p4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 99
    iput-object p5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 100
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnLocked:Z

    .line 102
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mHandler:Landroid/os/Handler;

    .line 104
    iget v5, p2, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreationOrientation:I

    .line 106
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 108
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v5, 0x1090079

    const/4 v6, 0x1

    invoke-virtual {v0, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 114
    const v5, 0x1020273

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 115
    const v5, 0x1020274

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenShadowWall:Landroid/widget/ImageView;

    .line 116
    const v5, 0x1020275

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    .line 118
    new-instance v5, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-direct {v5, p1}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    .line 119
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setVisibility(I)V

    .line 120
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 122
    new-instance v5, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v8, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {v5, v6, v7, v8}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    .line 123
    new-instance v5, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v5, v6, v7}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    .line 124
    new-instance v5, Lcom/android/internal/policy/impl/UnlockClockGB;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lcom/android/internal/policy/impl/UnlockClockGB;-><init>(Landroid/content/Context;Z)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    .line 125
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/UnlockClockGB;->setVisibility(I)V

    .line 126
    new-instance v5, Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    invoke-direct {v5, p1, p4, p2}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockscreenInfo:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    .line 127
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockscreenInfo:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/UnlockClockGB;->addView(Landroid/view/View;)V

    .line 129
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 130
    .local v3, mBlankLinearLayout:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 131
    .local v2, mBlankLP:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f80

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 132
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 135
    .local v4, mUnlockClockLP:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f80

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 136
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v5, v4}, Lcom/android/internal/policy/impl/UnlockClockGB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "clock_position"

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 139
    .local v1, layoutPosition:I
    const-string v5, "GlassLockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CLOCK_POSITION from Setting Value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    packed-switch v1, :pswitch_data_0

    .line 173
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenShadowWall:Landroid/widget/ImageView;

    const v6, 0x10803da

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setTopLayout()V

    .line 176
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/UnlockClockGB;->setGravity(I)V

    .line 178
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    :goto_0
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->setFocusable(Z)V

    .line 184
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->setFocusableInTouchMode(Z)V

    .line 185
    const/high16 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->setDescendantFocusability(I)V

    .line 187
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 189
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x41a0

    const/4 v8, 0x0

    const/high16 v9, -0x3e60

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    .line 190
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 191
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 192
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 193
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 194
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 195
    return-void

    .line 144
    :pswitch_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenShadowWall:Landroid/widget/ImageView;

    const v6, 0x10803d9

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/UnlockClockGB;->setGravity(I)V

    .line 146
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setBottomLayout()V

    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenShadowWall:Landroid/widget/ImageView;

    const v6, 0x10803da

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 156
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setTopLayout()V

    .line 157
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/UnlockClockGB;->setGravity(I)V

    .line 159
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 164
    :pswitch_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenShadowWall:Landroid/widget/ImageView;

    const v6, 0x10803d8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setTopLayout()V

    .line 167
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 168
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 169
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    const/16 v6, 0x50

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/UnlockClockGB;->setGravity(I)V

    .line 170
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/view/animation/TranslateAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 376
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->cleanUp()V

    .line 377
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->cleanUp()V

    .line 378
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->cleanUp()V

    .line 379
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockscreenInfo:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->cleanUp()V

    .line 380
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnLocked:Z

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->onPause()V

    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->onPause()V

    .line 347
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 335
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 1
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockscreenInfo:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->onResume()V

    .line 312
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 327
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnLocked:Z

    .line 352
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->onResume()V

    .line 353
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockClockGB;->refreshTimeAndDateDisplay()V

    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->onResume()V

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->onResume()V

    .line 356
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockscreenInfo:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->onResume()V

    .line 358
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 331
    return-void
.end method

.method public onTimeChanged()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 316
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/UnlockClockGB;->resetClockInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 317
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTimeTick_Layout_Refresh:Z

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTimeTick_Layout_Refresh:Z

    .line 323
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .parameter "event"

    .prologue
    .line 213
    const-string v20, "GlassLockScreen"

    const-string v21, "onTouchEvent()"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 215
    .local v5, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    .line 216
    .local v18, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    .line 217
    .local v19, y:F
    const/4 v7, 0x0

    .line 218
    .local v7, diffX:I
    const/4 v9, 0x0

    .line 219
    .local v9, diffY:I
    const/4 v8, 0x0

    .line 220
    .local v8, diffX_ori:I
    const/4 v10, 0x0

    .line 221
    .local v10, diffY_ori:I
    const/4 v6, 0x0

    .line 224
    .local v6, currentMusicPlayingStatus:Z
    packed-switch v5, :pswitch_data_0

    .line 305
    :cond_0
    :goto_0
    const/16 v20, 0x1

    return v20

    .line 226
    :pswitch_0
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mTimeTick_Layout_Refresh:Z

    .line 228
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mAnimate:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStartLockAnimation:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x64

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mAnimate:Z

    .line 233
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isControllerShowing()Z

    move-result v6

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setControllerVisibility(ZZ)V

    .line 237
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mX:F

    .line 238
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mY:F

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/UnlockClockGB;->setVisibility(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setVisibility(I)V

    goto :goto_0

    .line 244
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 245
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mTimeTick_Layout_Refresh:Z

    .line 248
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mX:F

    move/from16 v20, v0

    sub-float v20, v18, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move v7, v0

    .line 249
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mY:F

    move/from16 v20, v0

    sub-float v20, v19, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v21

    mul-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v21

    div-int v9, v20, v21

    .line 250
    move v0, v7

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    move v0, v9

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    add-double v13, v20, v22

    .line 251
    .local v13, distance_square:D
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    .line 252
    .local v11, distance:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v20

    move/from16 v15, v20

    .line 253
    .local v15, min:I
    :goto_1
    mul-int/lit8 v20, v15, 0x2

    div-int/lit8 v20, v20, 0x3

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 254
    .local v16, threshold:D
    const-string v20, "GlassLockScreen"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onTouchEvent() : threshold="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", distance="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", alpha="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mAnimate:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStartLockAnimation:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 260
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mAnimate:Z

    .line 263
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/UnlockClockGB;->setVisibility(I)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setVisibility(I)V

    .line 268
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mX:F

    move/from16 v20, v0

    sub-float v20, v18, v20

    const/high16 v21, 0x41a0

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move v8, v0

    .line 269
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mY:F

    move/from16 v20, v0

    sub-float v20, v19, v20

    const/high16 v21, 0x41a0

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move v10, v0

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v21

    add-int v21, v21, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v22

    add-int v22, v22, v10

    move-object/from16 v0, v20

    move v1, v8

    move v2, v10

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 274
    :cond_3
    cmpl-double v20, v11, v16

    if-ltz v20, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnLocked:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 275
    const-string v20, "GlassLockScreen"

    const-string v21, "Threshold is reached. goToUnlockScreen !!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnLocked:Z

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_0

    .line 252
    .end local v15           #min:I
    .end local v16           #threshold:D
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v20

    move/from16 v15, v20

    goto/16 :goto_1

    .line 282
    .end local v11           #distance:D
    .end local v13           #distance_square:D
    :pswitch_2
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mX:F

    .line 283
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mY:F

    .line 284
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mTimeTick_Layout_Refresh:Z

    .line 286
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mAnimate:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStartLockAnimation:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 290
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mAnimate:Z

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->invalidate()V

    .line 294
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnLocked:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v24

    invoke-virtual/range {v20 .. v24}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setVisibility(I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isControllerShowing()Z

    move-result v6

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setControllerVisibility(ZZ)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/UnlockClockGB;->setVisibility(I)V

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->clearFocus()V

    goto/16 :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setScreenOff()V
    .locals 3

    .prologue
    .line 366
    const-string v0, "GlassLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenOff() mGlassLockScreenMusicWidget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setScreenOff()V

    .line 369
    :cond_0
    return-void
.end method

.method public setScreenOn()V
    .locals 3

    .prologue
    .line 360
    const-string v0, "GlassLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenOn() mGlassLockScreenMusicWidget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setScreenOn()V

    .line 363
    :cond_0
    return-void
.end method
