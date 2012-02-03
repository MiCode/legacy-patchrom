.class public abstract Landroid/net/IThrottleManager$Stub;
.super Landroid/os/Binder;
.source "IThrottleManager.java"

# interfaces
.implements Landroid/net/IThrottleManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IThrottleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IThrottleManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IThrottleManager"

.field static final TRANSACTION_getByteCount:I = 0x1

.field static final TRANSACTION_getCliffLevel:I = 0x6

.field static final TRANSACTION_getCliffThreshold:I = 0x5

.field static final TRANSACTION_getHelpUri:I = 0x7

.field static final TRANSACTION_getPeriodStartTime:I = 0x4

.field static final TRANSACTION_getResetTime:I = 0x3

.field static final TRANSACTION_getThrottle:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.net.IThrottleManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IThrottleManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IThrottleManager;
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
    const-string v1, "android.net.IThrottleManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IThrottleManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/net/IThrottleManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/IThrottleManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IThrottleManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v7, 0x1

    const-string v8, "android.net.IThrottleManager"

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 45
    :sswitch_0
    const-string v6, "android.net.IThrottleManager"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v6, "android.net.IThrottleManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 58
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 59
    .local v3, _arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/IThrottleManager$Stub;->getByteCount(Ljava/lang/String;III)J

    move-result-wide v4

    .line 60
    .local v4, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move v6, v7

    .line 62
    goto :goto_0

    .line 66
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v3           #_arg3:I
    .end local v4           #_result:J
    :sswitch_2
    const-string v6, "android.net.IThrottleManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IThrottleManager$Stub;->getThrottle(Ljava/lang/String;)I

    move-result v4

    .line 70
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 72
    goto :goto_0

    .line 76
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_3
    const-string v6, "android.net.IThrottleManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IThrottleManager$Stub;->getResetTime(Ljava/lang/String;)J

    move-result-wide v4

    .line 80
    .local v4, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move v6, v7

    .line 82
    goto :goto_0

    .line 86
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:J
    :sswitch_4
    const-string v6, "android.net.IThrottleManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IThrottleManager$Stub;->getPeriodStartTime(Ljava/lang/String;)J

    move-result-wide v4

    .line 90
    .restart local v4       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move v6, v7

    .line 92
    goto :goto_0

    .line 96
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:J
    :sswitch_5
    const-string v6, "android.net.IThrottleManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 101
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/net/IThrottleManager$Stub;->getCliffThreshold(Ljava/lang/String;I)J

    move-result-wide v4

    .line 102
    .restart local v4       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move v6, v7

    .line 104
    goto :goto_0

    .line 108
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v4           #_result:J
    :sswitch_6
    const-string v6, "android.net.IThrottleManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 113
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/net/IThrottleManager$Stub;->getCliffLevel(Ljava/lang/String;I)I

    move-result v4

    .line 114
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 116
    goto/16 :goto_0

    .line 120
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v4           #_result:I
    :sswitch_7
    const-string v6, "android.net.IThrottleManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Landroid/net/IThrottleManager$Stub;->getHelpUri()Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 124
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
