.class public Lcom/google/android/mms/pdu/CharacterSets;
.super Ljava/lang/Object;
.source "CharacterSets.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ANY_CHARSET:I = 0x0

.field public static final BIG5:I = 0x7ea

.field public static final DEFAULT_CHARSET:I = 0x6a

.field public static final DEFAULT_CHARSET_NAME:Ljava/lang/String; = "utf-8"

.field public static final ISO_8859_1:I = 0x4

.field public static final ISO_8859_2:I = 0x5

.field public static final ISO_8859_3:I = 0x6

.field public static final ISO_8859_4:I = 0x7

.field public static final ISO_8859_5:I = 0x8

.field public static final ISO_8859_6:I = 0x9

.field public static final ISO_8859_7:I = 0xa

.field public static final ISO_8859_8:I = 0xb

.field public static final ISO_8859_9:I = 0xc

.field private static final MIBENUM_NUMBERS:[I = null

.field private static final MIBENUM_TO_NAME_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIMENAME_ANY_CHARSET:Ljava/lang/String; = "*"

.field public static final MIMENAME_BIG5:Ljava/lang/String; = "big5"

.field public static final MIMENAME_ISO_8859_1:Ljava/lang/String; = "iso-8859-1"

.field public static final MIMENAME_ISO_8859_2:Ljava/lang/String; = "iso-8859-2"

.field public static final MIMENAME_ISO_8859_3:Ljava/lang/String; = "iso-8859-3"

.field public static final MIMENAME_ISO_8859_4:Ljava/lang/String; = "iso-8859-4"

.field public static final MIMENAME_ISO_8859_5:Ljava/lang/String; = "iso-8859-5"

.field public static final MIMENAME_ISO_8859_6:Ljava/lang/String; = "iso-8859-6"

.field public static final MIMENAME_ISO_8859_7:Ljava/lang/String; = "iso-8859-7"

.field public static final MIMENAME_ISO_8859_8:Ljava/lang/String; = "iso-8859-8"

.field public static final MIMENAME_ISO_8859_9:Ljava/lang/String; = "iso-8859-9"

.field public static final MIMENAME_SHIFT_JIS:Ljava/lang/String; = "shift_JIS"

.field public static final MIMENAME_UCS2:Ljava/lang/String; = "iso-10646-ucs-2"

.field public static final MIMENAME_US_ASCII:Ljava/lang/String; = "us-ascii"

.field public static final MIMENAME_UTF_16:Ljava/lang/String; = "utf-16"

.field public static final MIMENAME_UTF_8:Ljava/lang/String; = "utf-8"

.field private static final MIME_NAMES:[Ljava/lang/String; = null

.field private static final NAME_TO_MIBENUM_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHIFT_JIS:I = 0x11

.field public static final UCS2:I = 0x3e8

.field public static final US_ASCII:I = 0x3

.field public static final UTF_16:I = 0x3f7

.field public static final UTF_8:I = 0x6a


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 23
    const-class v2, Lcom/google/android/mms/pdu/CharacterSets;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v5

    :goto_0
    sput-boolean v2, Lcom/google/android/mms/pdu/CharacterSets;->$assertionsDisabled:Z

    .line 56
    new-array v2, v3, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_NUMBERS:[I

    .line 100
    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "*"

    aput-object v3, v2, v4

    const-string/jumbo v3, "us-ascii"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "iso-8859-1"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "iso-8859-2"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "iso-8859-3"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "iso-8859-4"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "iso-8859-5"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "iso-8859-6"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "iso-8859-7"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "iso-8859-8"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "iso-8859-9"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "shift_JIS"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "utf-8"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "big5"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "iso-10646-ucs-2"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "utf-16"

    aput-object v4, v2, v3

    sput-object v2, Lcom/google/android/mms/pdu/CharacterSets;->MIME_NAMES:[Ljava/lang/String;

    .line 124
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_TO_NAME_MAP:Ljava/util/HashMap;

    .line 125
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/android/mms/pdu/CharacterSets;->NAME_TO_MIBENUM_MAP:Ljava/util/HashMap;

    .line 126
    sget-boolean v2, Lcom/google/android/mms/pdu/CharacterSets;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_NUMBERS:[I

    array-length v2, v2

    sget-object v3, Lcom/google/android/mms/pdu/CharacterSets;->MIME_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move v2, v4

    .line 23
    goto/16 :goto_0

    .line 127
    :cond_1
    sget-object v2, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_NUMBERS:[I

    array-length v2, v2

    sub-int v0, v2, v5

    .line 128
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-gt v1, v0, :cond_2

    .line 129
    sget-object v2, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_TO_NAME_MAP:Ljava/util/HashMap;

    sget-object v3, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_NUMBERS:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/google/android/mms/pdu/CharacterSets;->MIME_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v2, Lcom/google/android/mms/pdu/CharacterSets;->NAME_TO_MIBENUM_MAP:Ljava/util/HashMap;

    sget-object v3, Lcom/google/android/mms/pdu/CharacterSets;->MIME_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_NUMBERS:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 132
    :cond_2
    return-void

    .line 56
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0xeat 0x7t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0xf7t 0x3t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMibEnumValue(Ljava/lang/String;)I
    .locals 2
    .parameter "mimeName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 162
    if-nez p0, :cond_0

    .line 163
    const/4 v1, -0x1

    .line 170
    :goto_0
    return v1

    .line 166
    :cond_0
    sget-object v1, Lcom/google/android/mms/pdu/CharacterSets;->NAME_TO_MIBENUM_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 167
    .local v0, mibEnumValue:Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 168
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v1

    .line 170
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getMimeName(I)Ljava/lang/String;
    .locals 3
    .parameter "mibEnumValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 146
    sget-object v1, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_TO_NAME_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 148
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v1

    .line 150
    :cond_0
    return-object v0
.end method
