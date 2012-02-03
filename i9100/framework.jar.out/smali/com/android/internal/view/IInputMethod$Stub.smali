.class public abstract Lcom/android/internal/view/IInputMethod$Stub;
.super Landroid/os/Binder;
.source "IInputMethod.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethod$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethod"

.field static final TRANSACTION_attachToken:I = 0x1

.field static final TRANSACTION_bindInput:I = 0x2

.field static final TRANSACTION_createSession:I = 0x6

.field static final TRANSACTION_hideSoftInput:I = 0xa

.field static final TRANSACTION_restartInput:I = 0x5

.field static final TRANSACTION_revokeSession:I = 0x8

.field static final TRANSACTION_setSessionEnabled:I = 0x7

.field static final TRANSACTION_showSoftInput:I = 0x9

.field static final TRANSACTION_startInput:I = 0x4

.field static final TRANSACTION_unbindInput:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.android.internal.view.IInputMethod"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethod$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethod;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 35
    :goto_0
    return-object v1

    .line 31
    :cond_0
    const-string v1, "com.android.internal.view.IInputMethod"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/android/internal/view/IInputMethod;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputMethod$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethod$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
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

    const-string v4, "com.android.internal.view.IInputMethod"

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 47
    :sswitch_0
    const-string v2, "com.android.internal.view.IInputMethod"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v2, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 55
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputMethod$Stub;->attachToken(Landroid/os/IBinder;)V

    move v2, v3

    .line 56
    goto :goto_0

    .line 60
    .end local v0           #_arg0:Landroid/os/IBinder;
    :sswitch_2
    const-string v2, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    sget-object v2, Landroid/view/inputmethod/InputBinding;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputBinding;

    .line 68
    .local v0, _arg0:Landroid/view/inputmethod/InputBinding;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputMethod$Stub;->bindInput(Landroid/view/inputmethod/InputBinding;)V

    move v2, v3

    .line 69
    goto :goto_0

    .line 66
    .end local v0           #_arg0:Landroid/view/inputmethod/InputBinding;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/view/inputmethod/InputBinding;
    goto :goto_1

    .line 73
    .end local v0           #_arg0:Landroid/view/inputmethod/InputBinding;
    :sswitch_3
    const-string v2, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethod$Stub;->unbindInput()V

    move v2, v3

    .line 75
    goto :goto_0

    .line 79
    :sswitch_4
    const-string v2, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v0

    .line 83
    .local v0, _arg0:Lcom/android/internal/view/IInputContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    sget-object v2, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/EditorInfo;

    .line 89
    .local v1, _arg1:Landroid/view/inputmethod/EditorInfo;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/IInputMethod$Stub;->startInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V

    move v2, v3

    .line 90
    goto :goto_0

    .line 87
    .end local v1           #_arg1:Landroid/view/inputmethod/EditorInfo;
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/view/inputmethod/EditorInfo;
    goto :goto_2

    .line 94
    .end local v0           #_arg0:Lcom/android/internal/view/IInputContext;
    .end local v1           #_arg1:Landroid/view/inputmethod/EditorInfo;
    :sswitch_5
    const-string v2, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v0

    .line 98
    .restart local v0       #_arg0:Lcom/android/internal/view/IInputContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    sget-object v2, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/EditorInfo;

    .line 104
    .restart local v1       #_arg1:Landroid/view/inputmethod/EditorInfo;
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/IInputMethod$Stub;->restartInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V

    move v2, v3

    .line 105
    goto :goto_0

    .line 102
    .end local v1           #_arg1:Landroid/view/inputmethod/EditorInfo;
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/view/inputmethod/EditorInfo;
    goto :goto_3

    .line 109
    .end local v0           #_arg0:Lcom/android/internal/view/IInputContext;
    .end local v1           #_arg1:Landroid/view/inputmethod/EditorInfo;
    :sswitch_6
    const-string v2, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/view/IInputMethodCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodCallback;

    move-result-object v0

    .line 112
    .local v0, _arg0:Lcom/android/internal/view/IInputMethodCallback;
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputMethod$Stub;->createSession(Lcom/android/internal/view/IInputMethodCallback;)V

    move v2, v3

    .line 113
    goto/16 :goto_0

    .line 117
    .end local v0           #_arg0:Lcom/android/internal/view/IInputMethodCallback;
    :sswitch_7
    const-string v2, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/view/IInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;

    move-result-object v0

    .line 121
    .local v0, _arg0:Lcom/android/internal/view/IInputMethodSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v1, v3

    .line 122
    .local v1, _arg1:Z
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/IInputMethod$Stub;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V

    move v2, v3

    .line 123
    goto/16 :goto_0

    .line 121
    .end local v1           #_arg1:Z
    :cond_3
    const/4 v2, 0x0

    move v1, v2

    goto :goto_4

    .line 127
    .end local v0           #_arg0:Lcom/android/internal/view/IInputMethodSession;
    :sswitch_8
    const-string v2, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/view/IInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;

    move-result-object v0

    .line 130
    .restart local v0       #_arg0:Lcom/android/internal/view/IInputMethodSession;
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputMethod$Stub;->revokeSession(Lcom/android/internal/view/IInputMethodSession;)V

    move v2, v3

    .line 131
    goto/16 :goto_0

    .line 135
    .end local v0           #_arg0:Lcom/android/internal/view/IInputMethodSession;
    :sswitch_9
    const-string v2, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 140
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 145
    .local v1, _arg1:Landroid/os/ResultReceiver;
    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/IInputMethod$Stub;->showSoftInput(ILandroid/os/ResultReceiver;)V

    move v2, v3

    .line 146
    goto/16 :goto_0

    .line 143
    .end local v1           #_arg1:Landroid/os/ResultReceiver;
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/ResultReceiver;
    goto :goto_5

    .line 150
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/os/ResultReceiver;
    :sswitch_a
    const-string v2, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 154
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 155
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 160
    .restart local v1       #_arg1:Landroid/os/ResultReceiver;
    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/IInputMethod$Stub;->hideSoftInput(ILandroid/os/ResultReceiver;)V

    move v2, v3

    .line 161
    goto/16 :goto_0

    .line 158
    .end local v1           #_arg1:Landroid/os/ResultReceiver;
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/ResultReceiver;
    goto :goto_6

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
