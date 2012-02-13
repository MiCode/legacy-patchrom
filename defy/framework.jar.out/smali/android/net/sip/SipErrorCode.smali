.class public Landroid/net/sip/SipErrorCode;
.super Ljava/lang/Object;
.source "SipErrorCode.java"


# static fields
.field public static final CLIENT_ERROR:I = -0x4

.field public static final CROSS_DOMAIN_AUTHENTICATION:I = -0xb

.field public static final DATA_CONNECTION_LOST:I = -0xa

.field public static final INVALID_CREDENTIALS:I = -0x8

.field public static final INVALID_REMOTE_URI:I = -0x6

.field public static final IN_PROGRESS:I = -0x9

.field public static final NO_ERROR:I = 0x0

.field public static final PEER_NOT_REACHABLE:I = -0x7

.field public static final SERVER_ERROR:I = -0x2

.field public static final SERVER_UNREACHABLE:I = -0xc

.field public static final SOCKET_ERROR:I = -0x1

.field public static final TIME_OUT:I = -0x5

.field public static final TRANSACTION_TERMINTED:I = -0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .parameter "errorCode"

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "NO_ERROR"

    goto :goto_0

    :pswitch_1
    const-string v0, "SOCKET_ERROR"

    goto :goto_0

    :pswitch_2
    const-string v0, "SERVER_ERROR"

    goto :goto_0

    :pswitch_3
    const-string v0, "TRANSACTION_TERMINTED"

    goto :goto_0

    :pswitch_4
    const-string v0, "CLIENT_ERROR"

    goto :goto_0

    :pswitch_5
    const-string v0, "TIME_OUT"

    goto :goto_0

    :pswitch_6
    const-string v0, "INVALID_REMOTE_URI"

    goto :goto_0

    :pswitch_7
    const-string v0, "PEER_NOT_REACHABLE"

    goto :goto_0

    :pswitch_8
    const-string v0, "INVALID_CREDENTIALS"

    goto :goto_0

    :pswitch_9
    const-string v0, "IN_PROGRESS"

    goto :goto_0

    :pswitch_a
    const-string v0, "DATA_CONNECTION_LOST"

    goto :goto_0

    :pswitch_b
    const-string v0, "CROSS_DOMAIN_AUTHENTICATION"

    goto :goto_0

    :pswitch_c
    const-string v0, "SERVER_UNREACHABLE"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0xc
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
