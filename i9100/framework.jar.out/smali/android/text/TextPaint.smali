.class public Landroid/text/TextPaint;
.super Landroid/graphics/Paint;
.source "TextPaint.java"


# instance fields
.field public baselineShift:I

.field public bgColor:I

.field public density:F

.field public drawableState:[I

.field public linkColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 30
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    .line 30
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 30
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 42
    return-void
.end method


# virtual methods
.method public set(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "tp"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 51
    iget v0, p1, Landroid/text/TextPaint;->bgColor:I

    iput v0, p0, Landroid/text/TextPaint;->bgColor:I

    .line 52
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    iput v0, p0, Landroid/text/TextPaint;->baselineShift:I

    .line 53
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    iput v0, p0, Landroid/text/TextPaint;->linkColor:I

    .line 54
    iget-object v0, p1, Landroid/text/TextPaint;->drawableState:[I

    iput-object v0, p0, Landroid/text/TextPaint;->drawableState:[I

    .line 55
    iget v0, p1, Landroid/text/TextPaint;->density:F

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 56
    return-void
.end method
