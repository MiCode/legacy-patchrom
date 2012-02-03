.class public Landroid/graphics/PixelFormat;
.super Ljava/lang/Object;
.source "PixelFormat.java"


# static fields
.field public static final A_8:I = 0x8

.field public static final JPEG:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LA_88:I = 0xa

.field public static final L_8:I = 0x9

.field public static final OPAQUE:I = -0x1

.field public static final RGBA_4444:I = 0x7

.field public static final RGBA_5551:I = 0x6

.field public static final RGBA_8888:I = 0x1

.field public static final RGBX_8888:I = 0x2

.field public static final RGB_332:I = 0xb

.field public static final RGB_565:I = 0x4

.field public static final RGB_888:I = 0x3

.field public static final TRANSLUCENT:I = -0x3

.field public static final TRANSPARENT:I = -0x2

.field public static final UNKNOWN:I = 0x0

.field public static final YCbCr_420_SP:I = 0x11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YCbCr_422_I:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YCbCr_422_SP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public bitsPerPixel:I

.field public bytesPerPixel:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 83
    invoke-static {}, Landroid/graphics/PixelFormat;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatHasAlpha(I)Z
    .locals 1
    .parameter "format"

    .prologue
    .line 87
    packed-switch p0, :pswitch_data_0

    .line 97
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 95
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static native getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V
.end method

.method private static native nativeClassInit()V
.end method
