.class Landroid/view/Surface$CompatibleCanvas;
.super Landroid/graphics/Canvas;
.source "Surface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompatibleCanvas"
.end annotation


# instance fields
.field private mOrigMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Landroid/view/Surface;


# direct methods
.method private constructor <init>(Landroid/view/Surface;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Landroid/view/Surface$CompatibleCanvas;->this$0:Landroid/view/Surface;

    invoke-direct {p0}, Landroid/graphics/Canvas;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/Surface$CompatibleCanvas;->mOrigMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/Surface;Landroid/view/Surface$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;)V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/Surface$CompatibleCanvas;->this$0:Landroid/view/Surface;

    #getter for: Landroid/view/Surface;->mCompatibleDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Landroid/view/Surface;->access$100(Landroid/view/Surface;)Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/Surface$CompatibleCanvas;->this$0:Landroid/view/Surface;

    #getter for: Landroid/view/Surface;->mCompatibleDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Landroid/view/Surface;->access$100(Landroid/view/Surface;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .parameter "m"

    .prologue
    invoke-super {p0, p1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Landroid/view/Surface$CompatibleCanvas;->mOrigMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/Surface$CompatibleCanvas;->mOrigMatrix:Landroid/graphics/Matrix;

    :cond_0
    iget-object v0, p0, Landroid/view/Surface$CompatibleCanvas;->mOrigMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getWidth()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/Surface$CompatibleCanvas;->this$0:Landroid/view/Surface;

    #getter for: Landroid/view/Surface;->mCompatibleDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Landroid/view/Surface;->access$100(Landroid/view/Surface;)Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/Surface$CompatibleCanvas;->this$0:Landroid/view/Surface;

    #getter for: Landroid/view/Surface;->mCompatibleDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v0}, Landroid/view/Surface;->access$100(Landroid/view/Surface;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 2
    .parameter "matrix"

    .prologue
    iget-object v1, p0, Landroid/view/Surface$CompatibleCanvas;->this$0:Landroid/view/Surface;

    #getter for: Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Landroid/view/Surface;->access$200(Landroid/view/Surface;)Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/Surface$CompatibleCanvas;->mOrigMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/Surface$CompatibleCanvas;->mOrigMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/Surface$CompatibleCanvas;->this$0:Landroid/view/Surface;

    #getter for: Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Landroid/view/Surface;->access$200(Landroid/view/Surface;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .local v0, m:Landroid/graphics/Matrix;
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-super {p0, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method
