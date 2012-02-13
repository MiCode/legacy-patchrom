.class public Lcom/motorola/blur/setup/ProgressBadge;
.super Landroid/widget/LinearLayout;
.source "ProgressBadge.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mStep:I

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/motorola/blur/setup/ProgressBadge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/setup/ProgressBadge;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/motorola/blur/setup/ProgressBadge;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    sget-object v1, Lcom/motorola/blur/setup/R$styleable;->ProgressBadge:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 22
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/motorola/blur/setup/ProgressBadge;->mStep:I

    .line 23
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/ProgressBadge;->mText:Ljava/lang/String;

    .line 27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    invoke-direct {p0}, Lcom/motorola/blur/setup/ProgressBadge;->init()V

    .line 29
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    .line 38
    iget-object v2, p0, Lcom/motorola/blur/setup/ProgressBadge;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030037

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    const v2, 0x7f0b00e0

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/ProgressBadge;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 40
    .local v1, textView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/motorola/blur/setup/ProgressBadge;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const v2, 0x7f0b00e1

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/ProgressBadge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 42
    .local v0, imageView:Landroid/widget/ImageView;
    iget v2, p0, Lcom/motorola/blur/setup/ProgressBadge;->mStep:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 43
    return-void
.end method
