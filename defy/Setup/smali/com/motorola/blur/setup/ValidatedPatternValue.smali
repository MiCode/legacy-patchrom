.class public Lcom/motorola/blur/setup/ValidatedPatternValue;
.super Lcom/motorola/blur/setup/ValidatedValue;
.source "ValidatedPatternValue.java"


# static fields
.field public static final AS_EMAIL_PATTERN:Ljava/util/regex/Pattern;

.field public static final EMAIL_PATTERN:Ljava/util/regex/Pattern;

.field public static final MIN_FOUR_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field public static final NON_ZERO_PATTERN:Ljava/util/regex/Pattern;

.field public static final SERVER_ADDRESS_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final mValidator:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, ".+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/setup/ValidatedPatternValue;->NON_ZERO_PATTERN:Ljava/util/regex/Pattern;

    .line 18
    const-string v0, ".{4}.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/setup/ValidatedPatternValue;->MIN_FOUR_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 20
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    sput-object v0, Lcom/motorola/blur/setup/ValidatedPatternValue;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    .line 21
    const-string v0, "^[\\w\\.~#$!+^_\'{|}=-]+@[\\w\\.-]+\\.[\\w]{2,9}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/setup/ValidatedPatternValue;->AS_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    .line 22
    sget-object v0, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    sput-object v0, Lcom/motorola/blur/setup/ValidatedPatternValue;->SERVER_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;ILjava/lang/String;)V
    .locals 1
    .parameter "validator"
    .parameter "errorId"
    .parameter "defaultValue"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0, v0, p2, p3}, Lcom/motorola/blur/setup/ValidatedValue;-><init>(IIILjava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/motorola/blur/setup/ValidatedPatternValue;->mValidator:Ljava/util/regex/Pattern;

    .line 34
    return-void
.end method

.method public constructor <init>([Landroid/widget/EditText;Ljava/util/regex/Pattern;ILjava/lang/String;)V
    .locals 6
    .parameter "edits"
    .parameter "validator"
    .parameter "errorId"
    .parameter "defaultValue"

    .prologue
    const/4 v2, 0x0

    .line 27
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/blur/setup/ValidatedValue;-><init>([Landroid/widget/EditText;IIILjava/lang/String;)V

    .line 28
    iput-object p2, p0, Lcom/motorola/blur/setup/ValidatedPatternValue;->mValidator:Ljava/util/regex/Pattern;

    .line 29
    return-void
.end method


# virtual methods
.method protected validate(Ljava/lang/String;)Lcom/motorola/blur/setup/ValidationError;
    .locals 1
    .parameter "value"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/motorola/blur/setup/ValidatedPatternValue;->mValidator:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/blur/setup/ValidationError;->VALID_VALUE:Lcom/motorola/blur/setup/ValidationError;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/blur/setup/ValidationError;->BAD_FORMAT:Lcom/motorola/blur/setup/ValidationError;

    goto :goto_0
.end method
