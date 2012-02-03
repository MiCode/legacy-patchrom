.class public Lcom/android/internal/policy/impl/face/Preview$Image;
.super Ljava/lang/Object;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/face/Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Image"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static YUV420SPtoARGB8888([I[BII)V
    .locals 15
    .parameter "rgb"
    .parameter "yuv420sp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 691
    mul-int v3, p2, p3

    .line 693
    .local v3, frameSize:I
    const/4 v2, 0x0

    .local v2, j:I
    const/4 v4, 0x0

    .local v4, yp:I
    move v8, v4

    .end local v4           #yp:I
    .local v8, yp:I
    move v7, v2

    .end local v2           #j:I
    .local v7, j:I
    :goto_0
    move v0, v7

    move/from16 v1, p3

    if-ge v0, v1, :cond_7

    .line 695
    shr-int/lit8 v2, v7, 0x1

    mul-int v2, v2, p2

    add-int v5, v3, v2

    .local v5, uvp:I
    const/4 v4, 0x0

    .local v4, u:I
    const/4 v6, 0x0

    .line 696
    .local v6, v:I
    const/4 v2, 0x0

    .local v2, i:I
    move v9, v6

    .end local v6           #v:I
    .local v9, v:I
    move v13, v8

    .end local v8           #yp:I
    .local v13, yp:I
    move v8, v5

    .end local v5           #uvp:I
    .local v8, uvp:I
    move v5, v2

    .end local v2           #i:I
    .local v5, i:I
    :goto_1
    move v0, v5

    move/from16 v1, p2

    if-ge v0, v1, :cond_6

    .line 698
    const/4 v2, 0x1

    sub-int v2, p2, v2

    sub-int/2addr v2, v5

    mul-int v2, v2, p3

    const/4 v6, 0x1

    sub-int v6, p3, v6

    sub-int/2addr v6, v7

    add-int/2addr v6, v2

    .line 699
    .local v6, idx2:I
    mul-int v2, v7, p2

    add-int/2addr v2, v5

    .line 701
    .local v2, idx1:I
    aget-byte v2, p1, v2

    .end local v2           #idx1:I
    and-int/lit16 v2, v2, 0xff

    const/16 v10, 0x10

    sub-int/2addr v2, v10

    .line 702
    .local v2, y:I
    if-gez v2, :cond_9

    const/4 v2, 0x0

    move v12, v2

    .line 703
    .end local v2           #y:I
    .local v12, y:I
    :goto_2
    and-int/lit8 v2, v5, 0x1

    if-nez v2, :cond_8

    .line 704
    add-int/lit8 v2, v8, 0x1

    .end local v8           #uvp:I
    .local v2, uvp:I
    aget-byte v4, p1, v8

    .end local v4           #u:I
    and-int/lit16 v4, v4, 0xff

    const/16 v8, 0x80

    sub-int v8, v4, v8

    .line 705
    .end local v9           #v:I
    .local v8, v:I
    add-int/lit8 v4, v2, 0x1

    .end local v2           #uvp:I
    .local v4, uvp:I
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v9, 0x80

    sub-int/2addr v2, v9

    .local v2, u:I
    move v11, v8

    .end local v8           #v:I
    .local v11, v:I
    move v9, v2

    .end local v2           #u:I
    .local v9, u:I
    move v10, v4

    .line 708
    .end local v4           #uvp:I
    .local v10, uvp:I
    :goto_3
    mul-int/lit16 v2, v12, 0x4a8

    .line 709
    .local v2, y1192:I
    mul-int/lit16 v4, v11, 0x662

    add-int v8, v2, v4

    .line 710
    .local v8, r:I
    mul-int/lit16 v4, v11, 0x341

    sub-int v4, v2, v4

    mul-int/lit16 v12, v9, 0x190

    sub-int/2addr v4, v12

    .line 711
    .local v4, g:I
    mul-int/lit16 v12, v9, 0x812

    add-int/2addr v2, v12

    .line 713
    .local v2, b:I
    if-gez v8, :cond_3

    .end local v12           #y:I
    const/4 v8, 0x0

    .line 715
    :cond_0
    :goto_4
    if-gez v4, :cond_4

    const/4 v4, 0x0

    .line 717
    :cond_1
    :goto_5
    if-gez v2, :cond_5

    const/4 v2, 0x0

    .line 720
    :cond_2
    :goto_6
    const/high16 v12, -0x100

    shl-int/lit8 v8, v8, 0x6

    const/high16 v14, 0xff

    and-int/2addr v8, v14

    or-int/2addr v8, v12

    shr-int/lit8 v4, v4, 0x2

    const v12, 0xff00

    and-int/2addr v4, v12

    or-int/2addr v4, v8

    shr-int/lit8 v2, v2, 0xa

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v4

    aput v2, p0, v6

    .line 696
    .end local v2           #b:I
    .end local v4           #g:I
    .end local v8           #r:I
    add-int/lit8 v2, v5, 0x1

    .end local v5           #i:I
    .local v2, i:I
    add-int/lit8 v4, v13, 0x1

    .end local v13           #yp:I
    .local v4, yp:I
    move v5, v2

    .end local v2           #i:I
    .restart local v5       #i:I
    move v8, v10

    .end local v10           #uvp:I
    .local v8, uvp:I
    move v13, v4

    .end local v4           #yp:I
    .restart local v13       #yp:I
    move v4, v9

    .end local v9           #u:I
    .local v4, u:I
    move v9, v11

    .end local v11           #v:I
    .local v9, v:I
    goto :goto_1

    .line 714
    .local v2, b:I
    .local v4, g:I
    .local v8, r:I
    .local v9, u:I
    .restart local v10       #uvp:I
    .restart local v11       #v:I
    :cond_3
    const v12, 0x3ffff

    if-le v8, v12, :cond_0

    const v8, 0x3ffff

    goto :goto_4

    .line 716
    :cond_4
    const v12, 0x3ffff

    if-le v4, v12, :cond_1

    const v4, 0x3ffff

    goto :goto_5

    .line 718
    :cond_5
    const v12, 0x3ffff

    if-le v2, v12, :cond_2

    const v2, 0x3ffff

    goto :goto_6

    .line 693
    .end local v2           #b:I
    .end local v6           #idx2:I
    .end local v10           #uvp:I
    .end local v11           #v:I
    .local v4, u:I
    .local v8, uvp:I
    .local v9, v:I
    :cond_6
    add-int/lit8 v2, v7, 0x1

    .end local v7           #j:I
    .local v2, j:I
    move v8, v13

    .end local v13           #yp:I
    .local v8, yp:I
    move v7, v2

    .end local v2           #j:I
    .restart local v7       #j:I
    goto/16 :goto_0

    .line 723
    .end local v4           #u:I
    .end local v5           #i:I
    .end local v9           #v:I
    :cond_7
    return-void

    .restart local v4       #u:I
    .restart local v5       #i:I
    .restart local v6       #idx2:I
    .local v8, uvp:I
    .restart local v9       #v:I
    .restart local v12       #y:I
    .restart local v13       #yp:I
    :cond_8
    move v11, v9

    .end local v9           #v:I
    .restart local v11       #v:I
    move v10, v8

    .end local v8           #uvp:I
    .restart local v10       #uvp:I
    move v9, v4

    .end local v4           #u:I
    .local v9, u:I
    goto :goto_3

    .end local v10           #uvp:I
    .end local v11           #v:I
    .end local v12           #y:I
    .local v2, y:I
    .restart local v4       #u:I
    .restart local v8       #uvp:I
    .local v9, v:I
    :cond_9
    move v12, v2

    .end local v2           #y:I
    .restart local v12       #y:I
    goto :goto_2
.end method

.method public static YtoARGB8888([B[BII)V
    .locals 7
    .parameter "dst"
    .parameter "src"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x1

    .line 727
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 728
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, p2, :cond_0

    .line 730
    mul-int v4, v0, p2

    add-int v1, v4, v3

    .line 731
    .local v1, idx1:I
    sub-int v4, p2, v6

    sub-int/2addr v4, v3

    mul-int/2addr v4, p3

    sub-int v5, p3, v6

    sub-int/2addr v5, v0

    add-int v2, v4, v5

    .line 732
    .local v2, idx2:I
    aget-byte v4, p1, v1

    aput-byte v4, p0, v2

    .line 728
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 727
    .end local v1           #idx1:I
    .end local v2           #idx2:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 735
    .end local v3           #j:I
    :cond_1
    return-void
.end method

.method public static YtoARGB8888FaceBuffer([B[BII)V
    .locals 6
    .parameter "src"
    .parameter "dst"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 739
    mul-int v1, p2, p3

    .line 740
    .local v1, imagesize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 742
    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x3

    const/4 v3, -0x1

    aput-byte v3, p1, v2

    .line 743
    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x0

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x2

    aget-byte v5, p0, v0

    aput-byte v5, p1, v4

    aput-byte v5, p1, v3

    aput-byte v5, p1, v2

    .line 740
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 745
    :cond_0
    return-void
.end method
