.class public final enum Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
.super Ljava/lang/Enum;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/stk/AppInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum CLOSE_CHANNEL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum DISPLAY_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum GET_CHANNEL_STATUS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum GET_INKEY:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum GET_INPUT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum GET_READER_STATUS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum LAUNCH_BROWSER:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum MORE_TIME:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum OPEN_CHANNEL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum PERFORM_CARD_APDU:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum PLAY_TONE:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum POLLING_OFF:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum POLL_INTERVAL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum POWER_OFF_CARD:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum POWER_ON_CARD:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum PROVIDE_LOCAL_INFO:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum RECEIVE_DATA:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum REFRESH:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum RUN_AT_COMMAND:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SELECT_ITEM:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SEND_DATA:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SEND_DTMF:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SEND_SMS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SEND_SS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SEND_USSD:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SET_UP_CALL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SET_UP_EVENT_LIST:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SET_UP_MENU:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum TIMER_MANAGEMENT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 54
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "DISPLAY_TEXT"

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 55
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "GET_INKEY"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 56
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "GET_INPUT"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 57
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "LAUNCH_BROWSER"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 58
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "PLAY_TONE"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v7, v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 59
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "REFRESH"

    invoke-direct {v0, v1, v8, v4}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 60
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SELECT_ITEM"

    const/4 v2, 0x6

    const/16 v3, 0x24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 61
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SEND_SS"

    const/4 v2, 0x7

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 62
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SEND_USSD"

    const/16 v2, 0x8

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 63
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SEND_SMS"

    const/16 v2, 0x9

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 64
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SEND_DTMF"

    const/16 v2, 0xa

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 65
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SET_UP_EVENT_LIST"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v8}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 66
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SET_UP_IDLE_MODE_TEXT"

    const/16 v2, 0xc

    const/16 v3, 0x28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 67
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SET_UP_MENU"

    const/16 v2, 0xd

    const/16 v3, 0x25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 68
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "PROVIDE_LOCAL_INFO"

    const/16 v2, 0xe

    const/16 v3, 0x26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->PROVIDE_LOCAL_INFO:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 69
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SET_UP_CALL"

    const/16 v2, 0xf

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 70
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "MORE_TIME"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->MORE_TIME:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 71
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "POLL_INTERVAL"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->POLL_INTERVAL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 72
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "POLLING_OFF"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v7}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->POLLING_OFF:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 73
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "TIMER_MANAGEMENT"

    const/16 v2, 0x13

    const/16 v3, 0x27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->TIMER_MANAGEMENT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 74
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "PERFORM_CARD_APDU"

    const/16 v2, 0x14

    const/16 v3, 0x30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->PERFORM_CARD_APDU:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 75
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "POWER_ON_CARD"

    const/16 v2, 0x15

    const/16 v3, 0x31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->POWER_ON_CARD:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 76
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "POWER_OFF_CARD"

    const/16 v2, 0x16

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->POWER_OFF_CARD:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 77
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "GET_READER_STATUS"

    const/16 v2, 0x17

    const/16 v3, 0x33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->GET_READER_STATUS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 78
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "RUN_AT_COMMAND"

    const/16 v2, 0x18

    const/16 v3, 0x34

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->RUN_AT_COMMAND:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 79
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "LANGUAGE_NOTIFICATION"

    const/16 v2, 0x19

    const/16 v3, 0x35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 80
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "OPEN_CHANNEL"

    const/16 v2, 0x1a

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 81
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "CLOSE_CHANNEL"

    const/16 v2, 0x1b

    const/16 v3, 0x41

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 82
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "RECEIVE_DATA"

    const/16 v2, 0x1c

    const/16 v3, 0x42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 83
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SEND_DATA"

    const/16 v2, 0x1d

    const/16 v3, 0x43

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 84
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "GET_CHANNEL_STATUS"

    const/16 v2, 0x1e

    const/16 v3, 0x44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    .line 53
    const/16 v0, 0x1f

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->PROVIDE_LOCAL_INFO:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->MORE_TIME:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->POLL_INTERVAL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->POLLING_OFF:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->TIMER_MANAGEMENT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->PERFORM_CARD_APDU:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->POWER_ON_CARD:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->POWER_OFF_CARD:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->GET_READER_STATUS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->RUN_AT_COMMAND:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->$VALUES:[Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput p3, p0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->mValue:I

    .line 90
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    .locals 5
    .parameter "value"

    .prologue
    .line 105
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->values()[Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 106
    .local v1, e:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    iget v4, v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->mValue:I

    if-ne v4, p0, :cond_0

    move-object v4, v1

    .line 110
    .end local v1           #e:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    :goto_1
    return-object v4

    .line 105
    .restart local v1       #e:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    .end local v1           #e:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    .locals 1
    .parameter "name"

    .prologue
    .line 53
    const-class v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->$VALUES:[Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->mValue:I

    return v0
.end method
