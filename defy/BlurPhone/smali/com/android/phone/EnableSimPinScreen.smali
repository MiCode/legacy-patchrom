.class public Lcom/android/phone/EnableSimPinScreen;
.super Landroid/app/Activity;
.source "EnableSimPinScreen.java"


# static fields
.field private static final DBG:Z = false

.field private static final ENABLE_SIM_PIN_COMPLETE:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneApp"


# instance fields
.field private mClicked:Landroid/view/View$OnClickListener;

.field private mEnable:Z

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinField:Landroid/widget/EditText;

.field private mPinFieldContainer:Landroid/widget/LinearLayout;

.field private mStatusField:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    new-instance v0, Lcom/android/phone/EnableSimPinScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EnableSimPinScreen$1;-><init>(Lcom/android/phone/EnableSimPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/EnableSimPinScreen;->mHandler:Landroid/os/Handler;

    .line 146
    new-instance v0, Lcom/android/phone/EnableSimPinScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/EnableSimPinScreen$3;-><init>(Lcom/android/phone/EnableSimPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/EnableSimPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EnableSimPinScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/phone/EnableSimPinScreen;->handleResult(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/EnableSimPinScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/EnableSimPinScreen;->mPinField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/EnableSimPinScreen;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/phone/EnableSimPinScreen;->showStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/EnableSimPinScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/phone/EnableSimPinScreen;->enableSimPin()V

    return-void
.end method

.method private enableSimPin()V
    .locals 4

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/phone/EnableSimPinScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 122
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/EnableSimPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/EnableSimPinScreen;->mEnable:Z

    invoke-direct {p0}, Lcom/android/phone/EnableSimPinScreen;->getPin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 124
    return-void
.end method

.method private getPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/phone/EnableSimPinScreen;->mPinField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleResult(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 127
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 129
    invoke-virtual {p0}, Lcom/android/phone/EnableSimPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/EnableSimPinScreen;->mEnable:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0b02de

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EnableSimPinScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 139
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/phone/EnableSimPinScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/EnableSimPinScreen$2;

    invoke-direct {v1, p0}, Lcom/android/phone/EnableSimPinScreen$2;-><init>(Lcom/android/phone/EnableSimPinScreen;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    return-void

    .line 129
    :cond_1
    const v1, 0x7f0b02df

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/phone/EnableSimPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EnableSimPinScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 160
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EnableSimPin] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 87
    const v0, 0x7f0700b4

    invoke-virtual {p0, v0}, Lcom/android/phone/EnableSimPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/EnableSimPinScreen;->mPinField:Landroid/widget/EditText;

    .line 88
    iget-object v0, p0, Lcom/android/phone/EnableSimPinScreen;->mPinField:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 89
    iget-object v0, p0, Lcom/android/phone/EnableSimPinScreen;->mPinField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 90
    iget-object v0, p0, Lcom/android/phone/EnableSimPinScreen;->mPinField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/EnableSimPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/phone/EnableSimPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/phone/EnableSimPinScreen;->mPinField:Landroid/widget/EditText;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 96
    iget-object v0, p0, Lcom/android/phone/EnableSimPinScreen;->mPinField:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/motorola/text/method/PinPasswordTransformationMethod;->apply(Landroid/widget/TextView;)V

    .line 100
    :cond_0
    const v0, 0x7f0700b1

    invoke-virtual {p0, v0}, Lcom/android/phone/EnableSimPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/EnableSimPinScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    .line 101
    const v0, 0x7f07004e

    invoke-virtual {p0, v0}, Lcom/android/phone/EnableSimPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/EnableSimPinScreen;->mStatusField:Landroid/widget/TextView;

    .line 102
    return-void
.end method

.method private showStatus(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "statusMsg"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/phone/EnableSimPinScreen;->mStatusField:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/android/phone/EnableSimPinScreen;->mStatusField:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/android/phone/EnableSimPinScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EnableSimPinScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/android/phone/EnableSimPinScreen;->mStatusField:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v1, 0x7f030026

    invoke-virtual {p0, v1}, Lcom/android/phone/EnableSimPinScreen;->setContentView(I)V

    .line 77
    invoke-direct {p0}, Lcom/android/phone/EnableSimPinScreen;->setupView()V

    .line 79
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EnableSimPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 80
    iget-object v1, p0, Lcom/android/phone/EnableSimPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/EnableSimPinScreen;->mEnable:Z

    .line 82
    iget-boolean v1, p0, Lcom/android/phone/EnableSimPinScreen;->mEnable:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0b02dc

    move v0, v1

    .line 83
    .local v0, id:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/EnableSimPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/EnableSimPinScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    return-void

    .line 80
    .end local v0           #id:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 82
    :cond_1
    const v1, 0x7f0b02db

    move v0, v1

    goto :goto_1
.end method
