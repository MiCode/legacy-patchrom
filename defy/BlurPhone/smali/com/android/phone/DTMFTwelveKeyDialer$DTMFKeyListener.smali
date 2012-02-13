.class Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;
.super Landroid/text/method/DialerKeyListener;
.source "DTMFTwelveKeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DTMFTwelveKeyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DTMFKeyListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;
    }
.end annotation


# instance fields
.field public final DTMF_CHARACTERS:[C

.field private mDTMFDisplayAnimation:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;

.field final synthetic this$0:Lcom/android/phone/DTMFTwelveKeyDialer;


# direct methods
.method private constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialer;)V
    .locals 1
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 350
    invoke-direct {p0}, Landroid/text/method/DialerKeyListener;-><init>()V

    .line 567
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->DTMF_CHARACTERS:[C

    .line 351
    return-void

    .line 567
    nop

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
        0x23t 0x0t
        0x2at 0x0t
    .end array-data
.end method

.method private constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialer;Landroid/widget/EditText;)V
    .locals 1
    .parameter
    .parameter "display"

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;-><init>(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    .line 357
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    new-instance v0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;

    invoke-direct {v0, p0, p2}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;-><init>(Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->mDTMFDisplayAnimation:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;

    .line 359
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->mDTMFDisplayAnimation:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->prepareFadeIn()V

    .line 361
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialer;Lcom/android/phone/DTMFTwelveKeyDialer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;-><init>(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    return-void
.end method

.method private isAcceptableModifierKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 383
    packed-switch p1, :pswitch_data_0

    .line 390
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 388
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private lookup(Landroid/view/KeyEvent;)C
    .locals 4
    .parameter "event"

    .prologue
    .line 545
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 546
    .local v1, meta:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getNumber()C

    move-result v2

    .line 548
    .local v2, number:I
    and-int/lit8 v3, v1, 0x3

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    .line 550
    .local v0, match:I
    if-eqz v0, :cond_1

    move v2, v0

    .line 553
    .end local v0           #match:I
    :cond_1
    int-to-char v3, v2

    return v3
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->DTMF_CHARACTERS:[C

    return-object v0
.end method

.method isKeyEventAcceptable(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;)C

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->ok([CC)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const-string v4, "\' from input."

    .line 471
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;)C

    move-result v0

    .line 472
    .local v0, c:C
    invoke-static {}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DTMFKeyListener.onKeyDown: event \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$100(Ljava/lang/String;)V

    .line 475
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    .line 477
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->ok([CC)Z

    move-result v1

    .line 479
    .local v1, keyOK:Z
    if-eqz v1, :cond_1

    .line 480
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$300(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/phone/InCallScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->openDialerforKeyboard()V

    .line 483
    :cond_1
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->mDTMFDisplayAnimation:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 485
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->mDTMFDisplayAnimation:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->onKeyDown()V

    .line 489
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->ok([CC)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 490
    invoke-static {}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DTMFKeyListener reading \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' from input."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$100(Ljava/lang/String;)V

    .line 491
    :cond_3
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->processDtmf(C)V
    invoke-static {v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$200(Lcom/android/phone/DTMFTwelveKeyDialer;C)V

    .line 492
    const/4 v2, 0x1

    .line 497
    .end local v1           #keyOK:Z
    :goto_0
    return v2

    .line 493
    .restart local v1       #keyOK:Z
    :cond_4
    invoke-static {}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DTMFKeyListener rejecting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' from input."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$100(Ljava/lang/String;)V

    .line 497
    .end local v1           #keyOK:Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-string v4, "\' from input."

    .line 408
    invoke-virtual {p0, p4, p2}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v2

    int-to-char v0, v2

    .line 411
    .local v0, c:C
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DialerKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 413
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->ok([CC)Z

    move-result v1

    .line 416
    .local v1, keyOK:Z
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->mDTMFDisplayAnimation:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    invoke-direct {p0, p3}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->isAcceptableModifierKey(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    :cond_0
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->mDTMFDisplayAnimation:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->onKeyDown()V

    .line 422
    :cond_1
    if-eqz v1, :cond_4

    .line 423
    invoke-static {}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DTMFKeyListener reading \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' from input."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$100(Ljava/lang/String;)V

    .line 424
    :cond_2
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->processDtmf(C)V
    invoke-static {v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$200(Lcom/android/phone/DTMFTwelveKeyDialer;C)V

    .line 428
    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 430
    .end local v1           #keyOK:Z
    :goto_1
    return v2

    .line 425
    .restart local v1       #keyOK:Z
    :cond_4
    invoke-static {}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DTMFKeyListener rejecting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' from input."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$100(Ljava/lang/String;)V

    goto :goto_0

    .line 430
    .end local v1           #keyOK:Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onKeyUp(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const-string v5, "\'"

    .line 508
    if-nez p1, :cond_0

    move v2, v4

    .line 534
    :goto_0
    return v2

    .line 516
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;)C

    move-result v0

    .line 517
    .local v0, c:C
    invoke-static {}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DTMFKeyListener.onKeyUp: event \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$100(Ljava/lang/String;)V

    .line 520
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->ok([CC)Z

    move-result v1

    .line 521
    .local v1, keyOK:Z
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->mDTMFDisplayAnimation:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 523
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->mDTMFDisplayAnimation:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->onKeyUp()V

    .line 528
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->ok([CC)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 529
    invoke-static {}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping the tone for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$100(Ljava/lang/String;)V

    .line 530
    :cond_3
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    move v2, v4

    .line 531
    goto :goto_0

    .line 534
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 446
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DialerKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 449
    invoke-virtual {p0, p4, p2}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v2

    int-to-char v0, v2

    .line 451
    .local v0, c:C
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->ok([CC)Z

    move-result v1

    .line 454
    .local v1, keyOK:Z
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->mDTMFDisplayAnimation:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    invoke-direct {p0, p3}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->isAcceptableModifierKey(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    :cond_0
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->mDTMFDisplayAnimation:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->onKeyUp()V

    .line 458
    :cond_1
    if-eqz v1, :cond_3

    .line 459
    invoke-static {}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping the tone for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$100(Ljava/lang/String;)V

    .line 460
    :cond_2
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    .line 461
    const/4 v2, 0x1

    .line 464
    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method
