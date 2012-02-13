.class public Lcom/motorola/blur/setup/ValidatedParamValue;
.super Lcom/motorola/blur/setup/ValidatedValue;
.source "ValidatedParamValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/ValidatedParamValue$1;
    }
.end annotation


# instance fields
.field private mFieldName:I

.field private final mParams:Lcom/motorola/blur/setup/ValidationParams;


# direct methods
.method public constructor <init>([Landroid/widget/EditText;Lcom/motorola/blur/setup/ValidationParams;Ljava/lang/String;I)V
    .locals 11
    .parameter "edits"
    .parameter "params"
    .parameter "defaultValue"
    .parameter "fieldName"

    .prologue
    .line 21
    const v2, 0x7f0c0108

    const v3, 0x7f0c0109

    iget v4, p2, Lcom/motorola/blur/setup/ValidationParams;->badFormatPromptStringId:I

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/motorola/blur/setup/ValidatedValue;-><init>([Landroid/widget/EditText;IIILjava/lang/String;)V

    .line 26
    iput-object p2, p0, Lcom/motorola/blur/setup/ValidatedParamValue;->mParams:Lcom/motorola/blur/setup/ValidationParams;

    .line 27
    iput p4, p0, Lcom/motorola/blur/setup/ValidatedParamValue;->mFieldName:I

    .line 28
    iget-object v0, p0, Lcom/motorola/blur/setup/ValidatedParamValue;->mParams:Lcom/motorola/blur/setup/ValidationParams;

    iget v10, v0, Lcom/motorola/blur/setup/ValidationParams;->maxLength:I

    .line 29
    .local v10, maxLength:I
    move-object v6, p1

    .local v6, arr$:[Landroid/widget/EditText;
    array-length v9, v6

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v7, v6, v8

    .line 30
    .local v7, edit:Landroid/widget/EditText;
    if-lez v10, :cond_0

    .line 31
    new-instance v0, Lcom/motorola/blur/setup/TextLimiter;

    invoke-direct {v0, v10}, Lcom/motorola/blur/setup/TextLimiter;-><init>(I)V

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 29
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 34
    .end local v7           #edit:Landroid/widget/EditText;
    :cond_1
    return-void
.end method

.method private final createLengthPrompt(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 3
    .parameter "resources"
    .parameter "errorId"
    .parameter "length"

    .prologue
    .line 60
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{0}"

    iget v2, p0, Lcom/motorola/blur/setup/ValidatedParamValue;->mFieldName:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{1}"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getError(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 3
    .parameter "resources"

    .prologue
    .line 38
    sget-object v0, Lcom/motorola/blur/setup/ValidatedParamValue$1;->$SwitchMap$com$motorola$blur$setup$ValidationError:[I

    iget-object v1, p0, Lcom/motorola/blur/setup/ValidatedValue;->mError:Lcom/motorola/blur/setup/ValidationError;

    invoke-virtual {v1}, Lcom/motorola/blur/setup/ValidationError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 48
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 40
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/blur/setup/ValidatedParamValue;->mParams:Lcom/motorola/blur/setup/ValidationParams;

    iget v0, v0, Lcom/motorola/blur/setup/ValidationParams;->badFormatPromptStringId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 42
    :pswitch_1
    iget v0, p0, Lcom/motorola/blur/setup/ValidatedValue;->mMinLengthErrorId:I

    iget-object v1, p0, Lcom/motorola/blur/setup/ValidatedParamValue;->mParams:Lcom/motorola/blur/setup/ValidationParams;

    iget v1, v1, Lcom/motorola/blur/setup/ValidationParams;->minLength:I

    invoke-direct {p0, p1, v0, v1}, Lcom/motorola/blur/setup/ValidatedParamValue;->createLengthPrompt(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 44
    :pswitch_2
    iget v0, p0, Lcom/motorola/blur/setup/ValidatedValue;->mMaxLengthErrorId:I

    iget-object v1, p0, Lcom/motorola/blur/setup/ValidatedParamValue;->mParams:Lcom/motorola/blur/setup/ValidationParams;

    iget v1, v1, Lcom/motorola/blur/setup/ValidationParams;->maxLength:I

    invoke-direct {p0, p1, v0, v1}, Lcom/motorola/blur/setup/ValidatedParamValue;->createLengthPrompt(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :pswitch_3
    iget v0, p0, Lcom/motorola/blur/setup/ValidatedValue;->mValuesDontMatchId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{0}"

    iget v2, p0, Lcom/motorola/blur/setup/ValidatedParamValue;->mFieldName:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected validate(Ljava/lang/String;)Lcom/motorola/blur/setup/ValidationError;
    .locals 1
    .parameter "value"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/motorola/blur/setup/ValidatedParamValue;->mParams:Lcom/motorola/blur/setup/ValidationParams;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/setup/ValidationParams;->validate(Ljava/lang/String;)Lcom/motorola/blur/setup/ValidationError;

    move-result-object v0

    return-object v0
.end method
