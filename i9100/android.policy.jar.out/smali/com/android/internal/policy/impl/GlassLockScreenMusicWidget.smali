.class public Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;
.super Landroid/widget/RelativeLayout;
.source "GlassLockScreenMusicWidget.java"


# static fields
.field private static final MUSICHUB_FF_DOWN_ACTION:Ljava/lang/String; = "com.samsung.music.musicservicecommand.ff.down"

.field private static final MUSICHUB_FF_UP_ACTION:Ljava/lang/String; = "com.samsung.music.musicservicecommand.ff.up"

.field private static final MUSICHUB_MEDIA_INFO:Ljava/lang/String; = "com.samsung.music.musicservicecommand.mediainfo"

.field private static final MUSICHUB_NEXT:Ljava/lang/String; = "com.samsung.music.musicservicecommand.next"

.field private static final MUSICHUB_ON:I = 0x2

.field private static final MUSICHUB_PREVIOUS:Ljava/lang/String; = "com.samsung.music.musicservicecommand.previous"

.field private static final MUSICHUB_REW_DOWN_ACTION:Ljava/lang/String; = "com.samsung.music.musicservicecommand.rew.down"

.field private static final MUSICHUB_REW_UP_ACTION:Ljava/lang/String; = "com.samsung.music.musicservicecommand.rew.up"

.field private static final MUSICHUB_TOGGLEPAUSE:Ljava/lang/String; = "com.samsung.music.musicservicecommand.togglepause"

.field private static final MUSICPLAYER_CHECK_PLAY_STATUS:Ljava/lang/String; = "com.android.music.musicservicecommand.checkplaystatus"

.field private static final MUSICPLAYER_FF_DOWN_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.ff.down"

.field private static final MUSICPLAYER_FF_UP_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.ff.up"

.field private static final MUSICPLAYER_MEDIA_INFO:Ljava/lang/String; = "com.android.music.musicservicecommand.mediainfo"

.field private static final MUSICPLAYER_NEXT:Ljava/lang/String; = "com.android.music.musicservicecommand.next"

.field private static final MUSICPLAYER_ON:I = 0x1

.field private static final MUSICPLAYER_PREVIOUS:Ljava/lang/String; = "com.android.music.musicservicecommand.previous"

.field private static final MUSICPLAYER_REW_DOWN_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.rew.down"

.field private static final MUSICPLAYER_REW_UP_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.rew.up"

.field private static final MUSICPLAYER_TOGGLEPAUSE:Ljava/lang/String; = "com.android.music.musicservicecommand.togglepause"

.field private static final SOUND_TOUCH_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GlassLockScreenMusicWidget"


# instance fields
.field private final DEBUG:Z

.field private final MSG_MEDIA_UPDATE:I

.field private final SHINK_ANIMATION_START:I

.field private final STOP_MARQUEE:I

.field private final STOP_MARQUEE_DELAY:I

.field private final STREAMING_MEDIA_UPDATE:I

.field private currentAlbumID:Ljava/lang/String;

.field private currentArtist:Ljava/lang/String;

.field private currentTitle:Ljava/lang/String;

.field private isMaxLayout:Z

.field private isTopLayout:Z

.field private mAlbumArtWithImage:Landroid/widget/ImageView;

.field private mBeforeButton:Landroid/widget/ImageButton;

.field private mBoxInMaxMusicController:Landroid/widget/LinearLayout;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mFFLongPressed:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeightDifference:I

.field private mIsMoving:Z

.field private mIsPlaying:Z

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mMaxMusicController:Landroid/widget/FrameLayout;

.field private mMediaUri:Landroid/net/Uri;

.field private mMinMusicControllerHandle:Landroid/widget/LinearLayout;

.field private mMusicInfoTextInMax:Landroid/widget/TextView;

.field private mMusicInfoTextInMin:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mREWLongPressed:Z

.field private mScreenOn:Z

.field private mServiceNumber:I

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVisibleLayout:Z

.field private mWasShowed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 5
    .parameter "context"
    .parameter "callback"
    .parameter "updateMonitor"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 151
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 55
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->DEBUG:Z

    .line 82
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 91
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    .line 97
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mScreenOn:Z

    .line 98
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsMoving:Z

    .line 99
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 100
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsPlaying:Z

    .line 101
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mWasShowed:Z

    .line 103
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    .line 104
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    .line 105
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentAlbumID:Ljava/lang/String;

    .line 111
    const/16 v2, 0x12c1

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->SHINK_ANIMATION_START:I

    .line 112
    const/16 v2, 0x12c2

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->MSG_MEDIA_UPDATE:I

    .line 113
    const/16 v2, 0x12c3

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->STREAMING_MEDIA_UPDATE:I

    .line 114
    const/16 v2, 0x12c4

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->STOP_MARQUEE:I

    .line 116
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->STOP_MARQUEE_DELAY:I

    .line 122
    iput v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I

    .line 126
    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    .line 153
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 154
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mContentResolver:Landroid/content/ContentResolver;

    .line 157
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 158
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x109007d

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 160
    const v2, 0x1020282

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 162
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 163
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.music.musicservicecommand.mediainfo"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v2, "com.samsung.music.musicservicecommand.mediainfo"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 242
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setFocusable(Z)V

    .line 245
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setFocusableInTouchMode(Z)V

    .line 246
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setDescendantFocusability(I)V

    .line 249
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->init()V

    .line 250
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMinLayout()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mFFLongPressed:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mFFLongPressed:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->removeMinTimer()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->addMinTimer()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mREWLongPressed:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mREWLongPressed:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->resetMinTimer()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V

    return-void
.end method

.method private addMinTimer()V
    .locals 4

    .prologue
    .line 1004
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v2, "addMinTimer()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    if-eqz v1, :cond_0

    .line 1006
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12c1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1007
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xdac

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1009
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    const-string v4, "GlassLockScreenMusicWidget"

    .line 324
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v0, "Controller Initiation Running!!"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const v0, 0x1020287

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 329
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 331
    const v0, 0x102028c

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    .line 332
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 335
    const v0, 0x1020283

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    .line 336
    const v0, 0x1020285

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    .line 337
    const v0, 0x1020284

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    .line 338
    const v0, 0x1020286

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    .line 341
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setSoundEffectsEnabled(Z)V

    .line 342
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$3;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    new-instance v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 443
    const v0, 0x102028b

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    .line 444
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$5;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 463
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$6;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 526
    const v0, 0x1020289

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    .line 527
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 546
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 612
    const v0, 0x102028a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    .line 613
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$9;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$9;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v0, "at init() send broadcast"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.checkplaystatus"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/content/Intent;)V

    .line 631
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->resetMinTimer()V

    .line 632
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 633
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 634
    return-void
.end method

.method private removeMinTimer()V
    .locals 3

    .prologue
    const/16 v2, 0x12c1

    .line 998
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "removeMinTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1001
    :cond_0
    return-void
.end method

.method private resetMinTimer()V
    .locals 2

    .prologue
    .line 1012
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "resetMinTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->removeMinTimer()V

    .line 1014
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->addMinTimer()V

    .line 1015
    return-void
.end method

.method private setMaxLayout(I)V
    .locals 5
    .parameter "value"

    .prologue
    const/16 v4, 0x190

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 932
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "setMaxLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsMoving:Z

    if-eqz v0, :cond_0

    .line 961
    :goto_0
    return-void

    .line 938
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    .line 941
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 943
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 944
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 947
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    if-eqz v0, :cond_1

    .line 948
    invoke-direct {p0, p1, v2, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V

    .line 954
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 955
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 956
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 957
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 960
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->resetMinTimer()V

    goto :goto_0

    .line 950
    :cond_1
    invoke-direct {p0, p1, v2, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V

    goto :goto_1
.end method

.method private setMinLayout()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    const/4 v2, 0x0

    .line 964
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "setMinLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsMoving:Z

    if-eqz v0, :cond_0

    .line 994
    :goto_0
    return-void

    .line 970
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    .line 973
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 975
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 976
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 977
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 981
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 982
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    .line 985
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    if-eqz v0, :cond_2

    .line 986
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    neg-int v0, v0

    invoke-direct {p0, v2, v0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V

    .line 991
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 992
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 993
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 988
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    invoke-direct {p0, v2, v0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V

    goto :goto_1
.end method

.method private startTranslateAnimation(III)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "duration"

    .prologue
    const/4 v3, 0x0

    .line 920
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v2, "startTranslateAnimation()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsMoving:Z

    if-eqz v1, :cond_0

    .line 929
    :goto_0
    return-void

    .line 924
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 925
    .local v0, animation:Landroid/view/animation/Animation;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 926
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 927
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 928
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 638
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 639
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 640
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 642
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 643
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->stopMarguee()V

    .line 644
    return-void
.end method

.method protected handleMediaUpdate(IILandroid/net/Uri;)V
    .locals 6
    .parameter "isPlaying"
    .parameter "isStop"
    .parameter "mediaUri"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 255
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "handleMediaUpdate !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    if-nez p3, :cond_0

    .line 279
    :goto_0
    return-void

    .line 258
    :cond_0
    if-ne p1, v4, :cond_2

    move v0, v4

    .line 259
    .local v0, bIsPlaying:Z
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsPlaying:Z

    .line 260
    if-ne p2, v4, :cond_3

    move v1, v4

    .line 262
    .local v1, bIsStop:Z
    :goto_2
    if-eqz v0, :cond_1

    .line 263
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 264
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 267
    :cond_1
    if-eqz v1, :cond_4

    .line 268
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 269
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    goto :goto_0

    .end local v0           #bIsPlaying:Z
    .end local v1           #bIsStop:Z
    :cond_2
    move v0, v5

    .line 258
    goto :goto_1

    .restart local v0       #bIsPlaying:Z
    :cond_3
    move v1, v5

    .line 260
    goto :goto_2

    .line 273
    .restart local v1       #bIsStop:Z
    :cond_4
    if-eqz v0, :cond_5

    .line 274
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v3, 0x1080409

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 278
    :goto_3
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->updateMediaPlayer(Landroid/net/Uri;)V

    goto :goto_0

    .line 276
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v3, 0x108040a

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method protected handleMediaUpdate(IILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "isPlaying"
    .parameter "hostType"
    .parameter "title"
    .parameter "artist"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "TAG"

    .line 281
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "handleMediaUpdate 11!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    .line 287
    iput-object p4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    .line 289
    if-ne p1, v5, :cond_4

    move v0, v5

    .line 290
    .local v0, bIsPlaying:Z
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsPlaying:Z

    .line 291
    if-nez p2, :cond_5

    move v1, v5

    .line 294
    .local v1, bIsStop:Z
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    const-string v3, "<unknown>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 296
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10404d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    .line 300
    :cond_2
    if-eqz v0, :cond_3

    .line 301
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 302
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 305
    :cond_3
    if-eqz v1, :cond_6

    .line 306
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 307
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    goto :goto_0

    .end local v0           #bIsPlaying:Z
    .end local v1           #bIsStop:Z
    :cond_4
    move v0, v4

    .line 289
    goto :goto_1

    .restart local v0       #bIsPlaying:Z
    :cond_5
    move v1, v4

    .line 291
    goto :goto_2

    .line 311
    .restart local v1       #bIsStop:Z
    :cond_6
    if-eqz v0, :cond_7

    .line 312
    const-string v2, "TAG"

    const-string v2, "pause"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v3, 0x1080409

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 318
    :goto_3
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->updateMediaPlayer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_7
    const-string v2, "TAG"

    const-string v2, "play"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v3, 0x108040a

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method public handleStopMarquee()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 717
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "handleStopMarquee()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 721
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 722
    :cond_1
    return-void
.end method

.method public isControllerShowing()Z
    .locals 1

    .prologue
    .line 1057
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1053
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsPlaying:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-string v1, "GlassLockScreenMusicWidget"

    .line 647
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 649
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v0, "onKeyDown at GlasslockScreenMusic()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startControllerAnimation()V

    .line 652
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v0, "startControllerAnimation()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_0
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 655
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v0, "KEYCODE_VOLUME_UP()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_1
    const/16 v0, 0x19

    if-ne p1, v0, :cond_2

    .line 659
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v0, "KEYCODE_VOLUME_DOWN()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 665
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 668
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 669
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 670
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->stopMarguee()V

    .line 671
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "GlassLockScreenMusicWidget"

    .line 674
    const-string v1, "GlassLockScreenMusicWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume() isTopLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isMaxLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    .line 676
    const-string v1, "GlassLockScreenMusicWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHeightDifference = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 680
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, newTitleText:Ljava/lang/CharSequence;
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v1, "onResume()show"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 687
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 691
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.checkplaystatus"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/content/Intent;)V

    .line 693
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    if-eqz v1, :cond_1

    .line 694
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    neg-int v1, v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    .line 698
    :goto_1
    return-void

    .line 688
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 696
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    goto :goto_1
.end method

.method public sendBroadcastAfterBooting(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1066
    :goto_0
    return-void

    .line 1064
    :cond_0
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "Phone is not boot completed. so can\'t broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V
    .locals 2
    .parameter "v"
    .parameter "intent"

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1074
    :goto_0
    return-void

    .line 1072
    :cond_0
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "Phone is not boot completed. so can\'t broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBottomLayout()V
    .locals 4

    .prologue
    const/16 v3, 0x50

    .line 738
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    .line 739
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    const v2, 0x10803ca

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 740
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 741
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 742
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 744
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 745
    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 746
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 747
    return-void
.end method

.method public setControllerVisibility(ZZ)V
    .locals 5
    .parameter "bIsVisible"
    .parameter "isMusicWidgetShowed"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1032
    const-string v0, "GlassLockScreenMusicWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setControllerVisibility() : bIsVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVisibleLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    if-nez p1, :cond_2

    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsMoving:Z

    .line 1034
    if-eqz p1, :cond_3

    .line 1035
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mWasShowed:Z

    if-eqz v0, :cond_1

    .line 1036
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    if-nez v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1038
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 1040
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->addMinTimer()V

    .line 1050
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v3

    .line 1033
    goto :goto_0

    .line 1043
    :cond_3
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mWasShowed:Z

    .line 1044
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    if-eqz v0, :cond_4

    .line 1045
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1046
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 1048
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->removeMinTimer()V

    goto :goto_1
.end method

.method public setScreenOff()V
    .locals 1

    .prologue
    .line 705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mScreenOn:Z

    .line 706
    return-void
.end method

.method public setScreenOn()V
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mScreenOn:Z

    .line 702
    return-void
.end method

.method public setTopLayout()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    .line 725
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    .line 726
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    const v2, 0x10803cb

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 728
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 729
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 730
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 732
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 733
    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 734
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 735
    return-void
.end method

.method public startControllerAnimation()V
    .locals 2

    .prologue
    .line 1018
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "startControllerAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->removeMinTimer()V

    .line 1020
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    if-eqz v0, :cond_0

    .line 1021
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMinLayout()V

    .line 1029
    :goto_0
    return-void

    .line 1023
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    if-eqz v0, :cond_1

    .line 1024
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    goto :goto_0

    .line 1026
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    goto :goto_0
.end method

.method public stopMarguee()V
    .locals 4

    .prologue
    const/16 v3, 0x12c4

    .line 709
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v2, "stopMarguee()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 712
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 713
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 714
    return-void
.end method

.method public updateMediaPlayer(Landroid/net/Uri;)V
    .locals 14
    .parameter "mediaUri"

    .prologue
    .line 750
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "updateMediaPlayer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 752
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "mediaUri is same return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMediaUri:Landroid/net/Uri;

    .line 757
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 759
    .local v11, mCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_2

    const-string v0, "GlassLockScreenMusicWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCursot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_2
    if-eqz v11, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_8

    .line 764
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 766
    :try_start_0
    const-string v0, "title"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    .line 767
    const-string v0, "artist"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    .line 768
    const-string v0, "album_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentAlbumID:Ljava/lang/String;

    .line 771
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    const-string v1, "<unknown>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 773
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10404d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    .line 777
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 778
    .local v13, newTitleText:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 781
    const-string v0, "GlassLockScreenMusicWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentTitle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentArtist = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentAlbumID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentAlbumID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 790
    .end local v13           #newTitleText:Ljava/lang/CharSequence;
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 791
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 795
    .restart local v13       #newTitleText:Ljava/lang/CharSequence;
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mScreenOn:Z

    if-nez v0, :cond_5

    .line 796
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "updateMediaPlayer() hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const-string v13, ""

    .line 798
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 801
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 802
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 811
    :goto_2
    const-string v0, "GlassLockScreenMusicWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMediaPlayer() newTitleText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/external/audio/albumart/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentAlbumID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 816
    .local v6, currentAlbumArtURI:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 817
    .local v12, mInputStream:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 818
    .local v9, mAlbumArtBitmap:Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 819
    .local v10, mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput v0, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 820
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iput v0, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 821
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iput v0, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 823
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    .line 827
    :goto_3
    if-eqz v12, :cond_4

    .line 828
    const/4 v0, 0x0

    invoke-static {v12, v0, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 830
    :try_start_2
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 834
    :goto_4
    const/4 v12, 0x0

    .line 837
    :cond_4
    if-eqz v9, :cond_7

    .line 839
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 783
    .end local v6           #currentAlbumArtURI:Landroid/net/Uri;
    .end local v9           #mAlbumArtBitmap:Landroid/graphics/Bitmap;
    .end local v10           #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v12           #mInputStream:Ljava/io/InputStream;
    .end local v13           #newTitleText:Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 784
    .local v8, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 785
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "Can\'t get String from Cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 787
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    .line 804
    .restart local v13       #newTitleText:Ljava/lang/CharSequence;
    :cond_5
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "updateMediaPlayer() show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 807
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 808
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_2

    .line 809
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_2

    .line 824
    .restart local v6       #currentAlbumArtURI:Landroid/net/Uri;
    .restart local v9       #mAlbumArtBitmap:Landroid/graphics/Bitmap;
    .restart local v10       #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .restart local v12       #mInputStream:Ljava/io/InputStream;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 825
    .local v8, e:Ljava/io/FileNotFoundException;
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "Album Art doesn\'t exit."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 831
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v8

    .line 832
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "mInputStream.close() Failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 840
    .end local v8           #e:Ljava/lang/Exception;
    :cond_7
    if-nez v9, :cond_0

    .line 842
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentAlbumID:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    rem-int/lit8 v7, v0, 0x5

    .line 844
    .local v7, defaultimageNum:I
    packed-switch v7, :pswitch_data_0

    .line 875
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const v1, 0x10803ce

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 846
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const v1, 0x10803ce

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 850
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const v1, 0x10803cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 854
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const v1, 0x10803d0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 858
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const v1, 0x10803d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 862
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const v1, 0x10803d2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 883
    .end local v6           #currentAlbumArtURI:Landroid/net/Uri;
    .end local v7           #defaultimageNum:I
    .end local v9           #mAlbumArtBitmap:Landroid/graphics/Bitmap;
    .end local v10           #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v12           #mInputStream:Ljava/io/InputStream;
    .end local v13           #newTitleText:Ljava/lang/CharSequence;
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 884
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    goto/16 :goto_0

    .line 844
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public updateMediaPlayer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "title"
    .parameter "artist"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "GlassLockScreenMusicWidget"

    .line 891
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 892
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 896
    .local v0, newTitleText:Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mScreenOn:Z

    if-nez v1, :cond_0

    .line 897
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v1, "updateMediaPlayer()hide"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string v0, ""

    .line 899
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 900
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 902
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 903
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 915
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 916
    return-void

    .line 905
    :cond_0
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v1, "updateMediaPlayer()show"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 907
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 908
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 909
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 910
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method
