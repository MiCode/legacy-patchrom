.class public abstract Landroid/content/ContentProviderNative;
.super Landroid/os/Binder;
.source "ContentProviderNative.java"

# interfaces
.implements Landroid/content/IContentProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentProvider"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.content.IContentProvider"

    invoke-virtual {p0, p0, v0}, Landroid/content/ContentProviderNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IContentProvider;
    .locals 2
    .parameter "obj"

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 57
    const/4 v1, 0x0

    .line 65
    :goto_0
    return-object v1

    .line 59
    :cond_0
    const-string v1, "android.content.IContentProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/IContentProvider;

    .line 61
    .local v0, in:Landroid/content/IContentProvider;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 62
    goto :goto_0

    .line 65
    :cond_1
    new-instance v1, Landroid/content/ContentProviderProxy;

    invoke-direct {v1, p0}, Landroid/content/ContentProviderProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 271
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 31
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    packed-switch p1, :pswitch_data_0

    .line 266
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 75
    :pswitch_1
    :try_start_0
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 80
    .local v6, url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 81
    .local v21, num:I
    const/4 v7, 0x0

    .line 82
    .local v7, projection:[Ljava/lang/String;
    if-lez v21, :cond_0

    .line 83
    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object v7, v0

    .line 84
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v18

    .line 84
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 90
    .end local v18           #i:I
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 91
    .local v8, selection:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 92
    const/4 v9, 0x0

    .line 93
    .local v9, selectionArgs:[Ljava/lang/String;
    if-lez v21, :cond_1

    .line 94
    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object v9, v0

    .line 95
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v18

    .line 95
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 100
    .end local v18           #i:I
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 101
    .local v10, sortOrder:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v11

    .line 103
    .local v11, observer:Landroid/database/IContentObserver;
    sget-object v5, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/database/CursorWindow;

    .line 109
    .local v12, window:Landroid/database/CursorWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    move/from16 v30, v5

    .local v30, wantsCursorMetadata:Z
    :goto_3
    move-object/from16 v5, p0

    .line 111
    invoke-virtual/range {v5 .. v12}, Landroid/content/ContentProviderNative;->bulkQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/database/IContentObserver;Landroid/database/CursorWindow;)Landroid/database/IBulkCursor;

    move-result-object v14

    .line 113
    .local v14, bulkCursor:Landroid/database/IBulkCursor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v14, :cond_4

    .line 115
    invoke-interface {v14}, Landroid/database/IBulkCursor;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 117
    if-eqz v30, :cond_2

    .line 118
    invoke-interface {v14}, Landroid/database/IBulkCursor;->count()I

    move-result v5

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-interface {v14}, Landroid/database/IBulkCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/database/BulkCursorToCursorAdaptor;->findRowIdColumnIndex([Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    :cond_2
    :goto_4
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 109
    .end local v14           #bulkCursor:Landroid/database/IBulkCursor;
    .end local v30           #wantsCursorMetadata:Z
    :cond_3
    const/4 v5, 0x0

    move/from16 v30, v5

    goto :goto_3

    .line 123
    .restart local v14       #bulkCursor:Landroid/database/IBulkCursor;
    .restart local v30       #wantsCursorMetadata:Z
    :cond_4
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 261
    .end local v6           #url:Landroid/net/Uri;
    .end local v7           #projection:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v10           #sortOrder:Ljava/lang/String;
    .end local v11           #observer:Landroid/database/IContentObserver;
    .end local v12           #window:Landroid/database/CursorWindow;
    .end local v14           #bulkCursor:Landroid/database/IBulkCursor;
    .end local v21           #num:I
    .end local v30           #wantsCursorMetadata:Z
    :catch_0
    move-exception v5

    move-object/from16 v16, v5

    .line 262
    .local v16, e:Ljava/lang/Exception;
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    .line 263
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 131
    .end local v16           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 133
    .restart local v6       #url:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderNative;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v28

    .line 134
    .local v28, type:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 142
    .end local v6           #url:Landroid/net/Uri;
    .end local v28           #type:Ljava/lang/String;
    :pswitch_3
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 144
    .restart local v6       #url:Landroid/net/Uri;
    sget-object v5, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/ContentValues;

    .line 146
    .local v29, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderNative;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v24

    .line 147
    .local v24, out:Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 149
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 154
    .end local v6           #url:Landroid/net/Uri;
    .end local v24           #out:Landroid/net/Uri;
    .end local v29           #values:Landroid/content/ContentValues;
    :pswitch_4
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 156
    .restart local v6       #url:Landroid/net/Uri;
    sget-object v5, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [Landroid/content/ContentValues;

    .line 158
    .local v29, values:[Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderNative;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v15

    .line 159
    .local v15, count:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 166
    .end local v6           #url:Landroid/net/Uri;
    .end local v15           #count:I
    .end local v29           #values:[Landroid/content/ContentValues;
    :pswitch_5
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 168
    .local v22, numOperations:I
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    .local v23, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_5
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 171
    sget-object v5, Landroid/content/ContentProviderOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v23

    move/from16 v1, v18

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 170
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 173
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderNative;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v26

    .line 174
    .local v26, results:[Landroid/content/ContentProviderResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 176
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 181
    .end local v18           #i:I
    .end local v22           #numOperations:I
    .end local v23           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v26           #results:[Landroid/content/ContentProviderResult;
    :pswitch_6
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 183
    .restart local v6       #url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 184
    .restart local v8       #selection:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 186
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v8

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentProviderNative;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 188
    .restart local v15       #count:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 195
    .end local v6           #url:Landroid/net/Uri;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v15           #count:I
    :pswitch_7
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 197
    .restart local v6       #url:Landroid/net/Uri;
    sget-object v5, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/ContentValues;

    .line 198
    .local v29, values:Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 199
    .restart local v8       #selection:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 201
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v29

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentProviderNative;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 203
    .restart local v15       #count:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 210
    .end local v6           #url:Landroid/net/Uri;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v15           #count:I
    .end local v29           #values:Landroid/content/ContentValues;
    :pswitch_8
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 212
    .restart local v6       #url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 215
    .local v20, mode:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderNative;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v17

    .line 216
    .local v17, fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v17, :cond_6

    .line 218
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/4 v5, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 224
    :goto_6
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 222
    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 229
    .end local v6           #url:Landroid/net/Uri;
    .end local v17           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v20           #mode:Ljava/lang/String;
    :pswitch_9
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 231
    .restart local v6       #url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 234
    .restart local v20       #mode:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderNative;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v17

    .line 235
    .local v17, fd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v17, :cond_7

    .line 237
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    const/4 v5, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 243
    :goto_7
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 241
    :cond_7
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 248
    .end local v6           #url:Landroid/net/Uri;
    .end local v17           #fd:Landroid/content/res/AssetFileDescriptor;
    .end local v20           #mode:Ljava/lang/String;
    :pswitch_a
    const-string v5, "android.content.IContentProvider"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 251
    .local v19, method:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 252
    .local v27, stringArg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v13

    .line 254
    .local v13, args:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v27

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentProviderNative;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v25

    .line 256
    .local v25, responseBundle:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 258
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_a
    .end packed-switch
.end method
