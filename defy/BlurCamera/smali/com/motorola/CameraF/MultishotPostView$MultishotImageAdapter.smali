.class public Lcom/motorola/CameraF/MultishotPostView$MultishotImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "MultishotPostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/MultishotPostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultishotImageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/MultishotPostView;


# direct methods
.method public constructor <init>(Lcom/motorola/CameraF/MultishotPostView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "c"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/motorola/CameraF/MultishotPostView$MultishotImageAdapter;->this$0:Lcom/motorola/CameraF/MultishotPostView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 173
    #setter for: Lcom/motorola/CameraF/MultishotPostView;->mContext:Landroid/content/Context;
    invoke-static {p1, p2}, Lcom/motorola/CameraF/MultishotPostView;->access$302(Lcom/motorola/CameraF/MultishotPostView;Landroid/content/Context;)Landroid/content/Context;

    .line 174
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/motorola/CameraF/MultishotPostView$MultishotImageAdapter;->this$0:Lcom/motorola/CameraF/MultishotPostView;

    #getter for: Lcom/motorola/CameraF/MultishotPostView;->mThumbUris:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/motorola/CameraF/MultishotPostView;->access$200(Lcom/motorola/CameraF/MultishotPostView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/motorola/CameraF/MultishotPostView$MultishotImageAdapter;->this$0:Lcom/motorola/CameraF/MultishotPostView;

    #getter for: Lcom/motorola/CameraF/MultishotPostView;->mThumbUris:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/motorola/CameraF/MultishotPostView;->access$200(Lcom/motorola/CameraF/MultishotPostView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 181
    :goto_0
    return v0

    .line 180
    :cond_0
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/CameraF/MultishotPostView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mThumbUris is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/motorola/CameraF/MultishotPostView$MultishotImageAdapter;->this$0:Lcom/motorola/CameraF/MultishotPostView;

    #getter for: Lcom/motorola/CameraF/MultishotPostView;->mThumbUris:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/motorola/CameraF/MultishotPostView;->access$200(Lcom/motorola/CameraF/MultishotPostView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/motorola/CameraF/MultishotPostView$MultishotImageAdapter;->this$0:Lcom/motorola/CameraF/MultishotPostView;

    #getter for: Lcom/motorola/CameraF/MultishotPostView;->mThumbUris:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/motorola/CameraF/MultishotPostView;->access$200(Lcom/motorola/CameraF/MultishotPostView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 192
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 197
    const/16 v17, 0x0

    .line 198
    .local v17, overlay_image_height:I
    const/16 v18, 0x0

    .line 200
    .local v18, overlay_image_width:I
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/motorola/CameraF/MultishotPostView;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getView ENTER"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/widget/ImageView;

    move v5, v0

    if-nez v5, :cond_7

    .line 202
    :cond_1
    new-instance v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/MultishotPostView$MultishotImageAdapter;->this$0:Lcom/motorola/CameraF/MultishotPostView;

    move-object v5, v0

    #getter for: Lcom/motorola/CameraF/MultishotPostView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/motorola/CameraF/MultishotPostView;->access$300(Lcom/motorola/CameraF/MultishotPostView;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v14, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 203
    .local v14, imageView:Landroid/widget/ImageView;
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 204
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v14, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 205
    const/4 v5, 0x5

    const/4 v6, 0x5

    const/4 v7, 0x5

    const/4 v8, 0x5

    invoke-virtual {v14, v5, v6, v7, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 211
    :goto_0
    invoke-virtual {v14}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 212
    .local v19, res:Landroid/content/res/Resources;
    const/4 v11, 0x0

    .line 213
    .local v11, draw:Landroid/graphics/drawable/Drawable;
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_2

    .line 214
    invoke-static {}, Lcom/motorola/CameraF/MultishotPostView;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {}, Lcom/motorola/CameraF/MultishotPostView;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/MultishotPostView$MultishotImageAdapter;->this$0:Lcom/motorola/CameraF/MultishotPostView;

    move-object v7, v0

    #getter for: Lcom/motorola/CameraF/MultishotPostView;->mThumbs:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/motorola/CameraF/MultishotPostView;->access$400(Lcom/motorola/CameraF/MultishotPostView;)Ljava/util/ArrayList;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/MultishotPostView$MultishotImageAdapter;->this$0:Lcom/motorola/CameraF/MultishotPostView;

    move-object v5, v0

    #getter for: Lcom/motorola/CameraF/MultishotPostView;->mThumbs:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/motorola/CameraF/MultishotPostView;->access$400(Lcom/motorola/CameraF/MultishotPostView;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/MultishotPostView$MultishotImageAdapter;->this$0:Lcom/motorola/CameraF/MultishotPostView;

    move-object v5, v0

    #getter for: Lcom/motorola/CameraF/MultishotPostView;->mThumbs:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/motorola/CameraF/MultishotPostView;->access$400(Lcom/motorola/CameraF/MultishotPostView;)Ljava/util/ArrayList;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 236
    :cond_3
    :goto_1
    :pswitch_0
    if-eqz v11, :cond_4

    .line 238
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    .line 239
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    .line 240
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/motorola/CameraF/MultishotPostView;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Overlay image width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_4
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 245
    .local v16, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v5, 0xa

    move v0, v5

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/MultishotPostView$MultishotImageAdapter;->this$0:Lcom/motorola/CameraF/MultishotPostView;

    move-object v5, v0

    #getter for: Lcom/motorola/CameraF/MultishotPostView;->mThumbUris:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/motorola/CameraF/MultishotPostView;->access$200(Lcom/motorola/CameraF/MultishotPostView;)Ljava/util/ArrayList;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 247
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/motorola/CameraF/MultishotPostView;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "trying to get path from Uri"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/MultishotPostView$MultishotImageAdapter;->this$0:Lcom/motorola/CameraF/MultishotPostView;

    move-object v7, v0

    #getter for: Lcom/motorola/CameraF/MultishotPostView;->mThumbUris:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/motorola/CameraF/MultishotPostView;->access$200(Lcom/motorola/CameraF/MultishotPostView;)Ljava/util/ArrayList;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_5
    const/16 v21, 0x0

    .line 250
    .local v21, src:Landroid/graphics/Bitmap;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/MultishotPostView$MultishotImageAdapter;->this$0:Lcom/motorola/CameraF/MultishotPostView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/motorola/CameraF/MultishotPostView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/MultishotPostView$MultishotImageAdapter;->this$0:Lcom/motorola/CameraF/MultishotPostView;

    move-object v6, v0

    #getter for: Lcom/motorola/CameraF/MultishotPostView;->mThumbUris:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/motorola/CameraF/MultishotPostView;->access$200(Lcom/motorola/CameraF/MultishotPostView;)Ljava/util/ArrayList;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/net/Uri;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 255
    :goto_2
    if-nez v21, :cond_9

    .line 256
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/motorola/CameraF/MultishotPostView;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "could not decode returning NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v21           #src:Landroid/graphics/Bitmap;
    :cond_6
    :goto_3
    return-object v14

    .line 208
    .end local v11           #draw:Landroid/graphics/drawable/Drawable;
    .end local v14           #imageView:Landroid/widget/ImageView;
    .end local v16           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v19           #res:Landroid/content/res/Resources;
    .restart local p1
    .restart local p2
    :cond_7
    move-object/from16 v0, p2

    check-cast v0, Landroid/widget/ImageView;

    move-object v14, v0

    .restart local v14       #imageView:Landroid/widget/ImageView;
    goto/16 :goto_0

    .line 220
    .end local p2
    .restart local v11       #draw:Landroid/graphics/drawable/Drawable;
    .restart local v19       #res:Landroid/content/res/Resources;
    :pswitch_1
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/motorola/CameraF/MultishotPostView;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "draw is ONLINE_ALBUM_UPLOAD"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_8
    const v5, 0x7f0200a5

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 222
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto/16 :goto_1

    .line 225
    :pswitch_2
    const v5, 0x7f0200a1

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 226
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/motorola/CameraF/MultishotPostView;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "draw is SHARE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 229
    :pswitch_3
    const v5, 0x7f0200a0

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 230
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/motorola/CameraF/MultishotPostView;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "draw is SET_AS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 251
    .end local p1
    .restart local v16       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v21       #src:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v5

    move-object v13, v5

    .line 253
    .local v13, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 259
    .end local v13           #e:Ljava/io/FileNotFoundException;
    :cond_9
    const/16 v5, 0xe7

    const/16 v6, 0xa5

    const/4 v7, 0x1

    move-object/from16 v0, v21

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 261
    .local v20, resized:Landroid/graphics/Bitmap;
    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/MultishotPostView$MultishotImageAdapter;->this$0:Lcom/motorola/CameraF/MultishotPostView;

    move-object v5, v0

    #getter for: Lcom/motorola/CameraF/MultishotPostView;->mThumbs:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/motorola/CameraF/MultishotPostView;->access$400(Lcom/motorola/CameraF/MultishotPostView;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 262
    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 264
    .local v15, img:Landroid/graphics/drawable/BitmapDrawable;
    const v5, 0x7f020011

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 265
    .local v10, bg:Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x3

    new-array v12, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v15, v12, v5

    const/4 v5, 0x1

    aput-object v10, v12, v5

    const/4 v5, 0x2

    aput-object v11, v12, v5

    .line 266
    .local v12, drawables:[Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v12}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 267
    .local v4, layers:Landroid/graphics/drawable/LayerDrawable;
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_a

    invoke-static {}, Lcom/motorola/CameraF/MultishotPostView;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting image Drawable to layers "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_a
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 269
    const/4 v5, 0x2

    const/16 v6, 0x73

    div-int/lit8 v7, v18, 0x2

    sub-int/2addr v6, v7

    const/16 v7, 0x52

    div-int/lit8 v8, v17, 0x2

    sub-int/2addr v7, v8

    const/16 v8, 0x73

    div-int/lit8 v9, v18, 0x2

    sub-int/2addr v8, v9

    const/16 v9, 0x52

    div-int/lit8 v10, v17, 0x2

    .end local v10           #bg:Landroid/graphics/drawable/Drawable;
    sub-int/2addr v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 270
    invoke-virtual {v14, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 272
    .end local v4           #layers:Landroid/graphics/drawable/LayerDrawable;
    .end local v12           #drawables:[Landroid/graphics/drawable/Drawable;
    .end local v15           #img:Landroid/graphics/drawable/BitmapDrawable;
    :cond_b
    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 273
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/motorola/CameraF/MultishotPostView;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting image Drawable to resized"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 218
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
