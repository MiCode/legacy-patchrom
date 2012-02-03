.class public Lcom/android/phone/EditPhoneNumberPreference;
.super Landroid/preference/EditTextPreference;
.source "EditPhoneNumberPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;,
        Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;
    }
.end annotation


# instance fields
.field private editText:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mButtonClicked:I

.field private mChangeNumberText:Ljava/lang/CharSequence;

.field private mChecked:Z

.field private mConfirmationMode:I

.field private mContactListIntent:Landroid/content/Intent;

.field private mContactPickButton:Landroid/widget/ImageButton;

.field private mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mDialogOnClosedListener:Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;

.field private mDisableText:Ljava/lang/CharSequence;

.field private mEnableText:Ljava/lang/CharSequence;

.field private mEncodedText:Ljava/lang/String;

.field private mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

.field private mParentActivity:Landroid/app/Activity;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPrefId:I

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/EditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 441
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    .line 506
    new-instance v1, Lcom/android/phone/EditPhoneNumberPreference$3;

    invoke-direct {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference$3;-><init>(Lcom/android/phone/EditPhoneNumberPreference;)V

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->handler:Landroid/os/Handler;

    .line 127
    const v1, 0x7f030031

    invoke-virtual {p0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogLayoutResource(I)V

    .line 130
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    sget-object v1, Lcom/android/phone/R$styleable;->EditPhoneNumberPreference:[I

    const v2, 0x7f0f000d

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 136
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    .line 137
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    .line 138
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChangeNumberText:Ljava/lang/CharSequence;

    .line 139
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    .line 140
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    sget-object v1, Landroid/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 145
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 146
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getContext()Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/EditPhoneNumberPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method


# virtual methods
.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRawPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method protected getStringValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->isToggled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isToggled()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChecked:Z

    return v0
.end method

.method public makeCursorPosition()V
    .locals 2

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v0

    .line 476
    .local v0, len:I
    if-lez v0, :cond_0

    .line 477
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 480
    .end local v0           #len:I
    :cond_0
    return-void
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 3
    .parameter "dialogView"
    .parameter "editText"

    .prologue
    .line 249
    const v1, 0x7f0800e0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 253
    .local v0, container:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 254
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 257
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 198
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    .line 200
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 203
    const v1, 0x7f0800df

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    .line 206
    const v1, 0x7f0800e1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    .line 209
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 213
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

    invoke-interface {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;->onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, defaultNumber:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 216
    iput-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    .line 220
    .end local v0           #defaultNumber:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->makeCursorPosition()V

    .line 222
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 223
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 224
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    .line 229
    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/phone/EditPhoneNumberPreference$1;

    invoke-direct {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference$1;-><init>(Lcom/android/phone/EditPhoneNumberPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    :cond_2
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindView(Landroid/view/View;)V

    .line 164
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 165
    .local v1, summaryView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 170
    iget v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 171
    iget-boolean v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChecked:Z

    if-eqz v3, :cond_2

    .line 172
    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    .line 180
    .local v0, sum:Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_5

    .line 181
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    const/4 v2, 0x0

    .line 187
    .local v2, vis:I
    :goto_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 188
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    .end local v0           #sum:Ljava/lang/CharSequence;
    .end local v2           #vis:I
    :cond_0
    return-void

    .line 172
    :cond_1
    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    move-object v0, v3

    goto :goto_0

    .line 174
    :cond_2
    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    .restart local v0       #sum:Ljava/lang/CharSequence;
    :goto_2
    goto :goto_0

    .end local v0           #sum:Ljava/lang/CharSequence;
    :cond_3
    iget-object v3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    move-object v0, v3

    goto :goto_2

    .line 177
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #sum:Ljava/lang/CharSequence;
    goto :goto_0

    .line 184
    :cond_5
    const/16 v2, 0x8

    .restart local v2       #vis:I
    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 331
    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    if-ne v0, v1, :cond_0

    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 336
    :cond_0
    iput p2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    .line 337
    invoke-super {p0, p1, p2}, Landroid/preference/EditTextPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 338
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 339
    return-void

    :cond_1
    move v0, v2

    .line 333
    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 346
    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 349
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 350
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 356
    :goto_0
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;

    iget v1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mButtonClicked:I

    invoke-interface {v0, p0, v1}, Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;->onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V

    .line 359
    :cond_1
    return-void

    .line 352
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    goto :goto_0
.end method

.method public onPickActivityResult(Ljava/lang/String;)V
    .locals 4
    .parameter "pickedValue"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->makeCursorPosition()V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/EditPhoneNumberPreference$2;

    invoke-direct {v1, p0}, Lcom/android/phone/EditPhoneNumberPreference$2;-><init>(Lcom/android/phone/EditPhoneNumberPreference;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 325
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    const/4 v2, 0x0

    .line 265
    iget v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 266
    iget-boolean v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChecked:Z

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChangeNumberText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 268
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    invoke-virtual {p1, v2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 271
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 411
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setValueFromString(Ljava/lang/String;)V

    .line 413
    return-void

    .line 411
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/String;

    move-object v0, p2

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    .line 445
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->persistString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;

    .line 292
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;I)V
    .locals 1
    .parameter "parent"
    .parameter "identifier"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    .line 297
    iput p2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

    .line 299
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V
    .locals 0
    .parameter "parent"
    .parameter "identifier"
    .parameter "l"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    .line 305
    iput p2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I

    .line 306
    iput-object p3, p0, Lcom/android/phone/EditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;

    .line 307
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;
    .locals 1
    .parameter "number"

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    .line 399
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->notifyChanged()V

    .line 401
    return-object p0
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;
    .locals 1
    .parameter "summary"

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 455
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->notifyChanged()V

    .line 458
    :cond_0
    return-object p0
.end method

.method public setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;
    .locals 1
    .parameter "checked"

    .prologue
    .line 373
    iput-boolean p1, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChecked:Z

    .line 374
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/android/phone/EditPhoneNumberPreference;->notifyChanged()V

    .line 377
    return-object p0
.end method

.method protected setValueFromString(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 520
    const-string v1, ":"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, inValues:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 522
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 523
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 427
    const/4 v1, 0x0

    .line 428
    .local v1, shouldDisable:Z
    iget v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 429
    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    const-string v3, ":"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, inValues:[Ljava/lang/String;
    aget-object v2, v0, v5

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 434
    .end local v0           #inValues:[Ljava/lang/String;
    :goto_0
    return v1

    .line 432
    :cond_0
    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mConfirmationMode:I

    if-nez v2, :cond_1

    move v1, v3

    :goto_1
    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_1
.end method
