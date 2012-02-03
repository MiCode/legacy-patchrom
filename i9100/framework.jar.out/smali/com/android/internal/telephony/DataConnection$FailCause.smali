.class public final enum Lcom/android/internal/telephony/DataConnection$FailCause;
.super Ljava/lang/Enum;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FailCause"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataConnection$FailCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 175
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 176
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "OPERATOR_BARRED"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 177
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "INSUFFICIENT_RESOURCES"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 178
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "MISSING_UNKNOWN_APN"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 179
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "UNKNOWN_PDP_ADDRESS"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 180
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "USER_AUTHENTICATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 181
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "ACTIVATION_REJECT_GGSN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 182
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "ACTIVATION_REJECT_UNSPECIFIED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 183
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "SERVICE_OPTION_NOT_SUPPORTED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 184
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "SERVICE_OPTION_NOT_SUBSCRIBED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 185
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "SERVICE_OPTION_OUT_OF_ORDER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 186
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "NSAPI_IN_USE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 187
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "PROTOCOL_ERRORS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 188
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "REGISTRATION_FAIL"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 189
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "GPRS_REGISTRATION_FAIL"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 190
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 192
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "RADIO_NOT_AVAILABLE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 174
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/android/internal/telephony/DataConnection$FailCause;

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->$VALUES:[Lcom/android/internal/telephony/DataConnection$FailCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnection$FailCause;
    .locals 1
    .parameter "name"

    .prologue
    .line 174
    const-class v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataConnection$FailCause;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/DataConnection$FailCause;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->$VALUES:[Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataConnection$FailCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataConnection$FailCause;

    return-object v0
.end method


# virtual methods
.method public isEventLoggable()Z
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPermanentFail()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    const-string v0, "TIM"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 210
    goto :goto_0

    :cond_2
    move v0, v2

    .line 229
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 278
    const-string v0, "Unknown Data Error"

    :goto_0
    return-object v0

    .line 246
    :pswitch_0
    const-string v0, "No Error"

    goto :goto_0

    .line 248
    :pswitch_1
    const-string v0, "Operator Barred"

    goto :goto_0

    .line 250
    :pswitch_2
    const-string v0, "Insufficient Resources"

    goto :goto_0

    .line 252
    :pswitch_3
    const-string v0, "Missing / Unknown APN"

    goto :goto_0

    .line 254
    :pswitch_4
    const-string v0, "Unknown PDP Address"

    goto :goto_0

    .line 256
    :pswitch_5
    const-string v0, "Error User Authentication"

    goto :goto_0

    .line 258
    :pswitch_6
    const-string v0, "Activation Reject GGSN"

    goto :goto_0

    .line 260
    :pswitch_7
    const-string v0, "Activation Reject unspecified"

    goto :goto_0

    .line 262
    :pswitch_8
    const-string v0, "Data Not Supported"

    goto :goto_0

    .line 264
    :pswitch_9
    const-string v0, "Data Not subscribed"

    goto :goto_0

    .line 266
    :pswitch_a
    const-string v0, "Data Services Out of Order"

    goto :goto_0

    .line 268
    :pswitch_b
    const-string v0, "NSAPI in use"

    goto :goto_0

    .line 270
    :pswitch_c
    const-string v0, "Protocol Errors"

    goto :goto_0

    .line 272
    :pswitch_d
    const-string v0, "Network Registration Failure"

    goto :goto_0

    .line 274
    :pswitch_e
    const-string v0, "Data Network Registration Failure"

    goto :goto_0

    .line 276
    :pswitch_f
    const-string v0, "Radio Not Available"

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
