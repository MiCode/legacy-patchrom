.class public abstract Landroid/speech/tts/ITts$Stub;
.super Landroid/os/Binder;
.source "ITts.java"

# interfaces
.implements Landroid/speech/tts/ITts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/ITts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/ITts$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.speech.tts.ITts"

.field static final TRANSACTION_addEarcon:I = 0xd

.field static final TRANSACTION_addEarconFile:I = 0xe

.field static final TRANSACTION_addSpeech:I = 0x6

.field static final TRANSACTION_addSpeechFile:I = 0x7

.field static final TRANSACTION_areDefaultsEnforced:I = 0x14

.field static final TRANSACTION_getDefaultEngine:I = 0x13

.field static final TRANSACTION_getLanguage:I = 0x8

.field static final TRANSACTION_isLanguageAvailable:I = 0x9

.field static final TRANSACTION_isSpeaking:I = 0x4

.field static final TRANSACTION_playEarcon:I = 0xc

.field static final TRANSACTION_playSilence:I = 0x11

.field static final TRANSACTION_registerCallback:I = 0xf

.field static final TRANSACTION_setEngineByPackageName:I = 0x12

.field static final TRANSACTION_setLanguage:I = 0xa

.field static final TRANSACTION_setPitch:I = 0x2

.field static final TRANSACTION_setSpeechRate:I = 0x1

.field static final TRANSACTION_speak:I = 0x3

.field static final TRANSACTION_stop:I = 0x5

.field static final TRANSACTION_synthesizeToFile:I = 0xb

.field static final TRANSACTION_unregisterCallback:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.speech.tts.ITts"

    invoke-virtual {p0, p0, v0}, Landroid/speech/tts/ITts$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITts;
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
    const-string v1, "android.speech.tts.ITts"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/speech/tts/ITts;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/speech/tts/ITts;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 36
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/speech/tts/ITts$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/speech/tts/ITts$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v8, "android.speech.tts.ITts"

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 304
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 48
    :sswitch_0
    const-string v0, "android.speech.tts.ITts"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 49
    goto :goto_0

    .line 53
    :sswitch_1
    const-string v0, "android.speech.tts.ITts"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 58
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/speech/tts/ITts$Stub;->setSpeechRate(Ljava/lang/String;I)I

    move-result v6

    .line 59
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 61
    goto :goto_0

    .line 65
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v6           #_result:I
    :sswitch_2
    const-string v0, "android.speech.tts.ITts"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 70
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/speech/tts/ITts$Stub;->setPitch(Ljava/lang/String;I)I

    move-result v6

    .line 71
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 73
    goto :goto_0

    .line 77
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v6           #_result:I
    :sswitch_3
    const-string v0, "android.speech.tts.ITts"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 85
    .local v4, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, _arg3:[Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v4, v5}, Landroid/speech/tts/ITts$Stub;->speak(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v6

    .line 87
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 89
    goto :goto_0

    .line 93
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:[Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_4
    const-string v0, "android.speech.tts.ITts"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Landroid/speech/tts/ITts$Stub;->isSpeaking()Z

    move-result v6

    .line 95
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v6, :cond_0

    move v0, v7

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 97
    goto :goto_0

    :cond_0
    move v0, v9

    .line 96
    goto :goto_1

    .line 101
    .end local v6           #_result:Z
    :sswitch_5
    const-string v0, "android.speech.tts.ITts"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 104
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/speech/tts/ITts$Stub;->stop(Ljava/lang/String;)I

    move-result v6

    .line 105
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 107
    goto/16 :goto_0

    .line 111
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_6
    const-string v0, "android.speech.tts.ITts"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 115
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 117
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 120
    .local v5, _arg3:I
    invoke-virtual {p0, v1, v2, v4, v5}, Landroid/speech/tts/ITts$Stub;->addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 122
    goto/16 :goto_0

    .line 126
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:I
    :sswitch_7
    const-string v0, "android.speech.tts.ITts"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 130
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 132
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 133
    .restart local v4       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v4}, Landroid/speech/tts/ITts$Stub;->addSpeechFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 135
    goto/16 :goto_0

    .line 139
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    :sswitch_8
    const-string v0, "android.speech.tts.ITts"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Landroid/speech/tts/ITts$Stub;->getLanguage()[Ljava/lang/String;

    move-result-object v6

    .line 141
    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v7

    .line 143
    goto/16 :goto_0

    .line 147
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_9
    const-string v0, "android.speech.tts.ITts"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 151
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 153
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 155
    .restart local v4       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, _arg3:[Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v4, v5}, Landroid/speech/tts/ITts$Stub;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 157
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 159
    goto/16 :goto_0

    .line 163
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:[Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_a
    const-string v0, "android.speech.tts.ITts"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 167
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 171
    .restart local v4       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v4, v5}, Landroid/speech/tts/ITts$Stub;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 173
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 175
    goto/16 :goto_0

    .line 179
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_b
    const-string v0, "android.speech.tts.ITts"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 183
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, _arg2:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 188
    .restart local v5       #_arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v4, v5}, Landroid/speech/tts/ITts$Stub;->synthesizeToFile(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 189
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v6, :cond_1

    move v0, v7

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 191
    goto/16 :goto_0

    :cond_1
    move v0, v9

    .line 190
    goto :goto_2

    .line 195
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:[Ljava/lang/String;
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_c
    const-string v0, "android.speech.tts.ITts"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 199
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 201
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 203
    .local v4, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, _arg3:[Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v4, v5}, Landroid/speech/tts/ITts$Stub;->playEarcon(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v6

    .line 205
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 207
    goto/16 :goto_0

    .line 211
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:[Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_d
    const-string v0, "android.speech.tts.ITts"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 215
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 217
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 220
    .local v5, _arg3:I
    invoke-virtual {p0, v1, v2, v4, v5}, Landroid/speech/tts/ITts$Stub;->addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 222
    goto/16 :goto_0

    .line 226
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:I
    :sswitch_e
    const-string v0, "android.speech.tts.ITts"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 230
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 232
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 233
    .restart local v4       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v4}, Landroid/speech/tts/ITts$Stub;->addEarconFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 235
    goto/16 :goto_0

    .line 239
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    :sswitch_f
    const-string v0, "android.speech.tts.ITts"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 243
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/speech/tts/ITtsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITtsCallback;

    move-result-object v2

    .line 244
    .local v2, _arg1:Landroid/speech/tts/ITtsCallback;
    invoke-virtual {p0, v1, v2}, Landroid/speech/tts/ITts$Stub;->registerCallback(Ljava/lang/String;Landroid/speech/tts/ITtsCallback;)I

    move-result v6

    .line 245
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 247
    goto/16 :goto_0

    .line 251
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/speech/tts/ITtsCallback;
    .end local v6           #_result:I
    :sswitch_10
    const-string v0, "android.speech.tts.ITts"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 255
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/speech/tts/ITtsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITtsCallback;

    move-result-object v2

    .line 256
    .restart local v2       #_arg1:Landroid/speech/tts/ITtsCallback;
    invoke-virtual {p0, v1, v2}, Landroid/speech/tts/ITts$Stub;->unregisterCallback(Ljava/lang/String;Landroid/speech/tts/ITtsCallback;)I

    move-result v6

    .line 257
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 259
    goto/16 :goto_0

    .line 263
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/speech/tts/ITtsCallback;
    .end local v6           #_result:I
    :sswitch_11
    const-string v0, "android.speech.tts.ITts"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 267
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 269
    .local v2, _arg1:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 271
    .local v4, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .local v5, _arg3:[Ljava/lang/String;
    move-object v0, p0

    .line 272
    invoke-virtual/range {v0 .. v5}, Landroid/speech/tts/ITts$Stub;->playSilence(Ljava/lang/String;JI[Ljava/lang/String;)I

    move-result v6

    .line 273
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 275
    goto/16 :goto_0

    .line 279
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:J
    .end local v4           #_arg2:I
    .end local v5           #_arg3:[Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_12
    const-string v0, "android.speech.tts.ITts"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 282
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/speech/tts/ITts$Stub;->setEngineByPackageName(Ljava/lang/String;)I

    move-result v6

    .line 283
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 285
    goto/16 :goto_0

    .line 289
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_13
    const-string v0, "android.speech.tts.ITts"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Landroid/speech/tts/ITts$Stub;->getDefaultEngine()Ljava/lang/String;

    move-result-object v6

    .line 291
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 293
    goto/16 :goto_0

    .line 297
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_14
    const-string v0, "android.speech.tts.ITts"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Landroid/speech/tts/ITts$Stub;->areDefaultsEnforced()Z

    move-result v6

    .line 299
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    if-eqz v6, :cond_2

    move v0, v7

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 301
    goto/16 :goto_0

    :cond_2
    move v0, v9

    .line 300
    goto :goto_3

    .line 44
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
