.class public abstract Landroid/app/enterprise/IVpnInfoPolicy$Stub;
.super Landroid/os/Binder;
.source "IVpnInfoPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IVpnInfoPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IVpnInfoPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IVpnInfoPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IVpnInfoPolicy"

.field static final TRANSACTION_createProfile:I = 0x1

.field static final TRANSACTION_getId:I = 0x9

.field static final TRANSACTION_getName:I = 0x7

.field static final TRANSACTION_getServerName:I = 0x8

.field static final TRANSACTION_getState:I = 0xa

.field static final TRANSACTION_getType:I = 0x6

.field static final TRANSACTION_setId:I = 0x4

.field static final TRANSACTION_setName:I = 0x2

.field static final TRANSACTION_setServerName:I = 0x3

.field static final TRANSACTION_setState:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.app.enterprise.IVpnInfoPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IVpnInfoPolicy;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v1, 0x0

    .line 33
    :goto_0
    return-object v1

    .line 29
    :cond_0
    const-string v1, "android.app.enterprise.IVpnInfoPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/app/enterprise/IVpnInfoPolicy;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/enterprise/IVpnInfoPolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
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

    const-string v4, "android.app.enterprise.IVpnInfoPolicy"

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 45
    :sswitch_0
    const-string v2, "android.app.enterprise.IVpnInfoPolicy"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v2, "android.app.enterprise.IVpnInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;->createProfile(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 55
    goto :goto_0

    .line 59
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v2, "android.app.enterprise.IVpnInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;->setName(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 64
    goto :goto_0

    .line 68
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_3
    const-string v2, "android.app.enterprise.IVpnInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;->setServerName(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 73
    goto :goto_0

    .line 77
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_4
    const-string v2, "android.app.enterprise.IVpnInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;->setId(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 82
    goto :goto_0

    .line 86
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_5
    const-string v2, "android.app.enterprise.IVpnInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;->setState(I)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 91
    goto :goto_0

    .line 95
    .end local v0           #_arg0:I
    :sswitch_6
    const-string v2, "android.app.enterprise.IVpnInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;->getType()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 99
    goto :goto_0

    .line 103
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_7
    const-string v2, "android.app.enterprise.IVpnInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;->getName()Ljava/lang/String;

    move-result-object v1

    .line 105
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 107
    goto :goto_0

    .line 111
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_8
    const-string v2, "android.app.enterprise.IVpnInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;->getServerName()Ljava/lang/String;

    move-result-object v1

    .line 113
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 115
    goto/16 :goto_0

    .line 119
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_9
    const-string v2, "android.app.enterprise.IVpnInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;->getId()Ljava/lang/String;

    move-result-object v1

    .line 121
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 123
    goto/16 :goto_0

    .line 127
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v2, "android.app.enterprise.IVpnInfoPolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;->getState()Ljava/lang/String;

    move-result-object v1

    .line 129
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 131
    goto/16 :goto_0

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
