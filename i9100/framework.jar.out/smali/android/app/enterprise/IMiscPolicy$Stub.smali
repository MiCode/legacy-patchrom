.class public abstract Landroid/app/enterprise/IMiscPolicy$Stub;
.super Landroid/os/Binder;
.source "IMiscPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IMiscPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IMiscPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IMiscPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IMiscPolicy"

.field static final TRANSACTION_addBookmarkOnHomeScreenBitmap:I = 0x2

.field static final TRANSACTION_addBookmarkOnHomeScreenByteBuffer:I = 0x1

.field static final TRANSACTION_addSubscribedCalendar:I = 0x3

.field static final TRANSACTION_allowBluetooth:I = 0x15

.field static final TRANSACTION_allowWiFi:I = 0x13

.field static final TRANSACTION_formatInternalStorage:I = 0xc

.field static final TRANSACTION_formatSelective:I = 0xb

.field static final TRANSACTION_formatStorageCard:I = 0xd

.field static final TRANSACTION_getInstalledCertiFicateList:I = 0x6

.field static final TRANSACTION_installCertificateWithType:I = 0x4

.field static final TRANSACTION_installCertificatesFromSdCard:I = 0x5

.field static final TRANSACTION_isCameraEnabled:I = 0x8

.field static final TRANSACTION_isExternalStorageEncrypted:I = 0x11

.field static final TRANSACTION_isInternalStorageEncrypted:I = 0x10

.field static final TRANSACTION_isMicrophoneEnabled:I = 0xa

.field static final TRANSACTION_setBluetooth:I = 0x14

.field static final TRANSACTION_setCamera:I = 0x7

.field static final TRANSACTION_setExternalStorageEncryption:I = 0xf

.field static final TRANSACTION_setInternalStorageEncryption:I = 0xe

.field static final TRANSACTION_setMicrophoneState:I = 0x9

.field static final TRANSACTION_setWiFi:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IMiscPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IMiscPolicy;
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
    const-string v1, "android.app.enterprise.IMiscPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IMiscPolicy;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/app/enterprise/IMiscPolicy;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/enterprise/IMiscPolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/enterprise/IMiscPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, "android.app.enterprise.IMiscPolicy"

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 285
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 45
    :sswitch_0
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 53
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 59
    .local v0, _arg0:Landroid/net/Uri;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 62
    .local v2, _arg2:[B
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/enterprise/IMiscPolicy$Stub;->addBookmarkOnHomeScreenByteBuffer(Landroid/net/Uri;Ljava/lang/String;[B)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 64
    goto :goto_0

    .line 56
    .end local v0           #_arg0:Landroid/net/Uri;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:[B
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/Uri;
    goto :goto_1

    .line 68
    .end local v0           #_arg0:Landroid/net/Uri;
    :sswitch_2
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 71
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 77
    .restart local v0       #_arg0:Landroid/net/Uri;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 80
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 85
    .local v2, _arg2:Landroid/graphics/Bitmap;
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/enterprise/IMiscPolicy$Stub;->addBookmarkOnHomeScreenBitmap(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 87
    goto :goto_0

    .line 74
    .end local v0           #_arg0:Landroid/net/Uri;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Landroid/graphics/Bitmap;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/Uri;
    goto :goto_2

    .line 83
    .restart local v1       #_arg1:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/graphics/Bitmap;
    goto :goto_3

    .line 91
    .end local v0           #_arg0:Landroid/net/Uri;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Landroid/graphics/Bitmap;
    :sswitch_3
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 98
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 104
    .local v2, _arg2:Landroid/net/Uri;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/enterprise/IMiscPolicy$Stub;->addSubscribedCalendar(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v4

    .line 106
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v4, :cond_4

    move v6, v7

    :goto_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 108
    goto/16 :goto_0

    .line 101
    .end local v2           #_arg2:Landroid/net/Uri;
    .end local v3           #_arg3:Ljava/lang/String;
    .end local v4           #_result:Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/net/Uri;
    goto :goto_4

    .restart local v3       #_arg3:Ljava/lang/String;
    .restart local v4       #_result:Z
    :cond_4
    move v6, v8

    .line 107
    goto :goto_5

    .line 112
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Landroid/net/Uri;
    .end local v3           #_arg3:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_4
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 117
    .local v1, _arg1:[B
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IMiscPolicy$Stub;->installCertificateWithType(Ljava/lang/String;[B)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 119
    goto/16 :goto_0

    .line 123
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:[B
    :sswitch_5
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Landroid/app/enterprise/IMiscPolicy$Stub;->installCertificatesFromSdCard()V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 126
    goto/16 :goto_0

    .line 130
    :sswitch_6
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/app/enterprise/IMiscPolicy$Stub;->getInstalledCertiFicateList()Ljava/util/List;

    move-result-object v5

    .line 132
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v6, v7

    .line 134
    goto/16 :goto_0

    .line 138
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    :sswitch_7
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    move v0, v7

    .line 141
    .local v0, _arg0:Z
    :goto_6
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IMiscPolicy$Stub;->setCamera(Z)Z

    move-result v4

    .line 142
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v4, :cond_6

    move v6, v7

    :goto_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 144
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_5
    move v0, v8

    .line 140
    goto :goto_6

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_6
    move v6, v8

    .line 143
    goto :goto_7

    .line 148
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_8
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    move v0, v7

    .line 151
    .restart local v0       #_arg0:Z
    :goto_8
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IMiscPolicy$Stub;->isCameraEnabled(Z)Z

    move-result v4

    .line 152
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v4, :cond_8

    move v6, v7

    :goto_9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 154
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_7
    move v0, v8

    .line 150
    goto :goto_8

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_8
    move v6, v8

    .line 153
    goto :goto_9

    .line 158
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_9
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    move v0, v7

    .line 161
    .restart local v0       #_arg0:Z
    :goto_a
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IMiscPolicy$Stub;->setMicrophoneState(Z)Z

    move-result v4

    .line 162
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v4, :cond_a

    move v6, v7

    :goto_b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 164
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_9
    move v0, v8

    .line 160
    goto :goto_a

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_a
    move v6, v8

    .line 163
    goto :goto_b

    .line 168
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_a
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    move v0, v7

    .line 171
    .restart local v0       #_arg0:Z
    :goto_c
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IMiscPolicy$Stub;->isMicrophoneEnabled(Z)Z

    move-result v4

    .line 172
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v4, :cond_c

    move v6, v7

    :goto_d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 174
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_b
    move v0, v8

    .line 170
    goto :goto_c

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_c
    move v6, v8

    .line 173
    goto :goto_d

    .line 178
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_b
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, _arg0:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, _arg1:[Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IMiscPolicy$Stub;->formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v6, v7

    .line 186
    goto/16 :goto_0

    .line 190
    .end local v0           #_arg0:[Ljava/lang/String;
    .end local v1           #_arg1:[Ljava/lang/String;
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_c
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    move v0, v7

    .line 194
    .local v0, _arg0:Z
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    move v1, v7

    .line 195
    .local v1, _arg1:Z
    :goto_f
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IMiscPolicy$Stub;->formatInternalStorage(ZZ)Z

    move-result v4

    .line 196
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    if-eqz v4, :cond_f

    move v6, v7

    :goto_10
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 198
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_d
    move v0, v8

    .line 192
    goto :goto_e

    .restart local v0       #_arg0:Z
    :cond_e
    move v1, v8

    .line 194
    goto :goto_f

    .restart local v1       #_arg1:Z
    .restart local v4       #_result:Z
    :cond_f
    move v6, v8

    .line 197
    goto :goto_10

    .line 202
    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :sswitch_d
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    move v0, v7

    .line 205
    .restart local v0       #_arg0:Z
    :goto_11
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IMiscPolicy$Stub;->formatStorageCard(Z)Z

    move-result v4

    .line 206
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    if-eqz v4, :cond_11

    move v6, v7

    :goto_12
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 208
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_10
    move v0, v8

    .line 204
    goto :goto_11

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_11
    move v6, v8

    .line 207
    goto :goto_12

    .line 212
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_e
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    move v0, v7

    .line 215
    .restart local v0       #_arg0:Z
    :goto_13
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IMiscPolicy$Stub;->setInternalStorageEncryption(Z)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 217
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_12
    move v0, v8

    .line 214
    goto :goto_13

    .line 221
    :sswitch_f
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13

    move v0, v7

    .line 224
    .restart local v0       #_arg0:Z
    :goto_14
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IMiscPolicy$Stub;->setExternalStorageEncryption(Z)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 226
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_13
    move v0, v8

    .line 223
    goto :goto_14

    .line 230
    :sswitch_10
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Landroid/app/enterprise/IMiscPolicy$Stub;->isInternalStorageEncrypted()Z

    move-result v4

    .line 232
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v4, :cond_14

    move v6, v7

    :goto_15
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 234
    goto/16 :goto_0

    :cond_14
    move v6, v8

    .line 233
    goto :goto_15

    .line 238
    .end local v4           #_result:Z
    :sswitch_11
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Landroid/app/enterprise/IMiscPolicy$Stub;->isExternalStorageEncrypted()Z

    move-result v4

    .line 240
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    if-eqz v4, :cond_15

    move v6, v7

    :goto_16
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 242
    goto/16 :goto_0

    :cond_15
    move v6, v8

    .line 241
    goto :goto_16

    .line 246
    .end local v4           #_result:Z
    :sswitch_12
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_16

    move v0, v7

    .line 249
    .restart local v0       #_arg0:Z
    :goto_17
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IMiscPolicy$Stub;->setWiFi(Z)Z

    move-result v4

    .line 250
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    if-eqz v4, :cond_17

    move v6, v7

    :goto_18
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 252
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_16
    move v0, v8

    .line 248
    goto :goto_17

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_17
    move v6, v8

    .line 251
    goto :goto_18

    .line 256
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_13
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_18

    move v0, v7

    .line 259
    .restart local v0       #_arg0:Z
    :goto_19
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IMiscPolicy$Stub;->allowWiFi(Z)Z

    move-result v4

    .line 260
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v4, :cond_19

    move v6, v7

    :goto_1a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 262
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_18
    move v0, v8

    .line 258
    goto :goto_19

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_19
    move v6, v8

    .line 261
    goto :goto_1a

    .line 266
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_14
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1a

    move v0, v7

    .line 269
    .restart local v0       #_arg0:Z
    :goto_1b
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IMiscPolicy$Stub;->setBluetooth(Z)Z

    move-result v4

    .line 270
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v4, :cond_1b

    move v6, v7

    :goto_1c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 272
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_1a
    move v0, v8

    .line 268
    goto :goto_1b

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_1b
    move v6, v8

    .line 271
    goto :goto_1c

    .line 276
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_15
    const-string v6, "android.app.enterprise.IMiscPolicy"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1c

    move v0, v7

    .line 279
    .restart local v0       #_arg0:Z
    :goto_1d
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IMiscPolicy$Stub;->allowBluetooth(Z)Z

    move-result v4

    .line 280
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    if-eqz v4, :cond_1d

    move v6, v7

    :goto_1e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 282
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_1c
    move v0, v8

    .line 278
    goto :goto_1d

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_1d
    move v6, v8

    .line 281
    goto :goto_1e

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
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
