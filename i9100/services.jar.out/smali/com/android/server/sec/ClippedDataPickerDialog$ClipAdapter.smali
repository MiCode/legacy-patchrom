.class public Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;
.super Landroid/widget/BaseAdapter;
.source "ClippedDataPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClipAdapter"
.end annotation


# instance fields
.field layoutAni:Landroid/view/animation/Animation;

.field mBody:Landroid/widget/TextView;

.field private mChildViewIDs:[I

.field private mLayoutInflator:Landroid/view/LayoutInflater;

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V
    .locals 2
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 386
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->mChildViewIDs:[I

    .line 392
    invoke-virtual {p1}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    .line 393
    return-void

    .line 386
    :array_0
    .array-data 0x4
        0x4at 0x0t 0x5t 0x2t
        0x4ct 0x0t 0x5t 0x2t
        0x4bt 0x0t 0x5t 0x2t
    .end array-data
.end method

.method private getBitmap(Landroid/sec/clipboard/data/ClipboardData;II)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "clipData"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    const-string v7, "ClipBoardDialog"

    .line 515
    const/4 v4, 0x2

    .line 516
    .local v4, sampleSize:I
    const/4 v2, 0x0

    .line 517
    .local v2, bm:Landroid/graphics/Bitmap;
    check-cast p1, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .end local p1
    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, bitmapPath:Ljava/lang/String;
    const-string v5, "ClipBoardDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bitmapPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 526
    .local v0, bitmapOption:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 531
    :try_start_0
    const-string v5, "ClipBoardDialog"

    const-string v6, "BitmapFactory.decodeFile(bitmapPath, bitmapOption"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 541
    :goto_0
    const-string v5, "ClipBoardDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bitmapOption.outWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bitmapOption.outHieght:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const-string v5, "ClipBoardDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mGridItemWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mGridItemHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :goto_1
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v5, v4

    if-lt v5, p2, :cond_0

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v5, v4

    if-lt v5, p3, :cond_0

    .line 546
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 533
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 535
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "ClipBoardDialog"

    const-string v5, "exception arised during bm = BitmapFactory.decodeFile(bitmapPath, bitmapOption);"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 548
    .end local v3           #e:Ljava/lang/Exception;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    .line 552
    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 556
    const/4 v5, 0x0

    :try_start_1
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 557
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 564
    :goto_2
    return-object v2

    .line 558
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 560
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v5, "ClipBoardDialog"

    const-string v5, "exception arised during bm = BitmapFactory.decodeFile(((ClipboardDataBitmap) cbData).GetBitmapPath());"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getDataTypeFromView(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 653
    const/4 v0, 0x0

    .line 655
    .local v0, ret:I
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 657
    const/4 v0, 0x2

    .line 668
    :cond_0
    :goto_0
    return v0

    .line 659
    :cond_1
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 661
    const/4 v0, 0x3

    goto :goto_0

    .line 663
    :cond_2
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 665
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private setClippedDataIntoView(Landroid/view/View;ILandroid/view/View;)V
    .locals 11
    .parameter "v"
    .parameter "position"
    .parameter "ItemViewParent"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 569
    const/4 v3, 0x0

    .line 571
    .local v3, cbData:Landroid/sec/clipboard/data/ClipboardData;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$200(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 576
    :goto_0
    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    instance-of v6, v3, Landroid/sec/clipboard/data/list/ClipboardDataText;

    if-eqz v6, :cond_1

    .line 578
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v6, v0

    check-cast v3, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local v3           #cbData:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$300(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 582
    invoke-virtual {p1, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 584
    invoke-virtual {p3, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 649
    :cond_0
    :goto_1
    return-void

    .line 572
    .restart local v3       #cbData:Landroid/sec/clipboard/data/ClipboardData;
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 573
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 587
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_1
    instance-of v6, p1, Landroid/widget/ImageView;

    if-eqz v6, :cond_4

    instance-of v6, v3, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    if-eqz v6, :cond_4

    .line 592
    const/4 v2, 0x0

    .line 594
    .local v2, bm:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v7, v7, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    invoke-direct {p0, v3, v6, v7}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->getBitmap(Landroid/sec/clipboard/data/ClipboardData;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 596
    if-eqz v2, :cond_2

    .line 597
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v7, v7, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    if-ge v6, v7, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v7, v7, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    if-ge v6, v7, :cond_3

    .line 598
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v6, v0

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 603
    :goto_2
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v6, v0

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 607
    :cond_2
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$300(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 608
    invoke-virtual {p1, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 610
    invoke-virtual {p3, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 600
    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v6, v0

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    .line 613
    .end local v2           #bm:Landroid/graphics/Bitmap;
    :cond_4
    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_6

    instance-of v6, v3, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    if-eqz v6, :cond_6

    .line 617
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v5, v0

    .line 619
    .local v5, tv:Landroid/widget/TextView;
    move-object v0, v3

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    check-cast v3, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .end local v3           #cbData:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getFirstImage()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 625
    .restart local v2       #bm:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 627
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v1, v6, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 628
    .local v1, bd:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$400(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 629
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v7, v7, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    invoke-virtual {v1, v8, v8, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 632
    invoke-virtual {v5, v1, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 634
    :cond_5
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$400(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 635
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v7, v7, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    invoke-virtual {v1, v8, v8, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 638
    invoke-virtual {v5, v9, v1, v9, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 646
    .end local v1           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .end local v5           #tv:Landroid/widget/TextView;
    .restart local v3       #cbData:Landroid/sec/clipboard/data/ClipboardData;
    :cond_6
    const-string v6, "ClipBoardDialog"

    const-string v7, "Not Supported View type yet"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private setOnClickListenerToBodyView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 764
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$1;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 788
    return-void
.end method

.method private setOnTouchListenerToWebView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 793
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$2;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 831
    return-void
.end method

.method private updateViewVisibility(Landroid/view/View;IZ)Landroid/view/View;
    .locals 10
    .parameter "v"
    .parameter "position"
    .parameter "clearFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x8

    .line 673
    if-eqz p3, :cond_2

    .line 674
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->mChildViewIDs:[I

    array-length v2, v6

    .line 676
    .local v2, cnt:I
    :cond_0
    :goto_0
    if-lez v2, :cond_2

    .line 677
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->mChildViewIDs:[I

    add-int/lit8 v2, v2, -0x1

    aget v6, v6, v2

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 678
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_1

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 680
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 681
    invoke-virtual {v1, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 683
    invoke-virtual {p1, v9}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 689
    .end local v1           #child:Landroid/view/View;
    .end local v2           #cnt:I
    :cond_2
    const/4 v0, 0x0

    .line 691
    .local v0, BodyView:Landroid/view/View;
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$200(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 755
    const-string v6, "ClipBoardDialog"

    const-string v7, "current Item to be shown is invalid item type"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_3
    :goto_1
    return-object v0

    .line 695
    :pswitch_0
    const v6, 0x205004a

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 696
    .local v4, tv:Landroid/widget/TextView;
    move-object v0, v4

    .line 697
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v8, :cond_3

    .line 698
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 700
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$400(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v6

    if-ne v6, v9, :cond_5

    .line 701
    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 705
    :cond_4
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setOnClickListenerToBodyView(Landroid/view/View;)V

    .line 707
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v6, v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_1

    .line 702
    :cond_5
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$400(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 703
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_2

    .line 711
    .end local v4           #tv:Landroid/widget/TextView;
    :pswitch_1
    const v6, 0x205004c

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 712
    .local v5, tvHTML:Landroid/widget/TextView;
    move-object v0, v5

    .line 713
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v8, :cond_3

    .line 714
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 722
    invoke-direct {p0, v0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setOnClickListenerToBodyView(Landroid/view/View;)V

    .line 724
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v6, v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_1

    .line 742
    .end local v5           #tvHTML:Landroid/widget/TextView;
    :pswitch_2
    const v6, 0x205004b

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 743
    .local v3, iv:Landroid/widget/ImageView;
    move-object v0, v3

    .line 745
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v8, :cond_3

    .line 747
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 748
    invoke-direct {p0, v0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setOnClickListenerToBodyView(Landroid/view/View;)V

    .line 750
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v6, v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_1

    .line 691
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final getCount()I
    .locals 5

    .prologue
    .line 480
    const/4 v1, 0x0

    .line 483
    .local v1, size:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$200(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/data/IClipboardDataList;->size()I

    move-result v1

    .line 484
    const-string v2, "ClipBoardDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCount() return value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :goto_0
    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    const/16 v1, 0x8

    .line 492
    :cond_0
    return v1

    .line 485
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 487
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 497
    const/4 v1, 0x0

    .line 500
    .local v1, obj:Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$200(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/clipboard/data/IClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 506
    .end local v1           #obj:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 501
    .restart local v1       #obj:Ljava/lang/Object;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 503
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 510
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 397
    const-string v3, "CLIPBOARD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getView()position :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v2, 0x0

    .line 402
    .local v2, itemView:Landroid/view/View;
    const/4 v0, 0x0

    .line 404
    .local v0, bodyView:Landroid/view/View;
    if-nez p2, :cond_0

    .line 405
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    const v4, 0x2030011

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 408
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v2, p1, v3}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->updateViewVisibility(Landroid/view/View;IZ)Landroid/view/View;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 443
    :goto_0
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v4, v4, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget v5, v5, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    :goto_1
    if-eqz v0, :cond_1

    .line 470
    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setClippedDataIntoView(Landroid/view/View;ILandroid/view/View;)V

    .line 475
    :goto_2
    return-object v2

    .line 409
    :catch_0
    move-exception v1

    .line 411
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 446
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    move-object v2, p2

    .line 449
    const/4 v3, 0x1

    :try_start_1
    invoke-direct {p0, v2, p1, v3}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->updateViewVisibility(Landroid/view/View;IZ)Landroid/view/View;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    .line 450
    :catch_1
    move-exception v1

    .line 451
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 472
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v3, "ClipBoardDialog"

    const-string v4, " Item View is null !!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
