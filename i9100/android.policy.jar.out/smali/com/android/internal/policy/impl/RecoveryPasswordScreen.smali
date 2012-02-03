.class public Lcom/android/internal/policy/impl/RecoveryPasswordScreen;
.super Landroid/widget/LinearLayout;
.source "RecoveryPasswordScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final ERROR_MESSAGE_TIMEOUT:J = 0x7d0L

.field private static final MAINLAYOUT_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RecoveryPasswordScreen"

.field public static recoveryScreen:Z


# instance fields
.field private final RECOVERY_PASSWORD_ATTEMPTS:I

.field private mButtonsHolder:Landroid/widget/RelativeLayout;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mCreationHardKeyboardHidden:I

.field private mCreationOrientation:I

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mIsRecoveryMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mRecoverButton:Landroid/widget/Button;

.field private mRecoveryLockscreenWallpaper:Landroid/widget/RelativeLayout;

.field private mTitle:Landroid/widget/TextView;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field final quality:I

.field private r:Ljava/lang/Runnable;

.field private recoveryAttempt:I

.field private wipeDataDialog:Landroid/app/AlertDialog;

.field private wipeDataRecoveryWrong:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->recoveryScreen:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 6
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 111
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    iput v4, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->recoveryAttempt:I

    .line 91
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mRecoveryLockscreenWallpaper:Landroid/widget/RelativeLayout;

    .line 95
    iput v5, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->RECOVERY_PASSWORD_ATTEMPTS:I

    .line 97
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance v2, Lcom/android/internal/policy/impl/RecoveryPasswordScreen$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen$1;-><init>(Lcom/android/internal/policy/impl/RecoveryPasswordScreen;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->r:Ljava/lang/Runnable;

    .line 113
    iget v2, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCreationHardKeyboardHidden:I

    .line 114
    iget v2, p2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCreationOrientation:I

    .line 115
    iput-object p4, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 116
    iput-object p5, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 117
    iput-object p3, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 118
    iput-object p1, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mContext:Landroid/content/Context;

    .line 120
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 121
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCreationOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 122
    const v2, 0x1090057

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 129
    :goto_0
    const v2, 0x1020238

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mRecoveryLockscreenWallpaper:Landroid/widget/RelativeLayout;

    .line 130
    new-instance v2, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-direct {v2, p1}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    .line 131
    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setVisibility(I)V

    .line 132
    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mRecoveryLockscreenWallpaper:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 134
    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->quality:I

    .line 135
    const/high16 v2, 0x4

    iget v3, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->quality:I

    if-eq v2, v3, :cond_0

    const/high16 v2, 0x5

    iget v3, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->quality:I

    if-ne v2, v3, :cond_2

    :cond_0
    move v0, v5

    .line 137
    .local v0, isAlpha:Z
    :goto_1
    sput-boolean v5, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->recoveryScreen:Z

    .line 138
    const v2, 0x1020160

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 139
    const v2, 0x10201f0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    .line 140
    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 141
    const v2, 0x10201ef

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mTitle:Landroid/widget/TextView;

    .line 142
    const v2, 0x1020239

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mButtonsHolder:Landroid/widget/RelativeLayout;

    .line 143
    const v2, 0x102023a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mRecoverButton:Landroid/widget/Button;

    .line 144
    const v2, 0x102023b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCancelButton:Landroid/widget/Button;

    .line 146
    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mRecoverButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/internal/policy/impl/RecoveryPasswordScreen$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen$2;-><init>(Lcom/android/internal/policy/impl/RecoveryPasswordScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/internal/policy/impl/RecoveryPasswordScreen$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen$3;-><init>(Lcom/android/internal/policy/impl/RecoveryPasswordScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    new-instance v2, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v3, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-direct {v2, p1, v3, p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 160
    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 161
    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget v3, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCreationHardKeyboardHidden:I

    if-ne v3, v5, :cond_3

    const/4 v3, 0x4

    :goto_2
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 163
    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 165
    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 167
    iget-object v2, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v3, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x1070017

    :goto_3
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setVibratePattern(I)V

    .line 170
    const-string v2, "RecoveryPasswordScreen"

    const-string v3, "Create Recovery Password Lockscreen !! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void

    .line 125
    .end local v0           #isAlpha:Z
    :cond_1
    const v2, 0x1090056

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    :cond_2
    move v0, v4

    .line 135
    goto/16 :goto_1

    .restart local v0       #isAlpha:Z
    :cond_3
    move v3, v4

    .line 161
    goto :goto_2

    :cond_4
    move v3, v4

    .line 167
    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/RecoveryPasswordScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/RecoveryPasswordScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->verifyRecoveryPassword()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/RecoveryPasswordScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method private verifyRecoveryPassword()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v12, "RecoveryPasswordScreen"

    const-string v11, ""

    .line 175
    sput-boolean v9, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->recoveryScreen:Z

    .line 176
    iget-object v7, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, entry:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v2

    .line 178
    .local v2, isConfirmed:Z
    iget-object v7, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 179
    iget-object v7, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v8, ""

    invoke-virtual {v7, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v7, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    .line 181
    .local v4, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v6

    .line 182
    .local v6, minLength:I
    iget v7, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->quality:I

    invoke-virtual {v4, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v5

    .line 184
    .local v5, maxLength:I
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v3, it:Landroid/content/Intent;
    const-string v7, "lockscreen.password_type"

    const/high16 v8, 0x5

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    const-string v7, "lockscreen.password_min"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    const-string v7, "lockscreen.password_max"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    const-string v7, "lockscreen.password_old"

    invoke-virtual {v3, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v7, "confirm_credentials"

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 191
    const/high16 v7, 0x1000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 192
    const/high16 v7, 0x40

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 196
    iget-object v7, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_Recovery_enabled"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 197
    .local v0, bRecovery:Z
    if-eqz v0, :cond_0

    .line 198
    const-string v7, "RecoveryPasswordScreen"

    const-string v7, "Success to set LOCK_RECOVERY_ENABLED"

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v7, v10}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 203
    iget-object v7, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v7}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 219
    .end local v0           #bRecovery:Z
    .end local v3           #it:Landroid/content/Intent;
    .end local v4           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v5           #maxLength:I
    .end local v6           #minLength:I
    :goto_1
    return-void

    .line 200
    .restart local v0       #bRecovery:Z
    .restart local v3       #it:Landroid/content/Intent;
    .restart local v4       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v5       #maxLength:I
    .restart local v6       #minLength:I
    :cond_0
    const-string v7, "RecoveryPasswordScreen"

    const-string v7, "Failed to set LOCK_RECOVERY_ENABLED"

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    .end local v0           #bRecovery:Z
    .end local v3           #it:Landroid/content/Intent;
    .end local v4           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v5           #maxLength:I
    .end local v6           #minLength:I
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v8, ""

    invoke-virtual {v7, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget v7, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->recoveryAttempt:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->recoveryAttempt:I

    .line 209
    iget v7, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->recoveryAttempt:I

    rem-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_2

    .line 211
    iget-object v7, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v7, v10}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportDeviceWipe(I)V

    goto :goto_1

    .line 215
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mTitle:Landroid/widget/TextView;

    const v8, 0x1040328

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 216
    iget-object v7, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->r:Ljava/lang/Runnable;

    const-wide/16 v9, 0x7d0

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private wipeDevice()V
    .locals 3

    .prologue
    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 226
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "exception in wiping data"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->cleanUp()V

    .line 234
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 274
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 275
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 265
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 280
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 281
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 282
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 286
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCreationOrientation:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCreationHardKeyboardHidden:I

    if-eq v0, v1, :cond_1

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 289
    :cond_1
    return-void

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 257
    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->verifyRecoveryPassword()V

    .line 259
    const/4 v0, 0x1

    .line 261
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .locals 0
    .parameter "isKeyboardOpen"

    .prologue
    .line 293
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 297
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 300
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 303
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->onResume()V

    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 254
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 306
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

.method public onUpdateBatteryInfo(II)V
    .locals 0
    .parameter "batteryInfoStatus"
    .parameter "plugIn"

    .prologue
    .line 314
    return-void
.end method
