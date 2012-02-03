.class public abstract Landroid/app/ISearchManager$Stub;
.super Landroid/os/Binder;
.source "ISearchManager.java"

# interfaces
.implements Landroid/app/ISearchManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ISearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ISearchManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.ISearchManager"

.field static final TRANSACTION_getGlobalSearchActivity:I = 0x3

.field static final TRANSACTION_getSearchableInfo:I = 0x1

.field static final TRANSACTION_getSearchablesInGlobalSearch:I = 0x2

.field static final TRANSACTION_getWebSearchActivity:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.app.ISearchManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ISearchManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/ISearchManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v1, 0x0

    .line 31
    :goto_0
    return-object v1

    .line 27
    :cond_0
    const-string v1, "android.app.ISearchManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/ISearchManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/app/ISearchManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 31
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/ISearchManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/ISearchManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v5, "android.app.ISearchManager"

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 43
    :sswitch_0
    const-string v3, "android.app.ISearchManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v3, "android.app.ISearchManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 56
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/ISearchManager$Stub;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    .line 57
    .local v1, _result:Landroid/app/SearchableInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {v1, p3, v4}, Landroid/app/SearchableInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v3, v4

    .line 65
    goto :goto_0

    .line 54
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_result:Landroid/app/SearchableInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_1

    .line 63
    .restart local v1       #_result:Landroid/app/SearchableInfo;
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 69
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_result:Landroid/app/SearchableInfo;
    :sswitch_2
    const-string v3, "android.app.ISearchManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getSearchablesInGlobalSearch()Ljava/util/List;

    move-result-object v2

    .line 71
    .local v2, _result:Ljava/util/List;,"Ljava/util/List<Landroid/app/SearchableInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v3, v4

    .line 73
    goto :goto_0

    .line 77
    .end local v2           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/SearchableInfo;>;"
    :sswitch_3
    const-string v3, "android.app.ISearchManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 79
    .local v1, _result:Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v1, :cond_2

    .line 81
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    invoke-virtual {v1, p3, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    move v3, v4

    .line 87
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 91
    .end local v1           #_result:Landroid/content/ComponentName;
    :sswitch_4
    const-string v3, "android.app.ISearchManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getWebSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 93
    .restart local v1       #_result:Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v1, :cond_3

    .line 95
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    invoke-virtual {v1, p3, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    move v3, v4

    .line 101
    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
