.class public abstract Lcom/samsung/ITheme$Stub;
.super Landroid/os/Binder;
.source "ITheme.java"

# interfaces
.implements Lcom/samsung/ITheme;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ITheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ITheme$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.ITheme"

.field static final TRANSACTION_getColorCache:I = 0x2

.field static final TRANSACTION_getCurrentThemePackage:I = 0x3

.field static final TRANSACTION_getCurrentThemePackagePath:I = 0x6

.field static final TRANSACTION_getCurrentThemeTitle:I = 0x5

.field static final TRANSACTION_getInstalledThemePackageList:I = 0x7

.field static final TRANSACTION_getSkinSettings:I = 0x4

.field static final TRANSACTION_isThemePackageCertified:I = 0xa

.field static final TRANSACTION_reportBadThemePackage:I = 0x8

.field static final TRANSACTION_setCurrentThemePackage:I = 0x1

.field static final TRANSACTION_setDefaultTheme:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.samsung.ITheme"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/ITheme$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/ITheme;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v1, 0x0

    .line 34
    :goto_0
    return-object v1

    .line 30
    :cond_0
    const-string v1, "com.samsung.ITheme"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/ITheme;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/samsung/ITheme;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/ITheme$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/ITheme$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
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

    const-string v5, "com.samsung.ITheme"

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 46
    :sswitch_0
    const-string v3, "com.samsung.ITheme"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 47
    goto :goto_0

    .line 51
    :sswitch_1
    const-string v3, "com.samsung.ITheme"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 56
    .local v1, _arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lcom/samsung/ITheme$Stub;->setCurrentThemePackage(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    .line 57
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v2, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 59
    goto :goto_0

    :cond_0
    move v3, v6

    .line 58
    goto :goto_1

    .line 63
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #_result:Z
    :sswitch_2
    const-string v3, "com.samsung.ITheme"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 68
    .restart local v1       #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lcom/samsung/ITheme$Stub;->getColorCache(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 69
    .local v2, _result:Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    move v3, v4

    .line 71
    goto :goto_0

    .line 75
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #_result:Ljava/util/Map;
    :sswitch_3
    const-string v3, "com.samsung.ITheme"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/samsung/ITheme$Stub;->getCurrentThemePackage()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 79
    goto :goto_0

    .line 83
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_4
    const-string v3, "com.samsung.ITheme"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/ITheme$Stub;->getSkinSettings(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 87
    .local v2, _result:Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    move v3, v4

    .line 89
    goto :goto_0

    .line 93
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/util/Map;
    :sswitch_5
    const-string v3, "com.samsung.ITheme"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/samsung/ITheme$Stub;->getCurrentThemeTitle()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 97
    goto :goto_0

    .line 101
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_6
    const-string v3, "com.samsung.ITheme"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/ITheme$Stub;->getCurrentThemePackagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 107
    goto/16 :goto_0

    .line 111
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_7
    const-string v3, "com.samsung.ITheme"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/samsung/ITheme$Stub;->getInstalledThemePackageList()Ljava/util/List;

    move-result-object v2

    .line 113
    .local v2, _result:Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    move v3, v4

    .line 115
    goto/16 :goto_0

    .line 119
    .end local v2           #_result:Ljava/util/List;
    :sswitch_8
    const-string v3, "com.samsung.ITheme"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/ITheme$Stub;->reportBadThemePackage(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 124
    goto/16 :goto_0

    .line 128
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_9
    const-string v3, "com.samsung.ITheme"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/ITheme$Stub;->setDefaultTheme(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 133
    goto/16 :goto_0

    .line 137
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_a
    const-string v3, "com.samsung.ITheme"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/ITheme$Stub;->isThemePackageCertified(Ljava/lang/String;)Z

    move-result v2

    .line 141
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v2, :cond_1

    move v3, v4

    :goto_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 143
    goto/16 :goto_0

    :cond_1
    move v3, v6

    .line 142
    goto :goto_2

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
