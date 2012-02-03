.class public Landroid/view/animation/Transformation;
.super Ljava/lang/Object;
.source "Transformation.java"


# static fields
.field public static TYPE_ALPHA:I

.field public static TYPE_BOTH:I

.field public static TYPE_IDENTITY:I

.field public static TYPE_MATRIX:I


# instance fields
.field protected mAlpha:F

.field protected mMatrix:Landroid/graphics/Matrix;

.field protected mTransformationType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const/4 v0, 0x0

    sput v0, Landroid/view/animation/Transformation;->TYPE_IDENTITY:I

    .line 36
    const/4 v0, 0x1

    sput v0, Landroid/view/animation/Transformation;->TYPE_ALPHA:I

    .line 40
    const/4 v0, 0x2

    sput v0, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    .line 44
    sget v0, Landroid/view/animation/Transformation;->TYPE_ALPHA:I

    sget v1, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    or-int/2addr v0, v1

    sput v0, Landroid/view/animation/Transformation;->TYPE_BOTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0}, Landroid/view/animation/Transformation;->clear()V

    .line 55
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    .line 68
    :goto_0
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 69
    sget v0, Landroid/view/animation/Transformation;->TYPE_BOTH:I

    iput v0, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    .line 70
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0
.end method

.method public compose(Landroid/view/animation/Transformation;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 110
    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 111
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 112
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    return v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getTransformationType()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    return v0
.end method

.method public printShortString(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "pw"

    .prologue
    .line 168
    const-string/jumbo v0, "{alpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 169
    const-string v0, " matrix="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 171
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 172
    return-void
.end method

.method public set(Landroid/view/animation/Transformation;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v0

    iput v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 100
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 101
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v0

    iput v0, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    .line 102
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 127
    iput p1, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 128
    return-void
.end method

.method public setTransformationType(I)V
    .locals 0
    .parameter "transformationType"

    .prologue
    .line 90
    iput p1, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    .line 91
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 150
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->toShortString(Ljava/lang/StringBuilder;)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "sb"

    .prologue
    .line 158
    const-string/jumbo v0, "{alpha="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 159
    const-string v0, " matrix="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->toShortString(Ljava/lang/StringBuilder;)V

    .line 160
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 140
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Transformation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->toShortString(Ljava/lang/StringBuilder;)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
