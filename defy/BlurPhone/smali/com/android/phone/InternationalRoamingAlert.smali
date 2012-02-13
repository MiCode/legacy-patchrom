.class public Lcom/android/phone/InternationalRoamingAlert;
.super Landroid/app/Activity;
.source "InternationalRoamingAlert.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IntRoamingAlert"

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private DBG:Z

.field FTR_36597_VZW_ROAMING_ALERT:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mConfirmButton:Landroid/widget/Button;

.field private mDisableButton:Landroid/widget/Button;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private toneGen:Landroid/media/ToneGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/android/phone/InternationalRoamingAlert;->DBG:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/phone/InternationalRoamingAlert;->FTR_36597_VZW_ROAMING_ALERT:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/InternationalRoamingAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/phone/InternationalRoamingAlert;->releaseLocks()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/InternationalRoamingAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/phone/InternationalRoamingAlert;->confirm()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/InternationalRoamingAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/phone/InternationalRoamingAlert;->disable()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/android/phone/InternationalRoamingAlert;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 266
    sget-object v0, Lcom/android/phone/InternationalRoamingAlert;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 267
    :cond_0
    return-void
.end method

.method private confirm()V
    .locals 3

    .prologue
    .line 170
    iget-boolean v1, p0, Lcom/android/phone/InternationalRoamingAlert;->FTR_36597_VZW_ROAMING_ALERT:Z

    if-eqz v1, :cond_0

    .line 171
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 172
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 174
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InternationalRoamingAlert;->releaseLocks()V

    .line 175
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const-string v3, "IntRoamingAlert"

    .line 248
    iget-boolean v1, p0, Lcom/android/phone/InternationalRoamingAlert;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "IntRoamingAlert"

    const-string v1, "Acquiring wake lock"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    sget-object v1, Lcom/android/phone/InternationalRoamingAlert;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 250
    sget-object v1, Lcom/android/phone/InternationalRoamingAlert;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 253
    :cond_1
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 256
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "IntRoamingAlert"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/phone/InternationalRoamingAlert;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 261
    sget-object v1, Lcom/android/phone/InternationalRoamingAlert;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 263
    return-void
.end method

.method private disable()V
    .locals 3

    .prologue
    .line 180
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 181
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 183
    invoke-direct {p0}, Lcom/android/phone/InternationalRoamingAlert;->releaseLocks()V

    .line 184
    return-void
.end method

.method private disableKeyguard()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "IntRoamingAlert"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 235
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 237
    :cond_0
    return-void
.end method

.method private enableKeyguard()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 230
    :cond_0
    return-void
.end method

.method private releaseLocks()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/android/phone/InternationalRoamingAlert;->releaseWakeLock()V

    .line 244
    invoke-direct {p0}, Lcom/android/phone/InternationalRoamingAlert;->enableKeyguard()V

    .line 245
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 269
    const-string v0, "IntRoamingAlert"

    const-string v1, "Releasing wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget-object v0, Lcom/android/phone/InternationalRoamingAlert;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Lcom/android/phone/InternationalRoamingAlert;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 272
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/InternationalRoamingAlert;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 274
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/phone/InternationalRoamingAlert;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/InternationalRoamingAlert;->createWakeLock(Landroid/content/Context;)V

    .line 67
    const-string v9, "IntRoamingAlert"

    const-string v10, "IntRoamingAlert.onCreate()"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Lcom/android/phone/InternationalRoamingAlert;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 71
    .local v7, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v9, -0x2

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 72
    const/4 v9, -0x2

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 78
    const/16 v9, 0x7d3

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 79
    const/4 v9, 0x0

    iput-object v9, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 80
    invoke-virtual {p0}, Lcom/android/phone/InternationalRoamingAlert;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/phone/InternationalRoamingAlert;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    .line 83
    const-string v9, "keyguard"

    invoke-virtual {p0, v9}, Lcom/android/phone/InternationalRoamingAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/phone/InternationalRoamingAlert;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 86
    invoke-virtual {p0}, Lcom/android/phone/InternationalRoamingAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09001d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/phone/InternationalRoamingAlert;->FTR_36597_VZW_ROAMING_ALERT:Z

    .line 88
    iget-boolean v9, p0, Lcom/android/phone/InternationalRoamingAlert;->FTR_36597_VZW_ROAMING_ALERT:Z

    if-eqz v9, :cond_2

    .line 89
    const v9, 0x7f030037

    invoke-virtual {p0, v9}, Lcom/android/phone/InternationalRoamingAlert;->setContentView(I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/phone/InternationalRoamingAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0355

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/phone/InternationalRoamingAlert;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    const v9, 0x7f0700fa

    invoke-virtual {p0, v9}, Lcom/android/phone/InternationalRoamingAlert;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 92
    .local v8, warning:Landroid/widget/TextView;
    const v9, 0x7f0b0356

    invoke-virtual {p0, v9}, Lcom/android/phone/InternationalRoamingAlert;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 94
    .local v2, app:Lcom/android/phone/PhoneApp;
    iget-object v9, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v1

    .line 95
    .local v1, allowRoaming:Z
    const v9, 0x7f0700fc

    invoke-virtual {p0, v9}, Lcom/android/phone/InternationalRoamingAlert;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 96
    .local v6, deny:Landroid/widget/RadioButton;
    const v9, 0x7f0700fd

    invoke-virtual {p0, v9}, Lcom/android/phone/InternationalRoamingAlert;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 98
    .local v0, allow:Landroid/widget/RadioButton;
    if-eqz v1, :cond_1

    .line 99
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 102
    :goto_0
    const v9, 0x7f0700fe

    invoke-virtual {p0, v9}, Lcom/android/phone/InternationalRoamingAlert;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/phone/InternationalRoamingAlert;->mCancelButton:Landroid/widget/Button;

    .line 103
    iget-object v9, p0, Lcom/android/phone/InternationalRoamingAlert;->mCancelButton:Landroid/widget/Button;

    new-instance v10, Lcom/android/phone/InternationalRoamingAlert$1;

    invoke-direct {v10, p0}, Lcom/android/phone/InternationalRoamingAlert$1;-><init>(Lcom/android/phone/InternationalRoamingAlert;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    new-instance v9, Lcom/android/phone/InternationalRoamingAlert$2;

    invoke-direct {v9, p0}, Lcom/android/phone/InternationalRoamingAlert$2;-><init>(Lcom/android/phone/InternationalRoamingAlert;)V

    invoke-virtual {v0, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    new-instance v9, Lcom/android/phone/InternationalRoamingAlert$3;

    invoke-direct {v9, p0}, Lcom/android/phone/InternationalRoamingAlert$3;-><init>(Lcom/android/phone/InternationalRoamingAlert;)V

    invoke-virtual {v6, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    .end local v0           #allow:Landroid/widget/RadioButton;
    .end local v1           #allowRoaming:Z
    .end local v2           #app:Lcom/android/phone/PhoneApp;
    .end local v6           #deny:Landroid/widget/RadioButton;
    :goto_1
    new-instance v9, Landroid/media/ToneGenerator;

    const/4 v10, 0x5

    const/16 v11, 0x64

    invoke-direct {v9, v10, v11}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v9, p0, Lcom/android/phone/InternationalRoamingAlert;->toneGen:Landroid/media/ToneGenerator;

    .line 144
    iget-boolean v9, p0, Lcom/android/phone/InternationalRoamingAlert;->FTR_36597_VZW_ROAMING_ALERT:Z

    if-nez v9, :cond_0

    .line 146
    const/high16 v9, 0x7f07

    invoke-virtual {p0, v9}, Lcom/android/phone/InternationalRoamingAlert;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/phone/InternationalRoamingAlert;->mConfirmButton:Landroid/widget/Button;

    .line 148
    iget-object v9, p0, Lcom/android/phone/InternationalRoamingAlert;->mConfirmButton:Landroid/widget/Button;

    new-instance v10, Lcom/android/phone/InternationalRoamingAlert$4;

    invoke-direct {v10, p0}, Lcom/android/phone/InternationalRoamingAlert$4;-><init>(Lcom/android/phone/InternationalRoamingAlert;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v9, 0x7f0700fb

    invoke-virtual {p0, v9}, Lcom/android/phone/InternationalRoamingAlert;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/phone/InternationalRoamingAlert;->mDisableButton:Landroid/widget/Button;

    .line 157
    iget-object v9, p0, Lcom/android/phone/InternationalRoamingAlert;->mDisableButton:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->requestFocus()Z

    .line 158
    iget-object v9, p0, Lcom/android/phone/InternationalRoamingAlert;->mDisableButton:Landroid/widget/Button;

    new-instance v10, Lcom/android/phone/InternationalRoamingAlert$5;

    invoke-direct {v10, p0}, Lcom/android/phone/InternationalRoamingAlert$5;-><init>(Lcom/android/phone/InternationalRoamingAlert;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    :cond_0
    return-void

    .line 101
    .restart local v0       #allow:Landroid/widget/RadioButton;
    .restart local v1       #allowRoaming:Z
    .restart local v2       #app:Lcom/android/phone/PhoneApp;
    .restart local v6       #deny:Landroid/widget/RadioButton;
    :cond_1
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 125
    .end local v0           #allow:Landroid/widget/RadioButton;
    .end local v1           #allowRoaming:Z
    .end local v2           #app:Lcom/android/phone/PhoneApp;
    .end local v6           #deny:Landroid/widget/RadioButton;
    .end local v8           #warning:Landroid/widget/TextView;
    :cond_2
    const v9, 0x7f030036

    invoke-virtual {p0, v9}, Lcom/android/phone/InternationalRoamingAlert;->setContentView(I)V

    .line 126
    invoke-virtual {p0}, Lcom/android/phone/InternationalRoamingAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0353

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/phone/InternationalRoamingAlert;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/phone/InternationalRoamingAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b03ee

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 131
    .local v4, carrierName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/InternationalRoamingAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b03ef

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 132
    .local v5, carrierWebUrl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/InternationalRoamingAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b03f0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 135
    .local v3, carrierCenterNumber:Ljava/lang/String;
    const v9, 0x7f0700fa

    invoke-virtual {p0, v9}, Lcom/android/phone/InternationalRoamingAlert;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 136
    .restart local v8       #warning:Landroid/widget/TextView;
    const v9, 0x7f0b0354

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    const/4 v11, 0x2

    aput-object v3, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/phone/InternationalRoamingAlert;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 208
    iget-boolean v0, p0, Lcom/android/phone/InternationalRoamingAlert;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "IntRoamingAlert"

    const-string v1, "IntRoamingAlert.onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->toneGen:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->toneGen:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->toneGen:Landroid/media/ToneGenerator;

    .line 214
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 218
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 219
    const/4 v0, 0x1

    .line 221
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 189
    iget-boolean v0, p0, Lcom/android/phone/InternationalRoamingAlert;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "IntRoamingAlert"

    const-string v1, "IntRoamingAlert.onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InternationalRoamingAlert;->acquireWakeLock()V

    .line 191
    invoke-direct {p0}, Lcom/android/phone/InternationalRoamingAlert;->disableKeyguard()V

    .line 192
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->toneGen:Landroid/media/ToneGenerator;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 193
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 198
    iget-boolean v0, p0, Lcom/android/phone/InternationalRoamingAlert;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "IntRoamingAlert"

    const-string v1, "IntRoamingAlert.onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingAlert;->toneGen:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 202
    invoke-direct {p0}, Lcom/android/phone/InternationalRoamingAlert;->releaseLocks()V

    .line 203
    return-void
.end method
