.class public abstract Lcom/broadcom/bt/service/opp/IOppService$Stub;
.super Landroid/os/Binder;
.source "IOppService.java"

# interfaces
.implements Lcom/broadcom/bt/service/opp/IOppService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/opp/IOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/opp/IOppService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.opp.IOppService"

.field static final TRANSACTION_closeOpcSession:I = 0x4

.field static final TRANSACTION_closeOpsSession:I = 0x5

.field static final TRANSACTION_enableOpcSession:I = 0x3

.field static final TRANSACTION_exchangeVcard:I = 0x8

.field static final TRANSACTION_grantAccess:I = 0x9

.field static final TRANSACTION_pullVcard:I = 0x7

.field static final TRANSACTION_pushObject:I = 0x6

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_setExchangeFolder:I = 0xb

.field static final TRANSACTION_setOwnerVcard:I = 0xa

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/opp/IOppService;
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
    const-string v1, "com.broadcom.bt.service.opp.IOppService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/opp/IOppService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/broadcom/bt/service/opp/IOppService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/broadcom/bt/service/opp/IOppService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/opp/IOppService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v4, 0x1

    const-string v5, "com.broadcom.bt.service.opp.IOppService"

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 46
    :sswitch_0
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 47
    goto :goto_0

    .line 51
    :sswitch_1
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/broadcom/bt/service/opp/IOppCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/opp/IOppCallback;

    move-result-object v0

    .line 54
    .local v0, _arg0:Lcom/broadcom/bt/service/opp/IOppCallback;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->registerCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 56
    goto :goto_0

    .line 60
    .end local v0           #_arg0:Lcom/broadcom/bt/service/opp/IOppCallback;
    :sswitch_2
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/broadcom/bt/service/opp/IOppCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/opp/IOppCallback;

    move-result-object v0

    .line 63
    .restart local v0       #_arg0:Lcom/broadcom/bt/service/opp/IOppCallback;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->unregisterCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 65
    goto :goto_0

    .line 69
    .end local v0           #_arg0:Lcom/broadcom/bt/service/opp/IOppCallback;
    :sswitch_3
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->enableOpcSession()V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 72
    goto :goto_0

    .line 76
    :sswitch_4
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->closeOpcSession()V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 79
    goto :goto_0

    .line 83
    :sswitch_5
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->closeOpsSession()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 86
    goto :goto_0

    .line 90
    :sswitch_6
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->pushObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 97
    goto :goto_0

    .line 101
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_7
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->pullVcard(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 106
    goto :goto_0

    .line 110
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_8
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->exchangeVcard(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 115
    goto/16 :goto_0

    .line 119
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_9
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 123
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 125
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->grantAccess(IILjava/lang/String;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 128
    goto/16 :goto_0

    .line 132
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Ljava/lang/String;
    :sswitch_a
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->setOwnerVcard(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 137
    goto/16 :goto_0

    .line 141
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_b
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->setExchangeFolder(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 146
    goto/16 :goto_0

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
