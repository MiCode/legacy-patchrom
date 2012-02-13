.class public abstract Landroid/accounts/IAccountAuthenticator$Stub;
.super Landroid/os/Binder;
.source "IAccountAuthenticator.java"

# interfaces
.implements Landroid/accounts/IAccountAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/IAccountAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/IAccountAuthenticator$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.accounts.IAccountAuthenticator"

.field static final TRANSACTION_addAccount:I = 0x1

.field static final TRANSACTION_confirmCredentials:I = 0x2

.field static final TRANSACTION_editProperties:I = 0x6

.field static final TRANSACTION_getAccountRemovalAllowed:I = 0x8

.field static final TRANSACTION_getAuthToken:I = 0x3

.field static final TRANSACTION_getAuthTokenLabel:I = 0x4

.field static final TRANSACTION_hasFeatures:I = 0x7

.field static final TRANSACTION_updateCredentials:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.accounts.IAccountAuthenticator"

    invoke-virtual {p0, p0, v0}, Landroid/accounts/IAccountAuthenticator$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticator;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "android.accounts.IAccountAuthenticator"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/accounts/IAccountAuthenticator;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/accounts/IAccountAuthenticator;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/accounts/IAccountAuthenticator$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/accounts/IAccountAuthenticator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v6, 0x1

    const-string v7, "android.accounts.IAccountAuthenticator"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "android.accounts.IAccountAuthenticator"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0

    :sswitch_1
    const-string v0, "android.accounts.IAccountAuthenticator"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .local v1, _arg0:Landroid/accounts/IAccountAuthenticatorResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .local v4, _arg3:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .local v5, _arg4:Landroid/os/Bundle;
    :goto_1
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/IAccountAuthenticator$Stub;->addAccount(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    move v0, v6

    goto :goto_0

    .end local v5           #_arg4:Landroid/os/Bundle;
    :cond_0
    const/4 v5, 0x0

    .restart local v5       #_arg4:Landroid/os/Bundle;
    goto :goto_1

    .end local v1           #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:[Ljava/lang/String;
    .end local v5           #_arg4:Landroid/os/Bundle;
    :sswitch_2
    const-string v0, "android.accounts.IAccountAuthenticator"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .restart local v1       #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .local v2, _arg1:Landroid/accounts/Account;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .local v3, _arg2:Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator$Stub;->confirmCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V

    move v0, v6

    goto :goto_0

    .end local v2           #_arg1:Landroid/accounts/Account;
    .end local v3           #_arg2:Landroid/os/Bundle;
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/accounts/Account;
    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/os/Bundle;
    goto :goto_3

    .end local v1           #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v2           #_arg1:Landroid/accounts/Account;
    .end local v3           #_arg2:Landroid/os/Bundle;
    :sswitch_3
    const-string v0, "android.accounts.IAccountAuthenticator"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .restart local v1       #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .restart local v2       #_arg1:Landroid/accounts/Account;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .local v4, _arg3:Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/accounts/IAccountAuthenticator$Stub;->getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    move v0, v6

    goto/16 :goto_0

    .end local v2           #_arg1:Landroid/accounts/Account;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Landroid/os/Bundle;
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/accounts/Account;
    goto :goto_4

    .restart local v3       #_arg2:Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    .restart local v4       #_arg3:Landroid/os/Bundle;
    goto :goto_5

    .end local v1           #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v2           #_arg1:Landroid/accounts/Account;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Landroid/os/Bundle;
    :sswitch_4
    const-string v0, "android.accounts.IAccountAuthenticator"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .restart local v1       #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountAuthenticator$Stub;->getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    move v0, v6

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_5
    const-string v0, "android.accounts.IAccountAuthenticator"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .restart local v1       #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .local v2, _arg1:Landroid/accounts/Account;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .restart local v4       #_arg3:Landroid/os/Bundle;
    :goto_7
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/accounts/IAccountAuthenticator$Stub;->updateCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    move v0, v6

    goto/16 :goto_0

    .end local v2           #_arg1:Landroid/accounts/Account;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Landroid/os/Bundle;
    :cond_5
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/accounts/Account;
    goto :goto_6

    .restart local v3       #_arg2:Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    .restart local v4       #_arg3:Landroid/os/Bundle;
    goto :goto_7

    .end local v1           #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v2           #_arg1:Landroid/accounts/Account;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Landroid/os/Bundle;
    :sswitch_6
    const-string v0, "android.accounts.IAccountAuthenticator"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .restart local v1       #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountAuthenticator$Stub;->editProperties(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    move v0, v6

    goto/16 :goto_0

    .end local v1           #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_7
    const-string v0, "android.accounts.IAccountAuthenticator"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .restart local v1       #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .local v2, _arg1:Landroid/accounts/Account;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .local v3, _arg2:[Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator$Stub;->hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    move v0, v6

    goto/16 :goto_0

    .end local v2           #_arg1:Landroid/accounts/Account;
    .end local v3           #_arg2:[Ljava/lang/String;
    :cond_7
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/accounts/Account;
    goto :goto_8

    .end local v1           #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;
    .end local v2           #_arg1:Landroid/accounts/Account;
    :sswitch_8
    const-string v0, "android.accounts.IAccountAuthenticator"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .restart local v1       #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .restart local v2       #_arg1:Landroid/accounts/Account;
    :goto_9
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountAuthenticator$Stub;->getAccountRemovalAllowed(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V

    move v0, v6

    goto/16 :goto_0

    .end local v2           #_arg1:Landroid/accounts/Account;
    :cond_8
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/accounts/Account;
    goto :goto_9

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
