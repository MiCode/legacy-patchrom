.class public abstract Lcom/motorola/blur/setup/ValidatedValue;
.super Ljava/lang/Object;
.source "ValidatedValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/ValidatedValue$1;
    }
.end annotation


# instance fields
.field private final mEdits:[Landroid/widget/EditText;

.field protected mError:Lcom/motorola/blur/setup/ValidationError;

.field protected final mFormatErrorId:I

.field private mIsValidated:Z

.field protected final mMaxLengthErrorId:I

.field protected final mMinLengthErrorId:I

.field private mValue:Ljava/lang/String;

.field protected final mValuesDontMatchId:I


# direct methods
.method protected constructor <init>(IIILjava/lang/String;)V
    .locals 1
    .parameter "minLengthErrorId"
    .parameter "maxLengthErrorId"
    .parameter "formatErrorId"
    .parameter "defaultValue"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/motorola/blur/setup/ValidationError;->VALID_VALUE:Lcom/motorola/blur/setup/ValidationError;

    iput-object v0, p0, Lcom/motorola/blur/setup/ValidatedValue;->mError:Lcom/motorola/blur/setup/ValidationError;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/ValidatedValue;->mIsValidated:Z

    .line 26
    iput p1, p0, Lcom/motorola/blur/setup/ValidatedValue;->mMinLengthErrorId:I

    .line 27
    iput p2, p0, Lcom/motorola/blur/setup/ValidatedValue;->mMaxLengthErrorId:I

    .line 28
    iput p3, p0, Lcom/motorola/blur/setup/ValidatedValue;->mFormatErrorId:I

    .line 29
    const v0, 0x7f0c010a

    iput v0, p0, Lcom/motorola/blur/setup/ValidatedValue;->mValuesDontMatchId:I

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/setup/ValidatedValue;->mEdits:[Landroid/widget/EditText;

    .line 31
    return-void
.end method

.method protected constructor <init>([Landroid/widget/EditText;IIILjava/lang/String;)V
    .locals 2
    .parameter "edits"
    .parameter "minLengthErrorId"
    .parameter "maxLengthErrorId"
    .parameter "formatErrorId"
    .parameter "defaultValue"

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/motorola/blur/setup/ValidationError;->VALID_VALUE:Lcom/motorola/blur/setup/ValidationError;

    iput-object v0, p0, Lcom/motorola/blur/setup/ValidatedValue;->mError:Lcom/motorola/blur/setup/ValidationError;

    .line 38
    iput-object p1, p0, Lcom/motorola/blur/setup/ValidatedValue;->mEdits:[Landroid/widget/EditText;

    .line 39
    iput-boolean v1, p0, Lcom/motorola/blur/setup/ValidatedValue;->mIsValidated:Z

    .line 40
    iput p2, p0, Lcom/motorola/blur/setup/ValidatedValue;->mMinLengthErrorId:I

    .line 41
    iput p3, p0, Lcom/motorola/blur/setup/ValidatedValue;->mMaxLengthErrorId:I

    .line 42
    iput p4, p0, Lcom/motorola/blur/setup/ValidatedValue;->mFormatErrorId:I

    .line 43
    const v0, 0x7f0c010a

    iput v0, p0, Lcom/motorola/blur/setup/ValidatedValue;->mValuesDontMatchId:I

    .line 44
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 45
    aget-object v0, p1, v1

    invoke-virtual {v0, p5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_0
    return-void
.end method

.method private final testValue(Ljava/lang/String;)Z
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/ValidatedValue;->validate(Ljava/lang/String;)Lcom/motorola/blur/setup/ValidationError;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/ValidatedValue;->mError:Lcom/motorola/blur/setup/ValidationError;

    .line 83
    iget-object v0, p0, Lcom/motorola/blur/setup/ValidatedValue;->mError:Lcom/motorola/blur/setup/ValidationError;

    sget-object v1, Lcom/motorola/blur/setup/ValidationError;->VALID_VALUE:Lcom/motorola/blur/setup/ValidationError;

    if-ne v0, v1, :cond_0

    .line 84
    iput-object p1, p0, Lcom/motorola/blur/setup/ValidatedValue;->mValue:Ljava/lang/String;

    .line 85
    iput-boolean v3, p0, Lcom/motorola/blur/setup/ValidatedValue;->mIsValidated:Z

    move v0, v3

    .line 89
    :goto_0
    return v0

    .line 88
    :cond_0
    iput-boolean v2, p0, Lcom/motorola/blur/setup/ValidatedValue;->mIsValidated:Z

    move v0, v2

    .line 89
    goto :goto_0
.end method


# virtual methods
.method public clearValue()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/setup/ValidatedValue;->mValue:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/ValidatedValue;->mIsValidated:Z

    .line 75
    return-void
.end method

.method public getError(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 3
    .parameter "resources"

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, id:I
    sget-object v1, Lcom/motorola/blur/setup/ValidatedValue$1;->$SwitchMap$com$motorola$blur$setup$ValidationError:[I

    iget-object v2, p0, Lcom/motorola/blur/setup/ValidatedValue;->mError:Lcom/motorola/blur/setup/ValidationError;

    invoke-virtual {v2}, Lcom/motorola/blur/setup/ValidationError;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 63
    iget v0, p0, Lcom/motorola/blur/setup/ValidatedValue;->mFormatErrorId:I

    .line 66
    :goto_0
    if-lez v0, :cond_0

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    :goto_1
    return-object v1

    .line 53
    :pswitch_0
    iget v0, p0, Lcom/motorola/blur/setup/ValidatedValue;->mMinLengthErrorId:I

    .line 54
    goto :goto_0

    .line 56
    :pswitch_1
    iget v0, p0, Lcom/motorola/blur/setup/ValidatedValue;->mMaxLengthErrorId:I

    .line 57
    goto :goto_0

    .line 59
    :pswitch_2
    iget v0, p0, Lcom/motorola/blur/setup/ValidatedValue;->mValuesDontMatchId:I

    .line 60
    goto :goto_0

    .line 69
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getValidComparedValue()Ljava/lang/String;
    .locals 7

    .prologue
    .line 119
    const/4 v3, 0x0

    .line 120
    .local v3, returnValue:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/motorola/blur/setup/ValidatedValue;->mIsValidated:Z

    if-eqz v5, :cond_0

    .line 121
    iget-object v5, p0, Lcom/motorola/blur/setup/ValidatedValue;->mValue:Ljava/lang/String;

    .line 143
    :goto_0
    return-object v5

    .line 123
    :cond_0
    iget-object v5, p0, Lcom/motorola/blur/setup/ValidatedValue;->mEdits:[Landroid/widget/EditText;

    array-length v2, v5

    .line 124
    .local v2, numEditsToCompare:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v4, sb:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/motorola/blur/setup/ValidatedValue;->mEdits:[Landroid/widget/EditText;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/ValidatedValue;->validate(Ljava/lang/String;)Lcom/motorola/blur/setup/ValidationError;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/setup/ValidatedValue;->mError:Lcom/motorola/blur/setup/ValidationError;

    .line 128
    iget-object v5, p0, Lcom/motorola/blur/setup/ValidatedValue;->mError:Lcom/motorola/blur/setup/ValidationError;

    sget-object v6, Lcom/motorola/blur/setup/ValidationError;->VALID_VALUE:Lcom/motorola/blur/setup/ValidationError;

    if-ne v5, v6, :cond_2

    .line 129
    const/4 v0, 0x1

    .local v0, counter:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 130
    iget-object v5, p0, Lcom/motorola/blur/setup/ValidatedValue;->mEdits:[Landroid/widget/EditText;

    aget-object v1, v5, v0

    .line 131
    .local v1, edit:Landroid/widget/EditText;
    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 133
    sget-object v5, Lcom/motorola/blur/setup/ValidationError;->VALUES_DONT_MATCH:Lcom/motorola/blur/setup/ValidationError;

    iput-object v5, p0, Lcom/motorola/blur/setup/ValidatedValue;->mError:Lcom/motorola/blur/setup/ValidationError;

    .line 134
    const/4 v3, 0x0

    move-object v5, v3

    .line 135
    goto :goto_0

    .line 129
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    .end local v0           #counter:I
    .end local v1           #edit:Landroid/widget/EditText;
    :cond_2
    const/4 v3, 0x0

    :cond_3
    move-object v5, v3

    .line 143
    goto :goto_0
.end method

.method public final getValidValue()Ljava/lang/String;
    .locals 6

    .prologue
    .line 94
    const/4 v3, 0x0

    .line 95
    .local v3, returnValue:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/motorola/blur/setup/ValidatedValue;->mIsValidated:Z

    if-eqz v5, :cond_0

    .line 96
    iget-object v5, p0, Lcom/motorola/blur/setup/ValidatedValue;->mValue:Ljava/lang/String;

    .line 114
    :goto_0
    return-object v5

    .line 98
    :cond_0
    iget-object v5, p0, Lcom/motorola/blur/setup/ValidatedValue;->mEdits:[Landroid/widget/EditText;

    array-length v2, v5

    .line 99
    .local v2, numEditsToConcatenate:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, counter:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 102
    iget-object v5, p0, Lcom/motorola/blur/setup/ValidatedValue;->mEdits:[Landroid/widget/EditText;

    aget-object v1, v5, v0

    .line 104
    .local v1, edit:Landroid/widget/EditText;
    if-eqz v1, :cond_2

    .line 105
    if-lez v0, :cond_1

    .line 106
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_1
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 101
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    .end local v1           #edit:Landroid/widget/EditText;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-direct {p0, v3}, Lcom/motorola/blur/setup/ValidatedValue;->testValue(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v3

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final isValidValue(Ljava/lang/String;)Z
    .locals 1
    .parameter "test"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/ValidatedValue;->testValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected abstract validate(Ljava/lang/String;)Lcom/motorola/blur/setup/ValidationError;
.end method
