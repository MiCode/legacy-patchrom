.class public abstract Landroid/nfc/ILlcpSocket$Stub;
.super Landroid/os/Binder;
.source "ILlcpSocket.java"

# interfaces
.implements Landroid/nfc/ILlcpSocket;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/ILlcpSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/ILlcpSocket$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.ILlcpSocket"

.field static final TRANSACTION_close:I = 0x1

.field static final TRANSACTION_connect:I = 0x2

.field static final TRANSACTION_connectByName:I = 0x3

.field static final TRANSACTION_getLocalSap:I = 0x4

.field static final TRANSACTION_getLocalSocketMiu:I = 0x5

.field static final TRANSACTION_getLocalSocketRw:I = 0x6

.field static final TRANSACTION_getRemoteSocketMiu:I = 0x7

.field static final TRANSACTION_getRemoteSocketRw:I = 0x8

.field static final TRANSACTION_receive:I = 0x9

.field static final TRANSACTION_send:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.nfc.ILlcpSocket"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/ILlcpSocket$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/ILlcpSocket;
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
    const-string v1, "android.nfc.ILlcpSocket"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/ILlcpSocket;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/nfc/ILlcpSocket;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/nfc/ILlcpSocket$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/ILlcpSocket$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v5, 0x1

    const-string v6, "android.nfc.ILlcpSocket"

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v4, "android.nfc.ILlcpSocket"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v4, "android.nfc.ILlcpSocket"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/ILlcpSocket$Stub;->close(I)I

    move-result v3

    .line 54
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 56
    goto :goto_0

    .line 60
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_2
    const-string v4, "android.nfc.ILlcpSocket"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/nfc/ILlcpSocket$Stub;->connect(II)I

    move-result v3

    .line 66
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 68
    goto :goto_0

    .line 72
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v3           #_result:I
    :sswitch_3
    const-string v4, "android.nfc.ILlcpSocket"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/nfc/ILlcpSocket$Stub;->connectByName(ILjava/lang/String;)I

    move-result v3

    .line 78
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 80
    goto :goto_0

    .line 84
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_4
    const-string v4, "android.nfc.ILlcpSocket"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/ILlcpSocket$Stub;->getLocalSap(I)I

    move-result v3

    .line 88
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 90
    goto :goto_0

    .line 94
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_5
    const-string v4, "android.nfc.ILlcpSocket"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/ILlcpSocket$Stub;->getLocalSocketMiu(I)I

    move-result v3

    .line 98
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 100
    goto :goto_0

    .line 104
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_6
    const-string v4, "android.nfc.ILlcpSocket"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/ILlcpSocket$Stub;->getLocalSocketRw(I)I

    move-result v3

    .line 108
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 110
    goto/16 :goto_0

    .line 114
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_7
    const-string v4, "android.nfc.ILlcpSocket"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 117
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/ILlcpSocket$Stub;->getRemoteSocketMiu(I)I

    move-result v3

    .line 118
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 120
    goto/16 :goto_0

    .line 124
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_8
    const-string v4, "android.nfc.ILlcpSocket"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 127
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/ILlcpSocket$Stub;->getRemoteSocketRw(I)I

    move-result v3

    .line 128
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 130
    goto/16 :goto_0

    .line 134
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_9
    const-string v4, "android.nfc.ILlcpSocket"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 138
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 139
    .local v2, _arg1_length:I
    if-gez v2, :cond_0

    .line 140
    const/4 v1, 0x0

    .line 145
    .local v1, _arg1:[B
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/nfc/ILlcpSocket$Stub;->receive(I[B)I

    move-result v3

    .line 146
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    move v4, v5

    .line 149
    goto/16 :goto_0

    .line 143
    .end local v1           #_arg1:[B
    .end local v3           #_result:I
    :cond_0
    new-array v1, v2, [B

    .restart local v1       #_arg1:[B
    goto :goto_1

    .line 153
    .end local v0           #_arg0:I
    .end local v1           #_arg1:[B
    .end local v2           #_arg1_length:I
    :sswitch_a
    const-string v4, "android.nfc.ILlcpSocket"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 158
    .restart local v1       #_arg1:[B
    invoke-virtual {p0, v0, v1}, Landroid/nfc/ILlcpSocket$Stub;->send(I[B)I

    move-result v3

    .line 159
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 161
    goto/16 :goto_0

    .line 41
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
