.class public Lcom/motorola/internal/widget/LockPinView;
.super Landroid/widget/LinearLayout;
.source "LockPinView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/internal/widget/LockPinView$OnPinListener;,
        Lcom/motorola/internal/widget/LockPinView$DisplayMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NUMBER_OF_SHAKES:I = 0x7

.field private static final SHAKE_DURATION:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "LockPinView"


# instance fields
.field private mBackSpaceButton:Landroid/view/View;

.field private mCancelButton:Landroid/widget/ImageButton;

.field private mOkButton:Landroid/widget/ImageButton;

.field private mOnPinListener:Lcom/motorola/internal/widget/LockPinView$OnPinListener;

.field private mPinDisplayGroup:Landroid/widget/FrameLayout;

.field private mPinText:Landroid/widget/EditText;

.field private shakeIt:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x109008f

    const/4 v4, 0x1

    invoke-virtual {v0, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x10201fc

    invoke-virtual {p0, v0}, Lcom/motorola/internal/widget/LockPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/motorola/internal/widget/LockPinView;->mPinDisplayGroup:Landroid/widget/FrameLayout;

    const v0, 0x10201fd

    invoke-virtual {p0, v0}, Lcom/motorola/internal/widget/LockPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/motorola/internal/widget/LockPinView;->mPinText:Landroid/widget/EditText;

    const v0, 0x10201fe

    invoke-virtual {p0, v0}, Lcom/motorola/internal/widget/LockPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/internal/widget/LockPinView;->mBackSpaceButton:Landroid/view/View;

    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinView;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x10201e4

    invoke-virtual {p0, v0}, Lcom/motorola/internal/widget/LockPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/internal/widget/LockPinView;->mOkButton:Landroid/widget/ImageButton;

    const v0, 0x10201af

    invoke-virtual {p0, v0}, Lcom/motorola/internal/widget/LockPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/internal/widget/LockPinView;->mCancelButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinView;->mPinText:Landroid/widget/EditText;

    const v3, 0x1040298

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinView;->mPinText:Landroid/widget/EditText;

    new-instance v3, Lcom/motorola/internal/widget/LockPinView$1;

    invoke-direct {v3, p0}, Lcom/motorola/internal/widget/LockPinView$1;-><init>(Lcom/motorola/internal/widget/LockPinView;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinView;->mOkButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinView;->mCancelButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/motorola/internal/widget/LockPinView;->setupKeypad(Landroid/view/View;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v4, 0x3c23d70a

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/motorola/internal/widget/LockPinView;->shakeIt:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinView;->shakeIt:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/CycleInterpolator;

    const/high16 v2, 0x40e0

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinView;->shakeIt:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/internal/widget/LockPinView;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinView;->mPinText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/internal/widget/LockPinView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/motorola/internal/widget/LockPinView;->ok()V

    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinView;->mPinText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinView;->mOnPinListener:Lcom/motorola/internal/widget/LockPinView$OnPinListener;

    invoke-interface {v0}, Lcom/motorola/internal/widget/LockPinView$OnPinListener;->onPinCanceled()V

    return-void
.end method

.method private keyPressed(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/motorola/internal/widget/LockPinView;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return-void
.end method

.method private ok()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinView;->mOnPinListener:Lcom/motorola/internal/widget/LockPinView$OnPinListener;

    iget-object v1, p0, Lcom/motorola/internal/widget/LockPinView;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/motorola/internal/widget/LockPinView$OnPinListener;->onPinDetected(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinView;->mPinText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public clearPin()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinView;->mPinText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinView;->mOnPinListener:Lcom/motorola/internal/widget/LockPinView$OnPinListener;

    iget-object v1, p0, Lcom/motorola/internal/widget/LockPinView;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/motorola/internal/widget/LockPinView$OnPinListener;->onPinClicked(Ljava/lang/String;)V

    return-void

    :sswitch_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/motorola/internal/widget/LockPinView;->keyPressed(I)V

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/motorola/internal/widget/LockPinView;->keyPressed(I)V

    goto :goto_0

    :sswitch_2
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/motorola/internal/widget/LockPinView;->keyPressed(I)V

    goto :goto_0

    :sswitch_3
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/motorola/internal/widget/LockPinView;->keyPressed(I)V

    goto :goto_0

    :sswitch_4
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/motorola/internal/widget/LockPinView;->keyPressed(I)V

    goto :goto_0

    :sswitch_5
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/motorola/internal/widget/LockPinView;->keyPressed(I)V

    goto :goto_0

    :sswitch_6
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/motorola/internal/widget/LockPinView;->keyPressed(I)V

    goto :goto_0

    :sswitch_7
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/motorola/internal/widget/LockPinView;->keyPressed(I)V

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/motorola/internal/widget/LockPinView;->keyPressed(I)V

    goto :goto_0

    :sswitch_9
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/motorola/internal/widget/LockPinView;->keyPressed(I)V

    goto :goto_0

    :sswitch_a
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/motorola/internal/widget/LockPinView;->keyPressed(I)V

    goto :goto_0

    :sswitch_b
    invoke-direct {p0}, Lcom/motorola/internal/widget/LockPinView;->cancel()V

    goto :goto_0

    :sswitch_c
    invoke-direct {p0}, Lcom/motorola/internal/widget/LockPinView;->ok()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x10201af -> :sswitch_b
        0x10201e4 -> :sswitch_c
        0x10201fe -> :sswitch_a
        0x1020203 -> :sswitch_0
        0x1020204 -> :sswitch_1
        0x1020205 -> :sswitch_2
        0x1020206 -> :sswitch_3
        0x1020207 -> :sswitch_4
        0x1020208 -> :sswitch_5
        0x1020209 -> :sswitch_6
        0x102020a -> :sswitch_7
        0x102020b -> :sswitch_8
        0x102020c -> :sswitch_9
    .end sparse-switch
.end method

.method public pinAlert()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinView;->mPinDisplayGroup:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/motorola/internal/widget/LockPinView;->shakeIt:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setCancelButton(I)V
    .locals 2
    .parameter "drawableResource"

    .prologue
    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinView;->mCancelButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/motorola/internal/widget/LockPinView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDisplayMode(Lcom/motorola/internal/widget/LockPinView$DisplayMode;)V
    .locals 0
    .parameter "displayMode"

    .prologue
    return-void
.end method

.method public setEnabled(Z)V
    .locals 7
    .parameter "enabled"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const/16 v6, 0xc

    new-array v3, v6, [I

    fill-array-data v3, :array_0

    .local v3, keydata:[I
    move-object v0, v3

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget v5, v0, v1

    .local v5, r:I
    invoke-virtual {p0, v5}, Lcom/motorola/internal/widget/LockPinView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .local v2, keyView:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2           #keyView:Landroid/view/View;
    .end local v5           #r:I
    :cond_0
    return-void

    :array_0
    .array-data 0x4
        0x3t 0x2t 0x2t 0x1t
        0x4t 0x2t 0x2t 0x1t
        0x5t 0x2t 0x2t 0x1t
        0x6t 0x2t 0x2t 0x1t
        0x7t 0x2t 0x2t 0x1t
        0x8t 0x2t 0x2t 0x1t
        0x9t 0x2t 0x2t 0x1t
        0xat 0x2t 0x2t 0x1t
        0xbt 0x2t 0x2t 0x1t
        0xct 0x2t 0x2t 0x1t
        0xe4t 0x1t 0x2t 0x1t
        0xaft 0x1t 0x2t 0x1t
    .end array-data
.end method

.method public setOnPinListener(Lcom/motorola/internal/widget/LockPinView$OnPinListener;)V
    .locals 0
    .parameter "onPinListener"

    .prologue
    iput-object p1, p0, Lcom/motorola/internal/widget/LockPinView;->mOnPinListener:Lcom/motorola/internal/widget/LockPinView$OnPinListener;

    return-void
.end method

.method public setPinHint(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "hint"

    .prologue
    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinView;->mPinText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setupKeypad(Landroid/view/View;)V
    .locals 13
    .parameter "activity"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x4

    const/16 v6, 0xa

    new-array v3, v6, [[I

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    aput-object v6, v3, v9

    new-array v6, v8, [I

    fill-array-data v6, :array_1

    aput-object v6, v3, v10

    new-array v6, v8, [I

    fill-array-data v6, :array_2

    aput-object v6, v3, v11

    new-array v6, v8, [I

    fill-array-data v6, :array_3

    aput-object v6, v3, v12

    new-array v6, v8, [I

    fill-array-data v6, :array_4

    aput-object v6, v3, v8

    const/4 v6, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_5

    aput-object v7, v3, v6

    const/4 v6, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_6

    aput-object v7, v3, v6

    const/4 v6, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_7

    aput-object v7, v3, v6

    const/16 v6, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_8

    aput-object v7, v3, v6

    const/16 v6, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_9

    aput-object v7, v3, v6

    .local v3, keydata:[[I
    move-object v0, v3

    .local v0, arr$:[[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v0, v1

    .local v5, r:[I
    aget v6, v5, v9

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .local v2, keyView:Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x102026f

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    aget v7, v5, v11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    aget v6, v5, v10

    if-nez v6, :cond_0

    const v6, 0x1020270

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    aget v7, v5, v12

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2           #keyView:Landroid/view/View;
    .end local v5           #r:[I
    :cond_1
    return-void

    :array_0
    .array-data 0x4
        0x3t 0x2t 0x2t 0x1t
        0x1t 0x0t 0x0t 0x0t
        0xd0t 0x3t 0x4t 0x1t
        0xdat 0x3t 0x4t 0x1t
    .end array-data

    :array_1
    .array-data 0x4
        0x4t 0x2t 0x2t 0x1t
        0x1t 0x0t 0x0t 0x0t
        0xd1t 0x3t 0x4t 0x1t
        0xdbt 0x3t 0x4t 0x1t
    .end array-data

    :array_2
    .array-data 0x4
        0x5t 0x2t 0x2t 0x1t
        0x1t 0x0t 0x0t 0x0t
        0xd2t 0x3t 0x4t 0x1t
        0xdct 0x3t 0x4t 0x1t
    .end array-data

    :array_3
    .array-data 0x4
        0x6t 0x2t 0x2t 0x1t
        0x1t 0x0t 0x0t 0x0t
        0xd3t 0x3t 0x4t 0x1t
        0xddt 0x3t 0x4t 0x1t
    .end array-data

    :array_4
    .array-data 0x4
        0x7t 0x2t 0x2t 0x1t
        0x1t 0x0t 0x0t 0x0t
        0xd4t 0x3t 0x4t 0x1t
        0xdet 0x3t 0x4t 0x1t
    .end array-data

    :array_5
    .array-data 0x4
        0x8t 0x2t 0x2t 0x1t
        0x1t 0x0t 0x0t 0x0t
        0xd5t 0x3t 0x4t 0x1t
        0xdft 0x3t 0x4t 0x1t
    .end array-data

    :array_6
    .array-data 0x4
        0x9t 0x2t 0x2t 0x1t
        0x1t 0x0t 0x0t 0x0t
        0xd6t 0x3t 0x4t 0x1t
        0xe0t 0x3t 0x4t 0x1t
    .end array-data

    :array_7
    .array-data 0x4
        0xat 0x2t 0x2t 0x1t
        0x1t 0x0t 0x0t 0x0t
        0xd7t 0x3t 0x4t 0x1t
        0xe1t 0x3t 0x4t 0x1t
    .end array-data

    :array_8
    .array-data 0x4
        0xbt 0x2t 0x2t 0x1t
        0x1t 0x0t 0x0t 0x0t
        0xd8t 0x3t 0x4t 0x1t
        0xe2t 0x3t 0x4t 0x1t
    .end array-data

    :array_9
    .array-data 0x4
        0xct 0x2t 0x2t 0x1t
        0x1t 0x0t 0x0t 0x0t
        0xd9t 0x3t 0x4t 0x1t
        0xe3t 0x3t 0x4t 0x1t
    .end array-data
.end method
