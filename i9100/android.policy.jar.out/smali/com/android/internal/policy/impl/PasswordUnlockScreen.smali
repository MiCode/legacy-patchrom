.class public Lcom/android/internal/policy/impl/PasswordUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "PasswordUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;,
        Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;
    }
.end annotation


# static fields
.field private static final ERROR_MESSAGE_TIMEOUT:J = 0x7d0L

.field private static final MAINLAYOUT_INDEX:I = 0x0

.field private static final MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PasswordUnlockScreen"

.field private static final TIMEOUT_AFTER_VALID_PWD:I = 0x124f80

.field private static mIsInDeadlineCountDown:Z


# instance fields
.field private mBatchData:Z

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCreationHardKeyboardHidden:I

.field private mCreationOrientation:I

.field private mCryptImage:Landroid/widget/ImageView;

.field private mCryptImageSwapper:Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;

.field private mCurrDevice:Ljava/lang/String;

.field private mCurrDeviceCnt:I

.field private mDoCryptVolume:Z

.field private mEmergencyCallButton:Landroid/widget/Button;

.field final mEncryptHandler:Landroid/os/Handler;

.field private mEncryptListener:Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;

.field mEncryptService:Landroid/os/storage/IEncryptService;

.field private mFillView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIsRecoveryMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mPasswordLockscreenWallpaper:Landroid/widget/RelativeLayout;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressBarLayout:Landroid/widget/RelativeLayout;

.field private mProgressBarText:Landroid/widget/TextView;

.field private mRamBoot:Z

.field private mTitle:Landroid/widget/TextView;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field passwordChangeNeeded:Z

.field private r:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsInDeadlineCountDown:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 8
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordLockscreenWallpaper:Landroid/widget/RelativeLayout;

    .line 96
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEncryptService:Landroid/os/storage/IEncryptService;

    .line 103
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->passwordChangeNeeded:Z

    .line 105
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance v5, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->r:Ljava/lang/Runnable;

    .line 119
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mRamBoot:Z

    .line 126
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mDoCryptVolume:Z

    .line 127
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEncryptListener:Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;

    .line 128
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCurrDevice:Ljava/lang/String;

    .line 129
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCurrDeviceCnt:I

    .line 130
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mBatchData:Z

    .line 313
    new-instance v5, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEncryptHandler:Landroid/os/Handler;

    .line 142
    iget v5, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    .line 143
    iget v5, p2, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    .line 144
    iput-object p4, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 145
    iput-object p5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 146
    iput-object p3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mConfiguration:Landroid/content/res/Configuration;

    .line 149
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 150
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 151
    const v5, 0x1090037

    const/4 v6, 0x1

    invoke-virtual {v2, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 157
    :goto_0
    const v5, 0x10201ee

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordLockscreenWallpaper:Landroid/widget/RelativeLayout;

    .line 158
    new-instance v5, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-direct {v5, p1}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    .line 160
    const-string v5, "ram"

    const-string v6, "encryption.bootmode"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mRamBoot:Z

    .line 161
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mRamBoot:Z

    if-eqz v5, :cond_3

    .line 162
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setVisibility(I)V

    .line 163
    const v5, 0x106000c

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->setBackgroundResource(I)V

    .line 168
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordLockscreenWallpaper:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 170
    invoke-virtual {p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    .line 171
    .local v3, quality:I
    const/high16 v5, 0x4

    if-eq v5, v3, :cond_0

    const/high16 v5, 0x5

    if-ne v5, v3, :cond_4

    :cond_0
    const/4 v5, 0x1

    move v1, v5

    .line 174
    .local v1, isAlpha:Z
    :goto_2
    const v5, 0x1020160

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 175
    const v5, 0x10201f0

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    .line 176
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 177
    const v5, 0x10201d9

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 178
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 180
    const v5, 0x10201ef

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;

    .line 183
    const v5, 0x10201f4

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBar:Landroid/widget/ProgressBar;

    .line 184
    const v5, 0x10201f3

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBarText:Landroid/widget/TextView;

    .line 185
    const v5, 0x10201f2

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCryptImage:Landroid/widget/ImageView;

    .line 186
    const v5, 0x10201f1

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    .line 187
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 188
    const v5, 0x10201f5

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mFillView:Landroid/view/View;

    .line 192
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->checkDevicePasswordExpired()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->passwordChangeNeeded:Z

    .line 195
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    .line 198
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 202
    new-instance v5, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-direct {v5, p1, v6, p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 203
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    if-eqz v1, :cond_5

    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 206
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget v6, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    const/4 v6, 0x4

    :goto_4
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 208
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 212
    if-eqz v1, :cond_7

    .line 213
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 218
    :goto_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    const v6, 0x1070017

    :goto_6
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setVibratePattern(I)V

    .line 222
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mRamBoot:Z

    if-eqz v5, :cond_1

    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isLockPasswordEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->setUIForBatchData()V

    .line 224
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->removePasswordUI()V

    .line 226
    :try_start_0
    const-string v5, "onetimeboot"

    const-string v6, "process"

    invoke-static {v5, v6}, Landroid/deviceencryption/DeviceEncryptionManager;->setFileCryptProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v5, "encrypt"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IEncryptService;

    move-result-object v0

    .line 228
    .local v0, instencsve:Landroid/os/storage/IEncryptService;
    if-eqz v0, :cond_9

    .line 229
    invoke-interface {v0}, Landroid/os/storage/IEncryptService;->processBatchData()V

    .line 230
    new-instance v5, Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEncryptListener:Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;

    .line 231
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEncryptListener:Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;

    invoke-interface {v0, v5}, Landroid/os/storage/IEncryptService;->registerListener(Landroid/os/storage/IEncryptServiceListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v0           #instencsve:Landroid/os/storage/IEncryptService;
    :cond_1
    :goto_7
    return-void

    .line 153
    .end local v1           #isAlpha:Z
    .end local v3           #quality:I
    .restart local p2
    :cond_2
    const v5, 0x1090036

    const/4 v6, 0x1

    invoke-virtual {v2, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 165
    .end local p2
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setVisibility(I)V

    goto/16 :goto_1

    .line 171
    .restart local v3       #quality:I
    :cond_4
    const/4 v5, 0x0

    move v1, v5

    goto/16 :goto_2

    .line 203
    .restart local v1       #isAlpha:Z
    :cond_5
    const/4 v6, 0x1

    goto :goto_3

    .line 206
    :cond_6
    const/4 v6, 0x0

    goto :goto_4

    .line 215
    :cond_7
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_5

    .line 218
    :cond_8
    const/4 v6, 0x0

    goto :goto_6

    .line 234
    .restart local v0       #instencsve:Landroid/os/storage/IEncryptService;
    :cond_9
    :try_start_1
    const-string v5, "PasswordUnlockScreen"

    const-string v6, "IEncryptService instance is null!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 235
    .end local v0           #instencsve:Landroid/os/storage/IEncryptService;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 236
    .local v4, rex:Ljava/lang/Exception;
    const-string v5, "PasswordUnlockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IEncryptService exception  is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCurrDevice:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCurrDevice:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCurrDeviceCnt:I

    return v0
.end method

.method static synthetic access$1108(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCurrDeviceCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCurrDeviceCnt:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBarText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/widget/PasswordEntryKeyboardView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    return-object v0
.end method

.method static synthetic access$1702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    sput-boolean p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsInDeadlineCountDown:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCryptImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mBatchData:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mBatchData:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->removePasswordUI()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCryptImageSwapper:Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;)Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCryptImageSwapper:Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mFillView:Landroid/view/View;

    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    const/4 v1, 0x0

    .line 595
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 596
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setEnabled(Z)V

    .line 599
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 600
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 620
    return-void
.end method

.method private removePasswordUI()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 246
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 247
    return-void
.end method

.method private setUIForBatchData()V
    .locals 7

    .prologue
    const v4, 0x10404af

    const v3, 0x10404a9

    const/4 v2, 0x0

    const-string v6, "dbdata"

    const-string v5, "COMPLETE"

    .line 251
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setEnabled(Z)V

    .line 252
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 255
    const-string v1, "policy"

    invoke-static {v1}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, policy:Ljava/lang/String;
    const-string v1, "PasswordUnlockScreen"

    const-string v2, "DEVENC remove callback "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->r:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 262
    if-eqz v0, :cond_0

    const-string v1, "internal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;

    const v2, 0x10404aa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 278
    :goto_0
    return-void

    .line 264
    :cond_1
    const-string v1, "COMPLETE"

    const-string v1, "data"

    invoke-static {v1}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 266
    const/4 v1, 0x1

    const-string v2, "dbdata"

    invoke-static {v6}, Landroid/deviceencryption/DeviceEncryptionManager;->isTargetToEncrypt(Ljava/lang/String;)Z

    move-result v2

    if-ne v1, v2, :cond_3

    .line 267
    const-string v1, "COMPLETE"

    const-string v1, "dbdata"

    invoke-static {v6}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 270
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 273
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 277
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private verifyPasswordAndUnlock()V
    .locals 19

    .prologue
    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 472
    .local v5, entry:Ljava/lang/String;
    const-string v15, "true"

    const-string v16, "ro.wtldatapassword"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mDoCryptVolume:Z

    move v15, v0

    if-eqz v15, :cond_0

    .line 473
    const-string v15, "PETER"

    const-string v16, "verifyPasswordAndUnlock called again after crypt"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :goto_0
    return-void

    .line 477
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v15, v0

    invoke-virtual {v15, v5}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v7

    .line 478
    .local v7, isConfirmed:Z
    if-eqz v7, :cond_9

    .line 480
    sget-object v15, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string v16, "true"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 481
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mRamBoot:Z

    move v15, v0

    if-eqz v15, :cond_3

    .line 482
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mDoCryptVolume:Z

    .line 483
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->setUIForBatchData()V

    .line 524
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mDoCryptVolume:Z

    move v15, v0

    if-eqz v15, :cond_2

    .line 529
    :try_start_0
    const-string v15, "onetimeboot"

    const-string v16, "process"

    invoke-static/range {v15 .. v16}, Landroid/deviceencryption/DeviceEncryptionManager;->setFileCryptProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string v15, "encrypt"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/os/storage/IEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IEncryptService;

    move-result-object v6

    .line 531
    .local v6, instencsve:Landroid/os/storage/IEncryptService;
    if-eqz v6, :cond_6

    .line 532
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mRamBoot:Z

    move v15, v0

    if-eqz v15, :cond_5

    .line 533
    invoke-interface {v6}, Landroid/os/storage/IEncryptService;->processBatchData()V

    .line 534
    new-instance v15, Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;

    const/16 v16, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEncryptListener:Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEncryptListener:Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;

    move-object v15, v0

    invoke-interface {v6, v15}, Landroid/os/storage/IEncryptService;->registerListener(Landroid/os/storage/IEncryptServiceListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    .end local v6           #instencsve:Landroid/os/storage/IEncryptService;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    move-object v15, v0

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 487
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->passwordChangeNeeded:Z

    move v15, v0

    if-eqz v15, :cond_4

    .line 488
    const-string v15, "PasswordUnlockScreen"

    const-string v16, "password change needed"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v9

    .line 490
    .local v9, mDPM:Landroid/app/admin/DevicePolicyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v13

    .line 491
    .local v13, quality:I
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v11

    .line 492
    .local v11, minLength:I
    invoke-virtual {v9, v13}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v10

    .line 494
    .local v10, maxLength:I
    new-instance v8, Landroid/content/Intent;

    const-string v15, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v8, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 496
    .local v8, it:Landroid/content/Intent;
    const-string v15, "lockscreen.password_type"

    invoke-virtual {v8, v15, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 497
    const-string v15, "lockscreen.password_min"

    invoke-virtual {v8, v15, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 498
    const-string v15, "lockscreen.password_max"

    invoke-virtual {v8, v15, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 500
    const-string v15, "lockscreen.password_old"

    invoke-virtual {v8, v15, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    const-string v15, "confirm_credentials"

    const/16 v16, 0x0

    move-object v0, v8

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 502
    const/high16 v15, 0x1000

    invoke-virtual {v8, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 503
    const/high16 v15, 0x40

    invoke-virtual {v8, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    move-object v15, v0

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 508
    .end local v8           #it:Landroid/content/Intent;
    .end local v9           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v10           #maxLength:I
    .end local v11           #minLength:I
    .end local v13           #quality:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v15, v0

    invoke-interface {v15}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 513
    const-string v12, ""

    .line 515
    .local v12, onetimeboot:Ljava/lang/String;
    const-string v15, "onetimeboot"

    invoke-static {v15}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 516
    const-string v15, "PETER"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onetimeboot :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const-string v15, "init"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 519
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mDoCryptVolume:Z

    .line 520
    const-string v15, "PETER"

    const-string v16, "init > process"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 537
    .end local v12           #onetimeboot:Ljava/lang/String;
    .restart local v6       #instencsve:Landroid/os/storage/IEncryptService;
    :cond_5
    :try_start_1
    const-string v15, "internal"

    invoke-interface {v6, v15}, Landroid/os/storage/IEncryptService;->mountVolume(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 542
    .end local v6           #instencsve:Landroid/os/storage/IEncryptService;
    :catch_0
    move-exception v15

    move-object v14, v15

    .line 543
    .local v14, rex:Ljava/lang/Exception;
    const-string v15, "PasswordUnlockScreen"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "IEncryptService exception  is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 541
    .end local v14           #rex:Ljava/lang/Exception;
    .restart local v6       #instencsve:Landroid/os/storage/IEncryptService;
    :cond_6
    :try_start_2
    const-string v15, "PasswordUnlockScreen"

    const-string v16, "IEncryptService instance is null!!"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 549
    .end local v6           #instencsve:Landroid/os/storage/IEncryptService;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->passwordChangeNeeded:Z

    move v15, v0

    if-eqz v15, :cond_8

    .line 550
    const-string v15, "PasswordUnlockScreen"

    const-string v16, "password change needed"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v9

    .line 553
    .restart local v9       #mDPM:Landroid/app/admin/DevicePolicyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v13

    .line 554
    .restart local v13       #quality:I
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v11

    .line 555
    .restart local v11       #minLength:I
    invoke-virtual {v9, v13}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v10

    .line 557
    .restart local v10       #maxLength:I
    new-instance v8, Landroid/content/Intent;

    const-string v15, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v8, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 559
    .restart local v8       #it:Landroid/content/Intent;
    const-string v15, "lockscreen.password_type"

    invoke-virtual {v8, v15, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 560
    const-string v15, "lockscreen.password_min"

    invoke-virtual {v8, v15, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 561
    const-string v15, "lockscreen.password_max"

    invoke-virtual {v8, v15, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 562
    const-string v15, "confirm_credentials"

    const/16 v16, 0x0

    move-object v0, v8

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 563
    const/high16 v15, 0x1000

    invoke-virtual {v8, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 564
    const/high16 v15, 0x40

    invoke-virtual {v8, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 565
    const/high16 v15, 0x80

    invoke-virtual {v8, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    move-object v15, v0

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 570
    .end local v8           #it:Landroid/content/Intent;
    .end local v9           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v10           #maxLength:I
    .end local v11           #minLength:I
    .end local v13           #quality:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v15, v0

    invoke-interface {v15}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    goto/16 :goto_2

    .line 573
    :cond_9
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x3

    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_2

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v15, v0

    invoke-interface {v15}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportFailedUnlockAttempt()V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v15

    rem-int/lit8 v15, v15, 0x5

    if-nez v15, :cond_a

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mHandler:Landroid/os/Handler;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->r:Ljava/lang/Runnable;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 579
    const/4 v15, 0x1

    sput-boolean v15, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsInDeadlineCountDown:Z

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v3

    .line 581
    .local v3, deadline:J
    move-object/from16 v0, p0

    move-wide v1, v3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->handleAttemptLockout(J)V

    .line 585
    .end local v3           #deadline:J
    :cond_a
    if-nez v7, :cond_2

    sget-boolean v15, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsInDeadlineCountDown:Z

    if-nez v15, :cond_2

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;

    move-object v15, v0

    const v16, 0x1040328

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(I)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mHandler:Landroid/os/Handler;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->r:Ljava/lang/Runnable;

    move-object/from16 v16, v0

    const-wide/16 v17, 0x7d0

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 458
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->cleanUp()V

    .line 459
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 631
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 632
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 633
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    if-eq v1, v2, :cond_1

    .line 635
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 637
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 466
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 642
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 643
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    if-eq v0, v1, :cond_1

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 647
    :cond_1
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 656
    if-nez p2, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsRecoveryMode:Z

    if-nez v0, :cond_1

    .line 657
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 658
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->verifyPasswordAndUnlock()V

    .line 660
    :cond_0
    const/4 v0, 0x1

    .line 662
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 626
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .locals 2
    .parameter "isKeyboardOpen"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 652
    return-void

    .line 651
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 434
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 667
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 671
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 675
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 438
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->onResume()V

    .line 440
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 442
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 445
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 446
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 447
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->handleAttemptLockout(J)V

    .line 451
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mBatchData:Z

    if-eqz v2, :cond_1

    .line 452
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const v3, 0x124f80

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 453
    :cond_1
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 679
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 683
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 688
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 689
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 690
    return-void
.end method
