.class public Lcom/motorola/CameraF/View/TextChangeView;
.super Landroid/view/View;
.source "TextChangeView.java"


# instance fields
.field private mText:Ljava/lang/String;

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/View/TextChangeView;->mTextPaint:Landroid/text/TextPaint;

    .line 58
    invoke-direct {p0}, Lcom/motorola/CameraF/View/TextChangeView;->initView()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/View/TextChangeView;->mTextPaint:Landroid/text/TextPaint;

    .line 52
    invoke-direct {p0}, Lcom/motorola/CameraF/View/TextChangeView;->initView()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/View/TextChangeView;->mTextPaint:Landroid/text/TextPaint;

    .line 45
    invoke-direct {p0}, Lcom/motorola/CameraF/View/TextChangeView;->initView()V

    .line 48
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/motorola/CameraF/View/TextChangeView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v0, p0, Lcom/motorola/CameraF/View/TextChangeView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lcom/motorola/CameraF/View/TextChangeView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 72
    iget-object v0, p0, Lcom/motorola/CameraF/View/TextChangeView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 73
    iget-object v0, p0, Lcom/motorola/CameraF/View/TextChangeView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 74
    iget-object v0, p0, Lcom/motorola/CameraF/View/TextChangeView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 75
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 80
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 81
    .local v1, textRect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/motorola/CameraF/View/TextChangeView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/motorola/CameraF/View/TextChangeView;->mText:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/motorola/CameraF/View/TextChangeView;->mText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 82
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 84
    .local v0, textHeight:I
    iget-object v2, p0, Lcom/motorola/CameraF/View/TextChangeView;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/TextChangeView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/TextChangeView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/TextChangeView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/motorola/CameraF/View/TextChangeView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 86
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 87
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/motorola/CameraF/View/TextChangeView;->mText:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/TextChangeView;->invalidate()V

    .line 65
    return-void
.end method
