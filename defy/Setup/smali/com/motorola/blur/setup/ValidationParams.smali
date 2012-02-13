.class public Lcom/motorola/blur/setup/ValidationParams;
.super Ljava/lang/Object;
.source "ValidationParams.java"


# static fields
.field public static final ACTIVESYNC_PROTOCOL:Ljava/lang/String; = "ACTIVESYNC_PROTOCOL"

.field public static final EMAIL_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams; = null

.field public static final ENTER_PASSWORD_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams; = null

.field public static final IMAP_PROTOCOL:Ljava/lang/String; = "IMAP_PROTOCOL"

.field public static final IMEI_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams; = null

.field public static final IMSI_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams; = null

.field public static final NAME_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams; = null

.field public static final PHONE_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams; = null

.field public static final POP3_PROTOCOL:Ljava/lang/String; = "POP3_PROTOCOL"

.field public static final SET_PASSWORD_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams;


# instance fields
.field public final badFormatPromptStringId:I

.field public final blankValue:Ljava/lang/String;

.field public final invalidValue:Ljava/lang/String;

.field public maxLength:I

.field public minLength:I

.field public final regex:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v2, 0x32

    const/16 v13, 0x14

    const/4 v12, 0x4

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 54
    new-instance v0, Lcom/motorola/blur/setup/ValidationParams;

    const/4 v1, 0x7

    const-string v3, "NO_PHONE_NUMBER"

    const-string v4, "INVALID_PHONE_NUMBER"

    const-string v5, "^[\\+0-9\\- ]*"

    const v6, 0x7f0c0105

    invoke-direct/range {v0 .. v6}, Lcom/motorola/blur/setup/ValidationParams;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/setup/ValidationParams;->PHONE_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams;

    .line 61
    new-instance v3, Lcom/motorola/blur/setup/ValidationParams;

    const v9, 0x7f0c0106

    move v4, v12

    move v5, v13

    move-object v6, v10

    move-object v7, v10

    move-object v8, v10

    invoke-direct/range {v3 .. v9}, Lcom/motorola/blur/setup/ValidationParams;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/blur/setup/ValidationParams;->ENTER_PASSWORD_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams;

    .line 68
    new-instance v3, Lcom/motorola/blur/setup/ValidationParams;

    const-string v8, "^[^\\s]*$"

    const v9, 0x7f0c0106

    move v4, v12

    move v5, v13

    move-object v6, v10

    move-object v7, v10

    invoke-direct/range {v3 .. v9}, Lcom/motorola/blur/setup/ValidationParams;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/blur/setup/ValidationParams;->SET_PASSWORD_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams;

    .line 75
    new-instance v3, Lcom/motorola/blur/setup/ValidationParams;

    const/4 v4, 0x6

    const/16 v5, 0x80

    const-string v8, "^[\\w\\.=-]+@[\\w\\.-]+\\.[\\w]{2,6}$"

    const v9, 0x7f0c0089

    move-object v6, v10

    move-object v7, v10

    invoke-direct/range {v3 .. v9}, Lcom/motorola/blur/setup/ValidationParams;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/blur/setup/ValidationParams;->EMAIL_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams;

    .line 82
    new-instance v3, Lcom/motorola/blur/setup/ValidationParams;

    const/4 v4, 0x1

    const/16 v5, 0x64

    move-object v6, v10

    move-object v7, v10

    move-object v8, v10

    move v9, v11

    invoke-direct/range {v3 .. v9}, Lcom/motorola/blur/setup/ValidationParams;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/blur/setup/ValidationParams;->NAME_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams;

    .line 89
    new-instance v0, Lcom/motorola/blur/setup/ValidationParams;

    const/16 v1, 0xe

    const-string v3, "NO_SERIAL_NUMBER"

    const-string v4, "INVALID_SERIAL_NUMBER"

    const-string v5, "^[0-9a-fA-F]*"

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/motorola/blur/setup/ValidationParams;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/setup/ValidationParams;->IMEI_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams;

    .line 96
    new-instance v0, Lcom/motorola/blur/setup/ValidationParams;

    const/16 v1, 0xd

    const/16 v2, 0x10

    const-string v3, "NO_IMSI"

    const-string v4, "INVALID_IMSI"

    const-string v5, "^[0-9]*"

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/motorola/blur/setup/ValidationParams;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/setup/ValidationParams;->IMSI_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "min"
    .parameter "max"
    .parameter "blankVal"
    .parameter "invVal"
    .parameter "regexp"
    .parameter "badPromptId"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/motorola/blur/setup/ValidationParams;->minLength:I

    .line 32
    iput p2, p0, Lcom/motorola/blur/setup/ValidationParams;->maxLength:I

    .line 33
    iput-object p3, p0, Lcom/motorola/blur/setup/ValidationParams;->blankValue:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/motorola/blur/setup/ValidationParams;->invalidValue:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/motorola/blur/setup/ValidationParams;->regex:Ljava/lang/String;

    .line 36
    iput p6, p0, Lcom/motorola/blur/setup/ValidationParams;->badFormatPromptStringId:I

    .line 37
    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Lcom/motorola/blur/setup/ValidationError;
    .locals 3
    .parameter "value"

    .prologue
    .line 40
    sget-object v0, Lcom/motorola/blur/setup/ValidationError;->VALID_VALUE:Lcom/motorola/blur/setup/ValidationError;

    .line 41
    .local v0, error:Lcom/motorola/blur/setup/ValidationError;
    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 43
    .local v1, length:I
    iget v2, p0, Lcom/motorola/blur/setup/ValidationParams;->minLength:I

    if-ge v1, v2, :cond_1

    .line 44
    sget-object v0, Lcom/motorola/blur/setup/ValidationError;->NOT_MIN_LENGTH:Lcom/motorola/blur/setup/ValidationError;

    .line 51
    .end local v1           #length:I
    :cond_0
    :goto_0
    return-object v0

    .line 45
    .restart local v1       #length:I
    :cond_1
    iget v2, p0, Lcom/motorola/blur/setup/ValidationParams;->maxLength:I

    if-le v1, v2, :cond_2

    .line 46
    sget-object v0, Lcom/motorola/blur/setup/ValidationError;->EXCEEDS_MAX_LENGTH:Lcom/motorola/blur/setup/ValidationError;

    goto :goto_0

    .line 47
    :cond_2
    iget-object v2, p0, Lcom/motorola/blur/setup/ValidationParams;->regex:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/blur/setup/ValidationParams;->regex:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    sget-object v0, Lcom/motorola/blur/setup/ValidationError;->BAD_FORMAT:Lcom/motorola/blur/setup/ValidationError;

    goto :goto_0
.end method
