.class public Landroid/graphics/Region;
.super Ljava/lang/Object;
.source "Region.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Region$Op;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mNativeRegion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 284
    new-instance v0, Landroid/graphics/Region$1;

    invoke-direct {v0}, Landroid/graphics/Region$1;-><init>()V

    sput-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Landroid/graphics/Region;->nativeConstructor()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/graphics/Region;-><init>(I)V

    .line 43
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .parameter "ni"

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    if-nez p1, :cond_0

    .line 333
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 335
    :cond_0
    iput p1, p0, Landroid/graphics/Region;->mNativeRegion:I

    .line 336
    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .parameter "ni"
    .parameter "dummy"

    .prologue
    .line 341
    invoke-direct {p0, p1}, Landroid/graphics/Region;-><init>(I)V

    .line 342
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Landroid/graphics/Region;->nativeConstructor()I

    move-result v0

    iput v0, p0, Landroid/graphics/Region;->mNativeRegion:I

    .line 63
    iget v0, p0, Landroid/graphics/Region;->mNativeRegion:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Region;->nativeSetRect(IIIII)Z

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "r"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Landroid/graphics/Region;->nativeConstructor()I

    move-result v0

    iput v0, p0, Landroid/graphics/Region;->mNativeRegion:I

    .line 56
    iget v0, p0, Landroid/graphics/Region;->mNativeRegion:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Region;->nativeSetRect(IIIII)Z

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Region;)V
    .locals 2
    .parameter "region"

    .prologue
    .line 48
    invoke-static {}, Landroid/graphics/Region;->nativeConstructor()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/graphics/Region;-><init>(I)V

    .line 49
    iget v0, p0, Landroid/graphics/Region;->mNativeRegion:I

    iget v1, p1, Landroid/graphics/Region;->mNativeRegion:I

    invoke-static {v0, v1}, Landroid/graphics/Region;->nativeSetRegion(II)Z

    .line 50
    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-static {p0}, Landroid/graphics/Region;->nativeCreateFromParcel(Landroid/os/Parcel;)I

    move-result v0

    return v0
.end method

.method private static native nativeConstructor()I
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)I
.end method

.method private static native nativeDestructor(I)V
.end method

.method private static native nativeEquals(II)Z
.end method

.method private static native nativeGetBoundaryPath(II)Z
.end method

.method private static native nativeGetBounds(ILandroid/graphics/Rect;)Z
.end method

.method private static native nativeOp(IIII)Z
.end method

.method private static native nativeOp(IIIIII)Z
.end method

.method private static native nativeOp(ILandroid/graphics/Rect;II)Z
.end method

.method private static native nativeSetPath(III)Z
.end method

.method private static native nativeSetRect(IIIII)Z
.end method

.method private static native nativeSetRegion(II)Z
.end method

.method private static native nativeWriteToParcel(ILandroid/os/Parcel;)Z
.end method


# virtual methods
.method public native contains(II)Z
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .line 320
    if-eqz p1, :cond_0

    instance-of v2, p1, Landroid/graphics/Region;

    if-nez v2, :cond_1

    .line 321
    :cond_0
    const/4 v2, 0x0

    .line 324
    :goto_0
    return v2

    .line 323
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/graphics/Region;

    move-object v1, v0

    .line 324
    .local v1, peer:Landroid/graphics/Region;
    iget v2, p0, Landroid/graphics/Region;->mNativeRegion:I

    iget v3, v1, Landroid/graphics/Region;->mNativeRegion:I

    invoke-static {v2, v3}, Landroid/graphics/Region;->nativeEquals(II)Z

    move-result v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 328
    iget v0, p0, Landroid/graphics/Region;->mNativeRegion:I

    invoke-static {v0}, Landroid/graphics/Region;->nativeDestructor(I)V

    .line 329
    return-void
.end method

.method public getBoundaryPath()Landroid/graphics/Path;
    .locals 3

    .prologue
    .line 141
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 142
    .local v0, path:Landroid/graphics/Path;
    iget v1, p0, Landroid/graphics/Region;->mNativeRegion:I

    invoke-virtual {v0}, Landroid/graphics/Path;->ni()I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/Region;->nativeGetBoundaryPath(II)Z

    .line 143
    return-object v0
.end method

.method public getBoundaryPath(Landroid/graphics/Path;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 151
    iget v0, p0, Landroid/graphics/Region;->mNativeRegion:I

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/Region;->nativeGetBoundaryPath(II)Z

    move-result v0

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 121
    .local v0, r:Landroid/graphics/Rect;
    iget v1, p0, Landroid/graphics/Region;->mNativeRegion:I

    invoke-static {v1, v0}, Landroid/graphics/Region;->nativeGetBounds(ILandroid/graphics/Rect;)Z

    .line 122
    return-object v0
.end method

.method public getBounds(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "r"

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 133
    :cond_0
    iget v0, p0, Landroid/graphics/Region;->mNativeRegion:I

    invoke-static {v0, p1}, Landroid/graphics/Region;->nativeGetBounds(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public native isComplex()Z
.end method

.method public native isEmpty()Z
.end method

.method public native isRect()Z
.end method

.method final ni()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Landroid/graphics/Region;->mNativeRegion:I

    return v0
.end method

.method public op(IIIILandroid/graphics/Region$Op;)Z
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "op"

    .prologue
    .line 252
    iget v0, p0, Landroid/graphics/Region;->mNativeRegion:I

    iget v5, p5, Landroid/graphics/Region$Op;->nativeInt:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeOp(IIIIII)Z

    move-result v0

    return v0
.end method

.method public op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .locals 6
    .parameter "r"
    .parameter "op"

    .prologue
    .line 243
    iget v0, p0, Landroid/graphics/Region;->mNativeRegion:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeOp(IIIIII)Z

    move-result v0

    return v0
.end method

.method public op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 3
    .parameter "rect"
    .parameter "region"
    .parameter "op"

    .prologue
    .line 269
    iget v0, p0, Landroid/graphics/Region;->mNativeRegion:I

    iget v1, p2, Landroid/graphics/Region;->mNativeRegion:I

    iget v2, p3, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, p1, v1, v2}, Landroid/graphics/Region;->nativeOp(ILandroid/graphics/Rect;II)Z

    move-result v0

    return v0
.end method

.method public op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 1
    .parameter "region"
    .parameter "op"

    .prologue
    .line 261
    invoke-virtual {p0, p0, p1, p2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 4
    .parameter "region1"
    .parameter "region2"
    .parameter "op"

    .prologue
    .line 278
    iget v0, p0, Landroid/graphics/Region;->mNativeRegion:I

    iget v1, p1, Landroid/graphics/Region;->mNativeRegion:I

    iget v2, p2, Landroid/graphics/Region;->mNativeRegion:I

    iget v3, p3, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Region;->nativeOp(IIII)Z

    move-result v0

    return v0
.end method

.method public native quickContains(IIII)Z
.end method

.method public quickContains(Landroid/graphics/Rect;)Z
    .locals 4
    .parameter "r"

    .prologue
    .line 166
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Region;->quickContains(IIII)Z

    move-result v0

    return v0
.end method

.method public native quickReject(IIII)Z
.end method

.method public quickReject(Landroid/graphics/Rect;)Z
    .locals 4
    .parameter "r"

    .prologue
    .line 184
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Region;->quickReject(IIII)Z

    move-result v0

    return v0
.end method

.method public native quickReject(Landroid/graphics/Region;)Z
.end method

.method public scale(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->scale(FLandroid/graphics/Region;)V

    .line 225
    return-void
.end method

.method public native scale(FLandroid/graphics/Region;)V
.end method

.method public set(IIII)Z
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 87
    iget v0, p0, Landroid/graphics/Region;->mNativeRegion:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Region;->nativeSetRect(IIIII)Z

    move-result v0

    return v0
.end method

.method public set(Landroid/graphics/Rect;)Z
    .locals 5
    .parameter "r"

    .prologue
    .line 81
    iget v0, p0, Landroid/graphics/Region;->mNativeRegion:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Region;->nativeSetRect(IIIII)Z

    move-result v0

    return v0
.end method

.method public set(Landroid/graphics/Region;)Z
    .locals 2
    .parameter "region"

    .prologue
    .line 75
    iget v0, p0, Landroid/graphics/Region;->mNativeRegion:I

    iget v1, p1, Landroid/graphics/Region;->mNativeRegion:I

    invoke-static {v0, v1}, Landroid/graphics/Region;->nativeSetRegion(II)Z

    move-result v0

    return v0
.end method

.method public setEmpty()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    iget v0, p0, Landroid/graphics/Region;->mNativeRegion:I

    invoke-static {v0, v1, v1, v1, v1}, Landroid/graphics/Region;->nativeSetRect(IIIII)Z

    .line 70
    return-void
.end method

.method public setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z
    .locals 3
    .parameter "path"
    .parameter "clip"

    .prologue
    .line 97
    iget v0, p0, Landroid/graphics/Region;->mNativeRegion:I

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result v1

    iget v2, p2, Landroid/graphics/Region;->mNativeRegion:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Region;->nativeSetPath(III)Z

    move-result v0

    return v0
.end method

.method public translate(II)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Region;->translate(IILandroid/graphics/Region;)V

    .line 206
    return-void
.end method

.method public native translate(IILandroid/graphics/Region;)V
.end method

.method public final union(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "r"

    .prologue
    .line 235
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "p"
    .parameter "flags"

    .prologue
    .line 313
    iget v0, p0, Landroid/graphics/Region;->mNativeRegion:I

    invoke-static {v0, p1}, Landroid/graphics/Region;->nativeWriteToParcel(ILandroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 316
    :cond_0
    return-void
.end method
