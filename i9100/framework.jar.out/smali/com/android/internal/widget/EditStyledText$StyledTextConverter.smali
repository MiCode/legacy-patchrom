.class Lcom/android/internal/widget/EditStyledText$StyledTextConverter;
.super Ljava/lang/Object;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StyledTextConverter"
.end annotation


# instance fields
.field private mEST:Lcom/android/internal/widget/EditStyledText;

.field final synthetic this$0:Lcom/android/internal/widget/EditStyledText;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/EditStyledText;Lcom/android/internal/widget/EditStyledText;)V
    .locals 0
    .parameter
    .parameter "est"

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextConverter;->this$0:Lcom/android/internal/widget/EditStyledText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1204
    iput-object p2, p0, Lcom/android/internal/widget/EditStyledText$StyledTextConverter;->mEST:Lcom/android/internal/widget/EditStyledText;

    .line 1205
    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/EditStyledText$StyledTextConverter;)Lcom/android/internal/widget/EditStyledText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$StyledTextConverter;->mEST:Lcom/android/internal/widget/EditStyledText;

    return-object v0
.end method


# virtual methods
.method public SetHtml(Ljava/lang/String;)V
    .locals 3
    .parameter "html"

    .prologue
    .line 1237
    new-instance v1, Lcom/android/internal/widget/EditStyledText$StyledTextConverter$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/EditStyledText$StyledTextConverter$1;-><init>(Lcom/android/internal/widget/EditStyledText$StyledTextConverter;)V

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    .line 1261
    .local v0, spanned:Landroid/text/Spanned;
    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextConverter;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/EditStyledText;->setText(Ljava/lang/CharSequence;)V

    .line 1262
    return-void
.end method

.method public getHtml()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1208
    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextConverter;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    .line 1212
    .local v0, htmlBody:Ljava/lang/String;
    return-object v0
.end method

.method public getUriArray(Ljava/util/ArrayList;Landroid/text/Editable;)V
    .locals 7
    .parameter
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/text/Editable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-class v6, Landroid/text/style/ImageSpan;

    .line 1216
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1220
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1222
    .local v3, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 1223
    const-class v5, Landroid/text/style/ImageSpan;

    invoke-interface {p2, v0, v3, v6}, Landroid/text/Editable;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    .line 1224
    .local v4, next:I
    const-class v5, Landroid/text/style/ImageSpan;

    invoke-interface {p2, v0, v4, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ImageSpan;

    .line 1225
    .local v1, images:[Landroid/text/style/ImageSpan;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 1230
    aget-object v5, v1, v2

    invoke-virtual {v5}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1222
    :cond_0
    move v0, v4

    goto :goto_0

    .line 1234
    .end local v1           #images:[Landroid/text/style/ImageSpan;
    .end local v2           #j:I
    .end local v4           #next:I
    :cond_1
    return-void
.end method
