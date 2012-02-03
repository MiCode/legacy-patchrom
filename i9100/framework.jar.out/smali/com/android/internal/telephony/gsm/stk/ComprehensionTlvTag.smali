.class final enum Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;
.super Ljava/lang/Enum;
.source "StkService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum ADDRESS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum BEARER_DESCRIPTION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum BROWSER_TERMINATION_CAUSE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum BUFFER_SIZE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum CHANNEL_DATA:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum CHANNEL_STATUS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum COMMAND_DETAILS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum DATA_DESTINATION_ADDRESS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum DEFAULT_TEXT:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum DTMF_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum DURATION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum EVENT_LIST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum FILE_LIST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum HELP_REQUEST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum ICON_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum ITEM:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum ITEM_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum LANGUAGE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum NETWORK_ACCESS_NAME:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum RESPONSE_LENGTH:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum RESULT:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum SMSTPDUTAG:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum SS_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum SUBADDRESS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum TEXT_ATTRIBUTE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum TONE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum TRANSPORT_LEVEL:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum URL:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

.field public static final enum USSD_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;


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

    .line 162
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "COMMAND_DETAILS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 163
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "DEVICE_IDENTITIES"

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 164
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "RESULT"

    invoke-direct {v0, v1, v5, v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 165
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "DURATION"

    invoke-direct {v0, v1, v6, v7}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 166
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "ALPHA_ID"

    invoke-direct {v0, v1, v7, v8}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 167
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "ADDRESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 168
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "SUBADDRESS"

    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->SUBADDRESS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 169
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "SS_STRING"

    const/4 v2, 0x7

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->SS_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 170
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "USSD_STRING"

    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->USSD_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 171
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "SMSTPDUTAG"

    const/16 v2, 0x9

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->SMSTPDUTAG:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 172
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "TEXT_STRING"

    const/16 v2, 0xa

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 173
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "TONE"

    const/16 v2, 0xb

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 174
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "ITEM"

    const/16 v2, 0xc

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 175
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "ITEM_ID"

    const/16 v2, 0xd

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 176
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "RESPONSE_LENGTH"

    const/16 v2, 0xe

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 177
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "FILE_LIST"

    const/16 v2, 0xf

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->FILE_LIST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 178
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "HELP_REQUEST"

    const/16 v2, 0x10

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 179
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "DEFAULT_TEXT"

    const/16 v2, 0x11

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 180
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "EVENT_LIST"

    const/16 v2, 0x12

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 181
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "ICON_ID"

    const/16 v2, 0x13

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 182
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "ITEM_ICON_ID_LIST"

    const/16 v2, 0x14

    const/16 v3, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 183
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "IMMEDIATE_RESPONSE"

    const/16 v2, 0x15

    const/16 v3, 0x2b

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 184
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "DTMF_STRING"

    const/16 v2, 0x16

    const/16 v3, 0x2c

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DTMF_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 185
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "LANGUAGE"

    const/16 v2, 0x17

    const/16 v3, 0x2d

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 186
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "URL"

    const/16 v2, 0x18

    const/16 v3, 0x31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 187
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "BROWSER_TERMINATION_CAUSE"

    const/16 v2, 0x19

    const/16 v3, 0x34

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->BROWSER_TERMINATION_CAUSE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 188
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "BEARER_DESCRIPTION"

    const/16 v2, 0x1a

    const/16 v3, 0x35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 189
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "CHANNEL_DATA"

    const/16 v2, 0x1b

    const/16 v3, 0x36

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->CHANNEL_DATA:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 190
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "CHANNEL_DATA_LENGTH"

    const/16 v2, 0x1c

    const/16 v3, 0x37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 191
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "CHANNEL_STATUS"

    const/16 v2, 0x1d

    const/16 v3, 0x38

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 192
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "BUFFER_SIZE"

    const/16 v2, 0x1e

    const/16 v3, 0x39

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 193
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "TRANSPORT_LEVEL"

    const/16 v2, 0x1f

    const/16 v3, 0x3c

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TRANSPORT_LEVEL:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 194
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "DATA_DESTINATION_ADDRESS"

    const/16 v2, 0x20

    const/16 v3, 0x3e

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DATA_DESTINATION_ADDRESS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 195
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "NETWORK_ACCESS_NAME"

    const/16 v2, 0x21

    const/16 v3, 0x47

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->NETWORK_ACCESS_NAME:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 196
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const-string v1, "TEXT_ATTRIBUTE"

    const/16 v2, 0x22

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_ATTRIBUTE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    .line 161
    const/16 v0, 0x23

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->SUBADDRESS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->SS_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->USSD_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->SMSTPDUTAG:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->FILE_LIST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DTMF_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->BROWSER_TERMINATION_CAUSE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->CHANNEL_DATA:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TRANSPORT_LEVEL:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DATA_DESTINATION_ADDRESS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->NETWORK_ACCESS_NAME:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_ATTRIBUTE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->$VALUES:[Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

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
    .line 200
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 201
    iput p3, p0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->mValue:I

    .line 202
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;
    .locals 5
    .parameter "value"

    .prologue
    .line 214
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->values()[Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 215
    .local v1, e:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;
    iget v4, v1, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->mValue:I

    if-ne v4, p0, :cond_0

    move-object v4, v1

    .line 219
    .end local v1           #e:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;
    :goto_1
    return-object v4

    .line 214
    .restart local v1       #e:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    .end local v1           #e:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;
    .locals 1
    .parameter "name"

    .prologue
    .line 161
    const-class v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->$VALUES:[Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->mValue:I

    return v0
.end method
