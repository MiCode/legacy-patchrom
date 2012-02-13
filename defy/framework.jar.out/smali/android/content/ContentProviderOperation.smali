.class public Landroid/content/ContentProviderOperation;
.super Ljava/lang/Object;
.source "ContentProviderOperation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProviderOperation$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ContentProviderOperation"

.field public static final TYPE_ASSERT:I = 0x4

.field public static final TYPE_DELETE:I = 0x3

.field public static final TYPE_INSERT:I = 0x1

.field public static final TYPE_UPDATE:I = 0x2


# instance fields
.field private final mExpectedCount:Ljava/lang/Integer;

.field private final mSelection:Ljava/lang/String;

.field private final mSelectionArgs:[Ljava/lang/String;

.field private final mSelectionArgsBackReferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Landroid/content/ContentValues;

.field private final mValuesBackReferences:Landroid/content/ContentValues;

.field private final mYieldAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/content/ContentProviderOperation$1;

    invoke-direct {v0}, Landroid/content/ContentProviderOperation$1;-><init>()V

    sput-object v0, Landroid/content/ContentProviderOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentProviderOperation$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #getter for: Landroid/content/ContentProviderOperation$Builder;->mType:I
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->access$000(Landroid/content/ContentProviderOperation$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    #getter for: Landroid/content/ContentProviderOperation$Builder;->mUri:Landroid/net/Uri;
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->access$100(Landroid/content/ContentProviderOperation$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    #getter for: Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->access$200(Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentValues;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    #getter for: Landroid/content/ContentProviderOperation$Builder;->mSelection:Ljava/lang/String;
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->access$300(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    #getter for: Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:[Ljava/lang/String;
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->access$400(Landroid/content/ContentProviderOperation$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    #getter for: Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->access$500(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    #getter for: Landroid/content/ContentProviderOperation$Builder;->mSelectionArgsBackReferences:Ljava/util/Map;
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->access$600(Landroid/content/ContentProviderOperation$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    #getter for: Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->access$700(Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentValues;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    #getter for: Landroid/content/ContentProviderOperation$Builder;->mYieldAllowed:Z
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->access$800(Landroid/content/ContentProviderOperation$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentProviderOperation$Builder;Landroid/content/ContentProviderOperation$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/ContentProviderOperation;->mType:I

    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    :goto_0
    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3
    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    :goto_4
    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_5
    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v0, :cond_6

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    move-object v2, v3

    goto :goto_0

    :cond_1
    move-object v2, v3

    goto :goto_1

    :cond_2
    move-object v2, v3

    goto :goto_2

    :cond_3
    move-object v2, v3

    goto :goto_3

    :cond_4
    move-object v2, v3

    goto :goto_4

    :cond_5
    move-object v2, v3

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :goto_7
    iput-boolean v2, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    return-void

    :cond_7
    const/4 v2, 0x0

    goto :goto_7
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/ContentProviderOperation$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/content/ContentProviderOperation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private backRefToValue([Landroid/content/ContentProviderResult;ILjava/lang/Integer;)J
    .locals 6
    .parameter "backRefs"
    .parameter "numBackRefs"
    .parameter "backRefIndex"

    .prologue
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, p2, :cond_0

    const-string v3, "ContentProviderOperation"

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "asked for back ref "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but there are only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " back refs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, p1, v3

    .local v0, backRef:Landroid/content/ContentProviderResult;
    iget-object v3, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .local v1, backRefValue:J
    :goto_0
    return-wide v1

    .end local v1           #backRefValue:J
    :cond_1
    iget-object v3, v0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v1, v3

    .restart local v1       #backRefValue:J
    goto :goto_0
.end method

.method public static newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .parameter "uri"

    .prologue
    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$1;)V

    return-object v0
.end method

.method public static newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .parameter "uri"

    .prologue
    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$1;)V

    return-object v0
.end method

.method public static newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .parameter "uri"

    .prologue
    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$1;)V

    return-object v0
.end method

.method public static newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .parameter "uri"

    .prologue
    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$1;)V

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;
    .locals 21
    .parameter "provider"
    .parameter "backRefs"
    .parameter "numBackRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation;->resolveValueBackReferences([Landroid/content/ContentProviderResult;I)Landroid/content/ContentValues;

    move-result-object v20

    .local v20, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation;->resolveSelectionArgsBackReferences([Landroid/content/ContentProviderResult;I)[Ljava/lang/String;

    move-result-object v9

    .local v9, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/ContentProviderOperation;->mType:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v17

    .local v17, newUri:Landroid/net/Uri;
    if-nez v17, :cond_0

    new-instance v5, Landroid/content/OperationApplicationException;

    const-string v6, "insert failed"

    invoke-direct {v5, v6}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    new-instance v5, Landroid/content/ContentProviderResult;

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/content/ContentProviderResult;-><init>(Landroid/net/Uri;)V

    .end local v17           #newUri:Landroid/net/Uri;
    :goto_0
    return-object v5

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/ContentProviderOperation;->mType:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .local v18, numRows:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    move-object v5, v0

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    const-string v5, "ContentProviderOperation"

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/OperationApplicationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wrong number of rows: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v18           #numRows:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/ContentProviderOperation;->mType:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, v20

    move-object v3, v6

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .restart local v18       #numRows:I
    goto :goto_1

    .end local v18           #numRows:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/ContentProviderOperation;->mType:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_9

    const/4 v7, 0x0

    .local v7, projection:[Ljava/lang/String;
    if-eqz v20, :cond_5

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .local v19, projectionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .local v13, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v13           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .end local v7           #projection:[Ljava/lang/String;
    check-cast v7, [Ljava/lang/String;

    .end local v16           #i$:Ljava/util/Iterator;
    .end local v19           #projectionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #projection:[Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    move-object v8, v0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .local v11, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v18

    .restart local v18       #numRows:I
    if-eqz v7, :cond_8

    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    array-length v5, v7

    if-ge v15, v5, :cond_6

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .local v12, cursorValue:Ljava/lang/String;
    aget-object v5, v7, v15

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, expectedValue:Ljava/lang/String;
    invoke-static {v12, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "ContentProviderOperation"

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/OperationApplicationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found value "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " when expected "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " for column "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v7, v15

    .end local v7           #projection:[Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v12           #cursorValue:Ljava/lang/String;
    .end local v14           #expectedValue:Ljava/lang/String;
    .end local v15           #i:I
    .end local v18           #numRows:I
    :catchall_0
    move-exception v5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v5

    .restart local v7       #projection:[Ljava/lang/String;
    .restart local v12       #cursorValue:Ljava/lang/String;
    .restart local v14       #expectedValue:Ljava/lang/String;
    .restart local v15       #i:I
    .restart local v18       #numRows:I
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .end local v12           #cursorValue:Ljava/lang/String;
    .end local v14           #expectedValue:Ljava/lang/String;
    .end local v15           #i:I
    :cond_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .end local v7           #projection:[Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v18           #numRows:I
    :cond_9
    const-string v5, "ContentProviderOperation"

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad type, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/ContentProviderOperation;->mType:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .restart local v18       #numRows:I
    :cond_a
    new-instance v5, Landroid/content/ContentProviderResult;

    move-object v0, v5

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/ContentProviderResult;-><init>(I)V

    goto/16 :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isReadOperation()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWriteOperation()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isYieldAllowed()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    return v0
.end method

.method public resolveSelectionArgsBackReferences([Landroid/content/ContentProviderResult;I)[Ljava/lang/String;
    .locals 8
    .parameter "backRefs"
    .parameter "numBackRefs"

    .prologue
    const/4 v7, 0x0

    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    :goto_0
    return-object v5

    :cond_0
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    array-length v5, v5

    new-array v2, v5, [Ljava/lang/String;

    .local v2, newArgs:[Ljava/lang/String;
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    iget-object v6, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    array-length v6, v6

    invoke-static {v5, v7, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .local v3, selectionArgBackRef:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .local v4, selectionArgIndex:Ljava/lang/Integer;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, backRefIndex:I
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, p1, p2, v6}, Landroid/content/ContentProviderOperation;->backRefToValue([Landroid/content/ContentProviderResult;ILjava/lang/Integer;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    goto :goto_1

    .end local v0           #backRefIndex:I
    .end local v3           #selectionArgBackRef:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4           #selectionArgIndex:Ljava/lang/Integer;
    :cond_1
    move-object v5, v2

    goto :goto_0
.end method

.method public resolveValueBackReferences([Landroid/content/ContentProviderResult;I)Landroid/content/ContentValues;
    .locals 8
    .parameter "backRefs"
    .parameter "numBackRefs"

    .prologue
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    :goto_0
    return-object v5

    :cond_0
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    if-nez v5, :cond_1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .local v4, values:Landroid/content/ContentValues;
    :goto_1
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    invoke-virtual {v5}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, key:Ljava/lang/String;
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .local v0, backRefIndex:Ljava/lang/Integer;
    if-nez v0, :cond_2

    const-string v5, "ContentProviderOperation"

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "values backref "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not an integer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v0           #backRefIndex:Ljava/lang/Integer;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .restart local v4       #values:Landroid/content/ContentValues;
    goto :goto_1

    .restart local v0       #backRefIndex:Ljava/lang/Integer;
    .restart local v1       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #key:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProviderOperation;->backRefToValue([Landroid/content/ContentProviderResult;ILjava/lang/Integer;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .end local v0           #backRefIndex:Ljava/lang/Integer;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #key:Ljava/lang/String;
    :cond_3
    move-object v5, v4

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/ContentProviderOperation;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSelection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExpectedCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mYieldAllowed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValues: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValuesBackReferences: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSelectionArgsBackReferences: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v2, p0, Landroid/content/ContentProviderOperation;->mType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-static {p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    :goto_2
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    if-eqz v2, :cond_4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    if-eqz v2, :cond_5

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_6
    iget-boolean v2, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    if-eqz v2, :cond_7

    move v2, v4

    :goto_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_7
    move v2, v3

    goto :goto_6
.end method
