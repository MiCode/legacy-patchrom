.class public abstract Landroid/speech/IRecognitionListener$Stub;
.super Landroid/os/Binder;
.source "IRecognitionListener.java"

# interfaces
.implements Landroid/speech/IRecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/IRecognitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/IRecognitionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.speech.IRecognitionListener"

.field static final TRANSACTION_onBeginningOfSpeech:I = 0x2

.field static final TRANSACTION_onBufferReceived:I = 0x4

.field static final TRANSACTION_onEndOfSpeech:I = 0x5

.field static final TRANSACTION_onError:I = 0x6

.field static final TRANSACTION_onEvent:I = 0x9

.field static final TRANSACTION_onPartialResults:I = 0x8

.field static final TRANSACTION_onReadyForSpeech:I = 0x1

.field static final TRANSACTION_onResults:I = 0x7

.field static final TRANSACTION_onRmsChanged:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.speech.IRecognitionListener"

    invoke-virtual {p0, p0, v0}, Landroid/speech/IRecognitionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionListener;
    .locals 2
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v1, 0x0

    .line 36
    :goto_0
    return-object v1

    .line 32
    :cond_0
    const-string v1, "android.speech.IRecognitionListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/speech/IRecognitionListener;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/speech/IRecognitionListener;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 36
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/speech/IRecognitionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/speech/IRecognitionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
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

    const-string v4, "android.speech.IRecognitionListener"

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 48
    :sswitch_0
    const-string v2, "android.speech.IRecognitionListener"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 49
    goto :goto_0

    .line 53
    :sswitch_1
    const-string v2, "android.speech.IRecognitionListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 61
    .local v0, _arg0:Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/speech/IRecognitionListener$Stub;->onReadyForSpeech(Landroid/os/Bundle;)V

    move v2, v3

    .line 62
    goto :goto_0

    .line 59
    .end local v0           #_arg0:Landroid/os/Bundle;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/Bundle;
    goto :goto_1

    .line 66
    .end local v0           #_arg0:Landroid/os/Bundle;
    :sswitch_2
    const-string v2, "android.speech.IRecognitionListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/speech/IRecognitionListener$Stub;->onBeginningOfSpeech()V

    move v2, v3

    .line 68
    goto :goto_0

    .line 72
    :sswitch_3
    const-string v2, "android.speech.IRecognitionListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 75
    .local v0, _arg0:F
    invoke-virtual {p0, v0}, Landroid/speech/IRecognitionListener$Stub;->onRmsChanged(F)V

    move v2, v3

    .line 76
    goto :goto_0

    .line 80
    .end local v0           #_arg0:F
    :sswitch_4
    const-string v2, "android.speech.IRecognitionListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 83
    .local v0, _arg0:[B
    invoke-virtual {p0, v0}, Landroid/speech/IRecognitionListener$Stub;->onBufferReceived([B)V

    move v2, v3

    .line 84
    goto :goto_0

    .line 88
    .end local v0           #_arg0:[B
    :sswitch_5
    const-string v2, "android.speech.IRecognitionListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/speech/IRecognitionListener$Stub;->onEndOfSpeech()V

    move v2, v3

    .line 90
    goto :goto_0

    .line 94
    :sswitch_6
    const-string v2, "android.speech.IRecognitionListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/speech/IRecognitionListener$Stub;->onError(I)V

    move v2, v3

    .line 98
    goto :goto_0

    .line 102
    .end local v0           #_arg0:I
    :sswitch_7
    const-string v2, "android.speech.IRecognitionListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 110
    .local v0, _arg0:Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/speech/IRecognitionListener$Stub;->onResults(Landroid/os/Bundle;)V

    move v2, v3

    .line 111
    goto :goto_0

    .line 108
    .end local v0           #_arg0:Landroid/os/Bundle;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/Bundle;
    goto :goto_2

    .line 115
    .end local v0           #_arg0:Landroid/os/Bundle;
    :sswitch_8
    const-string v2, "android.speech.IRecognitionListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 123
    .restart local v0       #_arg0:Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p0, v0}, Landroid/speech/IRecognitionListener$Stub;->onPartialResults(Landroid/os/Bundle;)V

    move v2, v3

    .line 124
    goto/16 :goto_0

    .line 121
    .end local v0           #_arg0:Landroid/os/Bundle;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/Bundle;
    goto :goto_3

    .line 128
    .end local v0           #_arg0:Landroid/os/Bundle;
    :sswitch_9
    const-string v2, "android.speech.IRecognitionListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 132
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 138
    .local v1, _arg1:Landroid/os/Bundle;
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/speech/IRecognitionListener$Stub;->onEvent(ILandroid/os/Bundle;)V

    move v2, v3

    .line 139
    goto/16 :goto_0

    .line 136
    .end local v1           #_arg1:Landroid/os/Bundle;
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/Bundle;
    goto :goto_4

    .line 44
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
