.class public abstract Lcom/android/internal/view/IInputMethodSession$Stub;
.super Landroid/os/Binder;
.source "IInputMethodSession.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodSession"

.field static final TRANSACTION_appPrivateCommand:I = 0x8

.field static final TRANSACTION_dispatchKeyEvent:I = 0x6

.field static final TRANSACTION_dispatchTrackballEvent:I = 0x7

.field static final TRANSACTION_displayCompletions:I = 0x5

.field static final TRANSACTION_finishInput:I = 0x1

.field static final TRANSACTION_finishSession:I = 0xa

.field static final TRANSACTION_toggleSoftInput:I = 0x9

.field static final TRANSACTION_updateCursor:I = 0x4

.field static final TRANSACTION_updateExtractedText:I = 0x2

.field static final TRANSACTION_updateSelection:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;
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
    const-string v1, "com.android.internal.view.IInputMethodSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/android/internal/view/IInputMethodSession;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputMethodSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethodSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v7, 0x1

    const-string v8, "com.android.internal.view.IInputMethodSession"

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 175
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 46
    :sswitch_0
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 47
    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodSession$Stub;->finishInput()V

    move v0, v7

    .line 53
    goto :goto_0

    .line 57
    :sswitch_2
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 61
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Landroid/view/inputmethod/ExtractedText;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/ExtractedText;

    .line 67
    .local v2, _arg1:Landroid/view/inputmethod/ExtractedText;
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/view/IInputMethodSession$Stub;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    move v0, v7

    .line 68
    goto :goto_0

    .line 65
    .end local v2           #_arg1:Landroid/view/inputmethod/ExtractedText;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/view/inputmethod/ExtractedText;
    goto :goto_1

    .line 72
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/view/inputmethod/ExtractedText;
    :sswitch_3
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 76
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 78
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 80
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 82
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 84
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg5:I
    move-object v0, p0

    .line 85
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodSession$Stub;->updateSelection(IIIIII)V

    move v0, v7

    .line 86
    goto :goto_0

    .line 90
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:I
    :sswitch_4
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 98
    .local v1, _arg0:Landroid/graphics/Rect;
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethodSession$Stub;->updateCursor(Landroid/graphics/Rect;)V

    move v0, v7

    .line 99
    goto :goto_0

    .line 96
    .end local v1           #_arg0:Landroid/graphics/Rect;
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/graphics/Rect;
    goto :goto_2

    .line 103
    .end local v1           #_arg0:Landroid/graphics/Rect;
    :sswitch_5
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    sget-object v0, Landroid/view/inputmethod/CompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/inputmethod/CompletionInfo;

    .line 106
    .local v1, _arg0:[Landroid/view/inputmethod/CompletionInfo;
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethodSession$Stub;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    move v0, v7

    .line 107
    goto :goto_0

    .line 111
    .end local v1           #_arg0:[Landroid/view/inputmethod/CompletionInfo;
    :sswitch_6
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 115
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 122
    .local v2, _arg1:Landroid/view/KeyEvent;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodCallback;

    move-result-object v3

    .line 123
    .local v3, _arg2:Lcom/android/internal/view/IInputMethodCallback;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodSession$Stub;->dispatchKeyEvent(ILandroid/view/KeyEvent;Lcom/android/internal/view/IInputMethodCallback;)V

    move v0, v7

    .line 124
    goto/16 :goto_0

    .line 119
    .end local v2           #_arg1:Landroid/view/KeyEvent;
    .end local v3           #_arg2:Lcom/android/internal/view/IInputMethodCallback;
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/view/KeyEvent;
    goto :goto_3

    .line 128
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/view/KeyEvent;
    :sswitch_7
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 132
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 139
    .local v2, _arg1:Landroid/view/MotionEvent;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodCallback;

    move-result-object v3

    .line 140
    .restart local v3       #_arg2:Lcom/android/internal/view/IInputMethodCallback;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodSession$Stub;->dispatchTrackballEvent(ILandroid/view/MotionEvent;Lcom/android/internal/view/IInputMethodCallback;)V

    move v0, v7

    .line 141
    goto/16 :goto_0

    .line 136
    .end local v2           #_arg1:Landroid/view/MotionEvent;
    .end local v3           #_arg2:Lcom/android/internal/view/IInputMethodCallback;
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/view/MotionEvent;
    goto :goto_4

    .line 145
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/view/MotionEvent;
    :sswitch_8
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 155
    .local v2, _arg1:Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/view/IInputMethodSession$Stub;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    move v0, v7

    .line 156
    goto/16 :goto_0

    .line 153
    .end local v2           #_arg1:Landroid/os/Bundle;
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/Bundle;
    goto :goto_5

    .line 160
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/os/Bundle;
    :sswitch_9
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 164
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 165
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/view/IInputMethodSession$Stub;->toggleSoftInput(II)V

    move v0, v7

    .line 166
    goto/16 :goto_0

    .line 170
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_a
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodSession$Stub;->finishSession()V

    move v0, v7

    .line 172
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
