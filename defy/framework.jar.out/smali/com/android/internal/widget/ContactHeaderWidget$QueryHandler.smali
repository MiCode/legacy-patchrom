.class Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactHeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ContactHeaderWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ContactHeaderWidget;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 15
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    :try_start_0
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    #getter for: Lcom/android/internal/widget/ContactHeaderWidget;->mQueryHandler:Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;
    invoke-static {v12}, Lcom/android/internal/widget/ContactHeaderWidget;->access$000(Lcom/android/internal/widget/ContactHeaderWidget;)Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;

    move-result-object v12

    if-eq p0, v12, :cond_1

    const-string v12, "ContactHeaderWidget"

    const-string v13, "onQueryComplete: discard result, the query handler is reset!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    .end local p2
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    .restart local p2
    :cond_1
    packed-switch p1, :pswitch_data_0

    .end local p2
    :goto_1
    if-eqz p3, :cond_0

    goto :goto_0

    .restart local p2
    :pswitch_0
    const/4 v8, 0x0

    .local v8, photoBitmap:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_2

    :try_start_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, 0x0

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .local v9, photoData:[B
    const/4 v12, 0x0

    array-length v13, v9

    const/4 v14, 0x0

    invoke-static {v9, v12, v13, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .end local v9           #photoData:[B
    :cond_2
    if-nez v8, :cond_3

    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v13, 0x0

    #calls: Lcom/android/internal/widget/ContactHeaderWidget;->loadPlaceholderPhoto(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    invoke-static {v12, v13}, Lcom/android/internal/widget/ContactHeaderWidget;->access$100(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    :cond_3
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    #getter for: Lcom/android/internal/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;
    invoke-static {v12}, Lcom/android/internal/widget/ContactHeaderWidget;->access$200(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/net/Uri;

    move v12, v0

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    #getter for: Lcom/android/internal/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;
    invoke-static {v12}, Lcom/android/internal/widget/ContactHeaderWidget;->access$200(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;

    move-result-object v12

    check-cast p2, Landroid/net/Uri;

    .end local p2
    move-object v0, v12

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    :cond_4
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    invoke-virtual {v12}, Lcom/android/internal/widget/ContactHeaderWidget;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v8           #photoBitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v12

    if-eqz p3, :cond_5

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v12

    .restart local p2
    :pswitch_1
    if-eqz p3, :cond_8

    :try_start_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    move-object v0, v12

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ContactHeaderWidget;->bindContactInfo(Landroid/database/Cursor;)V

    const/4 v12, 0x0

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v14, 0x1

    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .local v6, lookupUri:Landroid/net/Uri;
    const/4 v12, 0x2

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .local v10, photoId:J
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_7

    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    #getter for: Lcom/android/internal/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;
    invoke-static {v12}, Lcom/android/internal/widget/ContactHeaderWidget;->access$200(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v14, 0x0

    #calls: Lcom/android/internal/widget/ContactHeaderWidget;->loadPlaceholderPhoto(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    invoke-static {v13, v14}, Lcom/android/internal/widget/ContactHeaderWidget;->access$100(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/net/Uri;

    move v12, v0

    if-eqz v12, :cond_6

    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    #getter for: Lcom/android/internal/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;
    invoke-static {v12}, Lcom/android/internal/widget/ContactHeaderWidget;->access$200(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;

    move-result-object v12

    check-cast p2, Landroid/net/Uri;

    .end local p2
    move-object v0, v12

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    :cond_6
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    invoke-virtual {v12}, Lcom/android/internal/widget/ContactHeaderWidget;->invalidate()V

    goto/16 :goto_1

    .restart local p2
    :cond_7
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v13, 0x0

    invoke-virtual {v12, v10, v11, v6, v13}, Lcom/android/internal/widget/ContactHeaderWidget;->startPhotoQuery(JLandroid/net/Uri;Z)V

    goto/16 :goto_1

    .end local v6           #lookupUri:Landroid/net/Uri;
    .end local v10           #photoId:J
    :cond_8
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/widget/ContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/ContactHeaderWidget;->setSocialSnippet(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    iget-object v13, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v14, 0x0

    #calls: Lcom/android/internal/widget/ContactHeaderWidget;->loadPlaceholderPhoto(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    invoke-static {v13, v14}, Lcom/android/internal/widget/ContactHeaderWidget;->access$100(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/ContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :pswitch_2
    if-eqz p3, :cond_9

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .local v2, contactId:J
    const/4 v12, 0x1

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, lookupKey:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    invoke-static {v2, v3, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    #calls: Lcom/android/internal/widget/ContactHeaderWidget;->bindFromContactUriInternal(Landroid/net/Uri;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/internal/widget/ContactHeaderWidget;->access$300(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/net/Uri;Z)V

    goto/16 :goto_1

    .end local v2           #contactId:J
    .end local v5           #lookupKey:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .local v7, phoneNumber:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v13, 0x0

    invoke-virtual {v12, v7, v13}, Lcom/android/internal/widget/ContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/ContactHeaderWidget;->setSocialSnippet(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    iget-object v13, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v14, 0x0

    #calls: Lcom/android/internal/widget/ContactHeaderWidget;->loadPlaceholderPhoto(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    invoke-static {v13, v14}, Lcom/android/internal/widget/ContactHeaderWidget;->access$100(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/ContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    #getter for: Lcom/android/internal/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;
    invoke-static {v12}, Lcom/android/internal/widget/ContactHeaderWidget;->access$200(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v7, v13}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .end local v7           #phoneNumber:Ljava/lang/String;
    :pswitch_3
    if-eqz p3, :cond_a

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .restart local v2       #contactId:J
    const/4 v12, 0x1

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #lookupKey:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    invoke-static {v2, v3, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    #calls: Lcom/android/internal/widget/ContactHeaderWidget;->bindFromContactUriInternal(Landroid/net/Uri;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/internal/widget/ContactHeaderWidget;->access$300(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/net/Uri;Z)V

    goto/16 :goto_1

    .end local v2           #contactId:J
    .end local v5           #lookupKey:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .local v4, emailAddress:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v13, 0x0

    invoke-virtual {v12, v4, v13}, Lcom/android/internal/widget/ContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/ContactHeaderWidget;->setSocialSnippet(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    iget-object v13, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    const/4 v14, 0x0

    #calls: Lcom/android/internal/widget/ContactHeaderWidget;->loadPlaceholderPhoto(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    invoke-static {v13, v14}, Lcom/android/internal/widget/ContactHeaderWidget;->access$100(Lcom/android/internal/widget/ContactHeaderWidget;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/ContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    iget-object v12, p0, Lcom/android/internal/widget/ContactHeaderWidget$QueryHandler;->this$0:Lcom/android/internal/widget/ContactHeaderWidget;

    #getter for: Lcom/android/internal/widget/ContactHeaderWidget;->mPhotoView:Landroid/widget/QuickContactBadge;
    invoke-static {v12}, Lcom/android/internal/widget/ContactHeaderWidget;->access$200(Lcom/android/internal/widget/ContactHeaderWidget;)Landroid/widget/QuickContactBadge;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v4, v13}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
