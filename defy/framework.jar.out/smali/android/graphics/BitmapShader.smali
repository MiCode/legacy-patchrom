.class public Landroid/graphics/BitmapShader;
.super Landroid/graphics/Shader;
.source "BitmapShader.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 3
    .parameter "bitmap"
    .parameter "tileX"
    .parameter "tileY"

    .prologue
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    iput-object p1, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v0

    iget v1, p2, Landroid/graphics/Shader$TileMode;->nativeInt:I

    iget v2, p3, Landroid/graphics/Shader$TileMode;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapShader;->nativeCreate(III)I

    move-result v0

    iput v0, p0, Landroid/graphics/Shader;->native_instance:I

    return-void
.end method

.method private static native nativeCreate(III)I
.end method
