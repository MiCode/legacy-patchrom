.class public abstract Landroid/net/Uri;
.super Ljava/lang/Object;
.source "Uri.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Uri$PathPart;,
        Landroid/net/Uri$Part;,
        Landroid/net/Uri$AbstractPart;,
        Landroid/net/Uri$Builder;,
        Landroid/net/Uri$HierarchicalUri;,
        Landroid/net/Uri$AbstractHierarchicalUri;,
        Landroid/net/Uri$PathSegmentsBuilder;,
        Landroid/net/Uri$PathSegments;,
        Landroid/net/Uri$OpaqueUri;,
        Landroid/net/Uri$StringUri;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final EMPTY:Landroid/net/Uri; = null

.field private static final HEX_DIGITS:[C = null

.field private static final LOG:Ljava/lang/String; = null

.field private static final NOT_CACHED:Ljava/lang/String; = null

.field private static final NOT_CALCULATED:I = -0x2

.field private static final NOT_FOUND:I = -0x1

.field private static final NOT_HIERARCHICAL:Ljava/lang/String; = "This isn\'t a hierarchical URI."

.field private static final NULL_TYPE_ID:I

.field private static final REPLACEMENT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/Uri;->LOG:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    const-string v2, "NOT CACHED"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;

    new-instance v0, Landroid/net/Uri$HierarchicalUri;

    sget-object v2, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    sget-object v3, Landroid/net/Uri$PathPart;->EMPTY:Landroid/net/Uri$PathPart;

    sget-object v4, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    sget-object v5, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Landroid/net/Uri$HierarchicalUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$1;)V

    sput-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v0, Landroid/net/Uri$1;

    invoke-direct {v0}, Landroid/net/Uri$1;-><init>()V

    sput-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Landroid/net/Uri;->HEX_DIGITS:[C

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/Uri;->REPLACEMENT:[B

    return-void

    :array_0
    .array-data 0x1
        0xfft
        0xfdt
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/Uri;-><init>()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/Uri;->LOG:Ljava/lang/String;

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "s"

    .prologue
    const/16 v11, 0x25

    const/4 v10, -0x1

    if-nez p0, :cond_0

    const/4 v8, 0x0

    :goto_0
    return-object v8

    :cond_0
    const/4 v3, 0x0

    .local v3, decoded:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .local v7, out:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, oldLength:I
    const/4 v2, 0x0

    .local v2, current:I
    :goto_1
    if-ge v2, v6, :cond_9

    invoke-virtual {p0, v11, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .local v5, nextEscape:I
    if-ne v5, v10, :cond_2

    if-nez v3, :cond_1

    move-object v8, p0

    goto :goto_0

    :cond_1
    invoke-virtual {v3, p0, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_2
    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #decoded:Ljava/lang/StringBuilder;
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .restart local v3       #decoded:Ljava/lang/StringBuilder;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .end local v7           #out:Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x4

    invoke-direct {v7, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .restart local v7       #out:Ljava/io/ByteArrayOutputStream;
    :goto_2
    if-le v5, v2, :cond_3

    invoke-virtual {v3, p0, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move v2, v5

    :cond_3
    add-int/lit8 v8, v2, 0x2

    if-lt v8, v6, :cond_6

    :try_start_0
    sget-object v8, Landroid/net/Uri;->REPLACEMENT:[B

    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_3
    add-int/lit8 v2, v2, 0x3

    if-ge v2, v6, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v11, :cond_3

    :cond_4
    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v8

    move-object v4, v8

    .local v4, e:Ljava/io/UnsupportedEncodingException;
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    :cond_5
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_2

    :cond_6
    add-int/lit8 v8, v2, 0x1

    :try_start_1
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .local v0, a:I
    add-int/lit8 v8, v2, 0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .local v1, b:I
    if-eq v0, v10, :cond_7

    if-ne v1, v10, :cond_8

    :cond_7
    sget-object v8, Landroid/net/Uri;->REPLACEMENT:[B

    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .end local v0           #a:I
    .end local v1           #b:I
    :catch_1
    move-exception v8

    move-object v4, v8

    .local v4, e:Ljava/io/IOException;
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .end local v4           #e:Ljava/io/IOException;
    .restart local v0       #a:I
    .restart local v1       #b:I
    :cond_8
    shl-int/lit8 v8, v0, 0x4

    add-int/2addr v8, v1

    :try_start_2
    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .end local v0           #a:I
    .end local v1           #b:I
    .end local v5           #nextEscape:I
    :cond_9
    if-nez v3, :cond_a

    move-object v8, p0

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "s"
    .parameter "allow"

    .prologue
    if-nez p0, :cond_0

    const/4 v10, 0x0

    :goto_0
    return-object v10

    :cond_0
    const/4 v4, 0x0

    .local v4, encoded:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    .local v8, oldLength:I
    const/4 v2, 0x0

    .local v2, current:I
    :goto_1
    if-ge v2, v8, :cond_8

    move v7, v2

    .local v7, nextToEncode:I
    :goto_2
    if-ge v7, v8, :cond_1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, p1}, Landroid/net/Uri;->isAllowed(CLjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    if-ne v7, v8, :cond_3

    if-nez v2, :cond_2

    move-object v10, p0

    goto :goto_0

    :cond_2
    invoke-virtual {v4, p0, v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #encoded:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v4       #encoded:Ljava/lang/StringBuilder;
    :cond_4
    if-le v7, v2, :cond_5

    invoke-virtual {v4, p0, v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_5
    move v2, v7

    add-int/lit8 v6, v2, 0x1

    .local v6, nextAllowed:I
    :goto_3
    if-ge v6, v8, :cond_6

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, p1}, Landroid/net/Uri;->isAllowed(CLjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .local v9, toEncode:Ljava/lang/String;
    :try_start_0
    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, bytes:[B
    array-length v1, v0

    .local v1, bytesLength:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_4
    if-ge v5, v1, :cond_7

    const/16 v10, 0x25

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v10, Landroid/net/Uri;->HEX_DIGITS:[C

    aget-byte v11, v0, v5

    and-int/lit16 v11, v11, 0xf0

    shr-int/lit8 v11, v11, 0x4

    aget-char v10, v10, v11

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v10, Landroid/net/Uri;->HEX_DIGITS:[C

    aget-byte v11, v0, v5

    and-int/lit8 v11, v11, 0xf

    aget-char v10, v10, v11

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .end local v0           #bytes:[B
    .end local v1           #bytesLength:I
    .end local v5           #i:I
    :catch_0
    move-exception v10

    move-object v3, v10

    .local v3, e:Ljava/io/UnsupportedEncodingException;
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v10

    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #bytes:[B
    .restart local v1       #bytesLength:I
    .restart local v5       #i:I
    :cond_7
    move v2, v6

    goto :goto_1

    .end local v0           #bytes:[B
    .end local v1           #bytesLength:I
    .end local v5           #i:I
    .end local v6           #nextAllowed:I
    .end local v7           #nextToEncode:I
    .end local v9           #toEncode:Ljava/lang/String;
    :cond_8
    if-nez v4, :cond_9

    move-object v10, p0

    goto :goto_0

    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0
.end method

.method public static fromFile(Ljava/io/File;)Landroid/net/Uri;
    .locals 7
    .parameter "file"

    .prologue
    const-string v1, "file"

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "file"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri$PathPart;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v3

    .local v3, path:Landroid/net/Uri$PathPart;
    new-instance v0, Landroid/net/Uri$HierarchicalUri;

    const-string v2, "file"

    sget-object v2, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    sget-object v4, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    sget-object v5, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/net/Uri$HierarchicalUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$1;)V

    return-object v0
.end method

.method public static fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .parameter "scheme"
    .parameter "ssp"
    .parameter "fragment"

    .prologue
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scheme"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ssp"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Landroid/net/Uri$OpaqueUri;

    invoke-static {p1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v1

    invoke-static {p2}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/net/Uri$OpaqueUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$1;)V

    return-object v0
.end method

.method private static isAllowed(CLjava/lang/String;)Z
    .locals 2
    .parameter "c"
    .parameter "allow"

    .prologue
    const/4 v1, -0x1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-le p0, v0, :cond_3

    :cond_2
    const-string v0, "_-!.~\'()*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "uriString"

    .prologue
    new-instance v0, Landroid/net/Uri$StringUri;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/Uri$StringUri;-><init>(Ljava/lang/String;Landroid/net/Uri$1;)V

    return-object v0
.end method

.method public static withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "baseUri"
    .parameter "pathSegment"

    .prologue
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V
    .locals 1
    .parameter "out"
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p0, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method


# virtual methods
.method public abstract buildUpon()Landroid/net/Uri$Builder;
.end method

.method public compareTo(Landroid/net/Uri;)I
    .locals 2
    .parameter "other"

    .prologue
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    instance-of v2, p1, Landroid/net/Uri;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/Uri;

    move-object v1, v0

    .local v1, other:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public abstract getAuthority()Ljava/lang/String;
.end method

.method public abstract getEncodedAuthority()Ljava/lang/String;
.end method

.method public abstract getEncodedFragment()Ljava/lang/String;
.end method

.method public abstract getEncodedPath()Ljava/lang/String;
.end method

.method public abstract getEncodedQuery()Ljava/lang/String;
.end method

.method public abstract getEncodedSchemeSpecificPart()Ljava/lang/String;
.end method

.method public abstract getEncodedUserInfo()Ljava/lang/String;
.end method

.method public abstract getFragment()Ljava/lang/String;
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getLastPathSegment()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getPathSegments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPort()I
.end method

.method public abstract getQuery()Ljava/lang/String;
.end method

.method public getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "key"

    .prologue
    const/16 v12, 0x26

    const/4 v11, -0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string v9, "This isn\'t a hierarchical URI."

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    if-nez p1, :cond_1

    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "key"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v7

    .local v7, query:Ljava/lang/String;
    if-nez v7, :cond_2

    move-object v8, v10

    :goto_0
    return-object v8

    :cond_2
    invoke-static {p1, v10}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, encodedKey:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, encodedKeyLength:I
    const/4 v3, 0x0

    .local v3, encodedKeySearchIndex:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v9, v1, 0x1

    sub-int v2, v8, v9

    .local v2, encodedKeySearchEnd:I
    :goto_1
    if-gt v3, v2, :cond_3

    invoke-virtual {v7, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .local v6, keyIndex:I
    if-ne v6, v11, :cond_4

    .end local v6           #keyIndex:I
    :cond_3
    move-object v8, v10

    goto :goto_0

    .restart local v6       #keyIndex:I
    :cond_4
    add-int v5, v6, v1

    .local v5, equalsIndex:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_3

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3d

    if-eq v8, v9, :cond_5

    add-int/lit8 v3, v5, 0x1

    goto :goto_1

    :cond_5
    if-eqz v6, :cond_6

    const/4 v8, 0x1

    sub-int v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v12, :cond_8

    :cond_6
    invoke-virtual {v7, v12, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .local v4, end:I
    if-ne v4, v11, :cond_7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    :cond_7
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .end local v4           #end:I
    :cond_8
    add-int/lit8 v3, v5, 0x1

    goto :goto_1
.end method

.method public getQueryParameters(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    const-string v12, "&"

    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/UnsupportedOperationException;

    const-string v10, "This isn\'t a hierarchical URI."

    invoke-direct {v9, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v5

    .local v5, query:Ljava/lang/String;
    if-nez v5, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    :goto_0
    return-object v9

    :cond_1
    :try_start_0
    const-string v9, "UTF-8"

    invoke-static {p1, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, encodedKey:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "&"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "&"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, prefix:Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, start:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, length:I
    :goto_1
    if-ge v6, v3, :cond_2

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v11, :cond_3

    :cond_2
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    goto :goto_0

    .end local v1           #encodedKey:Ljava/lang/String;
    .end local v3           #length:I
    .end local v4           #prefix:Ljava/lang/String;
    .end local v6           #start:I
    .end local v8           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    move-object v0, v9

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #encodedKey:Ljava/lang/String;
    .restart local v3       #length:I
    .restart local v4       #prefix:Ljava/lang/String;
    .restart local v6       #start:I
    .restart local v8       #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v6, v9

    const/16 v9, 0x26

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .local v2, end:I
    if-ne v2, v11, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    :cond_4
    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .local v7, value:Ljava/lang/String;
    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v2

    goto :goto_1
.end method

.method public abstract getScheme()Ljava/lang/String;
.end method

.method public abstract getSchemeSpecificPart()Ljava/lang/String;
.end method

.method public abstract getUserInfo()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAbsolute()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/net/Uri;->isRelative()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isHierarchical()Z
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isRelative()Z
.end method

.method public abstract toString()Ljava/lang/String;
.end method
