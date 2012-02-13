.class public Landroid/nfc/ErrorCodes;
.super Ljava/lang/Object;
.source "ErrorCodes.java"


# static fields
.field public static final ERROR_BUFFER_TO_SMALL:I = -0xc

.field public static final ERROR_BUSY:I = -0x4

.field public static final ERROR_CANCELLED:I = -0x2

.field public static final ERROR_CONNECT:I = -0x5

.field public static final ERROR_DISCONNECT:I = -0x5

.field public static final ERROR_INSUFFICIENT_RESOURCES:I = -0x9

.field public static final ERROR_INVALID_PARAM:I = -0x8

.field public static final ERROR_IO:I = -0x1

.field public static final ERROR_NFC_ON:I = -0x10

.field public static final ERROR_NOT_INITIALIZED:I = -0x11

.field public static final ERROR_NO_SE_CONNECTED:I = -0x14

.field public static final ERROR_READ:I = -0x6

.field public static final ERROR_SAP_USED:I = -0xd

.field public static final ERROR_SERVICE_NAME_USED:I = -0xe

.field public static final ERROR_SE_ALREADY_SELECTED:I = -0x12

.field public static final ERROR_SE_CONNECTED:I = -0x13

.field public static final ERROR_SOCKET_CREATION:I = -0xa

.field public static final ERROR_SOCKET_NOT_CONNECTED:I = -0xb

.field public static final ERROR_SOCKET_OPTIONS:I = -0xf

.field public static final ERROR_TIMEOUT:I = -0x3

.field public static final ERROR_WRITE:I = -0x7

.field public static final SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asString(I)Ljava/lang/String;
    .locals 1
    .parameter "code"

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN ERROR"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "SUCCESS"

    goto :goto_0

    :pswitch_1
    const-string v0, "IO"

    goto :goto_0

    :pswitch_2
    const-string v0, "CANCELLED"

    goto :goto_0

    :pswitch_3
    const-string v0, "TIMEOUT"

    goto :goto_0

    :pswitch_4
    const-string v0, "BUSY"

    goto :goto_0

    :pswitch_5
    const-string v0, "CONNECT/DISCONNECT"

    goto :goto_0

    :pswitch_6
    const-string v0, "READ"

    goto :goto_0

    :pswitch_7
    const-string v0, "WRITE"

    goto :goto_0

    :pswitch_8
    const-string v0, "INVALID_PARAM"

    goto :goto_0

    :pswitch_9
    const-string v0, "INSUFFICIENT_RESOURCES"

    goto :goto_0

    :pswitch_a
    const-string v0, "SOCKET_CREATION"

    goto :goto_0

    :pswitch_b
    const-string v0, "SOCKET_NOT_CONNECTED"

    goto :goto_0

    :pswitch_c
    const-string v0, "BUFFER_TO_SMALL"

    goto :goto_0

    :pswitch_d
    const-string v0, "SAP_USED"

    goto :goto_0

    :pswitch_e
    const-string v0, "SERVICE_NAME_USED"

    goto :goto_0

    :pswitch_f
    const-string v0, "SOCKET_OPTIONS"

    goto :goto_0

    :pswitch_10
    const-string v0, "NFC_ON"

    goto :goto_0

    :pswitch_11
    const-string v0, "NOT_INITIALIZED"

    goto :goto_0

    :pswitch_12
    const-string v0, "SE_ALREADY_SELECTED"

    goto :goto_0

    :pswitch_13
    const-string v0, "SE_CONNECTED"

    goto :goto_0

    :pswitch_14
    const-string v0, "NO_SE_CONNECTED"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x14
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isError(I)Z
    .locals 1
    .parameter "code"

    .prologue
    if-gez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
