.class Lcom/android/internal/widget/EditStyledText$StyledTextConverter$1;
.super Ljava/lang/Object;
.source "EditStyledText.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/EditStyledText$StyledTextConverter;->SetHtml(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/EditStyledText$StyledTextConverter;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/EditStyledText$StyledTextConverter;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/internal/widget/EditStyledText$StyledTextConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "src"

    .prologue
    const/4 v10, 0x0

    const-string v9, "EditStyledText"

    const-string v5, "EditStyledText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- sethtml: src="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "content://"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .local v4, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/widget/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/internal/widget/EditStyledText$StyledTextConverter;

    #getter for: Lcom/android/internal/widget/EditStyledText$StyledTextConverter;->mEST:Lcom/android/internal/widget/EditStyledText;
    invoke-static {v5}, Lcom/android/internal/widget/EditStyledText$StyledTextConverter;->access$1400(Lcom/android/internal/widget/EditStyledText$StyledTextConverter;)Lcom/android/internal/widget/EditStyledText;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .local v3, is:Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/internal/widget/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/internal/widget/EditStyledText$StyledTextConverter;

    iget-object v5, v5, Lcom/android/internal/widget/EditStyledText$StyledTextConverter;->this$0:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v5}, Lcom/android/internal/widget/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v1, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #uri:Landroid/net/Uri;
    :goto_0
    return-object v5

    .restart local v4       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v5

    move-object v2, v5

    .local v2, e:Ljava/lang/Exception;
    const-string v5, "EditStyledText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- set html: Failed to loaded content "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v10

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_0
    const-string v5, "EditStyledText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  unknown src="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v10

    goto :goto_0
.end method
