.class public Landroid/text/style/BulletSpan;
.super Ljava/lang/Object;
.source "BulletSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/ParcelableSpan;


# static fields
.field private static final BULLET_RADIUS:I = 0x3

.field public static final STANDARD_GAP_WIDTH:I = 0x2


# instance fields
.field private final mColor:I

.field private final mGapWidth:I

.field private final mWantColor:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    .line 37
    iput-boolean v1, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    .line 38
    iput v1, p0, Landroid/text/style/BulletSpan;->mColor:I

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "gapWidth"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    .line 43
    iput-boolean v0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    .line 44
    iput v0, p0, Landroid/text/style/BulletSpan;->mColor:I

    .line 45
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "gapWidth"
    .parameter "color"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    .line 50
    iput p2, p0, Landroid/text/style/BulletSpan;->mColor:I

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/BulletSpan;->mColor:I

    .line 57
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 5
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
    .parameter "l"

    .prologue
    .line 81
    check-cast p8, Landroid/text/Spanned;

    .end local p8
    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, p9, :cond_2

    .line 82
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    .line 83
    .local v1, style:Landroid/graphics/Paint$Style;
    const/4 v0, 0x0

    .line 85
    .local v0, oldcolor:I
    iget-boolean v2, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 87
    iget v2, p0, Landroid/text/style/BulletSpan;->mColor:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    :cond_0
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    mul-int/lit8 v2, p4, 0x3

    add-int/2addr v2, p3

    int-to-float v2, v2

    add-int v3, p5, p7

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    const/high16 v4, 0x4040

    invoke-virtual {p1, v2, v3, v4, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 95
    iget-boolean v2, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    if-eqz v2, :cond_1

    .line 96
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    :cond_1
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    .end local v0           #oldcolor:I
    .end local v1           #style:Landroid/graphics/Paint$Style;
    :cond_2
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1
    .parameter "first"

    .prologue
    .line 74
    iget v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0x8

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 68
    iget v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-boolean v0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Landroid/text/style/BulletSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
