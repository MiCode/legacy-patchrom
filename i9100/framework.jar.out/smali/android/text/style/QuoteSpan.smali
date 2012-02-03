.class public Landroid/text/style/QuoteSpan;
.super Ljava/lang/Object;
.source "QuoteSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/ParcelableSpan;


# static fields
.field private static final GAP_WIDTH:I = 0x2

.field private static final STRIPE_WIDTH:I = 0x2


# instance fields
.field private final mColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const v0, -0xffff01

    iput v0, p0, Landroid/text/style/QuoteSpan;->mColor:I

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Landroid/text/style/QuoteSpan;->mColor:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/QuoteSpan;->mColor:I

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 8
    .parameter "c"
    .parameter "p"
    .parameter "x"
    .parameter "dir"
    .parameter "top"
    .parameter "baseline"
    .parameter "bottom"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "first"
    .parameter "layout"

    .prologue
    .line 70
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v7

    .line 71
    .local v7, style:Landroid/graphics/Paint$Style;
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 73
    .local v6, color:I
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget v0, p0, Landroid/text/style/QuoteSpan;->mColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    int-to-float v1, p3

    int-to-float v2, p5

    mul-int/lit8 v0, p4, 0x2

    add-int/2addr v0, p3

    int-to-float v3, v0

    int-to-float v4, p7

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 78
    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Landroid/text/style/QuoteSpan;->mColor:I

    return v0
.end method

.method public getLeadingMargin(Z)I
    .locals 1
    .parameter "first"

    .prologue
    .line 63
    const/4 v0, 0x4

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x9

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 55
    iget v0, p0, Landroid/text/style/QuoteSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return-void
.end method
