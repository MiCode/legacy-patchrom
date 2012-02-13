.class Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;
.super Landroid/app/Dialog;
.source "SimPinUnlockPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimPinUnlockPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimPinUnlockPanelDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$MyTextWatcher;,
        Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;
    }
.end annotation


# static fields
.field private static final EVENT_SIM_UNLOCKED_RESULT:I = 0x64


# instance fields
.field private mDismissButton:Landroid/widget/Button;

.field mDismissListener:Landroid/view/View$OnClickListener;

.field private mEntry:Landroid/widget/EditText;

.field private mFailure:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mLabel:Landroid/widget/TextView;

.field private mNewPinCode:Ljava/lang/String;

.field private mNumPUKRetries:I

.field private mPUKCode:Ljava/lang/String;

.field private mState:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

.field private mStatus:Landroid/widget/TextView;

.field private mUnlockButton:Landroid/widget/Button;

.field private mUnlockInProgressPane:Landroid/widget/LinearLayout;

.field mUnlockListener:Landroid/view/View$OnClickListener;

.field private mUnlockPane:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 148
    const v0, 0x7f0e000d

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mNumPUKRetries:I

    .line 113
    new-instance v0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$1;-><init>(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;)V

    iput-object v0, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mHandler:Landroid/os/Handler;

    .line 374
    new-instance v0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$3;

    invoke-direct {v0, p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$3;-><init>(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;)V

    iput-object v0, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mUnlockListener:Landroid/view/View$OnClickListener;

    .line 434
    new-instance v0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$4;

    invoke-direct {v0, p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$4;-><init>(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;)V

    iput-object v0, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;)Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mState:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mFailure:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mPUKCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mPUKCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mNewPinCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mNewPinCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->verifyNewPin(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private verifyNewPin(Ljava/lang/String;)Z
    .locals 1
    .parameter "pin2"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mNewPinCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    const/4 v0, 0x1

    .line 369
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getState()Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mState:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    return-object v0
.end method

.method handleFailure()V
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Lcom/android/phone/SimPinUnlockPanel;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unlock failed"

    #calls: Lcom/android/phone/SimPinUnlockPanel;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/SimPinUnlockPanel;->access$100(Ljava/lang/String;)V

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->showIncorrectPinMessage()V

    .line 318
    iget-object v0, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 319
    invoke-virtual {p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->updateState()Z

    .line 320
    invoke-virtual {p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->updateView()V

    .line 321
    return-void
.end method

.method handleSuccess()V
    .locals 2

    .prologue
    .line 307
    invoke-static {}, Lcom/android/phone/SimPinUnlockPanel;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unlock successful!"

    #calls: Lcom/android/phone/SimPinUnlockPanel;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/SimPinUnlockPanel;->access$100(Ljava/lang/String;)V

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->showUnlockSuccess()V

    .line 312
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setCachedSimPin(Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method handleUnlockResult(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 291
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->handleSuccess()V

    .line 304
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getRetryLeftSimPin(Landroid/os/AsyncResult;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mNumPUKRetries:I

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNumPUKRetries = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mNumPUKRetries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/SimPinUnlockPanel;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/SimPinUnlockPanel;->access$100(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->hidePinUnlockInProgress()V

    .line 301
    invoke-virtual {p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->handleFailure()V

    goto :goto_0
.end method

.method hideIncorrectPinMessage()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mFailure:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    return-void
.end method

.method hidePinUnlockInProgress()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mUnlockInProgressPane:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mUnlockPane:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 352
    return-void
.end method

.method initView()V
    .locals 8

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 209
    .local v1, context:Landroid/content/Context;
    const v4, 0x7f070166

    invoke-virtual {p0, v4}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mUnlockPane:Landroid/widget/LinearLayout;

    .line 210
    const v4, 0x7f07016b

    invoke-virtual {p0, v4}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mUnlockInProgressPane:Landroid/widget/LinearLayout;

    .line 212
    const v4, 0x7f070168

    invoke-virtual {p0, v4}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mEntry:Landroid/widget/EditText;

    .line 215
    iget-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 218
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10d0036

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 219
    iget-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mEntry:Landroid/widget/EditText;

    invoke-static {v4}, Lcom/motorola/text/method/PinPasswordTransformationMethod;->apply(Landroid/widget/TextView;)V

    .line 222
    :cond_0
    iget-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mEntry:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 225
    iget-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mEntry:Landroid/widget/EditText;

    const/16 v5, 0x82

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 229
    iget-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 230
    .local v3, text:Ljava/lang/CharSequence;
    move-object v0, v3

    check-cast v0, Landroid/text/Spannable;

    move-object v2, v0

    .line 231
    .local v2, span:Landroid/text/Spannable;
    new-instance v4, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$MyTextWatcher;

    invoke-virtual {p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$MyTextWatcher;-><init>(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/16 v7, 0x12

    invoke-interface {v2, v4, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 234
    const v4, 0x7f070167

    invoke-virtual {p0, v4}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mFailure:Landroid/widget/TextView;

    .line 235
    const v4, 0x7f07005a

    invoke-virtual {p0, v4}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mLabel:Landroid/widget/TextView;

    .line 236
    const v4, 0x7f07004e

    invoke-virtual {p0, v4}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mStatus:Landroid/widget/TextView;

    .line 238
    const v4, 0x7f070169

    invoke-virtual {p0, v4}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mUnlockButton:Landroid/widget/Button;

    .line 239
    iget-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mUnlockButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    const v4, 0x7f07016a

    invoke-virtual {p0, v4}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mDismissButton:Landroid/widget/Button;

    .line 246
    iget-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mDismissButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mDismissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, -0x1

    .line 153
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 155
    .local v0, winP:Landroid/view/Window;
    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 156
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 158
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 159
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->requestWindowFeature(I)Z

    .line 161
    const v1, 0x7f030050

    invoke-virtual {p0, v1}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->setContentView(I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->updateState()Z

    .line 163
    invoke-virtual {p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->initView()V

    .line 164
    invoke-virtual {p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->updateView()V

    .line 165
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 283
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 284
    const/4 v0, 0x1

    .line 287
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 170
    invoke-virtual {p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->updateState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->updateView()V

    .line 173
    :cond_0
    return-void
.end method

.method setState(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mState:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    .line 199
    return-void
.end method

.method showIncorrectPinMessage()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 324
    invoke-virtual {p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 325
    .local v0, context:Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->getState()Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->REQUIRE_PIN:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    if-ne v2, v3, :cond_1

    .line 328
    const v2, 0x7f0b02d8

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mFailure:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v2, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mFailure:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    return-void

    .line 330
    :cond_1
    const v2, 0x7f0b01b9

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget v2, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mNumPUKRetries:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 332
    const v2, 0x7f0b01bc

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mNumPUKRetries:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method showUnlockInProgress()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mUnlockInProgressPane:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mUnlockPane:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 347
    return-void
.end method

.method showUnlockSuccess()V
    .locals 4

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b01b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$2;

    invoke-direct {v1, p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$2;-><init>(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 362
    return-void
.end method

.method updateState()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 179
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 180
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 183
    .local v1, simCardInterface:Lcom/android/internal/telephony/IccCard;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->getState()Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->REQUIRE_PUK:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    if-eq v2, v3, :cond_1

    .line 185
    sget-object v2, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->REQUIRE_PUK:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    invoke-virtual {p0, v2}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->setState(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;)V

    move v2, v4

    .line 194
    :goto_0
    return v2

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->getState()Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->REQUIRE_PIN:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    if-eq v2, v3, :cond_1

    .line 189
    sget-object v2, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->REQUIRE_PIN:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    invoke-virtual {p0, v2}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->setState(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 190
    goto :goto_0

    .line 192
    :catch_0
    move-exception v2

    .line 194
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method updateView()V
    .locals 3

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 252
    .local v0, context:Landroid/content/Context;
    sget-object v1, Lcom/android/phone/SimPinUnlockPanel$2;->$SwitchMap$com$android$phone$SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState:[I

    iget-object v2, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mState:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    invoke-virtual {v2}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 278
    :goto_0
    iget-object v1, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 279
    iget-object v1, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mEntry:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->requestFocus(I)Z

    .line 280
    return-void

    .line 254
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mLabel:Landroid/widget/TextView;

    const v2, 0x7f0b01b3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 258
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mLabel:Landroid/widget/TextView;

    const v2, 0x7f0b01b8

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v1, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mUnlockButton:Landroid/widget/Button;

    const v2, 0x7f0b01ba

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 264
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->hideIncorrectPinMessage()V

    .line 265
    iget-object v1, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mLabel:Landroid/widget/TextView;

    const v2, 0x7f0b01b5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 269
    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mLabel:Landroid/widget/TextView;

    const v2, 0x7f0b01b6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 273
    :pswitch_4
    iget-object v1, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mLabel:Landroid/widget/TextView;

    const v2, 0x7f0b01b7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    sget-object v1, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    invoke-virtual {p0, v1}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->setState(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;)V

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
