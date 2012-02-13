.class public Landroid/graphics/ComposeShader;
.super Landroid/graphics/Shader;
.source "ComposeShader.java"


# direct methods
.method public constructor <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V
    .locals 3
    .parameter "shaderA"
    .parameter "shaderB"
    .parameter "mode"

    .prologue
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    iget v0, p1, Landroid/graphics/Shader;->native_instance:I

    iget v1, p2, Landroid/graphics/Shader;->native_instance:I

    iget v2, p3, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/ComposeShader;->nativeCreate2(III)I

    move-result v0

    iput v0, p0, Landroid/graphics/Shader;->native_instance:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V
    .locals 3
    .parameter "shaderA"
    .parameter "shaderB"
    .parameter "mode"

    .prologue
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    iget v0, p1, Landroid/graphics/Shader;->native_instance:I

    iget v1, p2, Landroid/graphics/Shader;->native_instance:I

    if-eqz p3, :cond_0

    iget v2, p3, Landroid/graphics/Xfermode;->native_instance:I

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/ComposeShader;->nativeCreate1(III)I

    move-result v0

    iput v0, p0, Landroid/graphics/Shader;->native_instance:I

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static native nativeCreate1(III)I
.end method

.method private static native nativeCreate2(III)I
.end method
