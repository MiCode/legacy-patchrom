.class public abstract Landroid/smartcard/ISmartcardService$Stub;
.super Landroid/os/Binder;
.source "ISmartcardService.java"

# interfaces
.implements Landroid/smartcard/ISmartcardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/smartcard/ISmartcardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/smartcard/ISmartcardService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.smartcard.ISmartcardService"

.field static final TRANSACTION_closeChannel:I = 0x1

.field static final TRANSACTION_getReaders:I = 0x2

.field static final TRANSACTION_isCardPresent:I = 0x3

.field static final TRANSACTION_openBasicChannel:I = 0x4

.field static final TRANSACTION_openLogicalChannel:I = 0x5

.field static final TRANSACTION_transmit:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.smartcard.ISmartcardService"

    invoke-virtual {p0, p0, v0}, Landroid/smartcard/ISmartcardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/smartcard/ISmartcardService;
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
    const-string v1, "android.smartcard.ISmartcardService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/smartcard/ISmartcardService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/smartcard/ISmartcardService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/smartcard/ISmartcardService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/smartcard/ISmartcardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v10, "android.smartcard.ISmartcardService"

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 45
    :sswitch_0
    const-string v7, "android.smartcard.ISmartcardService"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v7, v8

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v7, "android.smartcard.ISmartcardService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 54
    .local v0, _arg0:J
    new-instance v2, Landroid/smartcard/SmartcardError;

    invoke-direct {v2}, Landroid/smartcard/SmartcardError;-><init>()V

    .line 55
    .local v2, _arg1:Landroid/smartcard/SmartcardError;
    invoke-virtual {p0, v0, v1, v2}, Landroid/smartcard/ISmartcardService$Stub;->closeChannel(JLandroid/smartcard/SmartcardError;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {v2, p3, v8}, Landroid/smartcard/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v7, v8

    .line 64
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 68
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Landroid/smartcard/SmartcardError;
    :sswitch_2
    const-string v7, "android.smartcard.ISmartcardService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    new-instance v0, Landroid/smartcard/SmartcardError;

    invoke-direct {v0}, Landroid/smartcard/SmartcardError;-><init>()V

    .line 71
    .local v0, _arg0:Landroid/smartcard/SmartcardError;
    invoke-virtual {p0, v0}, Landroid/smartcard/ISmartcardService$Stub;->getReaders(Landroid/smartcard/SmartcardError;)[Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 74
    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    invoke-virtual {v0, p3, v8}, Landroid/smartcard/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v7, v8

    .line 81
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 85
    .end local v0           #_arg0:Landroid/smartcard/SmartcardError;
    .end local v5           #_result:[Ljava/lang/String;
    :sswitch_3
    const-string v7, "android.smartcard.ISmartcardService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, _arg0:Ljava/lang/String;
    new-instance v2, Landroid/smartcard/SmartcardError;

    invoke-direct {v2}, Landroid/smartcard/SmartcardError;-><init>()V

    .line 90
    .restart local v2       #_arg1:Landroid/smartcard/SmartcardError;
    invoke-virtual {p0, v0, v2}, Landroid/smartcard/ISmartcardService$Stub;->isCardPresent(Ljava/lang/String;Landroid/smartcard/SmartcardError;)Z

    move-result v5

    .line 91
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v5, :cond_2

    move v7, v8

    :goto_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    if-eqz v2, :cond_3

    .line 94
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    invoke-virtual {v2, p3, v8}, Landroid/smartcard/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    move v7, v8

    .line 100
    goto :goto_0

    :cond_2
    move v7, v9

    .line 92
    goto :goto_3

    .line 98
    :cond_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 104
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/smartcard/SmartcardError;
    .end local v5           #_result:Z
    :sswitch_4
    const-string v7, "android.smartcard.ISmartcardService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/smartcard/ISmartcardServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/smartcard/ISmartcardServiceCallback;

    move-result-object v2

    .line 110
    .local v2, _arg1:Landroid/smartcard/ISmartcardServiceCallback;
    new-instance v3, Landroid/smartcard/SmartcardError;

    invoke-direct {v3}, Landroid/smartcard/SmartcardError;-><init>()V

    .line 111
    .local v3, _arg2:Landroid/smartcard/SmartcardError;
    invoke-virtual {p0, v0, v2, v3}, Landroid/smartcard/ISmartcardService$Stub;->openBasicChannel(Ljava/lang/String;Landroid/smartcard/ISmartcardServiceCallback;Landroid/smartcard/SmartcardError;)J

    move-result-wide v5

    .line 112
    .local v5, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    if-eqz v3, :cond_4

    .line 115
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {v3, p3, v8}, Landroid/smartcard/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    move v7, v8

    .line 121
    goto/16 :goto_0

    .line 119
    :cond_4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 125
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/smartcard/ISmartcardServiceCallback;
    .end local v3           #_arg2:Landroid/smartcard/SmartcardError;
    .end local v5           #_result:J
    :sswitch_5
    const-string v7, "android.smartcard.ISmartcardService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 131
    .local v2, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/smartcard/ISmartcardServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/smartcard/ISmartcardServiceCallback;

    move-result-object v3

    .line 133
    .local v3, _arg2:Landroid/smartcard/ISmartcardServiceCallback;
    new-instance v4, Landroid/smartcard/SmartcardError;

    invoke-direct {v4}, Landroid/smartcard/SmartcardError;-><init>()V

    .line 134
    .local v4, _arg3:Landroid/smartcard/SmartcardError;
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/smartcard/ISmartcardService$Stub;->openLogicalChannel(Ljava/lang/String;[BLandroid/smartcard/ISmartcardServiceCallback;Landroid/smartcard/SmartcardError;)J

    move-result-wide v5

    .line 135
    .restart local v5       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 137
    if-eqz v4, :cond_5

    .line 138
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    invoke-virtual {v4, p3, v8}, Landroid/smartcard/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    move v7, v8

    .line 144
    goto/16 :goto_0

    .line 142
    :cond_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 148
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:Landroid/smartcard/ISmartcardServiceCallback;
    .end local v4           #_arg3:Landroid/smartcard/SmartcardError;
    .end local v5           #_result:J
    :sswitch_6
    const-string v7, "android.smartcard.ISmartcardService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 152
    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 154
    .restart local v2       #_arg1:[B
    new-instance v3, Landroid/smartcard/SmartcardError;

    invoke-direct {v3}, Landroid/smartcard/SmartcardError;-><init>()V

    .line 155
    .local v3, _arg2:Landroid/smartcard/SmartcardError;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/smartcard/ISmartcardService$Stub;->transmit(J[BLandroid/smartcard/SmartcardError;)[B

    move-result-object v5

    .line 156
    .local v5, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 158
    if-eqz v3, :cond_6

    .line 159
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    invoke-virtual {v3, p3, v8}, Landroid/smartcard/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    move v7, v8

    .line 165
    goto/16 :goto_0

    .line 163
    :cond_6
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
