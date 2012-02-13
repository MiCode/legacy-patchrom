.class synthetic Lcom/motorola/blur/setup/ServiceErrorTranslator$1;
.super Ljava/lang/Object;
.source "ServiceErrorTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/ServiceErrorTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

.field static final synthetic $SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 112
    invoke-static {}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->values()[Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    :try_start_0
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->AccountDisabledError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3a

    :goto_0
    :try_start_1
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->AccountNotFound:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_39

    :goto_1
    :try_start_2
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->AlreadyExists:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_38

    :goto_2
    :try_start_3
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->AlreadyInitializedError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_37

    :goto_3
    :try_start_4
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ConnectTimeoutError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_36

    :goto_4
    :try_start_5
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidEmailError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_35

    :goto_5
    :try_start_6
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->SNPError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_34

    :goto_6
    :try_start_7
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidCredsError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_33

    :goto_7
    :try_start_8
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NoServerResponseError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_32

    :goto_8
    :try_start_9
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NotAllowedError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_31

    :goto_9
    :try_start_a
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NotFoundError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_30

    :goto_a
    :try_start_b
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NotInitializedError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2f

    :goto_b
    :try_start_c
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->PasswordMismatchError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2e

    :goto_c
    :try_start_d
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->RadioDownError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_2d

    :goto_d
    :try_start_e
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ServiceBusyError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_2c

    :goto_e
    :try_start_f
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ServiceDownError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_2b

    :goto_f
    :try_start_10
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->SocketTimeoutError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_2a

    :goto_10
    :try_start_11
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->TooManyError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_29

    :goto_11
    :try_start_12
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->UnauthorizedError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_28

    :goto_12
    :try_start_13
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->WrongDevice:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_27

    :goto_13
    :try_start_14
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->CaptchaInvalidError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_26

    :goto_14
    :try_start_15
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->CaptchaExpiredError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_25

    :goto_15
    :try_start_16
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->SSLError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_24

    :goto_16
    :try_start_17
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->BadRequestError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_23

    :goto_17
    :try_start_18
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ForbiddenError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_22

    :goto_18
    :try_start_19
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_21

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalServerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_20

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidParamsError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1f

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NullPointerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1e

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->OAuthError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->IOError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1c

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ProtocolError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1b

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->UnknownError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_1a

    .line 64
    :goto_20
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->values()[Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    :try_start_21
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->LOGIN_NOT_MATCH_DB:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_19

    :goto_21
    :try_start_22
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ACCOUNT_NOT_FOUND:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_18

    :goto_22
    :try_start_23
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_LOGIN_INVALID:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_17

    :goto_23
    :try_start_24
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_AUTH_FAILURE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_16

    :goto_24
    :try_start_25
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_BAD_IP:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_15

    :goto_25
    :try_start_26
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_BANNED_CONTENT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_14

    :goto_26
    :try_start_27
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_INVALID_API_KEY:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_13

    :goto_27
    :try_start_28
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_INVALID_REQ:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_12

    :goto_28
    :try_start_29
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_IO_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_11

    :goto_29
    :try_start_2a
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->SERVICE_UNAVAILABLE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_10

    :goto_2a
    :try_start_2b
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_UNAVAILABLE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_f

    :goto_2b
    :try_start_2c
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_NOT_ALLOWED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_e

    :goto_2c
    :try_start_2d
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_REQ_LIMIT_REACHED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_d

    :goto_2d
    :try_start_2e
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_c

    :goto_2e
    :try_start_2f
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->DATABASE_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_b

    :goto_2f
    :try_start_30
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->INTERNAL_SERVER_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_a

    :goto_30
    :try_start_31
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->INVALID_INPUT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_9

    :goto_31
    :try_start_32
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->MISSING_PARAMETER:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_8

    :goto_32
    :try_start_33
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->IN_PROGRESS:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_7

    :goto_33
    :try_start_34
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->PROIVDER_NOT_SUPPORTED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_6

    :goto_34
    :try_start_35
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_RESOURCE_NOT_FOUND:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_5

    :goto_35
    :try_start_36
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_TIMEOUT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_4

    :goto_36
    :try_start_37
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_SESSION_EXPIRED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_3

    :goto_37
    :try_start_38
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_SESSION_INVALID:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_2

    :goto_38
    :try_start_39
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_UNSUPPORTED_METHOD:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_1

    :goto_39
    :try_start_3a
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->UNKNOWN_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_0

    :goto_3a
    return-void

    :catch_0
    move-exception v0

    goto :goto_3a

    :catch_1
    move-exception v0

    goto :goto_39

    :catch_2
    move-exception v0

    goto :goto_38

    :catch_3
    move-exception v0

    goto :goto_37

    :catch_4
    move-exception v0

    goto :goto_36

    :catch_5
    move-exception v0

    goto :goto_35

    :catch_6
    move-exception v0

    goto :goto_34

    :catch_7
    move-exception v0

    goto :goto_33

    :catch_8
    move-exception v0

    goto :goto_32

    :catch_9
    move-exception v0

    goto :goto_31

    :catch_a
    move-exception v0

    goto/16 :goto_30

    :catch_b
    move-exception v0

    goto/16 :goto_2f

    :catch_c
    move-exception v0

    goto/16 :goto_2e

    :catch_d
    move-exception v0

    goto/16 :goto_2d

    :catch_e
    move-exception v0

    goto/16 :goto_2c

    :catch_f
    move-exception v0

    goto/16 :goto_2b

    :catch_10
    move-exception v0

    goto/16 :goto_2a

    :catch_11
    move-exception v0

    goto/16 :goto_29

    :catch_12
    move-exception v0

    goto/16 :goto_28

    :catch_13
    move-exception v0

    goto/16 :goto_27

    :catch_14
    move-exception v0

    goto/16 :goto_26

    :catch_15
    move-exception v0

    goto/16 :goto_25

    :catch_16
    move-exception v0

    goto/16 :goto_24

    :catch_17
    move-exception v0

    goto/16 :goto_23

    :catch_18
    move-exception v0

    goto/16 :goto_22

    :catch_19
    move-exception v0

    goto/16 :goto_21

    .line 112
    :catch_1a
    move-exception v0

    goto/16 :goto_20

    :catch_1b
    move-exception v0

    goto/16 :goto_1f

    :catch_1c
    move-exception v0

    goto/16 :goto_1e

    :catch_1d
    move-exception v0

    goto/16 :goto_1d

    :catch_1e
    move-exception v0

    goto/16 :goto_1c

    :catch_1f
    move-exception v0

    goto/16 :goto_1b

    :catch_20
    move-exception v0

    goto/16 :goto_1a

    :catch_21
    move-exception v0

    goto/16 :goto_19

    :catch_22
    move-exception v0

    goto/16 :goto_18

    :catch_23
    move-exception v0

    goto/16 :goto_17

    :catch_24
    move-exception v0

    goto/16 :goto_16

    :catch_25
    move-exception v0

    goto/16 :goto_15

    :catch_26
    move-exception v0

    goto/16 :goto_14

    :catch_27
    move-exception v0

    goto/16 :goto_13

    :catch_28
    move-exception v0

    goto/16 :goto_12

    :catch_29
    move-exception v0

    goto/16 :goto_11

    :catch_2a
    move-exception v0

    goto/16 :goto_10

    :catch_2b
    move-exception v0

    goto/16 :goto_f

    :catch_2c
    move-exception v0

    goto/16 :goto_e

    :catch_2d
    move-exception v0

    goto/16 :goto_d

    :catch_2e
    move-exception v0

    goto/16 :goto_c

    :catch_2f
    move-exception v0

    goto/16 :goto_b

    :catch_30
    move-exception v0

    goto/16 :goto_a

    :catch_31
    move-exception v0

    goto/16 :goto_9

    :catch_32
    move-exception v0

    goto/16 :goto_8

    :catch_33
    move-exception v0

    goto/16 :goto_7

    :catch_34
    move-exception v0

    goto/16 :goto_6

    :catch_35
    move-exception v0

    goto/16 :goto_5

    :catch_36
    move-exception v0

    goto/16 :goto_4

    :catch_37
    move-exception v0

    goto/16 :goto_3

    :catch_38
    move-exception v0

    goto/16 :goto_2

    :catch_39
    move-exception v0

    goto/16 :goto_1

    :catch_3a
    move-exception v0

    goto/16 :goto_0
.end method
