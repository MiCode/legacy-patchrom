.class public Lcom/android/internal/telephony/SmsHeader;
.super Ljava/lang/Object;
.source "SmsHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsHeader$MiscElt;,
        Lcom/android/internal/telephony/SmsHeader$ConcatRef;,
        Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    }
.end annotation


# static fields
.field public static final ELT_ID_APPLICATION_PORT_ADDRESSING_16_BIT:I = 0x5

.field public static final ELT_ID_APPLICATION_PORT_ADDRESSING_8_BIT:I = 0x4

.field public static final ELT_ID_CHARACTER_SIZE_WVG_OBJECT:I = 0x19

.field public static final ELT_ID_COMPRESSION_CONTROL:I = 0x16

.field public static final ELT_ID_CONCATENATED_16_BIT_REFERENCE:I = 0x8

.field public static final ELT_ID_CONCATENATED_8_BIT_REFERENCE:I = 0x0

.field public static final ELT_ID_ENHANCED_VOICE_MAIL_INFORMATION:I = 0x23

.field public static final ELT_ID_EXTENDED_OBJECT:I = 0x14

.field public static final ELT_ID_EXTENDED_OBJECT_DATA_REQUEST_CMD:I = 0x1a

.field public static final ELT_ID_HYPERLINK_FORMAT_ELEMENT:I = 0x21

.field public static final ELT_ID_LARGE_ANIMATION:I = 0xe

.field public static final ELT_ID_LARGE_PICTURE:I = 0x10

.field public static final ELT_ID_NATIONAL_LANGUAGE_LOCKING_SHIFT:I = 0x25

.field public static final ELT_ID_NATIONAL_LANGUAGE_SINGLE_SHIFT:I = 0x24

.field public static final ELT_ID_OBJECT_DISTR_INDICATOR:I = 0x17

.field public static final ELT_ID_PREDEFINED_ANIMATION:I = 0xd

.field public static final ELT_ID_PREDEFINED_SOUND:I = 0xb

.field public static final ELT_ID_REPLY_ADDRESS_ELEMENT:I = 0x22

.field public static final ELT_ID_REUSED_EXTENDED_OBJECT:I = 0x15

.field public static final ELT_ID_RFC_822_EMAIL_HEADER:I = 0x20

.field public static final ELT_ID_SMALL_ANIMATION:I = 0xf

.field public static final ELT_ID_SMALL_PICTURE:I = 0x11

.field public static final ELT_ID_SMSC_CONTROL_PARAMS:I = 0x6

.field public static final ELT_ID_SPECIAL_SMS_MESSAGE_INDICATION:I = 0x1

.field public static final ELT_ID_STANDARD_WVG_OBJECT:I = 0x18

.field public static final ELT_ID_TEXT_FORMATTING:I = 0xa

.field public static final ELT_ID_UDH_SOURCE_INDICATION:I = 0x7

.field public static final ELT_ID_USER_DEFINED_SOUND:I = 0xc

.field public static final ELT_ID_USER_PROMPT_INDICATOR:I = 0x13

.field public static final ELT_ID_VARIABLE_PICTURE:I = 0x12

.field public static final ELT_ID_WIRELESS_CTRL_MSG_PROTOCOL:I = 0x9

.field public static final NATIONAL_LANGUAGE_IDENTIFIER_PORTUGUESE:I = 0x3

.field public static final NATIONAL_LANGUAGE_IDENTIFIER_RESERVED:I = 0x0

.field public static final NATIONAL_LANGUAGE_IDENTIFIER_SPANISH:I = 0x2

.field public static final NATIONAL_LANGUAGE_IDENTIFIER_TURKISH:I = 0x1

.field public static final PORT_WAP_PUSH:I = 0xb84

.field public static final PORT_WAP_WSP:I = 0x23f0

.field public static nationalLanguageSingleShiftTableIdentifierCode:I

.field public static udhi_isMwi:Z

.field public static udhi_mwiDontStore:Z

.field public static udhi_voicemailcount:I


# instance fields
.field public concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

.field public languageShiftTable:I

.field public languageTable:I

.field public miscEltList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsHeader$MiscElt;",
            ">;"
        }
    .end annotation
.end field

.field public portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    sput-boolean v1, Lcom/android/internal/telephony/SmsHeader;->udhi_isMwi:Z

    .line 115
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/SmsHeader;->udhi_mwiDontStore:Z

    .line 116
    sput v1, Lcom/android/internal/telephony/SmsHeader;->udhi_voicemailcount:I

    .line 121
    sput v1, Lcom/android/internal/telephony/SmsHeader;->nationalLanguageSingleShiftTableIdentifierCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    .line 131
    return-void
.end method

.method public static fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;
    .locals 11
    .parameter "data"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 140
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 141
    .local v2, inStream:Ljava/io/ByteArrayInputStream;
    new-instance v6, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 142
    .local v6, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_0
    :goto_0
    :sswitch_0
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    if-lez v7, :cond_1

    .line 151
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 152
    .local v1, id:I
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 155
    .local v3, length:I
    sparse-switch v1, :sswitch_data_0

    .line 215
    new-instance v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 216
    .local v4, miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iput v1, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 217
    new-array v7, v3, [B

    iput-object v7, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 218
    iget-object v7, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    invoke-virtual {v2, v7, v9, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 219
    iget-object v7, v6, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    .end local v4           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :sswitch_1
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 158
    .local v0, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 159
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 160
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 161
    iput-boolean v10, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 162
    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-eqz v7, :cond_0

    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-eqz v7, :cond_0

    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-gt v7, v8, :cond_0

    .line 164
    iput-object v0, v6, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    goto :goto_0

    .line 168
    .end local v0           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :sswitch_2
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 169
    .restart local v0       #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    or-int/2addr v7, v8

    iput v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 170
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 171
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 172
    iput-boolean v9, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 173
    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-eqz v7, :cond_0

    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-eqz v7, :cond_0

    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-gt v7, v8, :cond_0

    .line 175
    iput-object v0, v6, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    goto/16 :goto_0

    .line 179
    .end local v0           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :sswitch_3
    new-instance v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 180
    .local v5, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    iput v7, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 181
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    iput v7, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 182
    iput-boolean v10, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 183
    iput-object v5, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    goto/16 :goto_0

    .line 186
    .end local v5           #portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :sswitch_4
    new-instance v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 187
    .restart local v5       #portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    or-int/2addr v7, v8

    iput v7, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 188
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    or-int/2addr v7, v8

    iput v7, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 189
    iput-boolean v9, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 190
    iput-object v5, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    goto/16 :goto_0

    .line 209
    .end local v5           #portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :sswitch_5
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    iput v7, v6, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    goto/16 :goto_0

    .line 212
    :sswitch_6
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    iput v7, v6, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    goto/16 :goto_0

    .line 223
    .end local v1           #id:I
    .end local v3           #length:I
    :cond_1
    return-object v6

    .line 155
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x8 -> :sswitch_2
        0x24 -> :sswitch_5
        0x25 -> :sswitch_6
    .end sparse-switch
.end method

.method public static toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B
    .locals 9
    .parameter "smsHeader"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 232
    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 235
    const/4 v5, 0x0

    .line 285
    :goto_0
    return-object v5

    .line 238
    :cond_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x8c

    invoke-direct {v3, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 239
    .local v3, outStream:Ljava/io/ByteArrayOutputStream;
    iget-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 240
    .local v0, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    if-eqz v0, :cond_1

    .line 241
    iget-boolean v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    if-eqz v5, :cond_5

    .line 242
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 243
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 244
    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 251
    :goto_1
    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 252
    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 254
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 255
    .local v4, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    if-eqz v4, :cond_2

    .line 256
    iget-boolean v5, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    if-eqz v5, :cond_6

    .line 257
    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 258
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 259
    iget v5, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 260
    iget v5, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 270
    :cond_2
    :goto_2
    iget v5, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eqz v5, :cond_3

    .line 271
    const/16 v5, 0x24

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 272
    invoke-virtual {v3, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 273
    iget v5, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 275
    :cond_3
    iget v5, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-eqz v5, :cond_4

    .line 276
    const/16 v5, 0x25

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 277
    invoke-virtual {v3, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 278
    iget v5, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 280
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .line 281
    .local v2, miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iget v5, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 282
    iget-object v5, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 283
    iget-object v5, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    iget-object v6, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v6, v6

    invoke-virtual {v3, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 246
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .end local v4           #portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :cond_5
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 247
    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 248
    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    ushr-int/lit8 v5, v5, 0x8

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 249
    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    .line 262
    .restart local v4       #portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :cond_6
    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 263
    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 264
    iget v5, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    ushr-int/lit8 v5, v5, 0x8

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 265
    iget v5, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 266
    iget v5, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    ushr-int/lit8 v5, v5, 0x8

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 267
    iget v5, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 285
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    goto/16 :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const-string/jumbo v6, "unset"

    const-string v5, " }"

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v3, "UserDataHeader "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string/jumbo v3, "{ ConcatRef "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget-object v3, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v3, :cond_2

    .line 294
    const-string/jumbo v3, "unset"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :goto_0
    const-string v3, ", PortAddrs "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget-object v3, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v3, :cond_3

    .line 304
    const-string/jumbo v3, "unset"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :goto_1
    iget v3, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eqz v3, :cond_0

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", languageShiftTable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-eqz v3, :cond_1

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", languageTable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .line 318
    .local v2, miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const-string v3, ", MiscElt "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{ id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string v3, " }"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 296
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{ refNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v4, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", msgCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v4, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", seqNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v4, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", isEightBits="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-boolean v4, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v3, " }"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 306
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{ destPort="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v4, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", origPort="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v4, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", areEightBits="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget-boolean v4, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string v3, " }"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 324
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    const-string v3, " }"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
