.class abstract Landroid/content/res/PluralRules;
.super Ljava/lang/Object;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/PluralRules$1;,
        Landroid/content/res/PluralRules$en;,
        Landroid/content/res/PluralRules$cs;
    }
.end annotation


# static fields
.field static final ID_OTHER:I = 0x1000004

.field static final QUANTITY_FEW:I = 0x8

.field static final QUANTITY_MANY:I = 0x10

.field static final QUANTITY_ONE:I = 0x2

.field static final QUANTITY_OTHER:I = 0x0

.field static final QUANTITY_TWO:I = 0x4

.field static final QUANTITY_ZERO:I = 0x1

.field private static cs:Landroid/content/res/PluralRules;

.field private static en:Landroid/content/res/PluralRules;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final attrForQuantity(I)I
    .locals 1
    .parameter "quantity"

    .prologue
    sparse-switch p0, :sswitch_data_0

    const v0, 0x1000004

    :goto_0
    return v0

    :sswitch_0
    const v0, 0x1000005

    goto :goto_0

    :sswitch_1
    const v0, 0x1000006

    goto :goto_0

    :sswitch_2
    const v0, 0x1000007

    goto :goto_0

    :sswitch_3
    const v0, 0x1000008

    goto :goto_0

    :sswitch_4
    const v0, 0x1000009

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method static final ruleForLocale(Ljava/util/Locale;)Landroid/content/res/PluralRules;
    .locals 3
    .parameter "locale"

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .local v0, lang:Ljava/lang/String;
    const-string v1, "cs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/content/res/PluralRules;->cs:Landroid/content/res/PluralRules;

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/res/PluralRules$cs;

    invoke-direct {v1, v2}, Landroid/content/res/PluralRules$cs;-><init>(Landroid/content/res/PluralRules$1;)V

    sput-object v1, Landroid/content/res/PluralRules;->cs:Landroid/content/res/PluralRules;

    :cond_0
    sget-object v1, Landroid/content/res/PluralRules;->cs:Landroid/content/res/PluralRules;

    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Landroid/content/res/PluralRules;->en:Landroid/content/res/PluralRules;

    if-nez v1, :cond_2

    new-instance v1, Landroid/content/res/PluralRules$en;

    invoke-direct {v1, v2}, Landroid/content/res/PluralRules$en;-><init>(Landroid/content/res/PluralRules$1;)V

    sput-object v1, Landroid/content/res/PluralRules;->en:Landroid/content/res/PluralRules;

    :cond_2
    sget-object v1, Landroid/content/res/PluralRules;->en:Landroid/content/res/PluralRules;

    goto :goto_0
.end method

.method static final stringForQuantity(I)Ljava/lang/String;
    .locals 1
    .parameter "quantity"

    .prologue
    sparse-switch p0, :sswitch_data_0

    const-string v0, "other"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "zero"

    goto :goto_0

    :sswitch_1
    const-string v0, "one"

    goto :goto_0

    :sswitch_2
    const-string v0, "two"

    goto :goto_0

    :sswitch_3
    const-string v0, "few"

    goto :goto_0

    :sswitch_4
    const-string v0, "many"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method final attrForNumber(I)I
    .locals 1
    .parameter "n"

    .prologue
    invoke-virtual {p0, p1}, Landroid/content/res/PluralRules;->quantityForNumber(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/PluralRules;->attrForQuantity(I)I

    move-result v0

    return v0
.end method

.method abstract quantityForNumber(I)I
.end method
