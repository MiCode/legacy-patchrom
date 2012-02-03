.class public abstract Landroid/os/ITvOutService$Stub;
.super Landroid/os/Binder;
.source "ITvOutService.java"

# interfaces
.implements Landroid/os/ITvOutService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ITvOutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ITvOutService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ITvOutService"

.field static final TRANSACTION_GetSuspendString:I = 0x19

.field static final TRANSACTION_TvoutAnalogDisable:I = 0x5

.field static final TRANSACTION_TvoutAnalogDisableForce:I = 0x6

.field static final TRANSACTION_TvoutAnalogEnable:I = 0x3

.field static final TRANSACTION_TvoutAnalogEnableForce:I = 0x4

.field static final TRANSACTION_TvoutAnalogIsEnabled:I = 0x7

.field static final TRANSACTION_TvoutAnalogIsSuspended:I = 0xe

.field static final TRANSACTION_TvoutAnalogSetSuspendImage:I = 0xb

.field static final TRANSACTION_TvoutAnalogUpdateCableStatus:I = 0x2

.field static final TRANSACTION_TvoutHDMIDisableSubtitleOn:I = 0x14

.field static final TRANSACTION_TvoutHDMIIsDualDisplayEnabled:I = 0x16

.field static final TRANSACTION_TvoutHDMIIsEnabled:I = 0xc

.field static final TRANSACTION_TvoutHDMIIsSubtitleOn:I = 0x13

.field static final TRANSACTION_TvoutHDMIIsSuspended:I = 0xd

.field static final TRANSACTION_TvoutHDMIPostBitmap:I = 0x15

.field static final TRANSACTION_TvoutHDMIPostSubtitle:I = 0x12

.field static final TRANSACTION_TvoutHDMISetDualDisplayStatus:I = 0x17

.field static final TRANSACTION_TvoutHDMISetStatus:I = 0xf

.field static final TRANSACTION_TvoutHDMISetSubtitleStatus:I = 0x11

.field static final TRANSACTION_TvoutHDMISuspend:I = 0x10

.field static final TRANSACTION_TvoutHDMIUpdateCableStatus:I = 0x18

.field static final TRANSACTION_TvoutResume:I = 0xa

.field static final TRANSACTION_TvoutSetOrientation:I = 0x8

.field static final TRANSACTION_TvoutSuspend:I = 0x9

.field static final TRANSACTION_getIntent:I = 0x1

.field static final TRANSACTION_setVideoScaleType:I = 0x1a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p0, p0, v0}, Landroid/os/ITvOutService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ITvOutService;
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
    const-string v1, "android.os.ITvOutService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/ITvOutService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/ITvOutService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 31
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/ITvOutService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/ITvOutService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v5, "android.os.ITvOutService"

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 275
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 43
    :sswitch_0
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->getIntent()Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 52
    goto :goto_0

    .line 56
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_2
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v4

    .line 59
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/ITvOutService$Stub;->TvoutAnalogUpdateCableStatus(Z)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 61
    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_0
    move v0, v6

    .line 58
    goto :goto_1

    .line 65
    :sswitch_3
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->TvoutAnalogEnable()V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 68
    goto :goto_0

    .line 72
    :sswitch_4
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->TvoutAnalogEnableForce()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 75
    goto :goto_0

    .line 79
    :sswitch_5
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->TvoutAnalogDisable()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 82
    goto :goto_0

    .line 86
    :sswitch_6
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->TvoutAnalogDisableForce()V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 89
    goto :goto_0

    .line 93
    :sswitch_7
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->TvoutAnalogIsEnabled()Z

    move-result v2

    .line 95
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v2, :cond_1

    move v3, v4

    :goto_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 97
    goto :goto_0

    :cond_1
    move v3, v6

    .line 96
    goto :goto_2

    .line 101
    .end local v2           #_result:Z
    :sswitch_8
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvOutService$Stub;->TvoutSetOrientation(I)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 106
    goto/16 :goto_0

    .line 110
    .end local v0           #_arg0:I
    :sswitch_9
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/ITvOutService$Stub;->TvoutSuspend(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 115
    goto/16 :goto_0

    .line 119
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_a
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->TvoutResume()V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 122
    goto/16 :goto_0

    .line 126
    :sswitch_b
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 129
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvOutService$Stub;->TvoutAnalogSetSuspendImage(I)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 131
    goto/16 :goto_0

    .line 135
    .end local v0           #_arg0:I
    :sswitch_c
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->TvoutHDMIIsEnabled()Z

    move-result v2

    .line 137
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v2, :cond_2

    move v3, v4

    :goto_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 139
    goto/16 :goto_0

    :cond_2
    move v3, v6

    .line 138
    goto :goto_3

    .line 143
    .end local v2           #_result:Z
    :sswitch_d
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->TvoutHDMIIsSuspended()Z

    move-result v2

    .line 145
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v2, :cond_3

    move v3, v4

    :goto_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 147
    goto/16 :goto_0

    :cond_3
    move v3, v6

    .line 146
    goto :goto_4

    .line 151
    .end local v2           #_result:Z
    :sswitch_e
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->TvoutAnalogIsSuspended()Z

    move-result v2

    .line 153
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v2, :cond_4

    move v3, v4

    :goto_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 155
    goto/16 :goto_0

    :cond_4
    move v3, v6

    .line 154
    goto :goto_5

    .line 159
    .end local v2           #_result:Z
    :sswitch_f
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 162
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvOutService$Stub;->TvoutHDMISetStatus(I)Z

    move-result v2

    .line 163
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v2, :cond_5

    move v3, v4

    :goto_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 165
    goto/16 :goto_0

    :cond_5
    move v3, v6

    .line 164
    goto :goto_6

    .line 169
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_10
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/ITvOutService$Stub;->TvoutHDMISuspend(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 174
    goto/16 :goto_0

    .line 178
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_11
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 181
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvOutService$Stub;->TvoutHDMISetSubtitleStatus(I)Z

    move-result v2

    .line 182
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    if-eqz v2, :cond_6

    move v3, v4

    :goto_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 184
    goto/16 :goto_0

    :cond_6
    move v3, v6

    .line 183
    goto :goto_7

    .line 188
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_12
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 193
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/os/ITvOutService$Stub;->TvoutHDMIPostSubtitle(Ljava/lang/String;I)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 195
    goto/16 :goto_0

    .line 199
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :sswitch_13
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->TvoutHDMIIsSubtitleOn()Z

    move-result v2

    .line 201
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    if-eqz v2, :cond_7

    move v3, v4

    :goto_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 203
    goto/16 :goto_0

    :cond_7
    move v3, v6

    .line 202
    goto :goto_8

    .line 207
    .end local v2           #_result:Z
    :sswitch_14
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 210
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvOutService$Stub;->TvoutHDMIDisableSubtitleOn(I)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 212
    goto/16 :goto_0

    .line 216
    .end local v0           #_arg0:I
    :sswitch_15
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 219
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 225
    .local v0, _arg0:Landroid/graphics/Bitmap;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 226
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/os/ITvOutService$Stub;->TvoutHDMIPostBitmap(Landroid/graphics/Bitmap;I)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 228
    goto/16 :goto_0

    .line 222
    .end local v0           #_arg0:Landroid/graphics/Bitmap;
    .end local v1           #_arg1:I
    :cond_8
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/graphics/Bitmap;
    goto :goto_9

    .line 232
    .end local v0           #_arg0:Landroid/graphics/Bitmap;
    :sswitch_16
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->TvoutHDMIIsDualDisplayEnabled()Z

    move-result v2

    .line 234
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    if-eqz v2, :cond_9

    move v3, v4

    :goto_a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 236
    goto/16 :goto_0

    :cond_9
    move v3, v6

    .line 235
    goto :goto_a

    .line 240
    .end local v2           #_result:Z
    :sswitch_17
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 243
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvOutService$Stub;->TvoutHDMISetDualDisplayStatus(I)V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 245
    goto/16 :goto_0

    .line 249
    .end local v0           #_arg0:I
    :sswitch_18
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 252
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvOutService$Stub;->TvoutHDMIUpdateCableStatus(I)Z

    move-result v2

    .line 253
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    if-eqz v2, :cond_a

    move v3, v4

    :goto_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 255
    goto/16 :goto_0

    :cond_a
    move v3, v6

    .line 254
    goto :goto_b

    .line 259
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_19
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->GetSuspendString()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 263
    goto/16 :goto_0

    .line 267
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_1a
    const-string v3, "android.os.ITvOutService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 270
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/ITvOutService$Stub;->setVideoScaleType(I)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 272
    goto/16 :goto_0

    .line 39
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
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
