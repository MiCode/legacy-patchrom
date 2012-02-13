.class Landroid/util/Base64$Encoder;
.super Landroid/util/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Encoder"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ENCODE:[B = null

.field private static final ENCODE_WEBSAFE:[B = null

.field public static final LINE_GROUPS:I = 0x13


# instance fields
.field private final alphabet:[B

.field private count:I

.field public final do_cr:Z

.field public final do_newline:Z

.field public final do_padding:Z

.field private final tail:[B

.field tailLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    const-class v0, Landroid/util/Base64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/util/Base64$Encoder;->$assertionsDisabled:Z

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/util/Base64$Encoder;->ENCODE:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroid/util/Base64$Encoder;->ENCODE_WEBSAFE:[B

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 3
    .parameter "flags"
    .parameter "output"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/util/Base64$Coder;-><init>()V

    iput-object p2, p0, Landroid/util/Base64$Coder;->output:[B

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/util/Base64$Encoder;->do_padding:Z

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/util/Base64$Encoder;->do_newline:Z

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/util/Base64$Encoder;->do_cr:Z

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_3

    sget-object v0, Landroid/util/Base64$Encoder;->ENCODE:[B

    :goto_3
    iput-object v0, p0, Landroid/util/Base64$Encoder;->alphabet:[B

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/util/Base64$Encoder;->tail:[B

    iput v1, p0, Landroid/util/Base64$Encoder;->tailLen:I

    iget-boolean v0, p0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x13

    :goto_4
    iput v0, p0, Landroid/util/Base64$Encoder;->count:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    sget-object v0, Landroid/util/Base64$Encoder;->ENCODE_WEBSAFE:[B

    goto :goto_3

    :cond_4
    const/4 v0, -0x1

    goto :goto_4
.end method


# virtual methods
.method public maxOutputSize(I)I
    .locals 1
    .parameter "len"

    .prologue
    mul-int/lit8 v0, p1, 0x8

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .locals 15
    .parameter "input"
    .parameter "offset"
    .parameter "len"
    .parameter "finish"

    .prologue
    iget-object v2, p0, Landroid/util/Base64$Encoder;->alphabet:[B

    .local v2, alphabet:[B
    iget-object v6, p0, Landroid/util/Base64$Coder;->output:[B

    .local v6, output:[B
    const/4 v4, 0x0

    .local v4, op:I
    iget v3, p0, Landroid/util/Base64$Encoder;->count:I

    .local v3, count:I
    move/from16 v7, p2

    .local v7, p:I
    add-int p3, p3, p2

    const/4 v11, -0x1

    .local v11, v:I
    iget v12, p0, Landroid/util/Base64$Encoder;->tailLen:I

    packed-switch v12, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v12, -0x1

    if-eq v11, v12, :cond_15

    add-int/lit8 v5, v4, 0x1

    .end local v4           #op:I
    .local v5, op:I
    shr-int/lit8 v12, v11, 0x12

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v2, v12

    aput-byte v12, v6, v4

    add-int/lit8 v4, v5, 0x1

    .end local v5           #op:I
    .restart local v4       #op:I
    shr-int/lit8 v12, v11, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v2, v12

    aput-byte v12, v6, v5

    add-int/lit8 v5, v4, 0x1

    .end local v4           #op:I
    .restart local v5       #op:I
    shr-int/lit8 v12, v11, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v2, v12

    aput-byte v12, v6, v4

    add-int/lit8 v4, v5, 0x1

    .end local v5           #op:I
    .restart local v4       #op:I
    and-int/lit8 v12, v11, 0x3f

    aget-byte v12, v2, v12

    aput-byte v12, v6, v5

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_15

    iget-boolean v12, p0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v12, :cond_1

    add-int/lit8 v5, v4, 0x1

    .end local v4           #op:I
    .restart local v5       #op:I
    const/16 v12, 0xd

    aput-byte v12, v6, v4

    move v4, v5

    .end local v5           #op:I
    .restart local v4       #op:I
    :cond_1
    add-int/lit8 v5, v4, 0x1

    .end local v4           #op:I
    .restart local v5       #op:I
    const/16 v12, 0xa

    aput-byte v12, v6, v4

    const/16 v3, 0x13

    move v8, v7

    .end local v7           #p:I
    .local v8, p:I
    :goto_1
    add-int/lit8 v12, v8, 0x3

    move v0, v12

    move/from16 v1, p3

    if-gt v0, v1, :cond_3

    aget-byte v12, p1, v8

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    add-int/lit8 v13, v8, 0x1

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    add-int/lit8 v13, v8, 0x2

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    or-int v11, v12, v13

    shr-int/lit8 v12, v11, 0x12

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v2, v12

    aput-byte v12, v6, v5

    add-int/lit8 v12, v5, 0x1

    shr-int/lit8 v13, v11, 0xc

    and-int/lit8 v13, v13, 0x3f

    aget-byte v13, v2, v13

    aput-byte v13, v6, v12

    add-int/lit8 v12, v5, 0x2

    shr-int/lit8 v13, v11, 0x6

    and-int/lit8 v13, v13, 0x3f

    aget-byte v13, v2, v13

    aput-byte v13, v6, v12

    add-int/lit8 v12, v5, 0x3

    and-int/lit8 v13, v11, 0x3f

    aget-byte v13, v2, v13

    aput-byte v13, v6, v12

    add-int/lit8 v7, v8, 0x3

    .end local v8           #p:I
    .restart local v7       #p:I
    add-int/lit8 v4, v5, 0x4

    .end local v5           #op:I
    .restart local v4       #op:I
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_15

    iget-boolean v12, p0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v12, :cond_2

    add-int/lit8 v5, v4, 0x1

    .end local v4           #op:I
    .restart local v5       #op:I
    const/16 v12, 0xd

    aput-byte v12, v6, v4

    move v4, v5

    .end local v5           #op:I
    .restart local v4       #op:I
    :cond_2
    add-int/lit8 v5, v4, 0x1

    .end local v4           #op:I
    .restart local v5       #op:I
    const/16 v12, 0xa

    aput-byte v12, v6, v4

    const/16 v3, 0x13

    move v8, v7

    .end local v7           #p:I
    .restart local v8       #p:I
    goto :goto_1

    .end local v5           #op:I
    .end local v8           #p:I
    .restart local v4       #op:I
    .restart local v7       #p:I
    :pswitch_1
    add-int/lit8 v12, v7, 0x2

    move v0, v12

    move/from16 v1, p3

    if-gt v0, v1, :cond_0

    iget-object v12, p0, Landroid/util/Base64$Encoder;->tail:[B

    const/4 v13, 0x0

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    add-int/lit8 v8, v7, 0x1

    .end local v7           #p:I
    .restart local v8       #p:I
    aget-byte v13, p1, v7

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    add-int/lit8 v7, v8, 0x1

    .end local v8           #p:I
    .restart local v7       #p:I
    aget-byte v13, p1, v8

    and-int/lit16 v13, v13, 0xff

    or-int v11, v12, v13

    const/4 v12, 0x0

    iput v12, p0, Landroid/util/Base64$Encoder;->tailLen:I

    goto/16 :goto_0

    :pswitch_2
    add-int/lit8 v12, v7, 0x1

    move v0, v12

    move/from16 v1, p3

    if-gt v0, v1, :cond_0

    iget-object v12, p0, Landroid/util/Base64$Encoder;->tail:[B

    const/4 v13, 0x0

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    iget-object v13, p0, Landroid/util/Base64$Encoder;->tail:[B

    const/4 v14, 0x1

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    add-int/lit8 v8, v7, 0x1

    .end local v7           #p:I
    .restart local v8       #p:I
    aget-byte v13, p1, v7

    and-int/lit16 v13, v13, 0xff

    or-int v11, v12, v13

    const/4 v12, 0x0

    iput v12, p0, Landroid/util/Base64$Encoder;->tailLen:I

    move v7, v8

    .end local v8           #p:I
    .restart local v7       #p:I
    goto/16 :goto_0

    .end local v4           #op:I
    .end local v7           #p:I
    .restart local v5       #op:I
    .restart local v8       #p:I
    :cond_3
    if-eqz p4, :cond_10

    iget v12, p0, Landroid/util/Base64$Encoder;->tailLen:I

    sub-int v12, v8, v12

    const/4 v13, 0x1

    sub-int v13, p3, v13

    if-ne v12, v13, :cond_8

    const/4 v9, 0x0

    .local v9, t:I
    iget v12, p0, Landroid/util/Base64$Encoder;->tailLen:I

    if-lez v12, :cond_7

    iget-object v12, p0, Landroid/util/Base64$Encoder;->tail:[B

    add-int/lit8 v10, v9, 0x1

    .end local v9           #t:I
    .local v10, t:I
    aget-byte v12, v12, v9

    move v9, v10

    .end local v10           #t:I
    .restart local v9       #t:I
    move v7, v8

    .end local v8           #p:I
    .restart local v7       #p:I
    :goto_2
    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v11, v12, 0x4

    iget v12, p0, Landroid/util/Base64$Encoder;->tailLen:I

    sub-int/2addr v12, v9

    iput v12, p0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v4, v5, 0x1

    .end local v5           #op:I
    .restart local v4       #op:I
    shr-int/lit8 v12, v11, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v2, v12

    aput-byte v12, v6, v5

    add-int/lit8 v5, v4, 0x1

    .end local v4           #op:I
    .restart local v5       #op:I
    and-int/lit8 v12, v11, 0x3f

    aget-byte v12, v2, v12

    aput-byte v12, v6, v4

    iget-boolean v12, p0, Landroid/util/Base64$Encoder;->do_padding:Z

    if-eqz v12, :cond_4

    add-int/lit8 v4, v5, 0x1

    .end local v5           #op:I
    .restart local v4       #op:I
    const/16 v12, 0x3d

    aput-byte v12, v6, v5

    add-int/lit8 v5, v4, 0x1

    .end local v4           #op:I
    .restart local v5       #op:I
    const/16 v12, 0x3d

    aput-byte v12, v6, v4

    :cond_4
    move v4, v5

    .end local v5           #op:I
    .restart local v4       #op:I
    iget-boolean v12, p0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v12, :cond_6

    iget-boolean v12, p0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v12, :cond_5

    add-int/lit8 v5, v4, 0x1

    .end local v4           #op:I
    .restart local v5       #op:I
    const/16 v12, 0xd

    aput-byte v12, v6, v4

    move v4, v5

    .end local v5           #op:I
    .restart local v4       #op:I
    :cond_5
    add-int/lit8 v5, v4, 0x1

    .end local v4           #op:I
    .restart local v5       #op:I
    const/16 v12, 0xa

    aput-byte v12, v6, v4

    :goto_3
    move v4, v5

    .end local v5           #op:I
    .end local v9           #t:I
    .restart local v4       #op:I
    :cond_6
    :goto_4
    sget-boolean v12, Landroid/util/Base64$Encoder;->$assertionsDisabled:Z

    if-nez v12, :cond_f

    iget v12, p0, Landroid/util/Base64$Encoder;->tailLen:I

    if-eqz v12, :cond_f

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .end local v4           #op:I
    .end local v7           #p:I
    .restart local v5       #op:I
    .restart local v8       #p:I
    .restart local v9       #t:I
    :cond_7
    add-int/lit8 v7, v8, 0x1

    .end local v8           #p:I
    .restart local v7       #p:I
    aget-byte v12, p1, v8

    goto :goto_2

    .end local v7           #p:I
    .end local v9           #t:I
    .restart local v8       #p:I
    :cond_8
    iget v12, p0, Landroid/util/Base64$Encoder;->tailLen:I

    sub-int v12, v8, v12

    const/4 v13, 0x2

    sub-int v13, p3, v13

    if-ne v12, v13, :cond_d

    const/4 v9, 0x0

    .restart local v9       #t:I
    iget v12, p0, Landroid/util/Base64$Encoder;->tailLen:I

    const/4 v13, 0x1

    if-le v12, v13, :cond_b

    iget-object v12, p0, Landroid/util/Base64$Encoder;->tail:[B

    add-int/lit8 v10, v9, 0x1

    .end local v9           #t:I
    .restart local v10       #t:I
    aget-byte v12, v12, v9

    move v9, v10

    .end local v10           #t:I
    .restart local v9       #t:I
    move v7, v8

    .end local v8           #p:I
    .restart local v7       #p:I
    :goto_5
    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0xa

    iget v13, p0, Landroid/util/Base64$Encoder;->tailLen:I

    if-lez v13, :cond_c

    iget-object v13, p0, Landroid/util/Base64$Encoder;->tail:[B

    add-int/lit8 v10, v9, 0x1

    .end local v9           #t:I
    .restart local v10       #t:I
    aget-byte v13, v13, v9

    move v9, v10

    .end local v10           #t:I
    .restart local v9       #t:I
    :goto_6
    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x2

    or-int v11, v12, v13

    iget v12, p0, Landroid/util/Base64$Encoder;->tailLen:I

    sub-int/2addr v12, v9

    iput v12, p0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v4, v5, 0x1

    .end local v5           #op:I
    .restart local v4       #op:I
    shr-int/lit8 v12, v11, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v2, v12

    aput-byte v12, v6, v5

    add-int/lit8 v5, v4, 0x1

    .end local v4           #op:I
    .restart local v5       #op:I
    shr-int/lit8 v12, v11, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v2, v12

    aput-byte v12, v6, v4

    add-int/lit8 v4, v5, 0x1

    .end local v5           #op:I
    .restart local v4       #op:I
    and-int/lit8 v12, v11, 0x3f

    aget-byte v12, v2, v12

    aput-byte v12, v6, v5

    iget-boolean v12, p0, Landroid/util/Base64$Encoder;->do_padding:Z

    if-eqz v12, :cond_9

    add-int/lit8 v5, v4, 0x1

    .end local v4           #op:I
    .restart local v5       #op:I
    const/16 v12, 0x3d

    aput-byte v12, v6, v4

    move v4, v5

    .end local v5           #op:I
    .restart local v4       #op:I
    :cond_9
    iget-boolean v12, p0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v12, :cond_6

    iget-boolean v12, p0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v12, :cond_a

    add-int/lit8 v5, v4, 0x1

    .end local v4           #op:I
    .restart local v5       #op:I
    const/16 v12, 0xd

    aput-byte v12, v6, v4

    move v4, v5

    .end local v5           #op:I
    .restart local v4       #op:I
    :cond_a
    add-int/lit8 v5, v4, 0x1

    .end local v4           #op:I
    .restart local v5       #op:I
    const/16 v12, 0xa

    aput-byte v12, v6, v4

    goto/16 :goto_3

    .end local v7           #p:I
    .restart local v8       #p:I
    :cond_b
    add-int/lit8 v7, v8, 0x1

    .end local v8           #p:I
    .restart local v7       #p:I
    aget-byte v12, p1, v8

    goto :goto_5

    :cond_c
    add-int/lit8 v8, v7, 0x1

    .end local v7           #p:I
    .restart local v8       #p:I
    aget-byte v13, p1, v7

    move v7, v8

    .end local v8           #p:I
    .restart local v7       #p:I
    goto :goto_6

    .end local v7           #p:I
    .end local v9           #t:I
    .restart local v8       #p:I
    :cond_d
    iget-boolean v12, p0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v12, :cond_e

    if-lez v5, :cond_e

    const/16 v12, 0x13

    if-eq v3, v12, :cond_e

    iget-boolean v12, p0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v12, :cond_14

    add-int/lit8 v4, v5, 0x1

    .end local v5           #op:I
    .restart local v4       #op:I
    const/16 v12, 0xd

    aput-byte v12, v6, v5

    :goto_7
    add-int/lit8 v5, v4, 0x1

    .end local v4           #op:I
    .restart local v5       #op:I
    const/16 v12, 0xa

    aput-byte v12, v6, v4

    :cond_e
    move v7, v8

    .end local v8           #p:I
    .restart local v7       #p:I
    move v4, v5

    .end local v5           #op:I
    .restart local v4       #op:I
    goto/16 :goto_4

    :cond_f
    sget-boolean v12, Landroid/util/Base64$Encoder;->$assertionsDisabled:Z

    if-nez v12, :cond_11

    move v0, v7

    move/from16 v1, p3

    if-eq v0, v1, :cond_11

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .end local v4           #op:I
    .end local v7           #p:I
    .restart local v5       #op:I
    .restart local v8       #p:I
    :cond_10
    const/4 v12, 0x1

    sub-int v12, p3, v12

    if-ne v8, v12, :cond_12

    iget-object v12, p0, Landroid/util/Base64$Encoder;->tail:[B

    iget v13, p0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Landroid/util/Base64$Encoder;->tailLen:I

    aget-byte v14, p1, v8

    aput-byte v14, v12, v13

    move v7, v8

    .end local v8           #p:I
    .restart local v7       #p:I
    move v4, v5

    .end local v5           #op:I
    .restart local v4       #op:I
    :cond_11
    :goto_8
    iput v4, p0, Landroid/util/Base64$Coder;->op:I

    iput v3, p0, Landroid/util/Base64$Encoder;->count:I

    const/4 v12, 0x1

    return v12

    .end local v4           #op:I
    .end local v7           #p:I
    .restart local v5       #op:I
    .restart local v8       #p:I
    :cond_12
    const/4 v12, 0x2

    sub-int v12, p3, v12

    if-ne v8, v12, :cond_13

    iget-object v12, p0, Landroid/util/Base64$Encoder;->tail:[B

    iget v13, p0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Landroid/util/Base64$Encoder;->tailLen:I

    aget-byte v14, p1, v8

    aput-byte v14, v12, v13

    iget-object v12, p0, Landroid/util/Base64$Encoder;->tail:[B

    iget v13, p0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v14, v8, 0x1

    aget-byte v14, p1, v14

    aput-byte v14, v12, v13

    :cond_13
    move v7, v8

    .end local v8           #p:I
    .restart local v7       #p:I
    move v4, v5

    .end local v5           #op:I
    .restart local v4       #op:I
    goto :goto_8

    .end local v4           #op:I
    .end local v7           #p:I
    .restart local v5       #op:I
    .restart local v8       #p:I
    :cond_14
    move v4, v5

    .end local v5           #op:I
    .restart local v4       #op:I
    goto :goto_7

    .end local v8           #p:I
    .restart local v7       #p:I
    :cond_15
    move v8, v7

    .end local v7           #p:I
    .restart local v8       #p:I
    move v5, v4

    .end local v4           #op:I
    .restart local v5       #op:I
    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
