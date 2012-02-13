.class public Lcom/android/phone/ChangeSimPinScreen;
.super Landroid/app/Activity;
.source "ChangeSimPinScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ChangeSimPinScreen$EntryState;
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

.field private mMismatchError:Landroid/widget/TextView;

.field private mNewPin1:Landroid/widget/EditText;

.field private mNewPin2:Landroid/widget/EditText;

.field private mOldPin:Landroid/widget/EditText;

.field private mPUKAlert:Landroid/app/AlertDialog;

.field private mPUKCode:Landroid/widget/EditText;

.field private mPUKSubmit:Landroid/widget/Button;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSimPUKPanel:Landroid/widget/LinearLayout;

.field private mState:Lcom/android/phone/ChangeSimPinScreen$EntryState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    new-instance v0, Lcom/android/phone/ChangeSimPinScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/ChangeSimPinScreen$1;-><init>(Lcom/android/phone/ChangeSimPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/ChangeSimPinScreen;->mHandler:Landroid/os/Handler;

    .line 217
    new-instance v0, Lcom/android/phone/ChangeSimPinScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/ChangeSimPinScreen$2;-><init>(Lcom/android/phone/ChangeSimPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/ChangeSimPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ChangeSimPinScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/phone/ChangeSimPinScreen;->handleResult(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/ChangeSimPinScreen;->mOldPin:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/ChangeSimPinScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/phone/ChangeSimPinScreen;->mChangePin2:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/ChangeSimPinScreen;->mPUKCode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/ChangeSimPinScreen;->mPUKSubmit:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/ChangeSimPinScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/ChangeSimPinScreen;->mPUKAlert:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/ChangeSimPinScreen;->mNewPin1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/ChangeSimPinScreen;->mNewPin2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/ChangeSimPinScreen;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/ChangeSimPinScreen;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/ChangeSimPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/ChangeSimPinScreen;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/phone/ChangeSimPinScreen;->validateNewPin(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/ChangeSimPinScreen;->mMismatchError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/ChangeSimPinScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/ChangeSimPinScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/ChangeSimPinScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/phone/ChangeSimPinScreen;->reset()V

    return-void
.end method

.method private displayPUKAlert()V
    .locals 4

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/phone/ChangeSimPinScreen;->mPUKAlert:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 329
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

    iput-object v0, p0, Lcom/android/phone/ChangeSimPinScreen;->mPUKAlert:Landroid/app/AlertDialog;

    .line 339
    :goto_0
    iget-object v0, p0, Lcom/android/phone/ChangeSimPinScreen;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/ChangeSimPinScreen$4;

    invoke-direct {v1, p0}, Lcom/android/phone/ChangeSimPinScreen$4;-><init>(Lcom/android/phone/ChangeSimPinScreen;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 344
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/phone/ChangeSimPinScreen;->mPUKAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private handleResult(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 284
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 287
    iget-object v1, p0, Lcom/android/phone/ChangeSimPinScreen;->mState:Lcom/android/phone/ChangeSimPinScreen$EntryState;

    sget-object v2, Lcom/android/phone/ChangeSimPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeSimPinScreen$EntryState;

    if-ne v1, v2, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/phone/ChangeSimPinScreen;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 289
    iget-object v1, p0, Lcom/android/phone/ChangeSimPinScreen;->mSimPUKPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/ChangeSimPinScreen;->showConfirmation()V

    .line 294
    iget-object v1, p0, Lcom/android/phone/ChangeSimPinScreen;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/ChangeSimPinScreen$3;

    invoke-direct {v2, p0}, Lcom/android/phone/ChangeSimPinScreen$3;-><init>(Lcom/android/phone/ChangeSimPinScreen;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 324
    :cond_1
    :goto_0
    return-void

    .line 300
    :cond_2
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_1

    .line 303
    iget-object v1, p0, Lcom/android/phone/ChangeSimPinScreen;->mState:Lcom/android/phone/ChangeSimPinScreen$EntryState;

    sget-object v2, Lcom/android/phone/ChangeSimPinScreen$EntryState;->ES_PIN:Lcom/android/phone/ChangeSimPinScreen$EntryState;

    if-ne v1, v2, :cond_3

    .line 305
    iget-object v1, p0, Lcom/android/phone/ChangeSimPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 306
    iget-object v1, p0, Lcom/android/phone/ChangeSimPinScreen;->mBadPinError:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 308
    .local v0, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_1

    .line 310
    sget-object v1, Lcom/android/phone/ChangeSimPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeSimPinScreen$EntryState;

    iput-object v1, p0, Lcom/android/phone/ChangeSimPinScreen;->mState:Lcom/android/phone/ChangeSimPinScreen$EntryState;

    .line 311
    invoke-direct {p0}, Lcom/android/phone/ChangeSimPinScreen;->displayPUKAlert()V

    .line 312
    iget-object v1, p0, Lcom/android/phone/ChangeSimPinScreen;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 313
    iget-object v1, p0, Lcom/android/phone/ChangeSimPinScreen;->mSimPUKPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 314
    iget-object v1, p0, Lcom/android/phone/ChangeSimPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 316
    .end local v0           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_3
    iget-object v1, p0, Lcom/android/phone/ChangeSimPinScreen;->mState:Lcom/android/phone/ChangeSimPinScreen$EntryState;

    sget-object v2, Lcom/android/phone/ChangeSimPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeSimPinScreen$EntryState;

    if-ne v1, v2, :cond_1

    .line 319
    invoke-direct {p0}, Lcom/android/phone/ChangeSimPinScreen;->displayPUKAlert()V

    .line 320
    iget-object v1, p0, Lcom/android/phone/ChangeSimPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 321
    iget-object v1, p0, Lcom/android/phone/ChangeSimPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 352
    iget-boolean v1, p0, Lcom/android/phone/ChangeSimPinScreen;->mChangePin2:Z

    if-eqz v1, :cond_0

    const-string v1, "[ChgPin2]"

    move-object v0, v1

    .line 353
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

    .line 354
    return-void

    .line 352
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

    .line 194
    iget-object v0, p0, Lcom/android/phone/ChangeSimPinScreen;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 195
    iget-object v0, p0, Lcom/android/phone/ChangeSimPinScreen;->mBadPinError:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/android/phone/ChangeSimPinScreen;->mMismatchError:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    return-void
.end method

.method private resolveIntent()V
    .locals 3

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/phone/ChangeSimPinScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 190
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pin2"

    iget-boolean v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mChangePin2:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/ChangeSimPinScreen;->mChangePin2:Z

    .line 191
    return-void
.end method

.method private showConfirmation()V
    .locals 2

    .prologue
    .line 347
    iget-boolean v1, p0, Lcom/android/phone/ChangeSimPinScreen;->mChangePin2:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0b02eb

    move v0, v1

    .line 348
    .local v0, id:I
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 349
    return-void

    .line 347
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

    .line 200
    if-nez p1, :cond_0

    move v1, v2

    .line 214
    :goto_0
    return v1

    .line 204
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    const/4 v1, 0x1

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 210
    .local v0, len1:I
    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    const/16 v1, 0x8

    if-le v0, v1, :cond_3

    :cond_2
    move v1, v2

    .line 211
    goto :goto_0

    .line 214
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

    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/ChangeSimPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10d0036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mHidePin:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 117
    invoke-direct {p0}, Lcom/android/phone/ChangeSimPinScreen;->resolveIntent()V

    .line 119
    const v2, 0x7f030015

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeSimPinScreen;->setContentView(I)V

    .line 121
    const v2, 0x7f07007f

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeSimPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mOldPin:Landroid/widget/EditText;

    .line 122
    iget-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 123
    iget-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 124
    iget-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mOldPin:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/ChangeSimPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-boolean v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mHidePin:Z

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 129
    iget-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/motorola/text/method/PinPasswordTransformationMethod;->apply(Landroid/widget/TextView;)V

    .line 133
    :cond_0
    const v2, 0x7f070081

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeSimPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mNewPin1:Landroid/widget/EditText;

    .line 134
    iget-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mNewPin1:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 135
    iget-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mNewPin1:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 136
    iget-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mNewPin1:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/ChangeSimPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-boolean v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mHidePin:Z

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mNewPin1:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 141
    iget-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mNewPin1:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/motorola/text/method/PinPasswordTransformationMethod;->apply(Landroid/widget/TextView;)V

    .line 145
    :cond_1
    const v2, 0x7f070082

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeSimPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mNewPin2:Landroid/widget/EditText;

    .line 146
    iget-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mNewPin2:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 147
    iget-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mNewPin2:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 148
    iget-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mNewPin2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/ChangeSimPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-boolean v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mHidePin:Z

    if-eqz v2, :cond_2

    .line 152
    iget-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mNewPin2:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 153
    iget-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mNewPin2:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/motorola/text/method/PinPasswordTransformationMethod;->apply(Landroid/widget/TextView;)V

    .line 157
    :cond_2
    const v2, 0x7f070080

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeSimPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mBadPinError:Landroid/widget/TextView;

    .line 158
    const v2, 0x7f070083

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeSimPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mMismatchError:Landroid/widget/TextView;

    .line 160
    const v2, 0x7f070084

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeSimPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mButton:Landroid/widget/Button;

    .line 161
    iget-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/ChangeSimPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    const v2, 0x7f07007e

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeSimPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mScrollView:Landroid/widget/ScrollView;

    .line 165
    const v2, 0x7f070086

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeSimPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mPUKCode:Landroid/widget/EditText;

    .line 166
    iget-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 167
    iget-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 168
    iget-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mPUKCode:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/ChangeSimPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-boolean v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mHidePin:Z

    if-eqz v2, :cond_3

    .line 172
    iget-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 173
    iget-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/motorola/text/method/PinPasswordTransformationMethod;->apply(Landroid/widget/TextView;)V

    .line 177
    :cond_3
    const v2, 0x7f070087

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeSimPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mPUKSubmit:Landroid/widget/Button;

    .line 178
    iget-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mPUKSubmit:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/ChangeSimPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v2, 0x7f070085

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeSimPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mSimPUKPanel:Landroid/widget/LinearLayout;

    .line 182
    iget-boolean v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mChangePin2:Z

    if-eqz v2, :cond_4

    const v2, 0x7f0b02af

    move v1, v2

    .line 183
    .local v1, id:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/ChangeSimPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeSimPinScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 185
    sget-object v2, Lcom/android/phone/ChangeSimPinScreen$EntryState;->ES_PIN:Lcom/android/phone/ChangeSimPinScreen$EntryState;

    iput-object v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mState:Lcom/android/phone/ChangeSimPinScreen$EntryState;

    .line 186
    return-void

    .line 110
    .end local v1           #id:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 111
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/ChangeSimPinScreen;->mHidePin:Z

    goto/16 :goto_0

    .line 182
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const v2, 0x7f0b02d6

    move v1, v2

    goto :goto_1
.end method
