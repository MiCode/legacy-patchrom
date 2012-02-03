.class public Landroid/telephony/PhoneNumberFormattingTextWatcher;
.super Ljava/lang/Object;
.source "PhoneNumberFormattingTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static sCachedLocale:Ljava/util/Locale;

.field private static sFormatType:I


# instance fields
.field private mDeletingBackward:Z

.field private mDeletingHyphen:Z

.field private mFormatting:Z

.field private mHyphenStart:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->sCachedLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->sCachedLocale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 43
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->sCachedLocale:Ljava/util/Locale;

    .line 44
    sget-object v0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->sCachedLocale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v0

    sput v0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->sFormatType:I

    .line 46
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x1

    .line 50
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatting:Z

    if-nez v0, :cond_1

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatting:Z

    .line 54
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mDeletingHyphen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mHyphenStart:I

    if-lez v0, :cond_0

    .line 55
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mDeletingBackward:Z

    if-eqz v0, :cond_2

    .line 56
    iget v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mHyphenStart:I

    sub-int/2addr v0, v2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 57
    iget v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mHyphenStart:I

    sub-int/2addr v0, v2

    iget v1, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mHyphenStart:I

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 64
    :cond_0
    :goto_0
    sget v0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->sFormatType:I

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_1
    monitor-exit p0

    return-void

    .line 59
    :cond_2
    :try_start_1
    iget v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mHyphenStart:I

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 60
    iget v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mHyphenStart:I

    iget v1, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mHyphenStart:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 72
    iget-boolean v2, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatting:Z

    if-nez v2, :cond_0

    .line 74
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 75
    .local v1, selStart:I
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 76
    .local v0, selEnd:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v4, :cond_2

    if-ne p3, v4, :cond_2

    if-nez p4, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2

    if-ne v1, v0, :cond_2

    .line 81
    iput-boolean v4, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mDeletingHyphen:Z

    .line 82
    iput p2, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mHyphenStart:I

    .line 84
    add-int/lit8 v2, p2, 0x1

    if-ne v1, v2, :cond_1

    .line 85
    iput-boolean v4, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mDeletingBackward:Z

    .line 93
    .end local v0           #selEnd:I
    .end local v1           #selStart:I
    :cond_0
    :goto_0
    return-void

    .line 87
    .restart local v0       #selEnd:I
    .restart local v1       #selStart:I
    :cond_1
    iput-boolean v5, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mDeletingBackward:Z

    goto :goto_0

    .line 90
    :cond_2
    iput-boolean v5, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mDeletingHyphen:Z

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 97
    return-void
.end method
