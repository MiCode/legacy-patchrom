.class public Lcom/android/internal/policy/impl/PukUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "PukUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$AirplaneModeChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PukUnlockScreen$2;,
        Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;,
        Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk;,
        Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;
    }
.end annotation


# static fields
.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388

.field static final EVENT_SET_COMPLETE:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "PukUnlockScreen"


# instance fields
.field private NewPin:Ljava/lang/String;

.field private mBackSpaceButton:Landroid/view/View;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mCreatedWithKeyboardOpen:Z

.field private mEmergencyCallButton:Landroid/widget/TextView;

.field private mEnteredDigits:I

.field private final mEnteredPin:[I

.field private mHeaderText:Landroid/widget/TextView;

.field private mLockinfoText:Landroid/widget/TextView;

.field private mOkButton:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinText:Landroid/widget/TextView;

.field private mPuk:Ljava/lang/String;

.field mPukHandler:Landroid/os/Handler;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

.field mToast:Landroid/widget/Toast;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private num_of_retry:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/PukUnlockScreen;->DIGITS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 4
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockPatternUtils"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 122
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 91
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredPin:[I

    .line 92
    iput v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 94
    iput-object v3, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 105
    sget-object v0, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 112
    iput v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->num_of_retry:I

    .line 118
    iput-object v3, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPukHandler:Landroid/os/Handler;

    .line 123
    iput-object p2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 124
    iput-object p3, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyboardOpen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCreatedWithKeyboardOpen:Z

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPukHandler:Landroid/os/Handler;

    .line 137
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090039

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 138
    new-instance v0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/PukUnlockScreen;Lcom/android/internal/policy/impl/PukUnlockScreen$1;)V

    .line 140
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getSimLockInfoResult()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->num_of_retry:I

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->initView()V

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->updateView()V

    .line 145
    return-void

    .line 91
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PukUnlockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->NewPin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PukUnlockScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PukUnlockScreen;->reportDigit(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PukUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/PukUnlockScreen;Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;)Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/PukUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    return p1
.end method

.method private checkPUK()V
    .locals 2

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 391
    new-instance v0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPuk:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/PukUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/PukUnlockScreen;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->start()V

    .line 412
    return-void
.end method

.method private getSimLockInfoResult()I
    .locals 4

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 150
    .local v0, result:I
    :try_start_0
    const-string v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->getSimPukRetry()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 154
    :goto_0
    const-string v1, "PukUnlockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimLockInfoResult(): num_of_retry is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v0

    .line 152
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 343
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x1040336

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 348
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 349
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 351
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private reportDigit(I)V
    .locals 3
    .parameter "digit"

    .prologue
    .line 443
    iget v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredPin:[I

    iget v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    aput p1, v0, v1

    goto :goto_0
.end method

.method private setLockInfoText()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 234
    iget v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->num_of_retry:I

    if-ne v0, v3, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10400d6

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->num_of_retry:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10400d5

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->num_of_retry:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method initView()V
    .locals 3

    .prologue
    const-string v2, "test"

    .line 159
    const-string v0, "test"

    const-string v0, "initView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v0, "PukUnlockScreen"

    const-string v1, "initView()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const v0, 0x10201f8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    .line 162
    const v0, 0x10201fe

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    .line 163
    const v0, 0x10201fb

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    .line 164
    const v0, 0x10201fc

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v0, 0x10201d9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEmergencyCallButton:Landroid/widget/TextView;

    .line 168
    const v0, 0x10201df

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10400ca

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 171
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    .line 173
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEmergencyCallButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerConfigurationChangeCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;)V

    .line 180
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerAirplaneCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$AirplaneModeChangeCallback;)V

    .line 182
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 184
    const-string v0, "test"

    const-string v0, "initView - end"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 464
    if-eqz p1, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimPinUnlocked()V

    .line 466
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 468
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const v8, 0x10400c9

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    .line 267
    const-string v2, "test"

    const-string v3, "onClick"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    if-ne p1, v2, :cond_2

    .line 269
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 270
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 271
    .local v1, len:I
    if-lez v1, :cond_0

    .line 272
    sub-int v2, v1, v6

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 273
    iget v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    sub-int/2addr v2, v6

    iput v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 275
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 340
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_1
    :goto_0
    return-void

    .line 276
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEmergencyCallButton:Landroid/widget/TextView;

    if-ne p1, v2, :cond_3

    .line 277
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 278
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_0

    .line 279
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v2, :cond_1

    .line 280
    sget-object v2, Lcom/android/internal/policy/impl/PukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$PukUnlockScreen$SimLockState:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 283
    :pswitch_0
    iget v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_4

    .line 285
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v3, 0x10400ce

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 286
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    .line 287
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iput v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 289
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .line 292
    :cond_4
    sget-object v2, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 293
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPuk:Ljava/lang/String;

    .line 294
    iput v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->updateView()V

    goto :goto_0

    .line 299
    :pswitch_1
    iget v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    if-ge v2, v7, :cond_5

    .line 301
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 302
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    .line 303
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iput v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 305
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .line 309
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->NewPin:Ljava/lang/String;

    .line 310
    sget-object v2, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->VERIFY_NEW_PIN:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 311
    iput v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 312
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->updateView()V

    goto/16 :goto_0

    .line 318
    :pswitch_2
    iget v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    if-ge v2, v7, :cond_6

    .line 320
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 321
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    .line 322
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iput v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 324
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto/16 :goto_0

    .line 328
    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->NewPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 329
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->checkPUK()V

    goto/16 :goto_0

    .line 332
    :cond_7
    sget-object v2, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->VERIFY_NEW_PIN_FAILED:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 333
    iput v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 334
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->updateView()V

    goto/16 :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 416
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    move v1, v2

    .line 439
    :goto_0
    return v1

    .line 421
    :cond_0
    sget-object v1, Lcom/android/internal/policy/impl/PukUnlockScreen;->DIGITS:[C

    invoke-virtual {p2, v1}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v0

    .line 422
    .local v0, match:C
    if-eqz v0, :cond_1

    .line 423
    const/16 v1, 0x30

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PukUnlockScreen;->reportDigit(I)V

    move v1, v2

    .line 424
    goto :goto_0

    .line 426
    :cond_1
    const/16 v1, 0x43

    if-ne p1, v1, :cond_3

    .line 427
    iget v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    if-lez v1, :cond_2

    .line 428
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 429
    iget v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    :cond_2
    move v1, v2

    .line 431
    goto :goto_0

    .line 434
    :cond_3
    const/16 v1, 0x42

    if-ne p1, v1, :cond_4

    move v1, v2

    .line 436
    goto :goto_0

    .line 439
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyboardChange(Z)V
    .locals 2
    .parameter "isKeyboardOpen"

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 457
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCreatedWithKeyboardOpen:Z

    if-eq p1, v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 460
    :cond_0
    return-void
.end method

.method public onOrientationChange(Z)V
    .locals 0
    .parameter "inPortrait"

    .prologue
    .line 453
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10400ca

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 255
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 258
    return-void
.end method

.method updateView()V
    .locals 3

    .prologue
    .line 188
    const-string v1, "test"

    const-string v2, "updateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 191
    .local v0, context:Landroid/content/Context;
    const-string v1, "PukUnlockScreen"

    const-string v2, "updateView()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getSimLockInfoResult()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->num_of_retry:I

    .line 203
    sget-object v1, Lcom/android/internal/policy/impl/PukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$PukUnlockScreen$SimLockState:[I

    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 228
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    return-void

    .line 205
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x10400ca

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 206
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    goto :goto_0

    .line 210
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x10400cb

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 211
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    goto :goto_0

    .line 215
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x10400cc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 216
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    goto :goto_0

    .line 220
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x10400cd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 221
    sget-object v1, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 222
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
