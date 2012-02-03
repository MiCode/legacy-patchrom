.class public abstract Landroid/sec/clipboard/data/IClipboardDataList$Stub;
.super Landroid/os/Binder;
.source "IClipboardDataList.java"

# interfaces
.implements Landroid/sec/clipboard/data/IClipboardDataList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/data/IClipboardDataList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/data/IClipboardDataList$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.clipboard.data.IClipboardDataList"

.field static final TRANSACTION_getItem:I = 0x2

.field static final TRANSACTION_size:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {p0, p0, v0}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/data/IClipboardDataList;
    .locals 2
    .parameter "obj"

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v1, 0x0

    .line 64
    :goto_0
    return-object v1

    .line 60
    :cond_0
    const-string v1, "android.sec.clipboard.data.IClipboardDataList"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/sec/clipboard/data/IClipboardDataList;

    if-eqz v1, :cond_1

    .line 62
    check-cast v0, Landroid/sec/clipboard/data/IClipboardDataList;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 64
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/sec/clipboard/data/IClipboardDataList$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/sec/clipboard/data/IClipboardDataList$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 68
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v3, 0x1

    const-string v4, "android.sec.clipboard.data.IClipboardDataList"

    .line 72
    sparse-switch p1, :sswitch_data_0

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 76
    :sswitch_0
    const-string v2, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 77
    goto :goto_0

    .line 81
    :sswitch_1
    const-string v2, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;->size()I

    move-result v1

    .line 83
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 85
    goto :goto_0

    .line 89
    .end local v1           #_result:I
    :sswitch_2
    const-string v2, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 93
    .local v1, _result:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    invoke-virtual {v1, p3, v3}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v2, v3

    .line 101
    goto :goto_0

    .line 99
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 72
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
