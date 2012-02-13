.class public Lcom/android/internal/policy/impl/PasswordSetupScreen;
.super Landroid/widget/LinearLayout;
.source "PasswordSetupScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;
    }
.end annotation


# static fields
.field private static final CONFIRM_EXISTING_REQUEST:I = 0x3a

.field private static final ERROR_MESSAGE_TIMEOUT:J = 0xbb8L

.field private static final KEY_FIRST_PIN:Ljava/lang/String; = "first_pin"

.field private static final KEY_UI_STAGE:Ljava/lang/String; = "ui_stage"

.field public static final PASSWORD_MAX_KEY:Ljava/lang/String; = "lockscreen.password_max"

.field public static final PASSWORD_MIN_COMPLEXITY_KEY:Ljava/lang/String; = "lockscreen.password_min_complexity"

.field public static final PASSWORD_MIN_KEY:Ljava/lang/String; = "lockscreen.password_min"

.field private static final POLICY_MESSAGE_TIMEOUT:I = 0x7530

.field private static mFirstPin:Ljava/lang/String;

.field private static mHandler:Landroid/os/Handler;

.field private static mShowPolicy:Z

.field private static mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;


# instance fields
.field private dialog:Landroid/app/AlertDialog;

.field private fingerprintDialog:Landroid/app/Dialog;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCreationHardKeyboardHidden:I

.field private mCreationOrientation:I

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEndHeaderText:Landroid/widget/TextView;

.field private mHeaderImage:Landroid/widget/ImageView;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIsAlphaMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinComplexity:I

.field private mPasswordMinLength:I

.field private mRequestedQuality:I

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mShowPolicy:Z

    sget-object v0, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->Introduction:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    sput-object v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 10
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x4

    iput v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinLength:I

    const/16 v8, 0x10

    iput v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMaxLength:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinComplexity:I

    const/high16 v8, 0x2

    iput v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    iget v8, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCreationHardKeyboardHidden:I

    iget v8, p2, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCreationOrientation:I

    iput-object p4, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iput-object p5, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iput-object p3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v8, "device_policy"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/app/admin/DevicePolicyManager;

    iput-object p3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v4

    .local v4, minLength:I
    iget v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinLength:I

    if-ge v8, v4, :cond_0

    iput v4, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinLength:I

    :cond_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumComplexity(Landroid/content/ComponentName;)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinComplexity:I

    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordComplexity()I

    move-result v3

    .local v3, minComplexity:I
    iget v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinComplexity:I

    if-ge v8, v3, :cond_1

    iput v3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinComplexity:I

    :cond_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v5

    .local v5, minMode:I
    iget v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    if-ge v8, v5, :cond_2

    iput v5, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    :cond_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    iget v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCreationOrientation:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    const v8, 0x109007b

    const/4 v9, 0x1

    invoke-virtual {v0, v8, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :goto_0
    const v8, 0x10201dc

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mEmergencyCallButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    const v8, 0x1020171

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object p3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const v8, 0x1020273

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v8, 0x10201fa

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mHeaderText:Landroid/widget/TextView;

    const v8, 0x1020271

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mHeaderImage:Landroid/widget/ImageView;

    const v8, 0x1020272

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mEndHeaderText:Landroid/widget/TextView;

    new-instance v8, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-direct {v8, p1, v9, p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    const/high16 v8, 0x4

    iget v9, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    if-eq v8, v9, :cond_3

    const/high16 v8, 0x5

    iget v9, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    if-ne v8, v9, :cond_5

    :cond_3
    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlphaMode:Z

    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlphaMode:Z

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v8, v9}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    const/4 v7, 0x0

    .local v7, showKeyboard:Z
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlphaMode:Z

    if-eqz v8, :cond_8

    iget v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCreationHardKeyboardHidden:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_7

    const/4 v8, 0x1

    move v7, v8

    :goto_3
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-eqz v7, :cond_c

    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v8, v9}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->requestFocus()Z

    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getInputType()I

    move-result v6

    .local v6, savedInputType:I
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlphaMode:Z

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    :goto_5
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setRawInputType(I)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v9

    if-eqz v9, :cond_e

    const v9, 0x1070012

    :goto_6
    invoke-virtual {v8, v9}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setVibratePattern(I)V

    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    return-void

    .end local v6           #savedInputType:I
    .end local v7           #showKeyboard:Z
    :cond_4
    const v8, 0x109007a

    const/4 v9, 0x1

    invoke-virtual {v0, v8, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    :cond_6
    const/4 v9, 0x1

    goto :goto_2

    .restart local v7       #showKeyboard:Z
    :cond_7
    const/4 v8, 0x0

    move v7, v8

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0009

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .local v1, mLidKeyboardAccessibility:I
    if-nez v1, :cond_a

    iget v8, p2, Landroid/content/res/Configuration;->keyboard:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_a

    const/4 v8, 0x1

    move v2, v8

    .local v2, mShowSoftKeyboardWithHardKeyboard:Z
    :goto_7
    iget v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCreationHardKeyboardHidden:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    if-eqz v2, :cond_b

    :cond_9
    const/4 v8, 0x1

    move v7, v8

    :goto_8
    goto :goto_3

    .end local v2           #mShowSoftKeyboardWithHardKeyboard:Z
    :cond_a
    const/4 v8, 0x0

    move v2, v8

    goto :goto_7

    .restart local v2       #mShowSoftKeyboardWithHardKeyboard:Z
    :cond_b
    const/4 v8, 0x0

    move v7, v8

    goto :goto_8

    .end local v1           #mLidKeyboardAccessibility:I
    .end local v2           #mShowSoftKeyboardWithHardKeyboard:Z
    :cond_c
    const/4 v9, 0x4

    goto :goto_4

    .restart local v6       #savedInputType:I
    :cond_d
    iget-object v8, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_5

    :cond_e
    const/4 v9, 0x0

    goto :goto_6
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mShowPolicy:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PasswordSetupScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method private handleNext()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v10, ""

    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, pin:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .local v1, errorMsg:Ljava/lang/String;
    sget-object v6, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    sget-object v7, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->Introduction:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    if-ne v6, v7, :cond_3

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    sput-object v4, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mFirstPin:Ljava/lang/String;

    sget-object v6, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->NeedToConfirm:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->updateStage(Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;)V

    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    sget-object v6, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    invoke-direct {p0, v1, v6}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->showError(Ljava/lang/String;Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;)V

    goto :goto_0

    :cond_3
    sget-object v6, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    sget-object v7, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->NeedToConfirm:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    if-ne v6, v7, :cond_2

    sget-object v6, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isFingerprintEnabled()Z

    move-result v3

    .local v3, isFingerprint:Z
    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->clearLock()V

    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    invoke-virtual {v6, v4, v7}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    if-eqz v3, :cond_4

    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v8}, Lcom/android/internal/widget/LockPatternUtils;->setFingerprintEnabled(Z)V

    :cond_4
    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v9}, Landroid/app/admin/DevicePolicyManager;->enforcePasswordSet(Z)V

    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6, v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setDeviceRequestPasswordSetup(Z)V

    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v6, v6, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMotoUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->reportSecurityUnlocked()V

    sget-object v6, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->Introduction:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    sput-object v6, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    sput-boolean v8, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mShowPolicy:Z

    const-string v6, ""

    sput-object v10, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.motorola.hardware.fingerprint"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v2, v8

    .local v2, fingerprintHWSupported:I
    :goto_2
    if-ne v2, v8, :cond_7

    if-nez v3, :cond_6

    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->showFingerprintDialog()V

    goto :goto_1

    .end local v2           #fingerprintHWSupported:I
    :cond_5
    move v2, v9

    goto :goto_2

    .restart local v2       #fingerprintHWSupported:I
    :cond_6
    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v6, v8}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v6, v8}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    goto :goto_1

    .end local v2           #fingerprintHWSupported:I
    .end local v3           #isFingerprint:Z
    :cond_8
    sget-object v6, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->ConfirmWrong:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->updateStage(Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;)V

    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .local v5, tmp:Ljava/lang/CharSequence;
    if-eqz v5, :cond_2

    move-object v0, v5

    check-cast v0, Landroid/text/Spannable;

    move-object v6, v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-static {v6, v9, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_1
.end method

.method private handlePrevious()V
    .locals 3

    .prologue
    const-string v2, ""

    sget-object v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    sget-object v1, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->Introduction:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    if-eq v0, v1, :cond_0

    const-string v0, ""

    sput-object v2, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mFirstPin:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->Introduction:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->updateStage(Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;)V

    :cond_0
    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;)V
    .locals 4
    .parameter "msg"
    .parameter "next"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PasswordSetupScreen$1;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/policy/impl/PasswordSetupScreen$1;-><init>(Lcom/android/internal/policy/impl/PasswordSetupScreen;Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showFingerprintDialog()V
    .locals 5

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .local v0, li:Landroid/view/LayoutInflater;
    const v2, 0x109007d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->fingerprintDialog:Landroid/app/Dialog;

    if-nez v2, :cond_0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x10404c7

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040350

    new-instance v4, Lcom/android/internal/policy/impl/PasswordSetupScreen$4;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen$4;-><init>(Lcom/android/internal/policy/impl/PasswordSetupScreen;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x10404ca

    new-instance v4, Lcom/android/internal/policy/impl/PasswordSetupScreen$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen$3;-><init>(Lcom/android/internal/policy/impl/PasswordSetupScreen;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->fingerprintDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->fingerprintDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->fingerprintDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showPolicy()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v7, 0x1040472

    const-string v8, "\n"

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlphaMode:Z

    if-eqz v3, :cond_5

    const v3, 0x10404b2

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlphaMode:Z

    if-eqz v3, :cond_6

    const v3, 0x10404a2

    :goto_1
    new-array v4, v10, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinLength:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, message:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlphaMode:Z

    if-eqz v4, :cond_7

    const v4, 0x10404a6

    :goto_2
    new-array v5, v10, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMaxLength:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlphaMode:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10404aa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/high16 v2, 0x5

    iget v3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10404ab

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlphaMode:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinComplexity:I

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10404ac

    new-array v5, v10, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinComplexity:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10404b1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040473

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getSpecialSymbols()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040474

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/high16 v2, 0x3

    iget v3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    if-ne v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10404ae

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->dialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_4

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x108009b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/internal/policy/impl/PasswordSetupScreen$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen$2;-><init>(Lcom/android/internal/policy/impl/PasswordSetupScreen;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->dialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10d0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v11, v11}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void

    .end local v0           #message:Ljava/lang/String;
    .end local v1           #title:Ljava/lang/String;
    :cond_5
    const v3, 0x10404b3

    goto/16 :goto_0

    .restart local v1       #title:Ljava/lang/String;
    :cond_6
    const v3, 0x10404a3

    goto/16 :goto_1

    .restart local v0       #message:Ljava/lang/String;
    :cond_7
    const v4, 0x10404a7

    goto/16 :goto_2
.end method

.method private updateUi()V
    .locals 9

    .prologue
    const/16 v5, 0x8

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, password:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, length:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mEndHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v4, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    sget-object v5, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->Introduction:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    if-ne v4, v5, :cond_3

    if-lez v1, :cond_3

    iget v4, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinLength:I

    if-ge v1, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlphaMode:Z

    if-eqz v5, :cond_0

    const v5, 0x10404a2

    :goto_0
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, msg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v2           #msg:Ljava/lang/String;
    :goto_1
    return-void

    :cond_0
    const v5, 0x10404a3

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, error:Ljava/lang/String;
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mHeaderText:Landroid/widget/TextView;

    const v5, 0x1040430

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mEndHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .end local v0           #error:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlphaMode:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    iget v5, v5, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->alphaHint:I

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    sget-object v5, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    iget v5, v5, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->numericHint:I

    goto :goto_2
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .parameter "password"

    .prologue
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinLength:I

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlphaMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    const v16, 0x10404a2

    :goto_0
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinLength:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    :goto_1
    return-object v15

    :cond_0
    const v16, 0x10404a3

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMaxLength:I

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mIsAlphaMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    const v16, 0x10404a6

    :goto_2
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMaxLength:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    :cond_2
    const v16, 0x10404a7

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .local v6, hasAlpha:Z
    const/4 v7, 0x0

    .local v7, hasDigit:Z
    const/4 v8, 0x0

    .local v8, hasSymbol:Z
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v9, v15, :cond_a

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .local v4, c:C
    const/16 v15, 0x20

    if-le v4, v15, :cond_4

    const/16 v15, 0x7f

    if-le v4, v15, :cond_5

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x10404a9

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    :cond_5
    const/16 v15, 0x30

    if-lt v4, v15, :cond_6

    const/16 v15, 0x39

    if-gt v4, v15, :cond_6

    const/4 v7, 0x1

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    const/16 v15, 0x41

    if-lt v4, v15, :cond_7

    const/16 v15, 0x5a

    if-le v4, v15, :cond_8

    :cond_7
    const/16 v15, 0x61

    if-lt v4, v15, :cond_9

    const/16 v15, 0x7a

    if-gt v4, v15, :cond_9

    :cond_8
    const/4 v6, 0x1

    goto :goto_4

    :cond_9
    const/4 v8, 0x1

    goto :goto_4

    .end local v4           #c:C
    :cond_a
    const/high16 v15, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_b

    or-int v15, v6, v8

    if-eqz v15, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x10404a8

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    :cond_b
    const/high16 v15, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_d

    const/4 v15, 0x1

    move v2, v15

    .local v2, alphabetic:Z
    :goto_5
    const/high16 v15, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_e

    const/4 v15, 0x1

    move v3, v15

    .local v3, alphanumeric:Z
    :goto_6
    const/high16 v15, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mRequestedQuality:I

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_f

    const/4 v15, 0x1

    move v12, v15

    .local v12, notSimpleNumeric:Z
    :goto_7
    if-nez v2, :cond_c

    if-eqz v3, :cond_10

    :cond_c
    if-nez v6, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x10404aa

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    .end local v2           #alphabetic:Z
    .end local v3           #alphanumeric:Z
    .end local v12           #notSimpleNumeric:Z
    :cond_d
    const/4 v15, 0x0

    move v2, v15

    goto :goto_5

    .restart local v2       #alphabetic:Z
    :cond_e
    const/4 v15, 0x0

    move v3, v15

    goto :goto_6

    .restart local v3       #alphanumeric:Z
    :cond_f
    const/4 v15, 0x0

    move v12, v15

    goto :goto_7

    .restart local v12       #notSimpleNumeric:Z
    :cond_10
    if-eqz v3, :cond_11

    if-nez v7, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x10404ab

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getNumberOfSymbols(Ljava/lang/String;)I

    move-result v14

    .local v14, symbols:I
    if-nez v2, :cond_12

    if-eqz v3, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinComplexity:I

    move v15, v0

    if-ge v14, v15, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x10404ac

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordMinComplexity:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    :cond_13
    if-eqz v12, :cond_17

    if-nez v6, :cond_17

    if-nez v8, :cond_17

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .local v5, first:C
    const/4 v10, 0x1

    .local v10, isSimple:Z
    const/4 v9, 0x1

    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v9, v15, :cond_15

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .local v11, next:C
    const/4 v15, 0x1

    sub-int v15, v9, v15

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .local v13, prev:C
    if-ne v11, v5, :cond_14

    if-eq v13, v11, :cond_16

    :cond_14
    sub-int v15, v11, v5

    if-eq v15, v9, :cond_16

    sub-int v15, v5, v11

    if-eq v15, v9, :cond_16

    const/4 v10, 0x0

    .end local v11           #next:C
    .end local v13           #prev:C
    :cond_15
    if-eqz v10, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x10404ad

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    .restart local v11       #next:C
    .restart local v13       #prev:C
    :cond_16
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .end local v5           #first:C
    .end local v10           #isSimple:Z
    .end local v11           #next:C
    .end local v13           #prev:C
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkHistoryPassword(Ljava/lang/String;)Z

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x1040419

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    :cond_18
    const/4 v15, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    sget-object v1, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->ConfirmWrong:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->NeedToConfirm:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    sput-object v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->updateUi()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    return-void
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->handlePrevious()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCreationOrientation:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCreationHardKeyboardHidden:I

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10201dc
        :pswitch_0
    .end packed-switch
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCreationOrientation:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCreationHardKeyboardHidden:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    if-nez p2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->handleNext()V

    :cond_0
    const/4 v0, 0x1

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
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .locals 2
    .parameter "isKeyboardOpen"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->dialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "newState"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const-string v4, ""

    sget-object v2, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->updateStage(Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;)V

    sget-object v2, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    sget-object v3, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->Introduction:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    if-ne v2, v3, :cond_0

    const-string v2, ""

    sput-object v4, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mFirstPin:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .local v0, admins:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    move v1, v2

    .local v1, hasActiveAdmins:Z
    :goto_0
    if-eqz v1, :cond_1

    sget-boolean v2, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mShowPolicy:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    sget-object v3, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->Introduction:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v3, 0x7530

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->showPolicy()V

    :cond_1
    return-void

    .end local v1           #hasActiveAdmins:Z
    :cond_2
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    return-void
.end method

.method protected updateStage(Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;)V
    .locals 0
    .parameter "stage"

    .prologue
    sput-object p1, Lcom/android/internal/policy/impl/PasswordSetupScreen;->mUiStage:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->updateUi()V

    return-void
.end method
