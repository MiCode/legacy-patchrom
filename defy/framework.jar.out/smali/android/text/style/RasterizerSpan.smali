.class public Landroid/text/style/RasterizerSpan;
.super Landroid/text/style/CharacterStyle;
.source "RasterizerSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private mRasterizer:Landroid/graphics/Rasterizer;


# direct methods
.method public constructor <init>(Landroid/graphics/Rasterizer;)V
    .locals 0
    .parameter "r"

    .prologue
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    iput-object p1, p0, Landroid/text/style/RasterizerSpan;->mRasterizer:Landroid/graphics/Rasterizer;

    return-void
.end method


# virtual methods
.method public getRasterizer()Landroid/graphics/Rasterizer;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/text/style/RasterizerSpan;->mRasterizer:Landroid/graphics/Rasterizer;

    return-object v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "ds"

    .prologue
    iget-object v0, p0, Landroid/text/style/RasterizerSpan;->mRasterizer:Landroid/graphics/Rasterizer;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setRasterizer(Landroid/graphics/Rasterizer;)Landroid/graphics/Rasterizer;

    return-void
.end method
