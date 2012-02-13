.class public Lcom/android/phone/ChangeIccPinScreen;
.super Landroid/app/Activity;
.source "ChangeIccPinScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ChangeIccPinScreen$EntryState;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_PIN_CHANGED:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneApp"

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final NO_ERROR:I = 0x0

.field private static final PIN_INVALID_LENGTH:I = 0x2

.field private static final PIN_MISMATCH:I = 0x1


# instance fields
.field private mBadPinError:Landroid/widget/TextView;

.field private mButton:Landroid/widget/Button;

.field private mChangePin2:Z

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mHidePin:Z

.field private mIccPUKPanel:Landroid/widget/LinearLayout;

.field private mMismatchError:Landroid/widget/TextView;

.field private mNewPin1:Landroid/widget/EditText;

.field private mNewPin2:Landroid/widget/EditText;

.field private mOldPin:Landroid/widget/EditText;

.field private mPUKAlert:Landroid/app/AlertDialog;

.field private mPUKCode:Landroid/widget/EditText;

.field private mPUKSubmit:Landroid/widget/Button;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    new-instance v0, Lcom/android/phone/ChangeIccPinScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/ChangeIccPinScreen$1;-><init>(Lcom/android/phone/ChangeIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    .line 214
    new-instance v0, Lcom/android/phone/ChangeIccPinScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/ChangeIccPinScreen$2;-><init>(Lcom/android/phone/ChangeIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ChangeIccPinScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/phone/ChangeIccPinScreen;->handleResult(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/ChangeIccPinScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKSubmit:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/ChangeIccPinScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKAlert:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/ChangeIccPinScreen;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/ChangeIccPinScreen;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/phone/ChangeIccPinScreen;->validateNewPin(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/ChangeIccPinScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/ChangeIccPinScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->reset()V

    return-void
.end method

.method private displayPUKAlert()V
    .locals 4

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKAlert:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b02e2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKAlert:Landroid/app/AlertDialog;

    .line 336
    :goto_0
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/ChangeIccPinScreen$4;

    invoke-direct {v1, p0}, Lcom/android/phone/ChangeIccPinScreen$4;-><init>(Lcom/android/phone/ChangeIccPinScreen;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 341
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private handleResult(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 281
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 284
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    sget-object v2, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    if-ne v1, v2, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mIccPUKPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 289
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->showConfirmation()V

    .line 291
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/ChangeIccPinScreen$3;

    invoke-direct {v2, p0}, Lcom/android/phone/ChangeIccPinScreen$3;-><init>(Lcom/android/phone/ChangeIccPinScreen;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 321
    :cond_1
    :goto_0
    return-void

    .line 297
    :cond_2
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_1

    .line 300
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    sget-object v2, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PIN:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    if-ne v1, v2, :cond_3

    .line 302
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 303
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 305
    .local v0, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_1

    .line 307
    sget-object v1, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    .line 308
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->displayPUKAlert()V

    .line 309
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 310
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mIccPUKPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 313
    .end local v0           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_3
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    sget-object v2, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    if-ne v1, v2, :cond_1

    .line 316
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->displayPUKAlert()V

    .line 317
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 318
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 349
    iget-boolean v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v1, :cond_0

    const-string v1, "[ChgPin2]"

    move-object v0, v1

    .line 350
    .local v0, prefix:Ljava/lang/String;
    :goto_0
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void

    .line 349
    .end local v0           #prefix:Ljava/lang/String;
    :cond_0
    const-string v1, "[ChgPin]"

    move-object v0, v1

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 191
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 192
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    return-void
.end method

.method private resolveIntent()V
    .locals 3

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/phone/ChangeIccPinScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 187
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pin2"

    iget-boolean v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    .line 188
    return-void
.end method

.method private showConfirmation()V
    .locals 2

    .prologue
    .line 344
    iget-boolean v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0b02eb

    move v0, v1

    .line 345
    .local v0, id:I
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 346
    return-void

    .line 344
    .end local v0           #id:I
    :cond_0
    const v1, 0x7f0b02e1

    move v0, v1

    goto :goto_0
.end method

.method private validateNewPin(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "p1"
    .parameter "p2"

    .prologue
    const/4 v2, 0x2

    .line 197
    if-nez p1, :cond_0

    move v1, v2

    .line 211
    :goto_0
    return v1

    .line 201
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    const/4 v1, 0x1

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 207
    .local v0, len1:I
    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    const/16 v1, 0x8

    if-le v0, v1, :cond_3

    :cond_2
    move v1, v2

    .line 208
    goto :goto_0

    .line 211
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x82

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/ChangeIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10d0036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mHidePin:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 114
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->resolveIntent()V

    .line 116
    const v2, 0x7f030015

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->setContentView(I)V

    .line 118
    const v2, 0x7f07007f

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    .line 119
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 120
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 121
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-boolean v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mHidePin:Z

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 126
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/motorola/text/method/PinPasswordTransformationMethod;->apply(Landroid/widget/TextView;)V

    .line 130
    :cond_0
    const v2, 0x7f070081

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    .line 131
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 132
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 133
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-boolean v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mHidePin:Z

    if-eqz v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 138
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/motorola/text/method/PinPasswordTransformationMethod;->apply(Landroid/widget/TextView;)V

    .line 142
    :cond_1
    const v2, 0x7f070082

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    .line 143
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 144
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 145
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-boolean v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mHidePin:Z

    if-eqz v2, :cond_2

    .line 149
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 150
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/motorola/text/method/PinPasswordTransformationMethod;->apply(Landroid/widget/TextView;)V

    .line 154
    :cond_2
    const v2, 0x7f070080

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    .line 155
    const v2, 0x7f070083

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;

    .line 157
    const v2, 0x7f070084

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mButton:Landroid/widget/Button;

    .line 158
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v2, 0x7f07007e

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    .line 162
    const v2, 0x7f070086

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    .line 163
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 164
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 165
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-boolean v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mHidePin:Z

    if-eqz v2, :cond_3

    .line 169
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 170
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/motorola/text/method/PinPasswordTransformationMethod;->apply(Landroid/widget/TextView;)V

    .line 174
    :cond_3
    const v2, 0x7f070087

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKSubmit:Landroid/widget/Button;

    .line 175
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKSubmit:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const v2, 0x7f070085

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mIccPUKPanel:Landroid/widget/LinearLayout;

    .line 179
    iget-boolean v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v2, :cond_4

    const v2, 0x7f0b02af

    move v1, v2

    .line 180
    .local v1, id:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/ChangeIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 182
    sget-object v2, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PIN:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    .line 183
    return-void

    .line 107
    .end local v1           #id:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 108
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mHidePin:Z

    goto/16 :goto_0

    .line 179
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const v2, 0x7f0b02d6

    move v1, v2

    goto :goto_1
.end method
