.class public abstract Landroid/view/IWindowSession$Stub;
.super Landroid/os/Binder;
.source "IWindowSession.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowSession"

.field static final TRANSACTION_add:I = 0x1

.field static final TRANSACTION_addWithoutInputChannel:I = 0x2

.field static final TRANSACTION_copySurface:I = 0x12

.field static final TRANSACTION_finishDrawing:I = 0x8

.field static final TRANSACTION_getDisplayFrame:I = 0x7

.field static final TRANSACTION_getInTouchMode:I = 0xa

.field static final TRANSACTION_moveChildWindowOnMyFlip:I = 0x11

.field static final TRANSACTION_performHapticFeedback:I = 0xb

.field static final TRANSACTION_relayout:I = 0x4

.field static final TRANSACTION_remove:I = 0x3

.field static final TRANSACTION_sendWallpaperCommand:I = 0xe

.field static final TRANSACTION_setInTouchMode:I = 0x9

.field static final TRANSACTION_setInsets:I = 0x6

.field static final TRANSACTION_setSurfaceFlags:I = 0x10

.field static final TRANSACTION_setTransparentRegion:I = 0x5

.field static final TRANSACTION_setWallpaperPosition:I = 0xc

.field static final TRANSACTION_wallpaperCommandComplete:I = 0xf

.field static final TRANSACTION_wallpaperOffsetsComplete:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 35
    :goto_0
    return-object v1

    .line 31
    :cond_0
    const-string v1, "android.view.IWindowSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindowSession;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/view/IWindowSession;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/IWindowSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 412
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 47
    :sswitch_0
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v5, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 56
    .local v6, _arg0:Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 57
    sget-object v5, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 63
    .local v7, _arg1:Landroid/view/WindowManager$LayoutParams;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 65
    .local v8, _arg2:I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 67
    .local v9, _arg3:Landroid/graphics/Rect;
    new-instance v10, Landroid/view/InputChannel;

    invoke-direct {v10}, Landroid/view/InputChannel;-><init>()V

    .local v10, _arg4:Landroid/view/InputChannel;
    move-object/from16 v5, p0

    .line 68
    invoke-virtual/range {v5 .. v10}, Landroid/view/IWindowSession$Stub;->add(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v17

    .line 69
    .local v17, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    if-eqz v9, :cond_1

    .line 72
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    const/4 v5, 0x1

    move-object v0, v9

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 78
    :goto_2
    if-eqz v10, :cond_2

    .line 79
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    const/4 v5, 0x1

    move-object v0, v10

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 85
    :goto_3
    const/4 v5, 0x1

    goto :goto_0

    .line 60
    .end local v7           #_arg1:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #_arg2:I
    .end local v9           #_arg3:Landroid/graphics/Rect;
    .end local v10           #_arg4:Landroid/view/InputChannel;
    .end local v17           #_result:I
    :cond_0
    const/4 v7, 0x0

    .restart local v7       #_arg1:Landroid/view/WindowManager$LayoutParams;
    goto :goto_1

    .line 76
    .restart local v8       #_arg2:I
    .restart local v9       #_arg3:Landroid/graphics/Rect;
    .restart local v10       #_arg4:Landroid/view/InputChannel;
    .restart local v17       #_result:I
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 83
    :cond_2
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 89
    .end local v6           #_arg0:Landroid/view/IWindow;
    .end local v7           #_arg1:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #_arg2:I
    .end local v9           #_arg3:Landroid/graphics/Rect;
    .end local v10           #_arg4:Landroid/view/InputChannel;
    .end local v17           #_result:I
    :sswitch_2
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 93
    .restart local v6       #_arg0:Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 94
    sget-object v5, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 100
    .restart local v7       #_arg1:Landroid/view/WindowManager$LayoutParams;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 102
    .restart local v8       #_arg2:I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 103
    .restart local v9       #_arg3:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/IWindowSession$Stub;->addWithoutInputChannel(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I

    move-result v17

    .line 104
    .restart local v17       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    if-eqz v9, :cond_4

    .line 107
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    const/4 v5, 0x1

    move-object v0, v9

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 113
    :goto_5
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 97
    .end local v7           #_arg1:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #_arg2:I
    .end local v9           #_arg3:Landroid/graphics/Rect;
    .end local v17           #_result:I
    :cond_3
    const/4 v7, 0x0

    .restart local v7       #_arg1:Landroid/view/WindowManager$LayoutParams;
    goto :goto_4

    .line 111
    .restart local v8       #_arg2:I
    .restart local v9       #_arg3:Landroid/graphics/Rect;
    .restart local v17       #_result:I
    :cond_4
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 117
    .end local v6           #_arg0:Landroid/view/IWindow;
    .end local v7           #_arg1:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #_arg2:I
    .end local v9           #_arg3:Landroid/graphics/Rect;
    .end local v17           #_result:I
    :sswitch_3
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 120
    .restart local v6       #_arg0:Landroid/view/IWindow;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->remove(Landroid/view/IWindow;)V

    .line 121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 126
    .end local v6           #_arg0:Landroid/view/IWindow;
    :sswitch_4
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 130
    .restart local v6       #_arg0:Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 131
    sget-object v5, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 137
    .restart local v7       #_arg1:Landroid/view/WindowManager$LayoutParams;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 139
    .restart local v8       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 141
    .local v9, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 143
    .local v10, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    move v11, v5

    .line 145
    .local v11, _arg5:Z
    :goto_7
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 147
    .local v12, _arg6:Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 149
    .local v13, _arg7:Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 151
    .local v14, _arg8:Landroid/graphics/Rect;
    new-instance v15, Landroid/content/res/Configuration;

    invoke-direct {v15}, Landroid/content/res/Configuration;-><init>()V

    .line 153
    .local v15, _arg9:Landroid/content/res/Configuration;
    new-instance v16, Landroid/view/Surface;

    invoke-direct/range {v16 .. v16}, Landroid/view/Surface;-><init>()V

    .local v16, _arg10:Landroid/view/Surface;
    move-object/from16 v5, p0

    .line 154
    invoke-virtual/range {v5 .. v16}, Landroid/view/IWindowSession$Stub;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v17

    .line 155
    .restart local v17       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    if-eqz v12, :cond_7

    .line 158
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    const/4 v5, 0x1

    move-object v0, v12

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 164
    :goto_8
    if-eqz v13, :cond_8

    .line 165
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v5, 0x1

    move-object v0, v13

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 171
    :goto_9
    if-eqz v14, :cond_9

    .line 172
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    const/4 v5, 0x1

    move-object v0, v14

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 178
    :goto_a
    if-eqz v15, :cond_a

    .line 179
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v5, 0x1

    move-object v0, v15

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 185
    :goto_b
    if-eqz v16, :cond_b

    .line 186
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v5, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 192
    :goto_c
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 134
    .end local v7           #_arg1:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #_arg2:I
    .end local v9           #_arg3:I
    .end local v10           #_arg4:I
    .end local v11           #_arg5:Z
    .end local v12           #_arg6:Landroid/graphics/Rect;
    .end local v13           #_arg7:Landroid/graphics/Rect;
    .end local v14           #_arg8:Landroid/graphics/Rect;
    .end local v15           #_arg9:Landroid/content/res/Configuration;
    .end local v16           #_arg10:Landroid/view/Surface;
    .end local v17           #_result:I
    :cond_5
    const/4 v7, 0x0

    .restart local v7       #_arg1:Landroid/view/WindowManager$LayoutParams;
    goto/16 :goto_6

    .line 143
    .restart local v8       #_arg2:I
    .restart local v9       #_arg3:I
    .restart local v10       #_arg4:I
    :cond_6
    const/4 v5, 0x0

    move v11, v5

    goto/16 :goto_7

    .line 162
    .restart local v11       #_arg5:Z
    .restart local v12       #_arg6:Landroid/graphics/Rect;
    .restart local v13       #_arg7:Landroid/graphics/Rect;
    .restart local v14       #_arg8:Landroid/graphics/Rect;
    .restart local v15       #_arg9:Landroid/content/res/Configuration;
    .restart local v16       #_arg10:Landroid/view/Surface;
    .restart local v17       #_result:I
    :cond_7
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 169
    :cond_8
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 176
    :cond_9
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 183
    :cond_a
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 190
    :cond_b
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 196
    .end local v6           #_arg0:Landroid/view/IWindow;
    .end local v7           #_arg1:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #_arg2:I
    .end local v9           #_arg3:I
    .end local v10           #_arg4:I
    .end local v11           #_arg5:Z
    .end local v12           #_arg6:Landroid/graphics/Rect;
    .end local v13           #_arg7:Landroid/graphics/Rect;
    .end local v14           #_arg8:Landroid/graphics/Rect;
    .end local v15           #_arg9:Landroid/content/res/Configuration;
    .end local v16           #_arg10:Landroid/view/Surface;
    .end local v17           #_result:I
    :sswitch_5
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 200
    .restart local v6       #_arg0:Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    .line 201
    sget-object v5, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Region;

    .line 206
    .local v7, _arg1:Landroid/graphics/Region;
    :goto_d
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    .line 207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 204
    .end local v7           #_arg1:Landroid/graphics/Region;
    :cond_c
    const/4 v7, 0x0

    .restart local v7       #_arg1:Landroid/graphics/Region;
    goto :goto_d

    .line 212
    .end local v6           #_arg0:Landroid/view/IWindow;
    .end local v7           #_arg1:Landroid/graphics/Region;
    :sswitch_6
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 216
    .restart local v6       #_arg0:Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 218
    .local v7, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    .line 219
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 225
    .local v8, _arg2:Landroid/graphics/Rect;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    .line 226
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 231
    .local v9, _arg3:Landroid/graphics/Rect;
    :goto_f
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/IWindowSession$Stub;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 222
    .end local v8           #_arg2:Landroid/graphics/Rect;
    .end local v9           #_arg3:Landroid/graphics/Rect;
    :cond_d
    const/4 v8, 0x0

    .restart local v8       #_arg2:Landroid/graphics/Rect;
    goto :goto_e

    .line 229
    :cond_e
    const/4 v9, 0x0

    .restart local v9       #_arg3:Landroid/graphics/Rect;
    goto :goto_f

    .line 237
    .end local v6           #_arg0:Landroid/view/IWindow;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:Landroid/graphics/Rect;
    .end local v9           #_arg3:Landroid/graphics/Rect;
    :sswitch_7
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 241
    .restart local v6       #_arg0:Landroid/view/IWindow;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 242
    .local v7, _arg1:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v7, :cond_f

    .line 245
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v5, 0x1

    move-object v0, v7

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 251
    :goto_10
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 249
    :cond_f
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 255
    .end local v6           #_arg0:Landroid/view/IWindow;
    .end local v7           #_arg1:Landroid/graphics/Rect;
    :sswitch_8
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 258
    .restart local v6       #_arg0:Landroid/view/IWindow;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->finishDrawing(Landroid/view/IWindow;)V

    .line 259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 264
    .end local v6           #_arg0:Landroid/view/IWindow;
    :sswitch_9
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    move v6, v5

    .line 267
    .local v6, _arg0:Z
    :goto_11
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->setInTouchMode(Z)V

    .line 268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 266
    .end local v6           #_arg0:Z
    :cond_10
    const/4 v5, 0x0

    move v6, v5

    goto :goto_11

    .line 273
    :sswitch_a
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->getInTouchMode()Z

    move-result v17

    .line 275
    .local v17, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    if-eqz v17, :cond_11

    const/4 v5, 0x1

    :goto_12
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 276
    :cond_11
    const/4 v5, 0x0

    goto :goto_12

    .line 281
    .end local v17           #_result:Z
    :sswitch_b
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 285
    .local v6, _arg0:Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 287
    .local v7, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    move v8, v5

    .line 288
    .local v8, _arg2:Z
    :goto_13
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowSession$Stub;->performHapticFeedback(Landroid/view/IWindow;IZ)Z

    move-result v17

    .line 289
    .restart local v17       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    if-eqz v17, :cond_13

    const/4 v5, 0x1

    :goto_14
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 287
    .end local v8           #_arg2:Z
    .end local v17           #_result:Z
    :cond_12
    const/4 v5, 0x0

    move v8, v5

    goto :goto_13

    .line 290
    .restart local v8       #_arg2:Z
    .restart local v17       #_result:Z
    :cond_13
    const/4 v5, 0x0

    goto :goto_14

    .line 295
    .end local v6           #_arg0:Landroid/view/IWindow;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:Z
    .end local v17           #_result:Z
    :sswitch_c
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 299
    .local v6, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 301
    .local v7, _arg1:F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 303
    .local v8, _arg2:F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 305
    .local v9, _arg3:F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .local v10, _arg4:F
    move-object/from16 v5, p0

    .line 306
    invoke-virtual/range {v5 .. v10}, Landroid/view/IWindowSession$Stub;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V

    .line 307
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 312
    .end local v6           #_arg0:Landroid/os/IBinder;
    .end local v7           #_arg1:F
    .end local v8           #_arg2:F
    .end local v9           #_arg3:F
    .end local v10           #_arg4:F
    :sswitch_d
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 315
    .restart local v6       #_arg0:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    .line 316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 321
    .end local v6           #_arg0:Landroid/os/IBinder;
    :sswitch_e
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 325
    .restart local v6       #_arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 327
    .local v7, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 329
    .local v8, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 331
    .local v9, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 333
    .local v10, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    .line 334
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 340
    .local v11, _arg5:Landroid/os/Bundle;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/4 v5, 0x1

    move v12, v5

    .local v12, _arg6:Z
    :goto_16
    move-object/from16 v5, p0

    .line 341
    invoke-virtual/range {v5 .. v12}, Landroid/view/IWindowSession$Stub;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v17

    .line 342
    .local v17, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    if-eqz v17, :cond_16

    .line 344
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    const/4 v5, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 350
    :goto_17
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 337
    .end local v11           #_arg5:Landroid/os/Bundle;
    .end local v12           #_arg6:Z
    .end local v17           #_result:Landroid/os/Bundle;
    :cond_14
    const/4 v11, 0x0

    .restart local v11       #_arg5:Landroid/os/Bundle;
    goto :goto_15

    .line 340
    :cond_15
    const/4 v5, 0x0

    move v12, v5

    goto :goto_16

    .line 348
    .restart local v12       #_arg6:Z
    .restart local v17       #_result:Landroid/os/Bundle;
    :cond_16
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 354
    .end local v6           #_arg0:Landroid/os/IBinder;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v9           #_arg3:I
    .end local v10           #_arg4:I
    .end local v11           #_arg5:Landroid/os/Bundle;
    .end local v12           #_arg6:Z
    .end local v17           #_result:Landroid/os/Bundle;
    :sswitch_f
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 358
    .restart local v6       #_arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17

    .line 359
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 364
    .local v7, _arg1:Landroid/os/Bundle;
    :goto_18
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 362
    .end local v7           #_arg1:Landroid/os/Bundle;
    :cond_17
    const/4 v7, 0x0

    .restart local v7       #_arg1:Landroid/os/Bundle;
    goto :goto_18

    .line 370
    .end local v6           #_arg0:Landroid/os/IBinder;
    .end local v7           #_arg1:Landroid/os/Bundle;
    :sswitch_10
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 374
    .local v6, _arg0:Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 376
    .local v7, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 377
    .restart local v8       #_arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowSession$Stub;->setSurfaceFlags(Landroid/view/IWindow;II)V

    .line 378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 383
    .end local v6           #_arg0:Landroid/view/IWindow;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:I
    :sswitch_11
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 387
    .restart local v6       #_arg0:Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v7

    .line 389
    .local v7, _arg1:Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 391
    .restart local v8       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 393
    .restart local v9       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .line 395
    .local v10, _arg4:F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, _arg5:I
    move-object/from16 v5, p0

    .line 396
    invoke-virtual/range {v5 .. v11}, Landroid/view/IWindowSession$Stub;->moveChildWindowOnMyFlip(Landroid/view/IWindow;Landroid/view/IWindow;IIFI)V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 402
    .end local v6           #_arg0:Landroid/view/IWindow;
    .end local v7           #_arg1:Landroid/view/IWindow;
    .end local v8           #_arg2:I
    .end local v9           #_arg3:I
    .end local v10           #_arg4:F
    .end local v11           #_arg5:I
    :sswitch_12
    const-string v5, "android.view.IWindowSession"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 406
    .restart local v6       #_arg0:Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v7

    .line 407
    .restart local v7       #_arg1:Landroid/view/IWindow;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->copySurface(Landroid/view/IWindow;Landroid/view/IWindow;)V

    .line 408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
