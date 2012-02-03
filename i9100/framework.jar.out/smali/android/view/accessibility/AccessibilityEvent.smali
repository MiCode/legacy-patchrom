.class public final Landroid/view/accessibility/AccessibilityEvent;
.super Ljava/lang/Object;
.source "AccessibilityEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final CHECKED:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENABLED:I = 0x2

.field private static final FULL_SCREEN:I = 0x80

.field public static final INVALID_POSITION:I = -0x1

.field private static final MAX_POOL_SIZE:I = 0x2

.field public static final MAX_TEXT_LENGTH:I = 0x1f4

.field private static final PASSWORD:I = 0x4

.field public static final TYPES_ALL_MASK:I = -0x1

.field public static final TYPE_NOTIFICATION_STATE_CHANGED:I = 0x40

.field public static final TYPE_VIEW_CLICKED:I = 0x1

.field public static final TYPE_VIEW_FOCUSED:I = 0x8

.field public static final TYPE_VIEW_LONG_CLICKED:I = 0x2

.field public static final TYPE_VIEW_SELECTED:I = 0x4

.field public static final TYPE_VIEW_TEXT_CHANGED:I = 0x10

.field public static final TYPE_WINDOW_STATE_CHANGED:I = 0x20

.field private static final mPoolLock:Ljava/lang/Object;

.field private static sPool:Landroid/view/accessibility/AccessibilityEvent;

.field private static sPoolSize:I


# instance fields
.field private mAddedCount:I

.field private mBeforeText:Ljava/lang/CharSequence;

.field private mBooleanProperties:I

.field private mClassName:Ljava/lang/CharSequence;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mCurrentItemIndex:I

.field private mEventTime:J

.field private mEventType:I

.field private mFromIndex:I

.field private mIsInPool:Z

.field private mItemCount:I

.field private mNext:Landroid/view/accessibility/AccessibilityEvent;

.field private mPackageName:Ljava/lang/CharSequence;

.field private mParcelableData:Landroid/os/Parcelable;

.field private mRemovedCount:I

.field private final mText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 218
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityEvent;->mPoolLock:Ljava/lang/Object;

    .line 723
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mText:Ljava/util/List;

    .line 254
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mCurrentItemIndex:I

    .line 255
    return-void
.end method

.method private clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 613
    iput v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 614
    iput v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mBooleanProperties:I

    .line 615
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mCurrentItemIndex:I

    .line 616
    iput v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mItemCount:I

    .line 617
    iput v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mFromIndex:I

    .line 618
    iput v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mAddedCount:I

    .line 619
    iput v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mRemovedCount:I

    .line 620
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    .line 621
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mClassName:Ljava/lang/CharSequence;

    .line 622
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    .line 623
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentDescription:Ljava/lang/CharSequence;

    .line 624
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mBeforeText:Ljava/lang/CharSequence;

    .line 625
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mParcelableData:Landroid/os/Parcelable;

    .line 626
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mText:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 627
    return-void
.end method

.method private getBooleanProperty(I)Z
    .locals 1
    .parameter "property"

    .prologue
    .line 636
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mBooleanProperties:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityEvent;
    .locals 4

    .prologue
    .line 575
    sget-object v1, Landroid/view/accessibility/AccessibilityEvent;->mPoolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 576
    :try_start_0
    sget-object v2, Landroid/view/accessibility/AccessibilityEvent;->sPool:Landroid/view/accessibility/AccessibilityEvent;

    if-eqz v2, :cond_0

    .line 577
    sget-object v0, Landroid/view/accessibility/AccessibilityEvent;->sPool:Landroid/view/accessibility/AccessibilityEvent;

    .line 578
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    sget-object v2, Landroid/view/accessibility/AccessibilityEvent;->sPool:Landroid/view/accessibility/AccessibilityEvent;

    iget-object v2, v2, Landroid/view/accessibility/AccessibilityEvent;->mNext:Landroid/view/accessibility/AccessibilityEvent;

    sput-object v2, Landroid/view/accessibility/AccessibilityEvent;->sPool:Landroid/view/accessibility/AccessibilityEvent;

    .line 579
    sget v2, Landroid/view/accessibility/AccessibilityEvent;->sPoolSize:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sput v2, Landroid/view/accessibility/AccessibilityEvent;->sPoolSize:I

    .line 580
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityEvent;->mNext:Landroid/view/accessibility/AccessibilityEvent;

    .line 581
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/accessibility/AccessibilityEvent;->mIsInPool:Z

    .line 582
    monitor-exit v1

    move-object v1, v0

    .line 584
    .end local v0           #event:Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct {v2}, Landroid/view/accessibility/AccessibilityEvent;-><init>()V

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 585
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static obtain(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1
    .parameter "eventType"

    .prologue
    .line 563
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 564
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 565
    return-object v0
.end method

.method private setBooleanProperty(IZ)V
    .locals 2
    .parameter "property"
    .parameter "value"

    .prologue
    .line 646
    if-eqz p2, :cond_0

    .line 647
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mBooleanProperties:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mBooleanProperties:I

    .line 651
    :goto_0
    return-void

    .line 649
    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mBooleanProperties:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mBooleanProperties:I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 693
    const/4 v0, 0x0

    return v0
.end method

.method public getAddedCount()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAddedCount:I

    return v0
.end method

.method public getBeforeText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mBeforeText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCurrentItemIndex()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mCurrentItemIndex:I

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 443
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    return-wide v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    return v0
.end method

.method public getFromIndex()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mFromIndex:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mItemCount:I

    return v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getParcelableData()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mParcelableData:Landroid/os/Parcelable;

    return-object v0
.end method

.method public getRemovedCount()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRemovedCount:I

    return v0
.end method

.method public getText()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 498
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mText:Ljava/util/List;

    return-object v0
.end method

.method public initFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "parcel"

    .prologue
    const/4 v2, 0x0

    .line 659
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 660
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mBooleanProperties:I

    .line 661
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mCurrentItemIndex:I

    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mItemCount:I

    .line 663
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mFromIndex:I

    .line 664
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAddedCount:I

    .line 665
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRemovedCount:I

    .line 666
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    .line 667
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mClassName:Ljava/lang/CharSequence;

    .line 668
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    .line 669
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentDescription:Ljava/lang/CharSequence;

    .line 670
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mBeforeText:Ljava/lang/CharSequence;

    .line 671
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mParcelableData:Landroid/os/Parcelable;

    .line 672
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mText:Ljava/util/List;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 673
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityEvent;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityEvent;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFullScreen()Z
    .locals 1

    .prologue
    .line 326
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityEvent;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityEvent;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 594
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mIsInPool:Z

    if-eqz v0, :cond_0

    .line 607
    :goto_0
    return-void

    .line 598
    :cond_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityEvent;->clear()V

    .line 599
    sget-object v0, Landroid/view/accessibility/AccessibilityEvent;->mPoolLock:Ljava/lang/Object;

    monitor-enter v0

    .line 600
    :try_start_0
    sget v1, Landroid/view/accessibility/AccessibilityEvent;->sPoolSize:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_1

    .line 601
    sget-object v1, Landroid/view/accessibility/AccessibilityEvent;->sPool:Landroid/view/accessibility/AccessibilityEvent;

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mNext:Landroid/view/accessibility/AccessibilityEvent;

    .line 602
    sput-object p0, Landroid/view/accessibility/AccessibilityEvent;->sPool:Landroid/view/accessibility/AccessibilityEvent;

    .line 603
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mIsInPool:Z

    .line 604
    sget v1, Landroid/view/accessibility/AccessibilityEvent;->sPoolSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/accessibility/AccessibilityEvent;->sPoolSize:I

    .line 606
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAddedCount(I)V
    .locals 0
    .parameter "addedCount"

    .prologue
    .line 416
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mAddedCount:I

    .line 417
    return-void
.end method

.method public setBeforeText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "beforeText"

    .prologue
    .line 516
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mBeforeText:Ljava/lang/CharSequence;

    .line 517
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "isChecked"

    .prologue
    .line 272
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBooleanProperty(IZ)V

    .line 273
    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "className"

    .prologue
    .line 470
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mClassName:Ljava/lang/CharSequence;

    .line 471
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "contentDescription"

    .prologue
    .line 534
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentDescription:Ljava/lang/CharSequence;

    .line 535
    return-void
.end method

.method public setCurrentItemIndex(I)V
    .locals 0
    .parameter "currentItemIndex"

    .prologue
    .line 380
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mCurrentItemIndex:I

    .line 381
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "isEnabled"

    .prologue
    .line 290
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBooleanProperty(IZ)V

    .line 291
    return-void
.end method

.method public setEventTime(J)V
    .locals 0
    .parameter "eventTime"

    .prologue
    .line 452
    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    .line 453
    return-void
.end method

.method public setEventType(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 344
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 345
    return-void
.end method

.method public setFromIndex(I)V
    .locals 0
    .parameter "fromIndex"

    .prologue
    .line 398
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mFromIndex:I

    .line 399
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1
    .parameter "isFullScreen"

    .prologue
    .line 317
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBooleanProperty(IZ)V

    .line 318
    return-void
.end method

.method public setItemCount(I)V
    .locals 0
    .parameter "itemCount"

    .prologue
    .line 362
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mItemCount:I

    .line 363
    return-void
.end method

.method public setPackageName(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 488
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    .line 489
    return-void
.end method

.method public setParcelableData(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "parcelableData"

    .prologue
    .line 552
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mParcelableData:Landroid/os/Parcelable;

    .line 553
    return-void
.end method

.method public setPassword(Z)V
    .locals 1
    .parameter "isPassword"

    .prologue
    .line 308
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBooleanProperty(IZ)V

    .line 309
    return-void
.end method

.method public setRemovedCount(I)V
    .locals 0
    .parameter "removedCount"

    .prologue
    .line 434
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mRemovedCount:I

    .line 435
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 699
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; EventType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; EventTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; ClassName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; Text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mText:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; ContentDescription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; ItemCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mItemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; CurrentItemIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mCurrentItemIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; IsEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; IsPassword: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->isPassword()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; IsChecked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; IsFullScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->isFullScreen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; BeforeText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mBeforeText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; FromIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mFromIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; AddedCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mAddedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; RemovedCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mRemovedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; ParcelableData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mParcelableData:Landroid/os/Parcelable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 676
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 677
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mBooleanProperties:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mCurrentItemIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mItemCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mFromIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAddedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRemovedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 683
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 684
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mClassName:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 685
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 686
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 687
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mBeforeText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 688
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mParcelableData:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 689
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mText:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 690
    return-void
.end method
