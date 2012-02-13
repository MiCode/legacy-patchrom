.class public final Lcom/motorola/android/xmp/options/SerializeOptions;
.super Lcom/motorola/android/xmp/options/Options;
.source "SerializeOptions.java"


# static fields
.field public static final ENCODE_UTF16BE:I = 0x2

.field public static final ENCODE_UTF16LE:I = 0x3

.field public static final ENCODE_UTF8:I = 0x0

.field private static final ENCODING_MASK:I = 0x3

.field public static final EXACT_PACKET_LENGTH:I = 0x200

.field private static final LITTLEENDIAN_BIT:I = 0x1

.field public static final OMIT_PACKET_WRAPPER:I = 0x10

.field public static final READONLY_PACKET:I = 0x20

.field public static final USE_COMPACT_FORMAT:I = 0x40

.field private static final UTF16_BIT:I = 0x2


# instance fields
.field private baseIndent:I

.field private indent:Ljava/lang/String;

.field private newline:Ljava/lang/String;

.field private omitVersionAttribute:Z

.field private padding:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/motorola/android/xmp/options/Options;-><init>()V

    const/16 v0, 0x800

    iput v0, p0, Lcom/motorola/android/xmp/options/SerializeOptions;->padding:I

    const-string v0, "\n"

    iput-object v0, p0, Lcom/motorola/android/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    const-string v0, "  "

    iput-object v0, p0, Lcom/motorola/android/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    iput v1, p0, Lcom/motorola/android/xmp/options/SerializeOptions;->baseIndent:I

    iput-boolean v1, p0, Lcom/motorola/android/xmp/options/SerializeOptions;->omitVersionAttribute:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/motorola/android/xmp/options/Options;-><init>(I)V

    const/16 v0, 0x800

    iput v0, p0, Lcom/motorola/android/xmp/options/SerializeOptions;->padding:I

    const-string v0, "\n"

    iput-object v0, p0, Lcom/motorola/android/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    const-string v0, "  "

    iput-object v0, p0, Lcom/motorola/android/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    iput v1, p0, Lcom/motorola/android/xmp/options/SerializeOptions;->baseIndent:I

    iput-boolean v1, p0, Lcom/motorola/android/xmp/options/SerializeOptions;->omitVersionAttribute:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    :try_start_0
    new-instance v0, Lcom/motorola/android/xmp/options/SerializeOptions;

    invoke-virtual {p0}, Lcom/motorola/android/xmp/options/SerializeOptions;->getOptions()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/motorola/android/xmp/options/SerializeOptions;-><init>(I)V

    .local v0, clone:Lcom/motorola/android/xmp/options/SerializeOptions;
    iget v2, p0, Lcom/motorola/android/xmp/options/SerializeOptions;->baseIndent:I

    invoke-virtual {v0, v2}, Lcom/motorola/android/xmp/options/SerializeOptions;->setBaseIndent(I)Lcom/motorola/android/xmp/options/SerializeOptions;

    iget-object v2, p0, Lcom/motorola/android/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/motorola/android/xmp/options/SerializeOptions;->setIndent(Ljava/lang/String;)Lcom/motorola/android/xmp/options/SerializeOptions;

    iget-object v2, p0, Lcom/motorola/android/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/motorola/android/xmp/options/SerializeOptions;->setNewline(Ljava/lang/String;)Lcom/motorola/android/xmp/options/SerializeOptions;

    iget v2, p0, Lcom/motorola/android/xmp/options/SerializeOptions;->padding:I

    invoke-virtual {v0, v2}, Lcom/motorola/android/xmp/options/SerializeOptions;->setPadding(I)Lcom/motorola/android/xmp/options/SerializeOptions;
    :try_end_0
    .catch Lcom/motorola/android/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .end local v0           #clone:Lcom/motorola/android/xmp/options/SerializeOptions;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Lcom/motorola/android/xmp/XMPException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected defineOptionName(I)Ljava/lang/String;
    .locals 1
    .parameter "option"

    .prologue
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "OMIT_PACKET_WRAPPER"

    goto :goto_0

    :sswitch_1
    const-string v0, "READONLY_PACKET"

    goto :goto_0

    :sswitch_2
    const-string v0, "USE_COMPACT_FORMAT"

    goto :goto_0

    :sswitch_3
    const-string v0, "EXACT_PACKET_LENGTH"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_2
        0x200 -> :sswitch_3
    .end sparse-switch
.end method

.method public getBaseIndent()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/android/xmp/options/SerializeOptions;->baseIndent:I

    return v0
.end method

.method public getEncodeUTF16BE()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/motorola/android/xmp/options/SerializeOptions;->getOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEncodeUTF16LE()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/motorola/android/xmp/options/SerializeOptions;->getOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/motorola/android/xmp/options/SerializeOptions;->getEncodeUTF16BE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UTF-16BE"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/android/xmp/options/SerializeOptions;->getEncodeUTF16LE()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "UTF-16LE"

    goto :goto_0

    :cond_1
    const-string v0, "UTF-8"

    goto :goto_0
.end method

.method public getExactPacketLength()Z
    .locals 1

    .prologue
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/motorola/android/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getIndent()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public getNewline()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    return-object v0
.end method

.method public getOmitPacketWrapper()Z
    .locals 1

    .prologue
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/motorola/android/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getOmitVersionAttribute()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/xmp/options/SerializeOptions;->omitVersionAttribute:Z

    return v0
.end method

.method public getPadding()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/android/xmp/options/SerializeOptions;->padding:I

    return v0
.end method

.method public getReadOnlyPacket()Z
    .locals 1

    .prologue
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/motorola/android/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getUseCompactFormat()Z
    .locals 1

    .prologue
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/motorola/android/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method protected getValidOptions()I
    .locals 1

    .prologue
    const/16 v0, 0x270

    return v0
.end method

.method public setBaseIndent(I)Lcom/motorola/android/xmp/options/SerializeOptions;
    .locals 0
    .parameter "baseIndent"

    .prologue
    iput p1, p0, Lcom/motorola/android/xmp/options/SerializeOptions;->baseIndent:I

    return-object p0
.end method

.method public setEncodeUTF16BE(Z)Lcom/motorola/android/xmp/options/SerializeOptions;
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/xmp/options/SerializeOptions;->setOption(IZ)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/xmp/options/SerializeOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setEncodeUTF16LE(Z)Lcom/motorola/android/xmp/options/SerializeOptions;
    .locals 2
    .parameter "value"

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/motorola/android/xmp/options/SerializeOptions;->setOption(IZ)V

    invoke-virtual {p0, v1, p1}, Lcom/motorola/android/xmp/options/SerializeOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setExactPacketLength(Z)Lcom/motorola/android/xmp/options/SerializeOptions;
    .locals 1
    .parameter "value"

    .prologue
    const/16 v0, 0x200

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/xmp/options/SerializeOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setIndent(Ljava/lang/String;)Lcom/motorola/android/xmp/options/SerializeOptions;
    .locals 0
    .parameter "indent"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    return-object p0
.end method

.method public setNewline(Ljava/lang/String;)Lcom/motorola/android/xmp/options/SerializeOptions;
    .locals 0
    .parameter "newline"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    return-object p0
.end method

.method public setOmitPacketWrapper(Z)Lcom/motorola/android/xmp/options/SerializeOptions;
    .locals 1
    .parameter "value"

    .prologue
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/xmp/options/SerializeOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setPadding(I)Lcom/motorola/android/xmp/options/SerializeOptions;
    .locals 0
    .parameter "padding"

    .prologue
    iput p1, p0, Lcom/motorola/android/xmp/options/SerializeOptions;->padding:I

    return-object p0
.end method

.method public setReadOnlyPacket(Z)Lcom/motorola/android/xmp/options/SerializeOptions;
    .locals 1
    .parameter "value"

    .prologue
    const/16 v0, 0x20

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/xmp/options/SerializeOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setUseCompactFormat(Z)Lcom/motorola/android/xmp/options/SerializeOptions;
    .locals 1
    .parameter "value"

    .prologue
    const/16 v0, 0x40

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/xmp/options/SerializeOptions;->setOption(IZ)V

    return-object p0
.end method
