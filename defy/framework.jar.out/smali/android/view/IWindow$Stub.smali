.class public abstract Landroid/view/IWindow$Stub;
.super Landroid/os/Binder;
.source "IWindow.java"

# interfaces
.implements Landroid/view/IWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindow$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindow"

.field static final TRANSACTION_closeSystemDialogs:I = 0x6

.field static final TRANSACTION_dispatchAppVisibility:I = 0x3

.field static final TRANSACTION_dispatchGetNewSurface:I = 0x4

.field static final TRANSACTION_dispatchWallpaperCommand:I = 0x8

.field static final TRANSACTION_dispatchWallpaperOffsets:I = 0x7

.field static final TRANSACTION_executeCommand:I = 0x1

.field static final TRANSACTION_resized:I = 0x2

.field static final TRANSACTION_windowFocusChanged:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.IWindow"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindow$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "android.view.IWindow"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindow;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/IWindow;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/IWindow$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindow$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string v8, "android.view.IWindow"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "android.view.IWindow"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    goto :goto_0

    :sswitch_1
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .local v3, _arg2:Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/IWindow$Stub;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    move v0, v7

    goto :goto_0

    .end local v3           #_arg2:Landroid/os/ParcelFileDescriptor;
    :cond_0
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .local v3, _arg2:Landroid/graphics/Rect;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .local v4, _arg3:Landroid/graphics/Rect;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v5, v7

    .local v5, _arg4:Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Configuration;

    .local v6, _arg5:Landroid/content/res/Configuration;
    :goto_5
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindow$Stub;->resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V

    move v0, v7

    goto :goto_0

    .end local v3           #_arg2:Landroid/graphics/Rect;
    .end local v4           #_arg3:Landroid/graphics/Rect;
    .end local v5           #_arg4:Z
    .end local v6           #_arg5:Landroid/content/res/Configuration;
    :cond_1
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/graphics/Rect;
    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .restart local v4       #_arg3:Landroid/graphics/Rect;
    goto :goto_3

    :cond_3
    move v5, v9

    goto :goto_4

    .restart local v5       #_arg4:Z
    :cond_4
    const/4 v6, 0x0

    .restart local v6       #_arg5:Landroid/content/res/Configuration;
    goto :goto_5

    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/graphics/Rect;
    .end local v4           #_arg3:Landroid/graphics/Rect;
    .end local v5           #_arg4:Z
    .end local v6           #_arg5:Landroid/content/res/Configuration;
    :sswitch_3
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v1, v7

    .local v1, _arg0:Z
    :goto_6
    invoke-virtual {p0, v1}, Landroid/view/IWindow$Stub;->dispatchAppVisibility(Z)V

    move v0, v7

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_5
    move v1, v9

    goto :goto_6

    :sswitch_4
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/IWindow$Stub;->dispatchGetNewSurface()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v1, v7

    .restart local v1       #_arg0:Z
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v2, v7

    .local v2, _arg1:Z
    :goto_8
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindow$Stub;->windowFocusChanged(ZZ)V

    move v0, v7

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Z
    :cond_6
    move v1, v9

    goto :goto_7

    .restart local v1       #_arg0:Z
    :cond_7
    move v2, v9

    goto :goto_8

    .end local v1           #_arg0:Z
    :sswitch_6
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/view/IWindow$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    move v0, v7

    goto/16 :goto_0

    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_7
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .local v1, _arg0:F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .local v2, _arg1:F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .local v3, _arg2:F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .local v4, _arg3:F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move v5, v7

    .restart local v5       #_arg4:Z
    :goto_9
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindow$Stub;->dispatchWallpaperOffsets(FFFFZ)V

    move v0, v7

    goto/16 :goto_0

    .end local v5           #_arg4:Z
    :cond_8
    move v5, v9

    goto :goto_9

    .end local v1           #_arg0:F
    .end local v2           #_arg1:F
    .end local v3           #_arg2:F
    .end local v4           #_arg3:F
    :sswitch_8
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .local v5, _arg4:Landroid/os/Bundle;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    move v6, v7

    .local v6, _arg5:Z
    :goto_b
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindow$Stub;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    move v0, v7

    goto/16 :goto_0

    .end local v5           #_arg4:Landroid/os/Bundle;
    .end local v6           #_arg5:Z
    :cond_9
    const/4 v5, 0x0

    .restart local v5       #_arg4:Landroid/os/Bundle;
    goto :goto_a

    :cond_a
    move v6, v9

    goto :goto_b

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
