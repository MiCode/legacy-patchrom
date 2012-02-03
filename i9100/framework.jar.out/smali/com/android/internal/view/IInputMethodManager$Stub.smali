.class public abstract Lcom/android/internal/view/IInputMethodManager$Stub;
.super Landroid/os/Binder;
.source "IInputMethodManager.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodManager"

.field static final TRANSACTION_addClient:I = 0x3

.field static final TRANSACTION_finishInput:I = 0x6

.field static final TRANSACTION_getCurrentInputMethod:I = 0x11

.field static final TRANSACTION_getEnabledInputMethodList:I = 0x2

.field static final TRANSACTION_getInputMethodList:I = 0x1

.field static final TRANSACTION_hideMySoftInput:I = 0xc

.field static final TRANSACTION_hideSoftInput:I = 0x8

.field static final TRANSACTION_removeClient:I = 0x4

.field static final TRANSACTION_setInputMethod:I = 0xb

.field static final TRANSACTION_setInputMethodEnabled:I = 0xf

.field static final TRANSACTION_showCursorControllerSearchDialog:I = 0x10

.field static final TRANSACTION_showInputMethodPickerFromClient:I = 0xa

.field static final TRANSACTION_showMySoftInput:I = 0xd

.field static final TRANSACTION_showSoftInput:I = 0x7

.field static final TRANSACTION_startInput:I = 0x5

.field static final TRANSACTION_updateStatusIcon:I = 0xe

.field static final TRANSACTION_windowGainedFocus:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;
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
    const-string v1, "com.android.internal.view.IInputMethodManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/view/IInputMethodManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/android/internal/view/IInputMethodManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 271
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 46
    :sswitch_0
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodList()Ljava/util/List;

    move-result-object v9

    .line 53
    .local v9, _result:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 55
    const/4 v0, 0x1

    goto :goto_0

    .line 59
    .end local v9           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :sswitch_2
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v9

    .line 61
    .restart local v9       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 63
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    .end local v9           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :sswitch_3
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 71
    .local v1, _arg0:Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v2

    .line 73
    .local v2, _arg1:Lcom/android/internal/view/IInputContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 75
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 76
    .local v4, _arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/view/IInputMethodManager$Stub;->addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    .end local v1           #_arg0:Lcom/android/internal/view/IInputMethodClient;
    .end local v2           #_arg1:Lcom/android/internal/view/IInputContext;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    :sswitch_4
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 85
    .restart local v1       #_arg0:Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    .end local v1           #_arg0:Lcom/android/internal/view/IInputMethodClient;
    :sswitch_5
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 95
    .restart local v1       #_arg0:Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v2

    .line 97
    .restart local v2       #_arg1:Lcom/android/internal/view/IInputContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/EditorInfo;

    .line 104
    .local v3, _arg2:Landroid/view/inputmethod/EditorInfo;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v4, v0

    .line 106
    .local v4, _arg3:Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v5, v0

    .local v5, _arg4:Z
    :goto_3
    move-object v0, p0

    .line 107
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputMethodManager$Stub;->startInput(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;ZZ)Lcom/android/internal/view/InputBindResult;

    move-result-object v8

    .line 108
    .local v8, _result:Lcom/android/internal/view/InputBindResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v8, :cond_3

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Lcom/android/internal/view/InputBindResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 116
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 101
    .end local v3           #_arg2:Landroid/view/inputmethod/EditorInfo;
    .end local v4           #_arg3:Z
    .end local v5           #_arg4:Z
    .end local v8           #_result:Lcom/android/internal/view/InputBindResult;
    :cond_0
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/view/inputmethod/EditorInfo;
    goto :goto_1

    .line 104
    :cond_1
    const/4 v0, 0x0

    move v4, v0

    goto :goto_2

    .line 106
    .restart local v4       #_arg3:Z
    :cond_2
    const/4 v0, 0x0

    move v5, v0

    goto :goto_3

    .line 114
    .restart local v5       #_arg4:Z
    .restart local v8       #_result:Lcom/android/internal/view/InputBindResult;
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 120
    .end local v1           #_arg0:Lcom/android/internal/view/IInputMethodClient;
    .end local v2           #_arg1:Lcom/android/internal/view/IInputContext;
    .end local v3           #_arg2:Landroid/view/inputmethod/EditorInfo;
    .end local v4           #_arg3:Z
    .end local v5           #_arg4:Z
    .end local v8           #_result:Lcom/android/internal/view/InputBindResult;
    :sswitch_6
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 123
    .restart local v1       #_arg0:Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->finishInput(Lcom/android/internal/view/IInputMethodClient;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 129
    .end local v1           #_arg0:Lcom/android/internal/view/IInputMethodClient;
    :sswitch_7
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 133
    .restart local v1       #_arg0:Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 135
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 141
    .local v3, _arg2:Landroid/os/ResultReceiver;
    :goto_5
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v8

    .line 142
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v8, :cond_5

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 139
    .end local v3           #_arg2:Landroid/os/ResultReceiver;
    .end local v8           #_result:Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/os/ResultReceiver;
    goto :goto_5

    .line 143
    .restart local v8       #_result:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    .line 148
    .end local v1           #_arg0:Lcom/android/internal/view/IInputMethodClient;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/os/ResultReceiver;
    .end local v8           #_result:Z
    :sswitch_8
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 152
    .restart local v1       #_arg0:Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 154
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 155
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 160
    .restart local v3       #_arg2:Landroid/os/ResultReceiver;
    :goto_7
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v8

    .line 161
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v8, :cond_7

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 158
    .end local v3           #_arg2:Landroid/os/ResultReceiver;
    .end local v8           #_result:Z
    :cond_6
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/os/ResultReceiver;
    goto :goto_7

    .line 162
    .restart local v8       #_result:Z
    :cond_7
    const/4 v0, 0x0

    goto :goto_8

    .line 167
    .end local v1           #_arg0:Lcom/android/internal/view/IInputMethodClient;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/os/ResultReceiver;
    .end local v8           #_result:Z
    :sswitch_9
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 171
    .restart local v1       #_arg0:Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 173
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    move v3, v0

    .line 175
    .local v3, _arg2:Z
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    move v4, v0

    .line 177
    .restart local v4       #_arg3:Z
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 179
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    move v6, v0

    .line 181
    .local v6, _arg5:Z
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, _arg6:I
    move-object v0, p0

    .line 182
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/view/IInputMethodManager$Stub;->windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ZZIZI)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 173
    .end local v3           #_arg2:Z
    .end local v4           #_arg3:Z
    .end local v5           #_arg4:I
    .end local v6           #_arg5:Z
    .end local v7           #_arg6:I
    :cond_8
    const/4 v0, 0x0

    move v3, v0

    goto :goto_9

    .line 175
    .restart local v3       #_arg2:Z
    :cond_9
    const/4 v0, 0x0

    move v4, v0

    goto :goto_a

    .line 179
    .restart local v4       #_arg3:Z
    .restart local v5       #_arg4:I
    :cond_a
    const/4 v0, 0x0

    move v6, v0

    goto :goto_b

    .line 188
    .end local v1           #_arg0:Lcom/android/internal/view/IInputMethodClient;
    .end local v2           #_arg1:Landroid/os/IBinder;
    .end local v3           #_arg2:Z
    .end local v4           #_arg3:Z
    .end local v5           #_arg4:I
    :sswitch_a
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 191
    .restart local v1       #_arg0:Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 197
    .end local v1           #_arg0:Lcom/android/internal/view/IInputMethodClient;
    :sswitch_b
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 201
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 208
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_c
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 212
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 213
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideMySoftInput(Landroid/os/IBinder;I)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 219
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:I
    :sswitch_d
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 223
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 224
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->showMySoftInput(Landroid/os/IBinder;I)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 230
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:I
    :sswitch_e
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 234
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 237
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 243
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    :sswitch_f
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    move v2, v0

    .line 248
    .local v2, _arg1:Z
    :goto_c
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->setInputMethodEnabled(Ljava/lang/String;Z)Z

    move-result v8

    .line 249
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    if-eqz v8, :cond_c

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 247
    .end local v2           #_arg1:Z
    .end local v8           #_result:Z
    :cond_b
    const/4 v0, 0x0

    move v2, v0

    goto :goto_c

    .line 250
    .restart local v2       #_arg1:Z
    .restart local v8       #_result:Z
    :cond_c
    const/4 v0, 0x0

    goto :goto_d

    .line 255
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Z
    .end local v8           #_result:Z
    :sswitch_10
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 258
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->showCursorControllerSearchDialog(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 264
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_11
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurrentInputMethod()Ljava/lang/String;

    move-result-object v8

    .line 266
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
