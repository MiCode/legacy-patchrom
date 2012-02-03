.class public Lcom/android/phone/EmergencyDialer;
.super Landroid/app/Activity;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDialButton:Landroid/view/View;

.field mDigits:Landroid/widget/EditText;

.field private mDigitsBackground:Landroid/graphics/drawable/Drawable;

.field private mHaptic:Lcom/android/phone/HapticFeedback;

.field private mLastNumber:Ljava/lang/String;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mVoicemailDialAndDeleteRow:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    .line 105
    new-instance v0, Lcom/android/phone/HapticFeedback;

    invoke-direct {v0}, Lcom/android/phone/HapticFeedback;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    .line 108
    new-instance v0, Lcom/android/phone/EmergencyDialer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyDialer$1;-><init>(Lcom/android/phone/EmergencyDialer;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "number"

    .prologue
    .line 674
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    const v0, 0x7f0d01ab

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/EmergencyDialer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 677
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0d01ac

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private keyPressed(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 413
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v1}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 414
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 415
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 416
    return-void
.end method

.method private setupKeypad()V
    .locals 2

    .prologue
    .line 284
    const v1, 0x7f08004b

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    const v1, 0x7f08004c

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    const v1, 0x7f08004d

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    const v1, 0x7f08004e

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    const v1, 0x7f08004f

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    const v1, 0x7f080050

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    const v1, 0x7f080051

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    const v1, 0x7f080052

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    const v1, 0x7f080053

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    const v1, 0x7f080054

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    const v1, 0x7f080055

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 296
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 299
    const v1, 0x7f080056

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    return-void
.end method

.method private updateDialAndDeleteButtonStateEnabledAttr()V
    .locals 2

    .prologue
    .line 711
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 720
    .local v0, notEmpty:Z
    :goto_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 721
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 724
    .end local v0           #notEmpty:Z
    :cond_0
    return-void

    .line 712
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/phone/SpecialCharSequenceMgr;->handleCharsForLockedDevice(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDialAndDeleteButtonStateEnabledAttr()V

    .line 154
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 120
    return-void
.end method

.method protected maybeAddNumberFormatting()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/16 v5, 0xa

    const/16 v4, 0x9

    const/16 v3, 0x8

    const/4 v2, 0x7

    const/4 v1, 0x1

    .line 431
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 433
    :sswitch_0
    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 434
    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 438
    :sswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 439
    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 443
    :sswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 444
    invoke-direct {p0, v5}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 448
    :sswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 449
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 453
    :sswitch_4
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 454
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 458
    :sswitch_5
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 459
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 463
    :sswitch_6
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 464
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 468
    :sswitch_7
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 469
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 473
    :sswitch_8
    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 474
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 478
    :sswitch_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 479
    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 483
    :sswitch_a
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 484
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 488
    :sswitch_b
    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 489
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 493
    :sswitch_c
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 497
    :sswitch_d
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 498
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    goto :goto_0

    .line 502
    :sswitch_e
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto/16 :goto_0

    .line 431
    :sswitch_data_0
    .sparse-switch
        0x7f080047 -> :sswitch_d
        0x7f080048 -> :sswitch_c
        0x7f08004b -> :sswitch_0
        0x7f08004c -> :sswitch_1
        0x7f08004d -> :sswitch_2
        0x7f08004e -> :sswitch_3
        0x7f08004f -> :sswitch_4
        0x7f080050 -> :sswitch_5
        0x7f080051 -> :sswitch_6
        0x7f080052 -> :sswitch_7
        0x7f080053 -> :sswitch_8
        0x7f080054 -> :sswitch_b
        0x7f080055 -> :sswitch_9
        0x7f080056 -> :sswitch_a
        0x7f080077 -> :sswitch_e
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    const-string v9, "EmergencyDialer"

    .line 158
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 164
    const v5, 0x7f03001a

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->setContentView(I)V

    .line 167
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 168
    .local v3, r:Landroid/content/res/Resources;
    const v5, 0x7f020023

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDigitsBackground:Landroid/graphics/drawable/Drawable;

    .line 171
    const v5, 0x7f080077

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    .line 172
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 173
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 175
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 176
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->maybeAddNumberFormatting()V

    .line 179
    const v5, 0x7f08004b

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 180
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->setupKeypad()V

    .line 184
    :cond_0
    const v5, 0x7f080046

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/EmergencyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    .line 187
    const v5, 0x7f0a000d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 196
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    const v6, 0x7f080047

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    .line 197
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    const v6, 0x7f080048

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    .line 200
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 208
    :goto_0
    if-eqz p1, :cond_1

    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 214
    :cond_1
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v5

    .line 215
    :try_start_0
    iget-object v6, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_2

    .line 220
    :try_start_1
    new-instance v6, Landroid/media/ToneGenerator;

    const/4 v7, 0x3

    const/16 v8, 0x50

    invoke-direct {v6, v7, v8}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v6, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 221
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/android/phone/EmergencyDialer;->setVolumeControlStream(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 227
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 230
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/android/phone/EmergencyDialer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    :try_start_3
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    const v6, 0x7f0a0005

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    invoke-virtual {v5, p0, v6}, Lcom/android/phone/HapticFeedback;->init(Landroid/content/Context;Z)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 238
    :goto_2
    return-void

    .line 203
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_3
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iput-object v7, p0, Lcom/android/phone/EmergencyDialer;->mVoicemailDialAndDeleteRow:Landroid/view/View;

    goto :goto_0

    .line 222
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 223
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v6, "EmergencyDialer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception caught while creating local tone generator: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_1

    .line 227
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 235
    .restart local v1       #intentFilter:Landroid/content/IntentFilter;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 236
    .local v2, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "EmergencyDialer"

    const-string v5, "Vibrate control bool missing."

    invoke-static {v9, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 683
    const/4 v0, 0x0

    .line 684
    .local v0, dialog:Landroid/app/AlertDialog;
    if-nez p1, :cond_0

    .line 686
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d01a8

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d003e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 693
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 695
    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 243
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 246
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 248
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 250
    return-void

    .line 248
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 419
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 427
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 421
    :pswitch_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    .line 423
    const/4 v0, 0x1

    goto :goto_0

    .line 419
    :pswitch_data_0
    .packed-switch 0x7f080077
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v4, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 307
    packed-switch p1, :pswitch_data_0

    .line 409
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 309
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->finish()V

    :goto_1
    move v1, v3

    .line 318
    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    goto :goto_1

    .line 326
    :pswitch_2
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v5}, Landroid/view/KeyEvent;-><init>(II)V

    .line 327
    .local v0, _event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v5, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v1, v3

    .line 328
    goto :goto_0

    .line 333
    .end local v0           #_event:Landroid/view/KeyEvent;
    :pswitch_3
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v6}, Landroid/view/KeyEvent;-><init>(II)V

    .line 334
    .restart local v0       #_event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v6, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v1, v3

    .line 335
    goto :goto_0

    .line 339
    .end local v0           #_event:Landroid/view/KeyEvent;
    :pswitch_4
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v1, 0xa

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 340
    .restart local v0       #_event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v1, v3

    .line 341
    goto :goto_0

    .line 345
    .end local v0           #_event:Landroid/view/KeyEvent;
    :pswitch_5
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v1, 0xb

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 346
    .restart local v0       #_event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v1, v3

    .line 347
    goto :goto_0

    .line 351
    .end local v0           #_event:Landroid/view/KeyEvent;
    :pswitch_6
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v1, 0xc

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 352
    .restart local v0       #_event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v1, v3

    .line 353
    goto :goto_0

    .line 357
    .end local v0           #_event:Landroid/view/KeyEvent;
    :pswitch_7
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v1, 0xd

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 358
    .restart local v0       #_event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v1, v3

    .line 359
    goto :goto_0

    .line 363
    .end local v0           #_event:Landroid/view/KeyEvent;
    :pswitch_8
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v1, 0xe

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 364
    .restart local v0       #_event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v1, v3

    .line 365
    goto/16 :goto_0

    .line 369
    .end local v0           #_event:Landroid/view/KeyEvent;
    :pswitch_9
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v1, 0xf

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 370
    .restart local v0       #_event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v1, v3

    .line 371
    goto/16 :goto_0

    .line 375
    .end local v0           #_event:Landroid/view/KeyEvent;
    :pswitch_a
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v1, 0x10

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 376
    .restart local v0       #_event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v1, v3

    .line 377
    goto/16 :goto_0

    .line 381
    .end local v0           #_event:Landroid/view/KeyEvent;
    :pswitch_b
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 382
    .restart local v0       #_event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v4, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v1, v3

    .line 383
    goto/16 :goto_0

    .line 388
    .end local v0           #_event:Landroid/view/KeyEvent;
    :pswitch_c
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v1, 0x12

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 389
    .restart local v0       #_event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v1, v3

    .line 390
    goto/16 :goto_0

    .line 394
    .end local v0           #_event:Landroid/view/KeyEvent;
    :pswitch_d
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 395
    .restart local v0       #_event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v1, v3

    .line 396
    goto/16 :goto_0

    .line 400
    .end local v0           #_event:Landroid/view/KeyEvent;
    :pswitch_e
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v1, v3

    .line 402
    goto/16 :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_b
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 514
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 515
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    move v1, v2

    .line 529
    :goto_0
    return v1

    .line 517
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 521
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    move v1, v3

    .line 522
    goto :goto_0

    .line 525
    :sswitch_1
    const/16 v1, 0x51

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    move v1, v3

    .line 526
    goto :goto_0

    .line 515
    :sswitch_data_0
    .sparse-switch
        0x7f080048 -> :sswitch_0
        0x7f080055 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneApp;

    .line 575
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->reenableStatusBar()V

    .line 576
    sget-object v1, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 578
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 580
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 581
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v2, :cond_0

    .line 582
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v2}, Landroid/media/ToneGenerator;->release()V

    .line 583
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 585
    :cond_0
    monitor-exit v1

    .line 586
    return-void

    .line 585
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 279
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 280
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 700
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 701
    if-nez p1, :cond_0

    .line 702
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    move-object v1, v0

    .line 703
    .local v1, alert:Landroid/app/AlertDialog;
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 705
    .end local v1           #alert:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 254
    const-string v0, "lastNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    .line 255
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 534
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 539
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/EmergencyDialer;->mDTMFToneEnabled:Z

    .line 543
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v2}, Lcom/android/phone/HapticFeedback;->checkSystemSetting()V

    .line 547
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 548
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 550
    :try_start_1
    new-instance v3, Landroid/media/ToneGenerator;

    const/16 v4, 0x8

    const/16 v5, 0x50

    invoke-direct {v3, v4, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 557
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 562
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneApp;

    .line 563
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->disableStatusBar()V

    .line 564
    sget-object v2, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->MEDIUM:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 566
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDialAndDeleteButtonStateEnabledAttr()V

    .line 567
    return-void

    .line 552
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 553
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v3, "EmergencyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught while creating local tone generator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0

    .line 557
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 259
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 260
    const-string v0, "lastNumber"

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 124
    return-void
.end method

.method placeCall()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 592
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    .line 594
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 629
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 630
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->showDialog(I)V

    .line 632
    :goto_0
    return-void

    .line 600
    :cond_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 602
    :cond_1
    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    .line 613
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 616
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "tel"

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 617
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 623
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->startActivity(Landroid/content/Intent;)V

    .line 624
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->finish()V

    goto :goto_0
.end method

.method playTone(I)V
    .locals 6
    .parameter "tone"

    .prologue
    .line 646
    iget-boolean v2, p0, Lcom/android/phone/EmergencyDialer;->mDTMFToneEnabled:Z

    if-nez v2, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 656
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 657
    .local v1, ringerMode:I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 662
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 663
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v3, :cond_2

    .line 664
    const-string v3, "EmergencyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    monitor-exit v2

    goto :goto_0

    .line 670
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 669
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v4, 0x96

    invoke-virtual {v3, p1, v4}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 670
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
