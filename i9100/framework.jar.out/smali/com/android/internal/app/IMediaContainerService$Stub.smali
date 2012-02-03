.class public abstract Lcom/android/internal/app/IMediaContainerService$Stub;
.super Landroid/os/Binder;
.source "IMediaContainerService.java"

# interfaces
.implements Lcom/android/internal/app/IMediaContainerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IMediaContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IMediaContainerService"

.field static final TRANSACTION_checkFreeStorage:I = 0x4

.field static final TRANSACTION_copyResource:I = 0x2

.field static final TRANSACTION_copyResourceToContainer:I = 0x1

.field static final TRANSACTION_getMinimalPackageInfo:I = 0x3

.field static final TRANSACTION_getObbInfo:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IMediaContainerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_0
    return-object v1

    .line 26
    :cond_0
    const-string v1, "com.android.internal.app.IMediaContainerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IMediaContainerService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/internal/app/IMediaContainerService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "com.android.internal.app.IMediaContainerService"

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v5, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 56
    .local v0, _arg0:Landroid/net/Uri;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/app/IMediaContainerService$Stub;->copyResourceToContainer(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 64
    goto :goto_0

    .line 53
    .end local v0           #_arg0:Landroid/net/Uri;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_arg3:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/Uri;
    goto :goto_1

    .line 68
    .end local v0           #_arg0:Landroid/net/Uri;
    :sswitch_2
    const-string v5, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 71
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 77
    .restart local v0       #_arg0:Landroid/net/Uri;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 78
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 83
    .local v1, _arg1:Landroid/os/ParcelFileDescriptor;
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IMediaContainerService$Stub;->copyResource(Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)Z

    move-result v4

    .line 84
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v4, :cond_3

    move v5, v6

    :goto_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 86
    goto :goto_0

    .line 74
    .end local v0           #_arg0:Landroid/net/Uri;
    .end local v1           #_arg1:Landroid/os/ParcelFileDescriptor;
    .end local v4           #_result:Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/Uri;
    goto :goto_2

    .line 81
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/ParcelFileDescriptor;
    goto :goto_3

    .restart local v4       #_result:Z
    :cond_3
    move v5, v8

    .line 85
    goto :goto_4

    .line 90
    .end local v0           #_arg0:Landroid/net/Uri;
    .end local v1           #_arg1:Landroid/os/ParcelFileDescriptor;
    .end local v4           #_result:Z
    :sswitch_3
    const-string v5, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 93
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 99
    .restart local v0       #_arg0:Landroid/net/Uri;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 100
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IMediaContainerService$Stub;->getMinimalPackageInfo(Landroid/net/Uri;I)Landroid/content/pm/PackageInfoLite;

    move-result-object v4

    .line 101
    .local v4, _result:Landroid/content/pm/PackageInfoLite;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v4, :cond_5

    .line 103
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    invoke-virtual {v4, p3, v6}, Landroid/content/pm/PackageInfoLite;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    move v5, v6

    .line 109
    goto/16 :goto_0

    .line 96
    .end local v0           #_arg0:Landroid/net/Uri;
    .end local v1           #_arg1:I
    .end local v4           #_result:Landroid/content/pm/PackageInfoLite;
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/Uri;
    goto :goto_5

    .line 107
    .restart local v1       #_arg1:I
    .restart local v4       #_result:Landroid/content/pm/PackageInfoLite;
    :cond_5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 113
    .end local v0           #_arg0:Landroid/net/Uri;
    .end local v1           #_arg1:I
    .end local v4           #_result:Landroid/content/pm/PackageInfoLite;
    :sswitch_4
    const-string v5, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    move v0, v6

    .line 117
    .local v0, _arg0:Z
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 118
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 123
    .local v1, _arg1:Landroid/net/Uri;
    :goto_8
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IMediaContainerService$Stub;->checkFreeStorage(ZLandroid/net/Uri;)Z

    move-result v4

    .line 124
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v4, :cond_8

    move v5, v6

    :goto_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 126
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Landroid/net/Uri;
    .end local v4           #_result:Z
    :cond_6
    move v0, v8

    .line 115
    goto :goto_7

    .line 121
    .restart local v0       #_arg0:Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/net/Uri;
    goto :goto_8

    .restart local v4       #_result:Z
    :cond_8
    move v5, v8

    .line 125
    goto :goto_9

    .line 130
    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Landroid/net/Uri;
    .end local v4           #_result:Z
    :sswitch_5
    const-string v5, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IMediaContainerService$Stub;->getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;

    move-result-object v4

    .line 134
    .local v4, _result:Landroid/content/res/ObbInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v4, :cond_9

    .line 136
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    invoke-virtual {v4, p3, v6}, Landroid/content/res/ObbInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a
    move v5, v6

    .line 142
    goto/16 :goto_0

    .line 140
    :cond_9
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
