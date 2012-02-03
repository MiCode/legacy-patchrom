.class public abstract Landroid/app/INotificationManager$Stub;
.super Landroid/os/Binder;
.source "INotificationManager.java"

# interfaces
.implements Landroid/app/INotificationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/INotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/INotificationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.INotificationManager"

.field static final TRANSACTION_cancelAllNotifications:I = 0x3

.field static final TRANSACTION_cancelNotification:I = 0x2

.field static final TRANSACTION_cancelNotificationWithTag:I = 0x7

.field static final TRANSACTION_cancelToast:I = 0x5

.field static final TRANSACTION_enqueueNotification:I = 0x1

.field static final TRANSACTION_enqueueNotificationWithTag:I = 0x6

.field static final TRANSACTION_enqueueToast:I = 0x4

.field static final TRANSACTION_getEventContact:I = 0xb

.field static final TRANSACTION_getEventCount:I = 0xa

.field static final TRANSACTION_getEventIndexWithReq:I = 0x9

.field static final TRANSACTION_getEventIntent:I = 0xc

.field static final TRANSACTION_getNotificationInfo:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/INotificationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v1, 0x0

    .line 32
    :goto_0
    return-object v1

    .line 28
    :cond_0
    const-string v1, "android.app.INotificationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/INotificationManager;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Landroid/app/INotificationManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 32
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/INotificationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/INotificationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
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
    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string v8, "android.app.INotificationManager"

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 215
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 44
    :sswitch_0
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 45
    goto :goto_0

    .line 49
    :sswitch_1
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification;

    .line 62
    .local v3, _arg2:Landroid/app/Notification;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 63
    .local v4, _arg3:[I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->enqueueNotification(Ljava/lang/String;ILandroid/app/Notification;[I)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    move v0, v7

    .line 66
    goto :goto_0

    .line 59
    .end local v3           #_arg2:Landroid/app/Notification;
    .end local v4           #_arg3:[I
    :cond_0
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/app/Notification;
    goto :goto_1

    .line 70
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/app/Notification;
    :sswitch_2
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 75
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->cancelNotification(Ljava/lang/String;I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 77
    goto :goto_0

    .line 81
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    :sswitch_3
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->cancelAllNotifications(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 86
    goto :goto_0

    .line 90
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_4
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITransientNotification$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotification;

    move-result-object v2

    .line 96
    .local v2, _arg1:Landroid/app/ITransientNotification;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 97
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 99
    goto :goto_0

    .line 103
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/app/ITransientNotification;
    .end local v3           #_arg2:I
    :sswitch_5
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITransientNotification$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotification;

    move-result-object v2

    .line 108
    .restart local v2       #_arg1:Landroid/app/ITransientNotification;
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 110
    goto/16 :goto_0

    .line 114
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/app/ITransientNotification;
    :sswitch_6
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 118
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 122
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification;

    .line 129
    .local v4, _arg3:Landroid/app/Notification;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .local v5, _arg4:[I
    move-object v0, p0

    .line 130
    invoke-virtual/range {v0 .. v5}, Landroid/app/INotificationManager$Stub;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[I)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    move v0, v7

    .line 133
    goto/16 :goto_0

    .line 126
    .end local v4           #_arg3:Landroid/app/Notification;
    .end local v5           #_arg4:[I
    :cond_1
    const/4 v4, 0x0

    .restart local v4       #_arg3:Landroid/app/Notification;
    goto :goto_2

    .line 137
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Landroid/app/Notification;
    :sswitch_7
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 143
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 144
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 146
    goto/16 :goto_0

    .line 150
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    :sswitch_8
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 154
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v6

    .line 156
    .local v6, _result:Landroid/app/NotificationInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v6, :cond_2

    .line 158
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    invoke-virtual {v6, p3, v7}, Landroid/app/NotificationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    move v0, v7

    .line 164
    goto/16 :goto_0

    .line 162
    :cond_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 168
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v6           #_result:Landroid/app/NotificationInfo;
    :sswitch_9
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->getEventIndexWithReq(Ljava/lang/String;I)I

    move-result v6

    .line 174
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 176
    goto/16 :goto_0

    .line 180
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v6           #_result:I
    :sswitch_a
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 183
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getEventCount(I)I

    move-result v6

    .line 184
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 186
    goto/16 :goto_0

    .line 190
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_b
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 193
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getEventContact(I)Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 196
    goto/16 :goto_0

    .line 200
    .end local v1           #_arg0:I
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 203
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->getEventIntent(I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 204
    .local v6, _result:Landroid/app/PendingIntent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    if-eqz v6, :cond_3

    .line 206
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    invoke-virtual {v6, p3, v7}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    move v0, v7

    .line 212
    goto/16 :goto_0

    .line 210
    :cond_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 40
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
