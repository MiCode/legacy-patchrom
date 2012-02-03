.class public Lcom/android/internal/util/FastXmlSerializer;
.super Ljava/lang/Object;
.source "FastXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final BUFFER_LEN:I = 0x2000

.field private static final ESCAPE_TABLE:[Ljava/lang/String;


# instance fields
.field private mBytes:Ljava/nio/ByteBuffer;

.field private mCharset:Ljava/nio/charset/CharsetEncoder;

.field private mInTag:Z

.field private mOutputStream:Ljava/io/OutputStream;

.field private mPos:I

.field private final mText:[C

.field private mWriter:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    aput-object v3, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    aput-object v3, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    aput-object v3, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    const/16 v1, 0x17

    aput-object v3, v0, v1

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    aput-object v3, v0, v1

    const/16 v1, 0x20

    aput-object v3, v0, v1

    const/16 v1, 0x21

    aput-object v3, v0, v1

    const/16 v1, 0x22

    const-string v2, "&quot;"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    aput-object v3, v0, v1

    const/16 v1, 0x24

    aput-object v3, v0, v1

    const/16 v1, 0x25

    aput-object v3, v0, v1

    const/16 v1, 0x26

    const-string v2, "&amp;"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    aput-object v3, v0, v1

    const/16 v1, 0x28

    aput-object v3, v0, v1

    const/16 v1, 0x29

    aput-object v3, v0, v1

    const/16 v1, 0x2a

    aput-object v3, v0, v1

    const/16 v1, 0x2b

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    aput-object v3, v0, v1

    const/16 v1, 0x2d

    aput-object v3, v0, v1

    const/16 v1, 0x2e

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    aput-object v3, v0, v1

    const/16 v1, 0x30

    aput-object v3, v0, v1

    const/16 v1, 0x31

    aput-object v3, v0, v1

    const/16 v1, 0x32

    aput-object v3, v0, v1

    const/16 v1, 0x33

    aput-object v3, v0, v1

    const/16 v1, 0x34

    aput-object v3, v0, v1

    const/16 v1, 0x35

    aput-object v3, v0, v1

    const/16 v1, 0x36

    aput-object v3, v0, v1

    const/16 v1, 0x37

    aput-object v3, v0, v1

    const/16 v1, 0x38

    aput-object v3, v0, v1

    const/16 v1, 0x39

    aput-object v3, v0, v1

    const/16 v1, 0x3a

    aput-object v3, v0, v1

    const/16 v1, 0x3b

    aput-object v3, v0, v1

    const/16 v1, 0x3c

    const-string v2, "&lt;"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    aput-object v3, v0, v1

    const/16 v1, 0x3e

    const-string v2, "&gt;"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/internal/util/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x2000

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    .line 60
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private append(C)V
    .locals 2
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 66
    .local v0, pos:I
    const/16 v1, 0x1fff

    if-lt v0, v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/internal/util/FastXmlSerializer;->flush()V

    .line 68
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    aput-char p1, v1, v0

    .line 71
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 72
    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 2
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 114
    return-void
.end method

.method private append(Ljava/lang/String;II)V
    .locals 5
    .parameter "str"
    .parameter "i"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2000

    .line 75
    if-le p3, v4, :cond_1

    .line 76
    add-int v0, p2, p3

    .line 77
    .local v0, end:I
    :goto_0
    if-ge p2, v0, :cond_3

    .line 78
    add-int/lit16 v1, p2, 0x2000

    .line 79
    .local v1, next:I
    if-ge v1, v0, :cond_0

    move v3, v4

    :goto_1
    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 80
    move p2, v1

    .line 81
    goto :goto_0

    .line 79
    :cond_0
    sub-int v3, v0, p2

    goto :goto_1

    .line 84
    .end local v0           #end:I
    .end local v1           #next:I
    :cond_1
    iget v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 85
    .local v2, pos:I
    add-int v3, v2, p3

    if-le v3, v4, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/util/FastXmlSerializer;->flush()V

    .line 87
    iget v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 89
    :cond_2
    add-int v3, p2, p3

    iget-object v4, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    invoke-virtual {p1, p2, v3, v4, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 90
    add-int v3, v2, p3

    iput v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 91
    .end local v2           #pos:I
    :cond_3
    return-void
.end method

.method private append([CII)V
    .locals 5
    .parameter "buf"
    .parameter "i"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2000

    .line 94
    if-le p3, v4, :cond_1

    .line 95
    add-int v0, p2, p3

    .line 96
    .local v0, end:I
    :goto_0
    if-ge p2, v0, :cond_3

    .line 97
    add-int/lit16 v1, p2, 0x2000

    .line 98
    .local v1, next:I
    if-ge v1, v0, :cond_0

    move v3, v4

    :goto_1
    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/util/FastXmlSerializer;->append([CII)V

    .line 99
    move p2, v1

    .line 100
    goto :goto_0

    .line 98
    :cond_0
    sub-int v3, v0, p2

    goto :goto_1

    .line 103
    .end local v0           #end:I
    .end local v1           #next:I
    :cond_1
    iget v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 104
    .local v2, pos:I
    add-int v3, v2, p3

    if-le v3, v4, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/util/FastXmlSerializer;->flush()V

    .line 106
    iget v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 108
    :cond_2
    iget-object v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    invoke-static {p1, p2, v3, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    add-int v3, v2, p3

    iput v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 110
    .end local v2           #pos:I
    :cond_3
    return-void
.end method

.method private escapeAndAppendString(Ljava/lang/String;)V
    .locals 8
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 118
    .local v0, N:I
    sget-object v7, Lcom/android/internal/util/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v7, v7

    int-to-char v1, v7

    .line 119
    .local v1, NE:C
    sget-object v4, Lcom/android/internal/util/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 120
    .local v4, escapes:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 122
    .local v5, lastPos:I
    const/4 v6, 0x0

    .local v6, pos:I
    :goto_0
    if-ge v6, v0, :cond_3

    .line 123
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 124
    .local v2, c:C
    if-lt v2, v1, :cond_1

    .line 122
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 125
    :cond_1
    aget-object v3, v4, v2

    .line 126
    .local v3, escape:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 127
    if-ge v5, v6, :cond_2

    sub-int v7, v6, v5

    invoke-direct {p0, p1, v5, v7}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 128
    :cond_2
    add-int/lit8 v5, v6, 0x1

    .line 129
    invoke-direct {p0, v3}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 131
    .end local v2           #c:C
    .end local v3           #escape:Ljava/lang/String;
    :cond_3
    if-ge v5, v6, :cond_4

    sub-int v7, v6, v5

    invoke-direct {p0, p1, v5, v7}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 132
    :cond_4
    return-void
.end method

.method private escapeAndAppendString([CII)V
    .locals 8
    .parameter "buf"
    .parameter "start"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    sget-object v7, Lcom/android/internal/util/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v7, v7

    int-to-char v0, v7

    .line 136
    .local v0, NE:C
    sget-object v4, Lcom/android/internal/util/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 137
    .local v4, escapes:[Ljava/lang/String;
    add-int v2, p2, p3

    .line 138
    .local v2, end:I
    move v5, p2

    .line 140
    .local v5, lastPos:I
    move v6, p2

    .local v6, pos:I
    :goto_0
    if-ge v6, v2, :cond_3

    .line 141
    aget-char v1, p1, v6

    .line 142
    .local v1, c:C
    if-lt v1, v0, :cond_1

    .line 140
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 143
    :cond_1
    aget-object v3, v4, v1

    .line 144
    .local v3, escape:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 145
    if-ge v5, v6, :cond_2

    sub-int v7, v6, v5

    invoke-direct {p0, p1, v5, v7}, Lcom/android/internal/util/FastXmlSerializer;->append([CII)V

    .line 146
    :cond_2
    add-int/lit8 v5, v6, 0x1

    .line 147
    invoke-direct {p0, v3}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 149
    .end local v1           #c:C
    .end local v3           #escape:Ljava/lang/String;
    :cond_3
    if-ge v5, v6, :cond_4

    sub-int v7, v6, v5

    invoke-direct {p0, p1, v5, v7}, Lcom/android/internal/util/FastXmlSerializer;->append([CII)V

    .line 150
    :cond_4
    return-void
.end method

.method private flushBytes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .local v0, position:I
    if-lez v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 212
    iget-object v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 213
    iget-object v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 215
    :cond_0
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter "namespace"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 154
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    .line 155
    if-eqz p1, :cond_0

    .line 156
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 157
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    .line 159
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 160
    const-string v0, "=\""

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 162
    invoke-direct {p0, p3}, Lcom/android/internal/util/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    .line 163
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    .line 164
    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public comment(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/internal/util/FastXmlSerializer;->flush()V

    .line 184
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    if-eqz v0, :cond_0

    .line 189
    const-string v0, " />\n"

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 199
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    .line 200
    return-object p0

    .line 191
    :cond_0
    const-string v0, "</"

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 192
    if-eqz p1, :cond_1

    .line 193
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 194
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    .line 196
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 197
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 219
    iget v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    if-lez v2, :cond_2

    .line 220
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v2, :cond_3

    .line 221
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    iget v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    invoke-static {v2, v5, v3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 222
    .local v0, charBuffer:Ljava/nio/CharBuffer;
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 224
    .local v1, result:Ljava/nio/charset/CoderResult;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    :cond_0
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    invoke-direct {p0}, Lcom/android/internal/util/FastXmlSerializer;->flushBytes()V

    .line 228
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 229
    goto :goto_0

    .line 233
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/util/FastXmlSerializer;->flushBytes()V

    .line 234
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 239
    .end local v0           #charBuffer:Ljava/nio/CharBuffer;
    .end local v1           #result:Ljava/nio/charset/CoderResult;
    :goto_1
    iput v5, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 241
    :cond_2
    return-void

    .line 236
    :cond_3
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    iget-object v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    iget v4, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/Writer;->write([CII)V

    .line 237
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    goto :goto_1
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 244
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 248
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "namespace"
    .parameter "generatePrefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 261
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 265
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 275
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .parameter "name"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 280
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    return-void

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .parameter "os"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 288
    if-nez p1, :cond_0

    .line 289
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 292
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 300
    iput-object p1, p0, Lcom/android/internal/util/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    .line 307
    return-void

    .line 293
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 294
    .local v0, e:Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/UnsupportedEncodingException;

    check-cast p0, Ljava/io/UnsupportedEncodingException;

    throw p0

    .line 296
    .end local v0           #e:Ljava/nio/charset/IllegalCharsetNameException;
    .restart local p0
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 297
    .local v0, e:Ljava/nio/charset/UnsupportedCharsetException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/UnsupportedEncodingException;

    check-cast p0, Ljava/io/UnsupportedEncodingException;

    throw p0
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 0
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/internal/util/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    .line 312
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .parameter "namespace"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 316
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 321
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .parameter "encoding"
    .parameter "standalone"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "yes"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' ?>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 328
    return-void

    .line 326
    :cond_0
    const-string/jumbo v1, "no"

    goto :goto_0
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    if-eqz v0, :cond_0

    .line 333
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 335
    :cond_0
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    .line 336
    if-eqz p1, :cond_1

    .line 337
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 338
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    .line 340
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    .line 342
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    if-eqz v0, :cond_0

    .line 358
    const-string v0, ">"

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    .line 361
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    .line 362
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter "buf"
    .parameter "start"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    if-eqz v0, :cond_0

    .line 348
    const-string v0, ">"

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    .line 351
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/FastXmlSerializer;->escapeAndAppendString([CII)V

    .line 352
    return-object p0
.end method
