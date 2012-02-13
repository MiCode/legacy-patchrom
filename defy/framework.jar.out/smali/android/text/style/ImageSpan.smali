.class public Landroid/text/style/ImageSpan;
.super Landroid/text/style/DynamicDrawableSpan;
.source "ImageSpan.java"


# instance fields
.field private mContentUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mResourceId:I

.field private mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resourceId"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .parameter "context"
    .parameter "resourceId"
    .parameter "verticalAlignment"

    .prologue
    invoke-direct {p0, p3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    iput-object p1, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    iput p2, p0, Landroid/text/style/ImageSpan;->mResourceId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "context"
    .parameter "b"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .locals 6
    .parameter "context"
    .parameter "b"
    .parameter "verticalAlignment"

    .prologue
    const/4 v5, 0x0

    invoke-direct {p0, p3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    iput-object p1, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    iput-object v2, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .local v1, width:I
    iget-object v2, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .local v0, height:I
    iget-object v2, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-lez v1, :cond_1

    move v3, v1

    :goto_1
    if-lez v0, :cond_2

    move v4, v0

    :goto_2
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void

    .end local v0           #height:I
    .end local v1           #width:I
    :cond_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .restart local v0       #height:I
    .restart local v1       #width:I
    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .parameter "verticalAlignment"

    .prologue
    invoke-direct {p0, p3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    iput-object p1, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/text/style/ImageSpan;->mContentUri:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/ImageSpan;->mSource:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "b"
    .parameter "verticalAlignment"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .parameter "d"
    .parameter "verticalAlignment"

    .prologue
    invoke-direct {p0, p2}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    iput-object p1, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .parameter "d"
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 0
    .parameter "d"
    .parameter "source"
    .parameter "verticalAlignment"

    .prologue
    invoke-direct {p0, p3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    iput-object p1, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Landroid/text/style/ImageSpan;->mSource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 10

    .prologue
    const-string v9, "sms"

    const/4 v1, 0x0

    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    iget-object v1, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v1

    :cond_0
    iget-object v5, p0, Landroid/text/style/ImageSpan;->mContentUri:Landroid/net/Uri;

    if-eqz v5, :cond_1

    const/4 v0, 0x0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v5, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Landroid/text/style/ImageSpan;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .local v4, is:Ljava/io/InputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v2

    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .end local v4           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v5

    move-object v3, v5

    .local v3, e:Ljava/lang/Exception;
    :goto_1
    const-string v5, "sms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to loaded content "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/text/style/ImageSpan;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    iget-object v5, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Landroid/text/style/ImageSpan;->mResourceId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v3, v5

    .restart local v3       #e:Ljava/lang/Exception;
    const-string v5, "sms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/text/style/ImageSpan;->mResourceId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_2
    move-exception v5

    move-object v3, v5

    move-object v1, v2

    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/text/style/ImageSpan;->mSource:Ljava/lang/String;

    return-object v0
.end method
