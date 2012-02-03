.class public abstract Landroid/nfc/INfcTag$Stub;
.super Landroid/os/Binder;
.source "INfcTag.java"

# interfaces
.implements Landroid/nfc/INfcTag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcTag$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcTag"

.field static final TRANSACTION_close:I = 0x1

.field static final TRANSACTION_connect:I = 0x2

.field static final TRANSACTION_formatNdef:I = 0xe

.field static final TRANSACTION_getLastError:I = 0x9

.field static final TRANSACTION_getTechList:I = 0x4

.field static final TRANSACTION_getUid:I = 0x5

.field static final TRANSACTION_isNdef:I = 0x6

.field static final TRANSACTION_isPresent:I = 0x7

.field static final TRANSACTION_ndefIsWritable:I = 0xd

.field static final TRANSACTION_ndefMakeReadOnly:I = 0xc

.field static final TRANSACTION_ndefRead:I = 0xa

.field static final TRANSACTION_ndefWrite:I = 0xb

.field static final TRANSACTION_reconnect:I = 0x3

.field static final TRANSACTION_resetIsoDepTimeout:I = 0x10

.field static final TRANSACTION_setIsoDepTimeout:I = 0xf

.field static final TRANSACTION_transceive:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.nfc.INfcTag"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcTag$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcTag;
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
    const-string v1, "android.nfc.INfcTag"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcTag;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/nfc/INfcTag;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/nfc/INfcTag$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcTag$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v6, "android.nfc.INfcTag"

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 232
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->close(I)I

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
    const-string v4, "android.nfc.INfcTag"

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
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcTag$Stub;->connect(II)I

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
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->reconnect(I)I

    move-result v3

    .line 76
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 78
    goto :goto_0

    .line 82
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_4
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->getTechList(I)[I

    move-result-object v3

    .line 86
    .local v3, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    move v4, v5

    .line 88
    goto :goto_0

    .line 92
    .end local v0           #_arg0:I
    .end local v3           #_result:[I
    :sswitch_5
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->getUid(I)[B

    move-result-object v3

    .line 96
    .local v3, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    move v4, v5

    .line 98
    goto :goto_0

    .line 102
    .end local v0           #_arg0:I
    .end local v3           #_result:[B
    :sswitch_6
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 105
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->isNdef(I)Z

    move-result v3

    .line 106
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v3, :cond_0

    move v4, v5

    :goto_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 108
    goto/16 :goto_0

    :cond_0
    move v4, v7

    .line 107
    goto :goto_1

    .line 112
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_7
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->isPresent(I)Z

    move-result v3

    .line 116
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v3, :cond_1

    move v4, v5

    :goto_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 118
    goto/16 :goto_0

    :cond_1
    move v4, v7

    .line 117
    goto :goto_2

    .line 122
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_8
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 126
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 128
    .local v1, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v2, v5

    .line 129
    .local v2, _arg2:Z
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Landroid/nfc/INfcTag$Stub;->transceive(I[BZ)Landroid/nfc/TransceiveResult;

    move-result-object v3

    .line 130
    .local v3, _result:Landroid/nfc/TransceiveResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v3, :cond_3

    .line 132
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    invoke-virtual {v3, p3, v5}, Landroid/nfc/TransceiveResult;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    move v4, v5

    .line 138
    goto/16 :goto_0

    .end local v2           #_arg2:Z
    .end local v3           #_result:Landroid/nfc/TransceiveResult;
    :cond_2
    move v2, v7

    .line 128
    goto :goto_3

    .line 136
    .restart local v2       #_arg2:Z
    .restart local v3       #_result:Landroid/nfc/TransceiveResult;
    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 142
    .end local v0           #_arg0:I
    .end local v1           #_arg1:[B
    .end local v2           #_arg2:Z
    .end local v3           #_result:Landroid/nfc/TransceiveResult;
    :sswitch_9
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 145
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->getLastError(I)I

    move-result v3

    .line 146
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 148
    goto/16 :goto_0

    .line 152
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_a
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 155
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->ndefRead(I)Landroid/nfc/NdefMessage;

    move-result-object v3

    .line 156
    .local v3, _result:Landroid/nfc/NdefMessage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v3, :cond_4

    .line 158
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    invoke-virtual {v3, p3, v5}, Landroid/nfc/NdefMessage;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    move v4, v5

    .line 164
    goto/16 :goto_0

    .line 162
    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 168
    .end local v0           #_arg0:I
    .end local v3           #_result:Landroid/nfc/NdefMessage;
    :sswitch_b
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 172
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 173
    sget-object v4, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NdefMessage;

    .line 178
    .local v1, _arg1:Landroid/nfc/NdefMessage;
    :goto_6
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcTag$Stub;->ndefWrite(ILandroid/nfc/NdefMessage;)I

    move-result v3

    .line 179
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 181
    goto/16 :goto_0

    .line 176
    .end local v1           #_arg1:Landroid/nfc/NdefMessage;
    .end local v3           #_result:I
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/nfc/NdefMessage;
    goto :goto_6

    .line 185
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/nfc/NdefMessage;
    :sswitch_c
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 188
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->ndefMakeReadOnly(I)I

    move-result v3

    .line 189
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 191
    goto/16 :goto_0

    .line 195
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_d
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 198
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->ndefIsWritable(I)Z

    move-result v3

    .line 199
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz v3, :cond_6

    move v4, v5

    :goto_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 201
    goto/16 :goto_0

    :cond_6
    move v4, v7

    .line 200
    goto :goto_7

    .line 205
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_e
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 209
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 210
    .local v1, _arg1:[B
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcTag$Stub;->formatNdef(I[B)I

    move-result v3

    .line 211
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 213
    goto/16 :goto_0

    .line 217
    .end local v0           #_arg0:I
    .end local v1           #_arg1:[B
    .end local v3           #_result:I
    :sswitch_f
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 220
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->setIsoDepTimeout(I)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 222
    goto/16 :goto_0

    .line 226
    .end local v0           #_arg0:I
    :sswitch_10
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Landroid/nfc/INfcTag$Stub;->resetIsoDepTimeout()V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 229
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
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
