.class public final enum Lcom/android/internal/telephony/gsm/stk/Tone;
.super Ljava/lang/Enum;
.source "Tone.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/stk/Tone;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum BUSY:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum CALL_WAITING:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum CONGESTION:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/Tone;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CRITICAL_ALERT:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum DIAL:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum ERROR_SPECIAL_INFO:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum GENERAL_BEEP:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum HAPPY:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum INCOMING_SMS:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum INCOMING_SPEECH_CALL:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum MELODY_1:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum MELODY_2:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum MELODY_3:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum MELODY_4:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum MELODY_5:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum MELODY_6:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum MELODY_7:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum MELODY_8:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum MESSAGE_RECEIVED:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum NEGATIVE_ACK:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum POSITIVE_ACK:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum QUESTION:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum RADIO_PATH_ACK:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum RADIO_PATH_NOT_AVAILABLE:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum RINGING:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum SAD:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum URGENT:Lcom/android/internal/telephony/gsm/stk/Tone;

.field public static final enum VIBRATE_ONLY:Lcom/android/internal/telephony/gsm/stk/Tone;


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

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "DIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->DIAL:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "BUSY"

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->BUSY:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "CONGESTION"

    invoke-direct {v0, v1, v5, v6}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->CONGESTION:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "RADIO_PATH_ACK"

    invoke-direct {v0, v1, v6, v7}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->RADIO_PATH_ACK:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "RADIO_PATH_NOT_AVAILABLE"

    invoke-direct {v0, v1, v7, v8}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->RADIO_PATH_NOT_AVAILABLE:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "ERROR_SPECIAL_INFO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->ERROR_SPECIAL_INFO:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "CALL_WAITING"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->CALL_WAITING:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "RINGING"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->RINGING:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "GENERAL_BEEP"

    const/16 v2, 0x8

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->GENERAL_BEEP:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "POSITIVE_ACK"

    const/16 v2, 0x9

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->POSITIVE_ACK:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "NEGATIVE_ACK"

    const/16 v2, 0xa

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->NEGATIVE_ACK:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "INCOMING_SPEECH_CALL"

    const/16 v2, 0xb

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->INCOMING_SPEECH_CALL:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "INCOMING_SMS"

    const/16 v2, 0xc

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->INCOMING_SMS:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "CRITICAL_ALERT"

    const/16 v2, 0xd

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->CRITICAL_ALERT:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "VIBRATE_ONLY"

    const/16 v2, 0xe

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->VIBRATE_ONLY:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "HAPPY"

    const/16 v2, 0xf

    const/16 v3, 0x30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->HAPPY:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "SAD"

    const/16 v2, 0x10

    const/16 v3, 0x31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->SAD:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "URGENT"

    const/16 v2, 0x11

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->URGENT:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "QUESTION"

    const/16 v2, 0x12

    const/16 v3, 0x33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->QUESTION:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "MESSAGE_RECEIVED"

    const/16 v2, 0x13

    const/16 v3, 0x34

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->MESSAGE_RECEIVED:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "MELODY_1"

    const/16 v2, 0x14

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->MELODY_1:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "MELODY_2"

    const/16 v2, 0x15

    const/16 v3, 0x41

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->MELODY_2:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "MELODY_3"

    const/16 v2, 0x16

    const/16 v3, 0x42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->MELODY_3:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "MELODY_4"

    const/16 v2, 0x17

    const/16 v3, 0x43

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->MELODY_4:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "MELODY_5"

    const/16 v2, 0x18

    const/16 v3, 0x44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->MELODY_5:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "MELODY_6"

    const/16 v2, 0x19

    const/16 v3, 0x45

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->MELODY_6:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "MELODY_7"

    const/16 v2, 0x1a

    const/16 v3, 0x46

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->MELODY_7:Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    const-string v1, "MELODY_8"

    const/16 v2, 0x1b

    const/16 v3, 0x47

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->MELODY_8:Lcom/android/internal/telephony/gsm/stk/Tone;

    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/stk/Tone;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/Tone;->DIAL:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/Tone;->BUSY:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/Tone;->CONGESTION:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/Tone;->RADIO_PATH_ACK:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/Tone;->RADIO_PATH_NOT_AVAILABLE:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/Tone;->ERROR_SPECIAL_INFO:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/Tone;->CALL_WAITING:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/Tone;->RINGING:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/Tone;->GENERAL_BEEP:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/Tone;->POSITIVE_ACK:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/Tone;->NEGATIVE_ACK:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/Tone;->INCOMING_SPEECH_CALL:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/Tone;->INCOMING_SMS:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/Tone;->CRITICAL_ALERT:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/Tone;->VIBRATE_ONLY:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/Tone;->HAPPY:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/Tone;->SAD:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/Tone;->URGENT:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/Tone;->QUESTION:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/Tone;->MESSAGE_RECEIVED:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/Tone;->MELODY_1:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/Tone;->MELODY_2:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/Tone;->MELODY_3:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/Tone;->MELODY_4:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/Tone;->MELODY_5:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/Tone;->MELODY_6:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/Tone;->MELODY_7:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/Tone;->MELODY_8:Lcom/android/internal/telephony/gsm/stk/Tone;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->$VALUES:[Lcom/android/internal/telephony/gsm/stk/Tone;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Tone$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/Tone$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->CREATOR:Landroid/os/Parcelable$Creator;

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
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/internal/telephony/gsm/stk/Tone;->mValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/os/Parcel;)V
    .locals 1
    .parameter
    .parameter
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/Tone;->mValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/gsm/stk/Tone;
    .locals 5
    .parameter "value"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/Tone;->values()[Lcom/android/internal/telephony/gsm/stk/Tone;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/gsm/stk/Tone;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .local v1, e:Lcom/android/internal/telephony/gsm/stk/Tone;
    iget v4, v1, Lcom/android/internal/telephony/gsm/stk/Tone;->mValue:I

    if-ne v4, p0, :cond_0

    move-object v4, v1

    .end local v1           #e:Lcom/android/internal/telephony/gsm/stk/Tone;
    :goto_1
    return-object v4

    .restart local v1       #e:Lcom/android/internal/telephony/gsm/stk/Tone;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #e:Lcom/android/internal/telephony/gsm/stk/Tone;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/stk/Tone;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/internal/telephony/gsm/stk/Tone;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/stk/Tone;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/stk/Tone;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/Tone;->$VALUES:[Lcom/android/internal/telephony/gsm/stk/Tone;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/stk/Tone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/stk/Tone;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/Tone;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
