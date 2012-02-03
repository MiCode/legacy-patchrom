.class Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;
.super Ljava/lang/Object;
.source "PhoneLockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchInput"
.end annotation


# instance fields
.field private mEight:Landroid/widget/TextView;

.field private mFive:Landroid/widget/TextView;

.field private mFour:Landroid/widget/TextView;

.field private mNine:Landroid/widget/TextView;

.field private mOne:Landroid/widget/TextView;

.field private mSeven:Landroid/widget/TextView;

.field private mSix:Landroid/widget/TextView;

.field private mThree:Landroid/widget/TextView;

.field private mTwo:Landroid/widget/TextView;

.field private mZero:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneLockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneLockScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/PhoneLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    const v0, 0x1020257

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PhoneLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    .line 313
    const v0, 0x102024e

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PhoneLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    .line 314
    const v0, 0x102024f

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PhoneLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 315
    const v0, 0x1020250

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PhoneLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    .line 316
    const v0, 0x1020251

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PhoneLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    .line 317
    const v0, 0x1020252

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PhoneLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    .line 318
    const v0, 0x1020253

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PhoneLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    .line 319
    const v0, 0x1020254

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PhoneLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 320
    const v0, 0x1020255

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PhoneLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    .line 321
    const v0, 0x1020256

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PhoneLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    .line 325
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneLockScreen;Lcom/android/internal/policy/impl/PhoneLockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/PhoneLockScreen;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 367
    const/4 v0, -0x1

    .line 368
    .local v0, digit:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 369
    const/4 v0, 0x0

    .line 389
    :cond_0
    :goto_0
    return v0

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 371
    const/4 v0, 0x1

    goto :goto_0

    .line 372
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 373
    const/4 v0, 0x2

    goto :goto_0

    .line 374
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 375
    const/4 v0, 0x3

    goto :goto_0

    .line 376
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 377
    const/4 v0, 0x4

    goto :goto_0

    .line 378
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 379
    const/4 v0, 0x5

    goto :goto_0

    .line 380
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 381
    const/4 v0, 0x6

    goto :goto_0

    .line 382
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    .line 383
    const/4 v0, 0x7

    goto :goto_0

    .line 384
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    .line 385
    const/16 v0, 0x8

    goto :goto_0

    .line 386
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 387
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 360
    .local v0, digit:I
    if-ltz v0, :cond_0

    .line 361
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/PhoneLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PhoneLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneLockScreen;->access$400(Lcom/android/internal/policy/impl/PhoneLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 362
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/PhoneLockScreen;

    #calls: Lcom/android/internal/policy/impl/PhoneLockScreen;->reportDigit(I)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/PhoneLockScreen;->access$500(Lcom/android/internal/policy/impl/PhoneLockScreen;I)V

    .line 364
    :cond_0
    return-void
.end method
