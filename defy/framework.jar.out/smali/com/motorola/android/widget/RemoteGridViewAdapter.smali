.class public Lcom/motorola/android/widget/RemoteGridViewAdapter;
.super Landroid/widget/MotoAppWidgetAdapter;
.source "RemoteGridViewAdapter.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final ADAPTER_TYPE_GRIDVIEW_BOOKMARK:I = 0x1

.field public static final ADAPTER_TYPE_GRIDVIEW_INVALID:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/android/widget/RemoteGridViewAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "RemoteGridViewAdapter"

.field private static final MAX_PARCEL_SIZE:I


# instance fields
.field private adapterType:I

.field private backgData:[B

.field private bkmrkData:[B

.field private defaultDrawableId:I

.field private height:I

.field private itemLayoutId:I

.field private itemViewIdList:[I

.field private mListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation
.end field

.field private passedContext:Landroid/content/Context;

.field private pendingIntent:Landroid/app/PendingIntent;

.field private qProjection:[Ljava/lang/String;

.field private qSelection:Ljava/lang/String;

.field private qSelectionArgs:[Ljava/lang/String;

.field private qSortOrder:Ljava/lang/String;

.field private qUri:Landroid/net/Uri;

.field private setupIconId:I

.field private setuppendingIntent:Landroid/app/PendingIntent;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, binderCfg:I
    :try_start_0
    const-string v1, "ro.mot.bindervm.config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const v1, 0xfe000

    mul-int/lit16 v2, v0, 0x1000

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    const v2, 0xc800

    sub-int/2addr v1, v2

    sput v1, Lcom/motorola/android/widget/RemoteGridViewAdapter;->MAX_PARCEL_SIZE:I

    new-instance v1, Lcom/motorola/android/widget/RemoteGridViewAdapter$1;

    invoke-direct {v1}, Lcom/motorola/android/widget/RemoteGridViewAdapter$1;-><init>()V

    sput-object v1, Lcom/motorola/android/widget/RemoteGridViewAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;II[IIIILandroid/app/PendingIntent;I[B[BLjava/util/ArrayList;)V
    .locals 4
    .parameter "queryUri"
    .parameter "queryProjection"
    .parameter "querySelection"
    .parameter "querySelectionArgs"
    .parameter "querySortOrder"
    .parameter "pendingIntent"
    .parameter "adapterType"
    .parameter "itemLayoutId"
    .parameter "idList"
    .parameter "defaultDrawableId"
    .parameter "width"
    .parameter "height"
    .parameter "setuppendingIntent"
    .parameter "setupIcon"
    .parameter "bkmrkData"
    .parameter "backgData"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            "II[IIII",
            "Landroid/app/PendingIntent;",
            "I[B[B",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p17, listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    invoke-direct {p0}, Landroid/widget/MotoAppWidgetAdapter;-><init>()V

    iput-object p1, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->qUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->qProjection:[Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->qSelection:Ljava/lang/String;

    iput-object p4, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->qSelectionArgs:[Ljava/lang/String;

    iput-object p5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->qSortOrder:Ljava/lang/String;

    packed-switch p7, :pswitch_data_0

    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->adapterType:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->itemLayoutId:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->itemViewIdList:[I

    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->defaultDrawableId:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->pendingIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->setuppendingIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->mListItem:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->setupIconId:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->width:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->height:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->bkmrkData:[B

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->backgData:[B

    :goto_0
    return-void

    :pswitch_0
    const-string v2, "RemoteGridViewAdapter"

    const-string v3, "Constructor 1 is called, adapter type: ADAPTER_TYPE_GRIDVIEW_BOOKMARK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p7, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->adapterType:I

    iput p8, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->itemLayoutId:I

    iput-object p9, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->itemViewIdList:[I

    iput p10, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->defaultDrawableId:I

    iput-object p6, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->pendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Lcom/motorola/android/widget/RemoteGridViewAdapter;->setuppendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p17

    move-object v1, p0

    iput-object v0, v1, Lcom/motorola/android/widget/RemoteGridViewAdapter;->mListItem:Ljava/util/ArrayList;

    move/from16 v0, p14

    move-object v1, p0

    iput v0, v1, Lcom/motorola/android/widget/RemoteGridViewAdapter;->setupIconId:I

    iput p11, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->width:I

    move/from16 v0, p12

    move-object v1, p0

    iput v0, v1, Lcom/motorola/android/widget/RemoteGridViewAdapter;->height:I

    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Lcom/motorola/android/widget/RemoteGridViewAdapter;->bkmrkData:[B

    move-object/from16 v0, p16

    move-object v1, p0

    iput-object v0, v1, Lcom/motorola/android/widget/RemoteGridViewAdapter;->backgData:[B

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .parameter "parcel"

    .prologue
    const/4 v8, 0x0

    const-string v7, "RemoteGridViewAdapter"

    invoke-direct {p0}, Landroid/widget/MotoAppWidgetAdapter;-><init>()V

    const-string v5, "RemoteGridViewAdapter"

    const-string v5, "Constructor 2 is called"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iput-object v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->qUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->qProjection:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->qSelection:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->qSelectionArgs:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->qSortOrder:Ljava/lang/String;

    const-string v5, "RemoteGridViewAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteGridViewAdapter read parcel:  uri is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->qUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "RemoteGridViewAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteGridViewAdapter read parcel:  qSelection is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->qSelection:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->adapterType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->itemLayoutId:I

    iput-object v8, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->itemViewIdList:[I

    iget v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->itemLayoutId:I

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, totolIds:I
    if-lez v4, :cond_0

    new-array v5, v4, [I

    iput-object v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->itemViewIdList:[I

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->itemViewIdList:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    aput v6, v5, v0

    const-string v5, "RemoteGridViewAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteGridViewAdapter read parcel: idlist No."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->itemViewIdList:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    .end local v4           #totolIds:I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->defaultDrawableId:I

    invoke-static {p1}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->pendingIntent:Landroid/app/PendingIntent;

    invoke-static {p1}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->setuppendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->setupIconId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->bkmrkData:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->backgData:[B

    iput-object v8, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->mListItem:Ljava/util/ArrayList;

    iget v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->adapterType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, size:I
    if-lez v3, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/android/widget/BookmarkContent;>;"
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v3, :cond_1

    sget-object v5, Lcom/motorola/android/widget/BookmarkContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/widget/BookmarkContent;

    .local v1, item:Lcom/motorola/android/widget/BookmarkContent;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #item:Lcom/motorola/android/widget/BookmarkContent;
    :cond_1
    iput-object v2, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->mListItem:Ljava/util/ArrayList;

    const-string v5, "RemoteGridViewAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteGridViewAdapter read Parcel: bookmark item number is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #i:I
    .end local v2           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/android/widget/BookmarkContent;>;"
    .end local v3           #size:I
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/widget/RemoteGridViewAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->mListItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/android/widget/RemoteGridViewAdapter;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->setuppendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/android/widget/RemoteGridViewAdapter;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->pendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/widget/RemoteGridViewAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->passedContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getBitMapFromByteArray([B)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bitmapdata"

    .prologue
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bitmap"

    .prologue
    const/high16 v11, 0x4140

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v0, canvas:Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .local v1, color:I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .local v3, paint:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v4, rect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .local v5, rectF:Landroid/graphics/RectF;
    const/high16 v6, 0x4140

    .local v6, roundPx:F
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v5, v11, v11, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v2
.end method

.method private queryBrowserDatabse()V
    .locals 18

    .prologue
    const-string v3, "RemoteGridViewAdapter"

    const-string v4, "queryBrowserDatabse is called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->passedContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .local v2, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->qUri:Landroid/net/Uri;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->qProjection:[Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->qSelection:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->qSelectionArgs:[Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->qSortOrder:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .local v11, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->mListItem:Ljava/util/ArrayList;

    move-object v13, v0

    .local v13, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/android/widget/BookmarkContent;>;"
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move v14, v3

    .local v14, recordCount:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->mListItem:Ljava/util/ArrayList;

    move-object v3, v0

    if-nez v3, :cond_3

    new-instance v13, Ljava/util/ArrayList;

    .end local v13           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/android/widget/BookmarkContent;>;"
    add-int/lit8 v3, v14, 0x1

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(I)V

    .restart local v13       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/android/widget/BookmarkContent;>;"
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/widget/RemoteGridViewAdapter;->mListItem:Ljava/util/ArrayList;

    :goto_1
    if-eqz v11, :cond_5

    :try_start_0
    const-string v3, "title"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .local v16, titleColumn:I
    const-string v3, "url"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .local v17, urlColumn:I
    const-string v3, "thumbnail"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .local v15, thumbnailColumn:I
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    if-ge v12, v14, :cond_4

    move-object v0, v11

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, bmTtile:Ljava/lang/String;
    move-object v0, v11

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .local v10, bmUrl:Ljava/lang/String;
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .local v8, bmThubmnailBin:[B
    if-eqz v9, :cond_1

    const-string v3, "http://"

    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    :cond_0
    const-string v3, "www."

    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    :cond_1
    new-instance v3, Lcom/motorola/android/widget/BookmarkContent;

    invoke-direct {v3, v9, v10, v8}, Lcom/motorola/android/widget/BookmarkContent;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .end local v8           #bmThubmnailBin:[B
    .end local v9           #bmTtile:Ljava/lang/String;
    .end local v10           #bmUrl:Ljava/lang/String;
    .end local v12           #i:I
    .end local v14           #recordCount:I
    .end local v15           #thumbnailColumn:I
    .end local v16           #titleColumn:I
    .end local v17           #urlColumn:I
    :cond_2
    const/4 v3, 0x0

    move v14, v3

    goto :goto_0

    .restart local v14       #recordCount:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->mListItem:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3

    .restart local v12       #i:I
    .restart local v15       #thumbnailColumn:I
    .restart local v16       #titleColumn:I
    .restart local v17       #urlColumn:I
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .end local v12           #i:I
    .end local v15           #thumbnailColumn:I
    .end local v16           #titleColumn:I
    .end local v17           #urlColumn:I
    :cond_5
    new-instance v3, Lcom/motorola/android/widget/BookmarkContent;

    const-string v4, "Setup"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/motorola/android/widget/BookmarkContent;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "RemoteGridViewAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding setup at last, total count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapterType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->adapterType:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->passedContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getCount()I
    .locals 2

    .prologue
    iget v1, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->adapterType:I

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    .local v0, returnValue:I
    :goto_0
    return v0

    .end local v0           #returnValue:I
    :pswitch_0
    iget-object v1, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->mListItem:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/motorola/android/widget/RemoteGridViewAdapter;->queryBrowserDatabse()V

    :cond_0
    iget-object v1, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .restart local v0       #returnValue:I
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public getOnItemClickListner()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, listener:Landroid/widget/AdapterView$OnItemClickListener;
    iget v1, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->adapterType:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/motorola/android/widget/RemoteGridViewAdapter$2;

    .end local v0           #listener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-direct {v0, p0}, Lcom/motorola/android/widget/RemoteGridViewAdapter$2;-><init>(Lcom/motorola/android/widget/RemoteGridViewAdapter;)V

    .restart local v0       #listener:Landroid/widget/AdapterView$OnItemClickListener;
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x0

    .local v10, iv:Landroid/widget/ImageView;
    const/4 v11, 0x0

    .local v11, tv:Landroid/widget/TextView;
    iget v12, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->adapterType:I

    packed-switch v12, :pswitch_data_0

    :goto_0
    return-object p2

    :pswitch_0
    iget-object v9, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->mListItem:Ljava/util/ArrayList;

    .local v9, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/android/widget/BookmarkContent;>;"
    move-object v0, v9

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/android/widget/BookmarkContent;

    .local v3, bmRecord:Lcom/motorola/android/widget/BookmarkContent;
    invoke-virtual {p0}, Lcom/motorola/android/widget/RemoteGridViewAdapter;->getCount()I

    move-result v6

    .local v6, count:I
    const-string v12, "RemoteGridViewAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getView method is called,position is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "bmTtile is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v3, Lcom/motorola/android/widget/BookmarkContent;->bmTtile:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "RemoteGridViewAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bmUrl is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v3, Lcom/motorola/android/widget/BookmarkContent;->bmUrl:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Count is:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v12, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->itemLayoutId:I

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->itemViewIdList:[I

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->itemViewIdList:[I

    array-length v12, v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_3

    :cond_0
    if-nez p2, :cond_2

    const-string v12, "RemoteGridViewAdapter"

    const-string v13, "No individual layout passed "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/widget/ImageView;

    .end local v10           #iv:Landroid/widget/ImageView;
    iget-object v12, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->passedContext:Landroid/content/Context;

    invoke-direct {v10, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v10       #iv:Landroid/widget/ImageView;
    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v12, Landroid/widget/AbsListView$LayoutParams;

    iget v13, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->width:I

    iget v14, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->height:I

    invoke-direct {v12, v13, v14}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 p2, v10

    :goto_1
    const/4 v4, 0x0

    .local v4, bmThubmnail:Landroid/graphics/Bitmap;
    iget-object v12, v3, Lcom/motorola/android/widget/BookmarkContent;->bmThubmnailBin:[B

    if-eqz v12, :cond_1

    iget-object v12, v3, Lcom/motorola/android/widget/BookmarkContent;->bmThubmnailBin:[B

    invoke-static {v12}, Lcom/motorola/android/widget/RemoteGridViewAdapter;->getBitMapFromByteArray([B)Landroid/graphics/Bitmap;

    move-result-object v5

    .local v5, bmp:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_1

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v13, 0x1

    invoke-virtual {v5, v12, v13}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .end local v5           #bmp:Landroid/graphics/Bitmap;
    :cond_1
    if-eqz v4, :cond_5

    const-string v12, "RemoteGridViewAdapter"

    const-string v13, "Thumbnail is present"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .end local v4           #bmThubmnail:Landroid/graphics/Bitmap;
    :cond_2
    move-object/from16 v0, p2

    check-cast v0, Landroid/widget/ImageView;

    move-object v10, v0

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    const-string v12, "RemoteGridViewAdapter"

    const-string v13, "Individual layout for each item is passed "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->passedContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .local v8, factory:Landroid/view/LayoutInflater;
    iget v12, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->itemLayoutId:I

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local v8           #factory:Landroid/view/LayoutInflater;
    :cond_4
    iget-object v12, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->itemViewIdList:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    move-object/from16 v0, p2

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11           #tv:Landroid/widget/TextView;
    check-cast v11, Landroid/widget/TextView;

    .restart local v11       #tv:Landroid/widget/TextView;
    iget-object v12, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->itemViewIdList:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    move-object/from16 v0, p2

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #iv:Landroid/widget/ImageView;
    check-cast v10, Landroid/widget/ImageView;

    .restart local v10       #iv:Landroid/widget/ImageView;
    iget-object v12, v3, Lcom/motorola/android/widget/BookmarkContent;->bmTtile:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .restart local v4       #bmThubmnail:Landroid/graphics/Bitmap;
    :cond_5
    const/4 v12, 0x1

    sub-int v12, v6, v12

    move/from16 v0, p1

    move v1, v12

    if-ne v0, v1, :cond_6

    const-string v12, "RemoteGridViewAdapter"

    const-string v13, "setting setup thumbnail"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v12, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->backgData:[B

    invoke-static {v12}, Lcom/motorola/android/widget/RemoteGridViewAdapter;->getBitMapFromByteArray([B)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, backgrnd:Landroid/graphics/Bitmap;
    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .end local v2           #backgrnd:Landroid/graphics/Bitmap;
    :cond_6
    const-string v12, "RemoteGridViewAdapter"

    const-string v13, "Thumbnail is not present"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v12, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->bkmrkData:[B

    invoke-static {v12}, Lcom/motorola/android/widget/RemoteGridViewAdapter;->getBitMapFromByteArray([B)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, defltThumb:Landroid/graphics/Bitmap;
    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->passedContext:Landroid/content/Context;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 9
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v7, 0x0

    const-string v8, "RemoteGridViewAdapter"

    const-string v5, "RemoteGridViewAdapter"

    const-string v5, "writeToParcel is called"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->qUri:Landroid/net/Uri;

    invoke-static {p1, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    iget-object v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->qProjection:[Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->qSelection:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->qSelectionArgs:[Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->qSortOrder:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->adapterType:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->itemLayoutId:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->itemLayoutId:I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->itemViewIdList:[I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->itemViewIdList:[I

    array-length v4, v5

    .local v4, totolIds:I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    iget-object v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->itemViewIdList:[I

    aget v5, v5, v1

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #i:I
    .end local v4           #totolIds:I
    :cond_0
    iget v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->defaultDrawableId:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, p1, v7}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->setuppendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, p1, v7}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    iget v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->setupIconId:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->width:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->height:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->bkmrkData:[B

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->backgData:[B

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->adapterType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->mListItem:Ljava/util/ArrayList;

    if-nez v5, :cond_2

    const-string v5, "RemoteGridViewAdapter"

    const-string v5, "mListItem is null"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .end local p0
    :cond_1
    :goto_1
    return-void

    .restart local p0
    :cond_2
    iget-object v2, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter;->mListItem:Ljava/util/ArrayList;

    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/android/widget/BookmarkContent;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, numItems:I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    .local v0, dataSize:I
    const/4 v1, 0x0

    .end local p0
    .restart local v1       #i:I
    :goto_2
    if-ge v1, v3, :cond_4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/android/widget/BookmarkContent;

    iget-object v5, p0, Lcom/motorola/android/widget/BookmarkContent;->bmThubmnailBin:[B

    if-eqz v5, :cond_3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/android/widget/BookmarkContent;

    iget-object v5, p0, Lcom/motorola/android/widget/BookmarkContent;->bmThubmnailBin:[B

    array-length v5, v5

    add-int/2addr v0, v5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const-string v5, "RemoteGridViewAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "item number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " data size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v5, Lcom/motorola/android/widget/RemoteGridViewAdapter;->MAX_PARCEL_SIZE:I

    if-le v0, v5, :cond_5

    const-string v5, "RemoteGridViewAdapter"

    const-string v5, "too much bookmark items data, do not send them"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/android/widget/BookmarkContent;

    invoke-virtual {p0, p1, v7}, Lcom/motorola/android/widget/BookmarkContent;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
