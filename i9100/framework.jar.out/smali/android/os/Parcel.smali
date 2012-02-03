.class public final Landroid/os/Parcel;
.super Ljava/lang/Object;
.source "Parcel.java"


# static fields
.field private static final DEBUG_RECYCLE:Z = false

.field private static final EX_BAD_PARCELABLE:I = -0x2

.field private static final EX_HAS_REPLY_HEADER:I = -0x80

.field private static final EX_ILLEGAL_ARGUMENT:I = -0x3

.field private static final EX_ILLEGAL_STATE:I = -0x5

.field private static final EX_NULL_POINTER:I = -0x4

.field private static final EX_SECURITY:I = -0x1

.field private static final POOL_SIZE:I = 0x6

.field public static final STRING_CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Parcel"

.field private static final VAL_BOOLEAN:I = 0x9

.field private static final VAL_BOOLEANARRAY:I = 0x17

.field private static final VAL_BUNDLE:I = 0x3

.field private static final VAL_BYTE:I = 0x14

.field private static final VAL_BYTEARRAY:I = 0xd

.field private static final VAL_CHARSEQUENCE:I = 0xa

.field private static final VAL_CHARSEQUENCEARRAY:I = 0x18

.field private static final VAL_DOUBLE:I = 0x8

.field private static final VAL_FLOAT:I = 0x7

.field private static final VAL_IBINDER:I = 0xf

.field private static final VAL_INTARRAY:I = 0x12

.field private static final VAL_INTEGER:I = 0x1

.field private static final VAL_LIST:I = 0xb

.field private static final VAL_LONG:I = 0x6

.field private static final VAL_LONGARRAY:I = 0x13

.field private static final VAL_MAP:I = 0x2

.field private static final VAL_NULL:I = -0x1

.field private static final VAL_OBJECTARRAY:I = 0x11

.field private static final VAL_PARCELABLE:I = 0x4

.field private static final VAL_PARCELABLEARRAY:I = 0x10

.field private static final VAL_SERIALIZABLE:I = 0x15

.field private static final VAL_SHORT:I = 0x5

.field private static final VAL_SPARSEARRAY:I = 0xc

.field private static final VAL_SPARSEBOOLEANARRAY:I = 0x16

.field private static final VAL_STRING:I = 0x0

.field private static final VAL_STRINGARRAY:I = 0xe

.field private static final mCreators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sHolderPool:[Landroid/os/Parcel;

.field private static final sOwnedPool:[Landroid/os/Parcel;


# instance fields
.field private mObject:I

.field private mOwnObject:I

.field private mStack:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 188
    new-array v0, v1, [Landroid/os/Parcel;

    sput-object v0, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    .line 189
    new-array v0, v1, [Landroid/os/Parcel;

    sput-object v0, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    .line 226
    new-instance v0, Landroid/os/Parcel$1;

    invoke-direct {v0}, Landroid/os/Parcel$1;-><init>()V

    sput-object v0, Landroid/os/Parcel;->STRING_CREATOR:Landroid/os/Parcelable$Creator;

    .line 2036
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 2057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2062
    invoke-direct {p0, p1}, Landroid/os/Parcel;->init(I)V

    .line 2063
    return-void
.end method

.method static native closeFileDescriptor(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native destroy()V
.end method

.method private native freeBuffer()V
.end method

.method private native init(I)V
.end method

.method private native internalReadFileDescriptor()Ljava/io/FileDescriptor;
.end method

.method public static obtain()Landroid/os/Parcel;
    .locals 5

    .prologue
    .line 240
    sget-object v2, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    .line 241
    .local v2, pool:[Landroid/os/Parcel;
    monitor-enter v2

    .line 243
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x6

    if-ge v0, v3, :cond_1

    .line 244
    :try_start_0
    aget-object v1, v2, v0

    .line 245
    .local v1, p:Landroid/os/Parcel;
    if-eqz v1, :cond_0

    .line 246
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 250
    monitor-exit v2

    move-object v3, v1

    .line 254
    .end local v1           #p:Landroid/os/Parcel;
    :goto_1
    return-object v3

    .line 243
    .restart local v1       #p:Landroid/os/Parcel;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    .end local v1           #p:Landroid/os/Parcel;
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    new-instance v3, Landroid/os/Parcel;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/os/Parcel;-><init>(I)V

    goto :goto_1

    .line 253
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected static final obtain(I)Landroid/os/Parcel;
    .locals 4
    .parameter "obj"

    .prologue
    .line 2039
    sget-object v2, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    .line 2040
    .local v2, pool:[Landroid/os/Parcel;
    monitor-enter v2

    .line 2042
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x6

    if-ge v0, v3, :cond_1

    .line 2043
    :try_start_0
    aget-object v1, v2, v0

    .line 2044
    .local v1, p:Landroid/os/Parcel;
    if-eqz v1, :cond_0

    .line 2045
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 2049
    invoke-direct {v1, p0}, Landroid/os/Parcel;->init(I)V

    .line 2050
    monitor-exit v2

    move-object v3, v1

    .line 2054
    .end local v1           #p:Landroid/os/Parcel;
    :goto_1
    return-object v3

    .line 2042
    .restart local v1       #p:Landroid/os/Parcel;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2053
    .end local v1           #p:Landroid/os/Parcel;
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2054
    new-instance v3, Landroid/os/Parcel;

    invoke-direct {v3, p0}, Landroid/os/Parcel;-><init>(I)V

    goto :goto_1

    .line 2053
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method static native openFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method private readArrayInternal([Ljava/lang/Object;ILjava/lang/ClassLoader;)V
    .locals 2
    .parameter "outVal"
    .parameter "N"
    .parameter "loader"

    .prologue
    .line 2101
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 2102
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2104
    .local v1, value:Ljava/lang/Object;
    aput-object v1, p1, v0

    .line 2101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2106
    .end local v1           #value:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V
    .locals 1
    .parameter "outVal"
    .parameter "N"
    .parameter "loader"

    .prologue
    .line 2091
    :goto_0
    if-lez p2, :cond_0

    .line 2092
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 2094
    .local v0, value:Ljava/lang/Object;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2095
    add-int/lit8 p2, p2, -0x1

    .line 2096
    goto :goto_0

    .line 2097
    .end local v0           #value:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private readSparseArrayInternal(Landroid/util/SparseArray;ILjava/lang/ClassLoader;)V
    .locals 2
    .parameter "outVal"
    .parameter "N"
    .parameter "loader"

    .prologue
    .line 2110
    :goto_0
    if-lez p2, :cond_0

    .line 2111
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2112
    .local v0, key:I
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2114
    .local v1, value:Ljava/lang/Object;
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2115
    add-int/lit8 p2, p2, -0x1

    .line 2116
    goto :goto_0

    .line 2117
    .end local v0           #key:I
    .end local v1           #value:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V
    .locals 4
    .parameter "outVal"
    .parameter "N"

    .prologue
    const/4 v3, 0x1

    .line 2121
    :goto_0
    if-lez p2, :cond_1

    .line 2122
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2123
    .local v0, key:I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v3, :cond_0

    move v1, v3

    .line 2125
    .local v1, value:Z
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 2126
    add-int/lit8 p2, p2, -0x1

    .line 2127
    goto :goto_0

    .line 2123
    .end local v1           #value:Z
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_1

    .line 2128
    .end local v0           #key:I
    :cond_1
    return-void
.end method

.method private native writeNative([BII)V
.end method


# virtual methods
.method public final native appendFrom(Landroid/os/Parcel;II)V
.end method

.method public final createBinderArray()[Landroid/os/IBinder;
    .locals 4

    .prologue
    .line 865
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 866
    .local v0, N:I
    if-ltz v0, :cond_1

    .line 867
    new-array v2, v0, [Landroid/os/IBinder;

    .line 868
    .local v2, val:[Landroid/os/IBinder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 869
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    aput-object v3, v2, v1

    .line 868
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 873
    .end local v1           #i:I
    .end local v2           #val:[Landroid/os/IBinder;
    :goto_1
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public final createBinderArrayList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1688
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1689
    .local v0, N:I
    if-gez v0, :cond_0

    .line 1690
    const/4 v2, 0x0

    .line 1697
    :goto_0
    return-object v2

    .line 1692
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1693
    .local v1, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :goto_1
    if-lez v0, :cond_1

    .line 1694
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1695
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 1697
    goto :goto_0
.end method

.method public final createBooleanArray()[Z
    .locals 4

    .prologue
    .line 592
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 596
    .local v0, N:I
    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_2

    .line 597
    new-array v2, v0, [Z

    .line 598
    .local v2, val:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 599
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    aput-boolean v3, v2, v1

    .line 598
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 599
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 603
    .end local v1           #i:I
    .end local v2           #val:[Z
    :goto_2
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public final native createByteArray()[B
.end method

.method public final createCharArray()[C
    .locals 4

    .prologue
    .line 631
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 632
    .local v0, N:I
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_1

    .line 633
    new-array v2, v0, [C

    .line 634
    .local v2, val:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 635
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 634
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 639
    .end local v1           #i:I
    .end local v2           #val:[C
    :goto_1
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public final createDoubleArray()[D
    .locals 5

    .prologue
    .line 777
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 779
    .local v0, N:I
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x3

    if-gt v0, v3, :cond_1

    .line 780
    new-array v2, v0, [D

    .line 781
    .local v2, val:[D
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 782
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 781
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 786
    .end local v1           #i:I
    .end local v2           #val:[D
    :goto_1
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public final createFloatArray()[F
    .locals 4

    .prologue
    .line 740
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 742
    .local v0, N:I
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_1

    .line 743
    new-array v2, v0, [F

    .line 744
    .local v2, val:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 745
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    aput v3, v2, v1

    .line 744
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 749
    .end local v1           #i:I
    .end local v2           #val:[F
    :goto_1
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public final createIntArray()[I
    .locals 4

    .prologue
    .line 667
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 668
    .local v0, N:I
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_1

    .line 669
    new-array v2, v0, [I

    .line 670
    .local v2, val:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 671
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 670
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 675
    .end local v1           #i:I
    .end local v2           #val:[I
    :goto_1
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public final createLongArray()[J
    .locals 5

    .prologue
    .line 703
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 705
    .local v0, N:I
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x3

    if-gt v0, v3, :cond_1

    .line 706
    new-array v2, v0, [J

    .line 707
    .local v2, val:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 708
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 707
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 712
    .end local v1           #i:I
    .end local v2           #val:[J
    :goto_1
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public final createStringArray()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 814
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 815
    .local v0, N:I
    if-ltz v0, :cond_1

    .line 816
    new-array v2, v0, [Ljava/lang/String;

    .line 817
    .local v2, val:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 818
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 817
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 822
    .end local v1           #i:I
    .end local v2           #val:[Ljava/lang/String;
    :goto_1
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public final createStringArrayList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1664
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1665
    .local v0, N:I
    if-gez v0, :cond_0

    .line 1666
    const/4 v2, 0x0

    .line 1673
    :goto_0
    return-object v2

    .line 1668
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1669
    .local v1, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-lez v0, :cond_1

    .line 1670
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1671
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 1673
    goto :goto_0
.end method

.method public final createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 1761
    .local p1, c:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1762
    .local v0, N:I
    if-gez v0, :cond_0

    .line 1763
    const/4 v3, 0x0

    .line 1771
    :goto_0
    return-object v3

    .line 1765
    :cond_0
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v2

    .line 1766
    .local v2, l:[Ljava/lang/Object;,"[TT;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1767
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1768
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1766
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v3, v2

    .line 1771
    goto :goto_0
.end method

.method public final createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, c:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v3, 0x0

    .line 1601
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1602
    .local v0, N:I
    if-gez v0, :cond_0

    move-object v2, v3

    .line 1614
    :goto_0
    return-object v2

    .line 1605
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1606
    .local v1, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    :goto_1
    if-lez v0, :cond_2

    .line 1607
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1608
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1612
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1610
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object v2, v1

    .line 1614
    goto :goto_0
.end method

.method public final native dataAvail()I
.end method

.method public final native dataCapacity()I
.end method

.method public final native dataPosition()I
.end method

.method public final native dataSize()I
.end method

.method public final native enforceInterface(Ljava/lang/String;)V
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2072
    invoke-direct {p0}, Landroid/os/Parcel;->destroy()V

    .line 2073
    return-void
.end method

.method public final native hasFileDescriptors()Z
.end method

.method public final native marshall()[B
.end method

.method public final readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;
    .locals 3
    .parameter "loader"

    .prologue
    .line 1547
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1548
    .local v0, N:I
    if-gez v0, :cond_0

    .line 1549
    const/4 v2, 0x0

    .line 1553
    :goto_0
    return-object v2

    .line 1551
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    .line 1552
    .local v1, l:[Ljava/lang/Object;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readArrayInternal([Ljava/lang/Object;ILjava/lang/ClassLoader;)V

    move-object v2, v1

    .line 1553
    goto :goto_0
.end method

.method public final readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    .locals 3
    .parameter "loader"

    .prologue
    .line 1531
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1532
    .local v0, N:I
    if-gez v0, :cond_0

    .line 1533
    const/4 v2, 0x0

    .line 1537
    :goto_0
    return-object v2

    .line 1535
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1536
    .local v1, l:Ljava/util/ArrayList;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V

    move-object v2, v1

    .line 1537
    goto :goto_0
.end method

.method public final readBinderArray([Landroid/os/IBinder;)V
    .locals 4
    .parameter "val"

    .prologue
    .line 878
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 879
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 880
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 881
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    aput-object v2, p1, v1

    .line 880
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 884
    .end local v1           #i:I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 886
    .restart local v1       #i:I
    :cond_1
    return-void
.end method

.method public final readBinderList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1734
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1735
    .local v0, M:I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1736
    .local v1, N:I
    const/4 v2, 0x0

    .line 1737
    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    if-ge v2, v1, :cond_0

    .line 1738
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1737
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1740
    :cond_0
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1741
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1740
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1743
    :cond_1
    :goto_2
    if-ge v2, v0, :cond_2

    .line 1744
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1743
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1746
    :cond_2
    return-void
.end method

.method public final readBooleanArray([Z)V
    .locals 4
    .parameter "val"

    .prologue
    .line 608
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 609
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_1

    .line 610
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 611
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    aput-boolean v2, p1, v1

    .line 610
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 611
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 614
    .end local v1           #i:I
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 616
    .restart local v1       #i:I
    :cond_2
    return-void
.end method

.method public final readBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1441
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;
    .locals 3
    .parameter "loader"

    .prologue
    .line 1451
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1452
    .local v1, length:I
    if-gez v1, :cond_0

    .line 1453
    const/4 v2, 0x0

    .line 1460
    :goto_0
    return-object v2

    .line 1456
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Parcel;I)V

    .line 1457
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz p1, :cond_1

    .line 1458
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_1
    move-object v2, v0

    .line 1460
    goto :goto_0
.end method

.method public final readByte()B
    .locals 1

    .prologue
    .line 1394
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public final readByteArray([B)V
    .locals 4
    .parameter "val"

    .prologue
    const/4 v3, 0x0

    .line 1474
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1475
    .local v0, ba:[B
    array-length v1, v0

    array-length v2, p1

    if-ne v1, v2, :cond_0

    .line 1476
    array-length v1, v0

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1480
    return-void

    .line 1478
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final readCharArray([C)V
    .locals 4
    .parameter "val"

    .prologue
    .line 644
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 645
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 646
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 647
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, p1, v1

    .line 646
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 650
    .end local v1           #i:I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 652
    .restart local v1       #i:I
    :cond_1
    return-void
.end method

.method public final readCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1368
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final readCharSequenceArray()[Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 1508
    const/4 v0, 0x0

    .line 1510
    .local v0, array:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1511
    .local v2, length:I
    if-ltz v2, :cond_0

    .line 1513
    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 1515
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1517
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1515
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1521
    .end local v1           #i:I
    :cond_0
    return-object v0
.end method

.method public final native readDouble()D
.end method

.method public final readDoubleArray([D)V
    .locals 4
    .parameter "val"

    .prologue
    .line 791
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 792
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 793
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 794
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 793
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 797
    .end local v1           #i:I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 799
    .restart local v1       #i:I
    :cond_1
    return-void
.end method

.method public final readException()V
    .locals 2

    .prologue
    .line 1273
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 1274
    .local v0, code:I
    if-eqz v0, :cond_0

    .line 1275
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1276
    .local v1, msg:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readException(ILjava/lang/String;)V

    .line 1278
    .end local v1           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final readException(ILjava/lang/String;)V
    .locals 3
    .parameter "code"
    .parameter "msg"

    .prologue
    .line 1320
    packed-switch p1, :pswitch_data_0

    .line 1332
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown exception code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1322
    :pswitch_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1324
    :pswitch_1
    new-instance v0, Landroid/os/BadParcelableException;

    invoke-direct {v0, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1326
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1328
    :pswitch_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1330
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1320
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readExceptionCode()I
    .locals 4

    .prologue
    .line 1294
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1295
    .local v0, code:I
    const/16 v2, -0x80

    if-ne v0, v2, :cond_1

    .line 1296
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1297
    .local v1, headerSize:I
    if-nez v1, :cond_0

    .line 1298
    const-string v2, "Parcel"

    const-string v3, "Unexpected zero-sized Parcel reply header."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :goto_0
    const/4 v2, 0x0

    .line 1310
    .end local v1           #headerSize:I
    :goto_1
    return v2

    .line 1304
    .restart local v1       #headerSize:I
    :cond_0
    invoke-static {p0}, Landroid/os/StrictMode;->readAndHandleBinderCallViolations(Landroid/os/Parcel;)V

    goto :goto_0

    .end local v1           #headerSize:I
    :cond_1
    move v2, v0

    .line 1310
    goto :goto_1
.end method

.method public final readFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 2

    .prologue
    .line 1380
    invoke-direct {p0}, Landroid/os/Parcel;->internalReadFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1381
    .local v0, fd:Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final native readFloat()F
.end method

.method public final readFloatArray([F)V
    .locals 4
    .parameter "val"

    .prologue
    .line 754
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 755
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 756
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 757
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    aput v2, p1, v1

    .line 756
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 760
    .end local v1           #i:I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 762
    .restart local v1       #i:I
    :cond_1
    return-void
.end method

.method public final readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;
    .locals 3
    .parameter "loader"

    .prologue
    .line 1426
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1427
    .local v0, N:I
    if-gez v0, :cond_0

    .line 1428
    const/4 v2, 0x0

    .line 1432
    :goto_0
    return-object v2

    .line 1430
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 1431
    .local v1, m:Ljava/util/HashMap;
    invoke-virtual {p0, v1, v0, p1}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    move-object v2, v1

    .line 1432
    goto :goto_0
.end method

.method public final native readInt()I
.end method

.method public final readIntArray([I)V
    .locals 4
    .parameter "val"

    .prologue
    .line 680
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 681
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 682
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 683
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, p1, v1

    .line 682
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 686
    .end local v1           #i:I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 688
    .restart local v1       #i:I
    :cond_1
    return-void
.end method

.method public final readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
    .locals 1
    .parameter "outVal"
    .parameter "loader"

    .prologue
    .line 1413
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1414
    .local v0, N:I
    invoke-direct {p0, p1, v0, p2}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V

    .line 1415
    return-void
.end method

.method public final native readLong()J
.end method

.method public final readLongArray([J)V
    .locals 4
    .parameter "val"

    .prologue
    .line 717
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 718
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 719
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 720
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 719
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 723
    .end local v1           #i:I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 725
    .restart local v1       #i:I
    :cond_1
    return-void
.end method

.method public final readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V
    .locals 1
    .parameter "outVal"
    .parameter "loader"

    .prologue
    .line 1403
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1404
    .local v0, N:I
    invoke-virtual {p0, p1, v0, p2}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    .line 1405
    return-void
.end method

.method readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V
    .locals 2
    .parameter "outVal"
    .parameter "N"
    .parameter "loader"

    .prologue
    .line 2081
    :goto_0
    if-lez p2, :cond_0

    .line 2082
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 2083
    .local v0, key:Ljava/lang/Object;
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2084
    .local v1, value:Ljava/lang/Object;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2085
    add-int/lit8 p2, p2, -0x1

    .line 2086
    goto :goto_0

    .line 2087
    .end local v0           #key:Ljava/lang/Object;
    .end local v1           #value:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public final readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .locals 10
    .parameter "loader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-string v6, "Parcel"

    const-string v6, "Class not found when unmarshalling: "

    const-string v6, ", e: "

    const-string v6, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    .line 1930
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1931
    .local v5, name:Ljava/lang/String;
    if-nez v5, :cond_0

    move-object v6, v7

    .line 1981
    .end local p0
    :goto_0
    return-object v6

    .line 1935
    .restart local p0
    :cond_0
    sget-object v6, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    monitor-enter v6

    .line 1936
    :try_start_0
    sget-object v7, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 1937
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    if-nez v4, :cond_1

    .line 1938
    new-instance v4, Ljava/util/HashMap;

    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1939
    .restart local v4       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    sget-object v7, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1941
    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable$Creator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1942
    .local v1, creator:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    if-nez v1, :cond_4

    .line 1944
    if-nez p1, :cond_2

    :try_start_1
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v0, v7

    .line 1946
    .local v0, c:Ljava/lang/Class;
    :goto_1
    const-string v7, "CREATOR"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1947
    .local v3, f:Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #creator:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    check-cast v1, Landroid/os/Parcelable$Creator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1971
    .restart local v1       #creator:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    if-nez v1, :cond_3

    .line 1972
    :try_start_2
    new-instance v7, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1979
    .end local v0           #c:Ljava/lang/Class;
    .end local v1           #creator:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    .end local v3           #f:Ljava/lang/reflect/Field;
    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 1944
    .restart local v1       #creator:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    .restart local v4       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    :cond_2
    const/4 v7, 0x1

    :try_start_3
    invoke-static {v5, v7, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v7

    move-object v0, v7

    goto :goto_1

    .line 1949
    .end local v1           #creator:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 1950
    .local v2, e:Ljava/lang/IllegalAccessException;
    :try_start_4
    const-string v7, "Parcel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Class not found when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    new-instance v7, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IllegalAccessException when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1955
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 1956
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v7, "Parcel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Class not found when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    new-instance v7, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ClassNotFoundException when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1961
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v7

    move-object v2, v7

    .line 1962
    .local v2, e:Ljava/lang/ClassCastException;
    new-instance v7, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1966
    .end local v2           #e:Ljava/lang/ClassCastException;
    :catch_3
    move-exception v7

    move-object v2, v7

    .line 1967
    .local v2, e:Ljava/lang/NoSuchFieldException;
    new-instance v7, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1977
    .end local v2           #e:Ljava/lang/NoSuchFieldException;
    .restart local v0       #c:Ljava/lang/Class;
    .restart local v1       #creator:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    .restart local v3       #f:Ljava/lang/reflect/Field;
    :cond_3
    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    .end local v0           #c:Ljava/lang/Class;
    .end local v3           #f:Ljava/lang/reflect/Field;
    :cond_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1981
    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/Parcelable;

    move-object v6, p0

    goto/16 :goto_0
.end method

.method public final readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;
    .locals 4
    .parameter "loader"

    .prologue
    .line 1991
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1992
    .local v0, N:I
    if-gez v0, :cond_0

    .line 1993
    const/4 v3, 0x0

    .line 1999
    :goto_0
    return-object v3

    .line 1995
    :cond_0
    new-array v2, v0, [Landroid/os/Parcelable;

    .line 1996
    .local v2, p:[Landroid/os/Parcelable;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1997
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1996
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 1999
    goto :goto_0
.end method

.method public final readSerializable()Ljava/io/Serializable;
    .locals 10

    .prologue
    const-string v9, ")"

    .line 2008
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2009
    .local v3, name:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 2013
    const/4 v6, 0x0

    .line 2020
    .end local p0
    :goto_0
    return-object v6

    .line 2016
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 2017
    .local v5, serializedData:[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2019
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2020
    .local v4, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, p0

    goto :goto_0

    .line 2021
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 2022
    .local v2, ioe:Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parcelable encountered IOException reading a Serializable object (name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 2025
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 2026
    .local v1, cnfe:Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parcelable encounteredClassNotFoundException reading a Serializable object (name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public final readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;
    .locals 3
    .parameter "loader"

    .prologue
    .line 1563
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1564
    .local v0, N:I
    if-gez v0, :cond_0

    .line 1565
    const/4 v2, 0x0

    .line 1569
    :goto_0
    return-object v2

    .line 1567
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 1568
    .local v1, sa:Landroid/util/SparseArray;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readSparseArrayInternal(Landroid/util/SparseArray;ILjava/lang/ClassLoader;)V

    move-object v2, v1

    .line 1569
    goto :goto_0
.end method

.method public final readSparseBooleanArray()Landroid/util/SparseBooleanArray;
    .locals 3

    .prologue
    .line 1578
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1579
    .local v0, N:I
    if-gez v0, :cond_0

    .line 1580
    const/4 v2, 0x0

    .line 1584
    :goto_0
    return-object v2

    .line 1582
    :cond_0
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1583
    .local v1, sa:Landroid/util/SparseBooleanArray;
    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V

    move-object v2, v1

    .line 1584
    goto :goto_0
.end method

.method public final native readString()Ljava/lang/String;
.end method

.method public final readStringArray([Ljava/lang/String;)V
    .locals 4
    .parameter "val"

    .prologue
    .line 827
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 828
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 829
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 830
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    .line 829
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 833
    .end local v1           #i:I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 835
    .restart local v1       #i:I
    :cond_1
    return-void
.end method

.method public final readStringArray()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1487
    const/4 v0, 0x0

    .line 1489
    .local v0, array:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1490
    .local v2, length:I
    if-ltz v2, :cond_0

    .line 1492
    new-array v0, v2, [Ljava/lang/String;

    .line 1494
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1496
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1494
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1500
    .end local v1           #i:I
    :cond_0
    return-object v0
.end method

.method public final readStringList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1710
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1711
    .local v0, M:I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1712
    .local v1, N:I
    const/4 v2, 0x0

    .line 1713
    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    if-ge v2, v1, :cond_0

    .line 1714
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1713
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1716
    :cond_0
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1717
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1716
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1719
    :cond_1
    :goto_2
    if-ge v2, v0, :cond_2

    .line 1720
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1719
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1722
    :cond_2
    return-void
.end method

.method public final native readStrongBinder()Landroid/os/IBinder;
.end method

.method public final readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1775
    .local p1, val:[Ljava/lang/Object;,"[TT;"
    .local p2, c:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1776
    .local v0, N:I
    array-length v2, p1

    if-ne v0, v2, :cond_1

    .line 1777
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1778
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1779
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    .line 1777
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1781
    :cond_0
    const/4 v2, 0x0

    aput-object v2, p1, v1

    goto :goto_1

    .line 1785
    .end local v1           #i:I
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1787
    .restart local v1       #i:I
    :cond_2
    return-void
.end method

.method public final readTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1795
    .local p1, c:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p2, c:Landroid/os/Parcelable$Creator;,"Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v4, 0x0

    .line 1630
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1631
    .local v0, M:I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1632
    .local v1, N:I
    const/4 v2, 0x0

    .line 1633
    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    if-ge v2, v1, :cond_1

    .line 1634
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1635
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1633
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1637
    :cond_0
    invoke-interface {p1, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1640
    :cond_1
    :goto_2
    if-ge v2, v1, :cond_3

    .line 1641
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1642
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1640
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1644
    :cond_2
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1647
    :cond_3
    :goto_4
    if-ge v2, v0, :cond_4

    .line 1648
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1647
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1650
    :cond_4
    return-void
.end method

.method public final readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 5
    .parameter "loader"

    .prologue
    const/4 v3, 0x1

    .line 1830
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1832
    .local v1, type:I
    packed-switch v1, :pswitch_data_0

    .line 1912
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    const/4 v3, 0x4

    sub-int v0, v2, v3

    .line 1913
    .local v0, off:I
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parcel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Unmarshalling unknown type code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1834
    .end local v0           #off:I
    :pswitch_0
    const/4 v2, 0x0

    .line 1909
    :goto_0
    return-object v2

    .line 1837
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1840
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 1843
    :pswitch_3
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    goto :goto_0

    .line 1846
    :pswitch_4
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    goto :goto_0

    .line 1849
    :pswitch_5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    goto :goto_0

    .line 1852
    :pswitch_6
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    .line 1855
    :pswitch_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 1858
    :pswitch_8
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    .line 1861
    :pswitch_9
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1864
    :pswitch_a
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 1867
    :pswitch_b
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 1870
    :pswitch_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v2

    goto :goto_0

    .line 1873
    :pswitch_d
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    goto :goto_0

    .line 1876
    :pswitch_e
    invoke-virtual {p0}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1879
    :pswitch_f
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 1882
    :pswitch_10
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    .line 1885
    :pswitch_11
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1888
    :pswitch_12
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    goto :goto_0

    .line 1891
    :pswitch_13
    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    goto :goto_0

    .line 1894
    :pswitch_14
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto/16 :goto_0

    .line 1897
    :pswitch_15
    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    goto/16 :goto_0

    .line 1900
    :pswitch_16
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 1903
    :pswitch_17
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v2

    goto/16 :goto_0

    .line 1906
    :pswitch_18
    invoke-virtual {p0}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v2

    goto/16 :goto_0

    .line 1909
    :pswitch_19
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v2

    goto/16 :goto_0

    .line 1832
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_19
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_17
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_16
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_18
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public final recycle()V
    .locals 3

    .prologue
    .line 263
    invoke-direct {p0}, Landroid/os/Parcel;->freeBuffer()V

    .line 264
    iget v2, p0, Landroid/os/Parcel;->mOwnObject:I

    if-eqz v2, :cond_0

    sget-object v2, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    move-object v1, v2

    .line 265
    .local v1, pool:[Landroid/os/Parcel;
    :goto_0
    monitor-enter v1

    .line 266
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    .line 267
    :try_start_0
    aget-object v2, v1, v0

    if-nez v2, :cond_1

    .line 268
    aput-object p0, v1, v0

    .line 269
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :goto_2
    return-void

    .line 264
    .end local v0           #i:I
    .end local v1           #pool:[Landroid/os/Parcel;
    :cond_0
    sget-object v2, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    move-object v1, v2

    goto :goto_0

    .line 266
    .restart local v0       #i:I
    .restart local v1       #pool:[Landroid/os/Parcel;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 272
    :cond_2
    :try_start_1
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public final native setDataCapacity(I)V
.end method

.method public final native setDataPosition(I)V
.end method

.method public final native setDataSize(I)V
.end method

.method public final native unmarshall([BII)V
.end method

.method public final writeArray([Ljava/lang/Object;)V
    .locals 3
    .parameter "val"

    .prologue
    .line 530
    if-nez p1, :cond_1

    .line 531
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    :cond_0
    return-void

    .line 534
    :cond_1
    array-length v0, p1

    .line 535
    .local v0, N:I
    const/4 v1, 0x0

    .line 536
    .local v1, i:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    :goto_0
    if-ge v1, v0, :cond_0

    .line 538
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 539
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeBinderArray([Landroid/os/IBinder;)V
    .locals 3
    .parameter "val"

    .prologue
    .line 838
    if-eqz p1, :cond_0

    .line 839
    array-length v0, p1

    .line 840
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 842
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 841
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 845
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 847
    :cond_1
    return-void
.end method

.method public final writeBinderList(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 959
    .local p1, val:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    if-nez p1, :cond_1

    .line 960
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 970
    :cond_0
    return-void

    .line 963
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 964
    .local v0, N:I
    const/4 v1, 0x0

    .line 965
    .local v1, i:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 966
    :goto_0
    if-ge v1, v0, :cond_0

    .line 967
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 968
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeBooleanArray([Z)V
    .locals 3
    .parameter "val"

    .prologue
    .line 580
    if-eqz p1, :cond_1

    .line 581
    array-length v0, p1

    .line 582
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 584
    aget-boolean v2, p1, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 584
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 587
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    :cond_2
    return-void
.end method

.method public final writeBundle(Landroid/os/Bundle;)V
    .locals 1
    .parameter "val"

    .prologue
    .line 497
    if-nez p1, :cond_0

    .line 498
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    :goto_0
    return-void

    .line 502
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public final writeByte(B)V
    .locals 0
    .parameter "val"

    .prologue
    .line 457
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    return-void
.end method

.method public final writeByteArray([B)V
    .locals 2
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 364
    if-eqz p1, :cond_0

    array-length v0, p1

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Parcel;->writeByteArray([BII)V

    .line 365
    return-void

    :cond_0
    move v0, v1

    .line 364
    goto :goto_0
.end method

.method public final writeByteArray([BII)V
    .locals 2
    .parameter "b"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 375
    if-nez p1, :cond_0

    .line 376
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    :goto_0
    return-void

    .line 379
    :cond_0
    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_1

    if-ltz p3, :cond_1

    if-gez p2, :cond_2

    .line 380
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 382
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/os/Parcel;->writeNative([BII)V

    goto :goto_0
.end method

.method public final writeCharArray([C)V
    .locals 3
    .parameter "val"

    .prologue
    .line 619
    if-eqz p1, :cond_0

    .line 620
    array-length v0, p1

    .line 621
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 623
    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 626
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    :cond_1
    return-void
.end method

.method public final writeCharSequence(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "val"

    .prologue
    .line 423
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 424
    return-void
.end method

.method public final writeCharSequenceArray([Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "val"

    .prologue
    .line 853
    if-eqz p1, :cond_0

    .line 854
    array-length v0, p1

    .line 855
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 857
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 856
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 860
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    :cond_1
    return-void
.end method

.method public final native writeDouble(D)V
.end method

.method public final writeDoubleArray([D)V
    .locals 4
    .parameter "val"

    .prologue
    .line 765
    if-eqz p1, :cond_0

    .line 766
    array-length v0, p1

    .line 767
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 769
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 768
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 772
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 774
    :cond_1
    return-void
.end method

.method public final writeException(Ljava/lang/Exception;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 1205
    const/4 v0, 0x0

    .line 1206
    .local v0, code:I
    instance-of v1, p1, Ljava/lang/SecurityException;

    if-eqz v1, :cond_1

    .line 1207
    const/4 v0, -0x1

    .line 1217
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1218
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 1219
    if-nez v0, :cond_6

    .line 1220
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_5

    .line 1221
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1
    throw p1

    .line 1208
    .restart local p1
    :cond_1
    instance-of v1, p1, Landroid/os/BadParcelableException;

    if-eqz v1, :cond_2

    .line 1209
    const/4 v0, -0x2

    goto :goto_0

    .line 1210
    :cond_2
    instance-of v1, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v1, :cond_3

    .line 1211
    const/4 v0, -0x3

    goto :goto_0

    .line 1212
    :cond_3
    instance-of v1, p1, Ljava/lang/NullPointerException;

    if-eqz v1, :cond_4

    .line 1213
    const/4 v0, -0x4

    goto :goto_0

    .line 1214
    :cond_4
    instance-of v1, p1, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_0

    .line 1215
    const/4 v0, -0x5

    goto :goto_0

    .line 1223
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1225
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1226
    return-void
.end method

.method public final native writeFileDescriptor(Ljava/io/FileDescriptor;)V
.end method

.method public final native writeFloat(F)V
.end method

.method public final writeFloatArray([F)V
    .locals 3
    .parameter "val"

    .prologue
    .line 728
    if-eqz p1, :cond_0

    .line 729
    array-length v0, p1

    .line 730
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 732
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 731
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 735
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    :cond_1
    return-void
.end method

.method public final native writeInt(I)V
.end method

.method public final writeIntArray([I)V
    .locals 3
    .parameter "val"

    .prologue
    .line 655
    if-eqz p1, :cond_0

    .line 656
    array-length v0, p1

    .line 657
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 659
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 662
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    :cond_1
    return-void
.end method

.method public final native writeInterfaceToken(Ljava/lang/String;)V
.end method

.method public final writeList(Ljava/util/List;)V
    .locals 3
    .parameter "val"

    .prologue
    .line 511
    if-nez p1, :cond_1

    .line 512
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    :cond_0
    return-void

    .line 515
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 516
    .local v0, N:I
    const/4 v1, 0x0

    .line 517
    .local v1, i:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    :goto_0
    if-ge v1, v0, :cond_0

    .line 519
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 520
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final native writeLong(J)V
.end method

.method public final writeLongArray([J)V
    .locals 4
    .parameter "val"

    .prologue
    .line 691
    if-eqz p1, :cond_0

    .line 692
    array-length v0, p1

    .line 693
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 695
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 694
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 698
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 700
    :cond_1
    return-void
.end method

.method public final writeMap(Ljava/util/Map;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMapInternal(Ljava/util/Map;)V

    .line 473
    return-void
.end method

.method writeMapInternal(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 480
    .local p1, val:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 481
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    :cond_0
    return-void

    .line 484
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 485
    .local v1, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 487
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 488
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final writeNoException()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1249
    invoke-static {}, Landroid/os/StrictMode;->hasGatheredViolations()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1250
    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1251
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1252
    .local v1, sizePosition:I
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1253
    invoke-static {p0}, Landroid/os/StrictMode;->writeGatheredViolationsToParcel(Landroid/os/Parcel;)V

    .line 1254
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 1255
    .local v0, payloadPosition:I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1256
    sub-int v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1257
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1261
    .end local v0           #payloadPosition:I
    .end local v1           #sizePosition:I
    :goto_0
    return-void

    .line 1259
    :cond_0
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public final writeParcelable(Landroid/os/Parcelable;I)V
    .locals 2
    .parameter "p"
    .parameter "parcelableFlags"

    .prologue
    .line 1145
    if-nez p1, :cond_0

    .line 1146
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1152
    :goto_0
    return-void

    .line 1149
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1150
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1151
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public final writeParcelableArray([Landroid/os/Parcelable;I)V
    .locals 3
    .parameter
    .parameter "parcelableFlags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    .prologue
    .line 1813
    .local p1, value:[Landroid/os/Parcelable;,"[TT;"
    if-eqz p1, :cond_0

    .line 1814
    array-length v0, p1

    .line 1815
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1816
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1817
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1816
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1820
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1822
    :cond_1
    return-void
.end method

.method public final writeSerializable(Ljava/io/Serializable;)V
    .locals 7
    .parameter "s"

    .prologue
    .line 1161
    if-nez p1, :cond_0

    .line 1162
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1180
    :goto_0
    return-void

    .line 1165
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1166
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1168
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1170
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1171
    .local v3, oos:Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1172
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 1174
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1175
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1176
    .local v1, ioe:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parcelable encountered IOException writing serializable object (name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public final writeSparseArray(Landroid/util/SparseArray;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p1, val:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 551
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    :cond_0
    return-void

    .line 554
    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 555
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    const/4 v1, 0x0

    .line 557
    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 558
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 560
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V
    .locals 3
    .parameter "val"

    .prologue
    .line 565
    if-nez p1, :cond_1

    .line 566
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 577
    :cond_0
    return-void

    .line 569
    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 570
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    const/4 v1, 0x0

    .line 572
    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 573
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 574
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final native writeString(Ljava/lang/String;)V
.end method

.method public final writeStringArray([Ljava/lang/String;)V
    .locals 3
    .parameter "val"

    .prologue
    .line 802
    if-eqz p1, :cond_0

    .line 803
    array-length v0, p1

    .line 804
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 805
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 806
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 805
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 809
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    :cond_1
    return-void
.end method

.method public final writeStringList(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 934
    .local p1, val:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 935
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    :cond_0
    return-void

    .line 938
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 939
    .local v0, N:I
    const/4 v1, 0x0

    .line 940
    .local v1, i:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 941
    :goto_0
    if-ge v1, v0, :cond_0

    .line 942
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 943
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final native writeStrongBinder(Landroid/os/IBinder;)V
.end method

.method public final writeStrongInterface(Landroid/os/IInterface;)V
    .locals 1
    .parameter "val"

    .prologue
    .line 437
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 438
    return-void

    .line 437
    :cond_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public final writeTypedArray([Landroid/os/Parcelable;I)V
    .locals 4
    .parameter
    .parameter "parcelableFlags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    .prologue
    .line 992
    .local p1, val:[Landroid/os/Parcelable;,"[TT;"
    if-eqz p1, :cond_1

    .line 993
    array-length v0, p1

    .line 994
    .local v0, N:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 995
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 996
    aget-object v2, p1, v1

    .line 997
    .local v2, item:Landroid/os/Parcelable;,"TT;"
    if-eqz v2, :cond_0

    .line 998
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 999
    invoke-interface {v2, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 995
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1001
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1005
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #item:Landroid/os/Parcelable;,"TT;"
    :cond_1
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1007
    :cond_2
    return-void
.end method

.method public final writeTypedList(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, val:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v4, 0x0

    .line 903
    if-nez p1, :cond_1

    .line 904
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 920
    :cond_0
    return-void

    .line 907
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 908
    .local v0, N:I
    const/4 v1, 0x0

    .line 909
    .local v1, i:I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 910
    :goto_0
    if-ge v1, v0, :cond_0

    .line 911
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 912
    .local v2, item:Landroid/os/Parcelable;,"TT;"
    if-eqz v2, :cond_2

    .line 913
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 914
    invoke-interface {v2, p0, v4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 918
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 919
    goto :goto_0

    .line 916
    :cond_2
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public final writeValue(Ljava/lang/Object;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1053
    if-nez p1, :cond_0

    .line 1054
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1134
    .end local p1
    :goto_0
    return-void

    .line 1055
    .restart local p1
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1056
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1057
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1058
    .restart local p1
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1059
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1060
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1061
    .restart local p1
    :cond_2
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 1062
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1063
    check-cast p1, Ljava/util/Map;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_0

    .line 1064
    .restart local p1
    :cond_3
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 1066
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1067
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1068
    .restart local p1
    :cond_4
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_5

    .line 1069
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1070
    check-cast p1, Landroid/os/Parcelable;

    .end local p1
    invoke-virtual {p0, p1, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 1071
    .restart local p1
    :cond_5
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_6

    .line 1072
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1073
    check-cast p1, Ljava/lang/Short;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1074
    .restart local p1
    :cond_6
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 1075
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1076
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 1077
    .restart local p1
    :cond_7
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 1078
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1079
    check-cast p1, Ljava/lang/Float;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    .line 1080
    .restart local p1
    :cond_8
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_9

    .line 1081
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1082
    check-cast p1, Ljava/lang/Double;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto/16 :goto_0

    .line 1083
    .restart local p1
    :cond_9
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 1084
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1085
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto :goto_1

    .line 1086
    .restart local p1
    :cond_b
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    .line 1088
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1089
    check-cast p1, Ljava/lang/CharSequence;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1090
    .restart local p1
    :cond_c
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_d

    .line 1091
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1092
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1093
    .restart local p1
    :cond_d
    instance-of v0, p1, Landroid/util/SparseArray;

    if-eqz v0, :cond_e

    .line 1094
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1095
    check-cast p1, Landroid/util/SparseArray;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    goto/16 :goto_0

    .line 1096
    .restart local p1
    :cond_e
    instance-of v0, p1, [Z

    if-eqz v0, :cond_f

    .line 1097
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1098
    check-cast p1, [Z

    .end local p1
    check-cast p1, [Z

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto/16 :goto_0

    .line 1099
    .restart local p1
    :cond_f
    instance-of v0, p1, [B

    if-eqz v0, :cond_10

    .line 1100
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1101
    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 1102
    .restart local p1
    :cond_10
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 1103
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1104
    check-cast p1, [Ljava/lang/String;

    .end local p1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1105
    .restart local p1
    :cond_11
    instance-of v0, p1, [Ljava/lang/CharSequence;

    if-eqz v0, :cond_12

    .line 1107
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1108
    check-cast p1, [Ljava/lang/CharSequence;

    .end local p1
    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1109
    .restart local p1
    :cond_12
    instance-of v0, p1, Landroid/os/IBinder;

    if-eqz v0, :cond_13

    .line 1110
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1111
    check-cast p1, Landroid/os/IBinder;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 1112
    .restart local p1
    :cond_13
    instance-of v0, p1, [Landroid/os/Parcelable;

    if-eqz v0, :cond_14

    .line 1113
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1114
    check-cast p1, [Landroid/os/Parcelable;

    .end local p1
    check-cast p1, [Landroid/os/Parcelable;

    invoke-virtual {p0, p1, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 1115
    .restart local p1
    :cond_14
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_15

    .line 1116
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1117
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1118
    .restart local p1
    :cond_15
    instance-of v0, p1, [I

    if-eqz v0, :cond_16

    .line 1119
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1120
    check-cast p1, [I

    .end local p1
    check-cast p1, [I

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 1121
    .restart local p1
    :cond_16
    instance-of v0, p1, [J

    if-eqz v0, :cond_17

    .line 1122
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1123
    check-cast p1, [J

    .end local p1
    check-cast p1, [J

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_0

    .line 1124
    .restart local p1
    :cond_17
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_18

    .line 1125
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1126
    check-cast p1, Ljava/lang/Byte;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1127
    .restart local p1
    :cond_18
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_19

    .line 1129
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1130
    check-cast p1, Ljava/io/Serializable;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto/16 :goto_0

    .line 1132
    .restart local p1
    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parcel: unable to marshal value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
