.class final Landroid/text/TextUtils$1;
.super Ljava/lang/Object;
.source "TextUtils.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "p"

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, kind:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .local v1, sp:Landroid/text/SpannableString;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    packed-switch v0, :pswitch_data_0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bogus span encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    new-instance v2, Landroid/text/style/AlignmentSpan$Standard;

    invoke-direct {v2, p1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/os/Parcel;)V

    #calls: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v2}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(Landroid/os/Parcel;)V

    #calls: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v2}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v2, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(Landroid/os/Parcel;)V

    #calls: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v2}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    new-instance v2, Landroid/text/style/ScaleXSpan;

    invoke-direct {v2, p1}, Landroid/text/style/ScaleXSpan;-><init>(Landroid/os/Parcel;)V

    #calls: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v2}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2, p1}, Landroid/text/style/StrikethroughSpan;-><init>(Landroid/os/Parcel;)V

    #calls: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v2}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2, p1}, Landroid/text/style/UnderlineSpan;-><init>(Landroid/os/Parcel;)V

    #calls: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v2}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, p1}, Landroid/text/style/StyleSpan;-><init>(Landroid/os/Parcel;)V

    #calls: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v2}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_7
    new-instance v2, Landroid/text/style/BulletSpan;

    invoke-direct {v2, p1}, Landroid/text/style/BulletSpan;-><init>(Landroid/os/Parcel;)V

    #calls: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v2}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_8
    new-instance v2, Landroid/text/style/QuoteSpan;

    invoke-direct {v2, p1}, Landroid/text/style/QuoteSpan;-><init>(Landroid/os/Parcel;)V

    #calls: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v2}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_9
    new-instance v2, Landroid/text/style/LeadingMarginSpan$Standard;

    invoke-direct {v2, p1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(Landroid/os/Parcel;)V

    #calls: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v2}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_a
    new-instance v2, Landroid/text/style/URLSpan;

    invoke-direct {v2, p1}, Landroid/text/style/URLSpan;-><init>(Landroid/os/Parcel;)V

    #calls: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v2}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v2, p1}, Landroid/text/style/BackgroundColorSpan;-><init>(Landroid/os/Parcel;)V

    #calls: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v2}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_c
    new-instance v2, Landroid/text/style/TypefaceSpan;

    invoke-direct {v2, p1}, Landroid/text/style/TypefaceSpan;-><init>(Landroid/os/Parcel;)V

    #calls: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v2}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_d
    new-instance v2, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v2, p1}, Landroid/text/style/SuperscriptSpan;-><init>(Landroid/os/Parcel;)V

    #calls: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v2}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    new-instance v2, Landroid/text/style/SubscriptSpan;

    invoke-direct {v2, p1}, Landroid/text/style/SubscriptSpan;-><init>(Landroid/os/Parcel;)V

    #calls: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v2}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_f
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v2, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(Landroid/os/Parcel;)V

    #calls: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v2}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v2, p1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/os/Parcel;)V

    #calls: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v2}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_11
    new-instance v2, Landroid/text/Annotation;

    invoke-direct {v2, p1}, Landroid/text/Annotation;-><init>(Landroid/os/Parcel;)V

    #calls: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v2}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_12
    new-instance v2, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;

    invoke-direct {v2, p1}, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;-><init>(Landroid/os/Parcel;)V

    #calls: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v2}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_13
    new-instance v2, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;

    invoke-direct {v2, p1}, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;-><init>(Landroid/os/Parcel;)V

    #calls: Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    invoke-static {p1, v1, v2}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_1

    nop

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
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/text/TextUtils$1;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Ljava/lang/CharSequence;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/text/TextUtils$1;->newArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
