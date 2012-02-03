.class public abstract Landroid/database/BulkCursorNative;
.super Landroid/os/Binder;
.source "BulkCursorNative.java"

# interfaces
.implements Landroid/database/IBulkCursor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.content.IBulkCursor"

    invoke-virtual {p0, p0, v0}, Landroid/database/BulkCursorNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/database/IBulkCursor;
    .locals 2
    .parameter "obj"

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    const/4 v1, 0x0

    .line 55
    :goto_0
    return-object v1

    .line 50
    :cond_0
    const-string v1, "android.content.IBulkCursor"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/database/IBulkCursor;

    .line 51
    .local v0, in:Landroid/database/IBulkCursor;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 52
    goto :goto_0

    .line 55
    :cond_1
    new-instance v1, Landroid/database/BulkCursorProxy;

    invoke-direct {v1, p0}, Landroid/database/BulkCursorProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 186
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
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
    .line 62
    packed-switch p1, :pswitch_data_0

    .line 181
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v16

    :goto_0
    return v16

    .line 64
    :pswitch_0
    :try_start_0
    const-string v16, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 66
    .local v13, startPos:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/database/BulkCursorNative;->getWindow(I)Landroid/database/CursorWindow;

    move-result-object v15

    .line 67
    .local v15, window:Landroid/database/CursorWindow;
    if-nez v15, :cond_0

    .line 68
    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    const/16 v16, 0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    const/16 v16, 0x0

    move-object v0, v15

    move-object/from16 v1, p3

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/database/CursorWindow;->writeToParcel(Landroid/os/Parcel;I)V

    .line 74
    const/16 v16, 0x1

    goto :goto_0

    .line 78
    .end local v13           #startPos:I
    .end local v15           #window:Landroid/database/CursorWindow;
    :pswitch_1
    const-string v16, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/database/BulkCursorNative;->count()I

    move-result v4

    .line 80
    .local v4, count:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/16 v16, 0x1

    goto :goto_0

    .line 86
    .end local v4           #count:I
    :pswitch_2
    const-string v16, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/database/BulkCursorNative;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, columnNames:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    move-object v0, v3

    array-length v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    array-length v8, v3

    .line 91
    .local v8, length:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v8, :cond_1

    .line 92
    aget-object v16, v3, v7

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 94
    :cond_1
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 98
    .end local v3           #columnNames:[Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #length:I
    :pswitch_3
    const-string v16, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/database/BulkCursorNative;->deactivate()V

    .line 100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 105
    :pswitch_4
    const-string v16, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/database/BulkCursorNative;->close()V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 112
    :pswitch_5
    const-string v16, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v9

    .line 115
    .local v9, observer:Landroid/database/IContentObserver;
    sget-object v16, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/database/CursorWindow;

    .line 116
    .restart local v15       #window:Landroid/database/CursorWindow;
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/database/BulkCursorNative;->requery(Landroid/database/IContentObserver;Landroid/database/CursorWindow;)I

    move-result v4

    .line 117
    .restart local v4       #count:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/database/BulkCursorNative;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 120
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 124
    .end local v4           #count:I
    .end local v9           #observer:Landroid/database/IContentObserver;
    .end local v15           #window:Landroid/database/CursorWindow;
    :pswitch_6
    const-string v16, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    const/16 v16, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v14

    .line 128
    .local v14, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/database/BulkCursorNative;->updateRows(Ljava/util/Map;)Z

    move-result v11

    .line 129
    .local v11, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    const/16 v16, 0x1

    move v0, v11

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    const/16 v16, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 130
    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    .line 135
    .end local v11           #result:Z
    .end local v14           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :pswitch_7
    const-string v16, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 137
    .local v10, position:I
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/database/BulkCursorNative;->deleteRow(I)Z

    move-result v11

    .line 138
    .restart local v11       #result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    const/16 v16, 0x1

    move v0, v11

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    const/16 v16, 0x1

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 139
    :cond_3
    const/16 v16, 0x0

    goto :goto_3

    .line 144
    .end local v10           #position:I
    .end local v11           #result:Z
    :pswitch_8
    const-string v16, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 146
    .restart local v10       #position:I
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/database/BulkCursorNative;->onMove(I)V

    .line 147
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 152
    .end local v10           #position:I
    :pswitch_9
    const-string v16, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p0 .. p0}, Landroid/database/BulkCursorNative;->getWantsAllOnMoveCalls()Z

    move-result v11

    .line 154
    .restart local v11       #result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v11, :cond_4

    const/16 v16, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 155
    :cond_4
    const/16 v16, 0x0

    goto :goto_4

    .line 160
    .end local v11           #result:Z
    :pswitch_a
    const-string v16, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Landroid/database/BulkCursorNative;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 162
    .local v6, extras:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    move-object/from16 v0, p3

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 164
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 168
    .end local v6           #extras:Landroid/os/Bundle;
    :pswitch_b
    const-string v16, "android.content.IBulkCursor"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 170
    .restart local v6       #extras:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/database/BulkCursorNative;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v12

    .line 171
    .local v12, returnExtras:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    move-object/from16 v0, p3

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 176
    .end local v6           #extras:Landroid/os/Bundle;
    .end local v12           #returnExtras:Landroid/os/Bundle;
    :catch_0
    move-exception v16

    move-object/from16 v5, v16

    .line 177
    .local v5, e:Ljava/lang/Exception;
    move-object/from16 v0, p3

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    .line 178
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_4
    .end packed-switch
.end method
